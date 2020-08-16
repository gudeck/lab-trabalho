unit uBase;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, ComCtrls, DBCtrls, ToolWin, StdCtrls, ExtCtrls, Grids, DBGrids, DBClient,
  Menus, Provider, ImageList, ImgList, Data.Win.ADODB,
  System.Variants, uPersistencia;

type
  TfBase = class(TForm)
    Panel1: TPanel;
    Botoes: TToolBar;
    Imagens: TImageList;
    btNovo: TToolButton;
    btEditar: TToolButton;
    btSalvar: TToolButton;
    btCancelar: TToolButton;
    btExcluir: TToolButton;
    btImprimir: TToolButton;
    btAtualizar: TToolButton;
    btSair: TToolButton;
    dsoDados: TDataSource;
    gbCabecalho: TGroupBox;
    PageControl: TPageControl;
    tabInformacoes: TTabSheet;
    tabFiltros: TTabSheet;
    gbInformacoes: TGroupBox;
    gbFiltros: TGroupBox;
    DBGrid: TDBGrid;
    StatusBar: TStatusBar;
    procedure dsoDadosStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    function VerificaPermissao(nomeBotao: string): Boolean;
  end;

var
  fBase: TfBase;

implementation

{$R *.dfm}

procedure TfBase.btAtualizarClick(Sender: TObject);
begin
  ActiveControl := nil;

  PageControl.SetFocus;

  dsoDados.DataSet.Close;
  dsoDados.DataSet.Open;

  StatusBar.Panels[1].Text := IntToStr(dsoDados.DataSet.RecordCount);

end;

procedure TfBase.btCancelarClick(Sender: TObject);
begin
  ActiveControl := nil;
  if not(Sender is TForm) then
    if Application.MessageBox('Deseja realmente cancelar o registro atual?',
      'Cancelar', MB_YESNO + MB_ICONQUESTION) = ID_YES then
      dsoDados.DataSet.Cancel;

end;

procedure TfBase.btEditarClick(Sender: TObject);
begin
  if not dsoDados.DataSet.IsEmpty then
  begin
    dsoDados.DataSet.Edit;
    PageControl.ActivePage := tabInformacoes;
  end
  else
    ShowMessage('Não há registros a alterar!');
end;

procedure TfBase.btExcluirClick(Sender: TObject);
begin
  if dsoDados.DataSet.Active then
    if not dsoDados.DataSet.IsEmpty then
      if Application.MessageBox('Deseja realmente excluir o registro atual?',
        'Excluir', MB_YESNO + MB_ICONQUESTION) = ID_YES then
        dsoDados.DataSet.Delete
      else
        ShowMessage('Não há registros a excluir!');
end;

procedure TfBase.btImprimirClick(Sender: TObject);
begin
  if (dsoDados.DataSet.IsEmpty) or (not dsoDados.DataSet.Active) then
  begin
    ShowMessage('Não há registros a imprimir!');
    Abort;
  end;

end;

procedure TfBase.btNovoClick(Sender: TObject);
begin
  if ActiveControl = DBGrid then
    ActiveControl := nil;
  if not dsoDados.DataSet.Active then
    dsoDados.DataSet.Open;

  dsoDados.DataSet.Append;
  PageControl.ActivePage := tabInformacoes;
end;

procedure TfBase.btSairClick(Sender: TObject);
begin
  Self.Destroy;
end;

procedure TfBase.btSalvarClick(Sender: TObject);
begin
  ActiveControl := nil;
  dsoDados.DataSet.Post;

  btAtualizarClick(btAtualizar);
end;

procedure TfBase.dsoDadosStateChange(Sender: TObject);
begin
  tabFiltros.TabVisible := dsoDados.DataSet.State in [dsBrowse, dsInactive];
  gbInformacoes.Enabled := dsoDados.DataSet.State in dsEditModes;
  gbCabecalho.Enabled := dsoDados.DataSet.State in dsEditModes;

  btSalvar.Enabled := (dsoDados.DataSet.State in dsEditModes);
  btCancelar.Enabled := (dsoDados.DataSet.State in dsEditModes);
  btAtualizar.Enabled := not(dsoDados.DataSet.State in dsEditModes);
  btSair.Enabled := not(dsoDados.DataSet.State in dsEditModes);

  btNovo.Enabled := not(dsoDados.DataSet.State in dsEditModes) and
    VerificaPermissao(btNovo.Hint);
  btEditar.Enabled := not(dsoDados.DataSet.State in dsEditModes) and
    not(dsoDados.DataSet.IsEmpty) and VerificaPermissao(btEditar.Hint);
  btExcluir.Enabled := not(dsoDados.DataSet.State in dsEditModes) and
    not(dsoDados.DataSet.IsEmpty) and VerificaPermissao(btExcluir.Hint);
  btImprimir.Enabled := not(dsoDados.DataSet.State in dsEditModes) and
    VerificaPermissao(btImprimir.Hint);

end;

procedure TfBase.DBGridDblClick(Sender: TObject);
begin
  PageControl.ActivePage := tabInformacoes;
end;

procedure TfBase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsoDados.State in dsEditModes then
    if Application.MessageBox('Deseja gravar as alterações?',
      pchar(Application.Title), MB_YESNO + MB_ICONQUESTION) = ID_YES then
      btSalvarClick(btSalvar)
    else
      btCancelarClick(btCancelar);

end;

procedure TfBase.FormCreate(Sender: TObject);
begin
  dsoDados.DataSet.Open;

  dsoDadosStateChange(dsoDados);
  PageControl.ActivePage := tabFiltros;
end;

procedure TfBase.FormDestroy(Sender: TObject);
begin
  dsoDados.DataSet.Close;
  Persistencia.qUsuarioTelas.Close;
end;

procedure TfBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and not(ActiveControl is TDBGrid) and
    not(ActiveControl is TMemo) and not(ActiveControl is TDBMemo) and
    not(ActiveControl is TDBRichEdit) then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

function TfBase.VerificaPermissao(nomeBotao: string): Boolean;
begin
  Persistencia.qTelasLoginPossui.Locate('NOME', Self.Name, []);

  Persistencia.qUsuarioTelas.Open;
  Result := Persistencia.qUsuarioTelas.Locate('ID_TELA;' + nomeBotao,
    VarArrayOf([Persistencia.qTelasLoginPossuiID.AsInteger, 1]), []);
end;

Initialization

RegisterClass(TfBase);

Finalization

UnRegisterClass(TfBase);

end.
