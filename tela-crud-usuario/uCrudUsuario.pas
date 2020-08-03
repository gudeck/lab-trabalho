unit uCrudUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons,
  uPersistencia, uControleTelas;

type
  TfCrudUsuario = class(TfBase)
    gbTelas: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edSenha: TDBEdit;
    btnAdicionar: TSpeedButton;
    btnRemover: TSpeedButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudUsuario: TfCrudUsuario;

implementation

{$R *.dfm}

procedure TfCrudUsuario.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if (Persistencia.qUsuarioID.AsInteger > 0) then
    ControleTelas.chamaTela(btnAdicionar.Hint);
end;

procedure TfCrudUsuario.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if not Persistencia.qTelasUsuarioPossui.IsEmpty then
  begin
    Persistencia.qUsuarioTelas.Open;
    Persistencia.qUsuarioTelas.Edit;

    Persistencia.qUsuarioTelas.Locate('ID_USUARIO;ID_TELA',
      VarArrayOf([Persistencia.qUsuarioID.AsInteger,
      Persistencia.qTelasUsuarioPossuiID.AsInteger]), []);

    Persistencia.qUsuarioTelas.Delete;
    Persistencia.qUsuarioTelas.Close;

    Persistencia.qTelasUsuarioPossui.Close;
    Persistencia.qTelasUsuarioPossui.Open;
  end
  else
    ShowMessage('Não há registros a excluir!');
end;

procedure TfCrudUsuario.FormCreate(Sender: TObject);
var
  associacaoDisponivel: Boolean;
begin
  inherited;
  associacaoDisponivel := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnAdicionar.Hint, []);
  btnAdicionar.Visible := associacaoDisponivel;
  btnRemover.Visible := associacaoDisponivel;

  Persistencia.qTelasUsuarioPossui.Open;
end;

procedure TfCrudUsuario.FormDestroy(Sender: TObject);
begin
  inherited;
  Persistencia.qTelasUsuarioPossui.Close;
end;

Initialization

RegisterClass(TfCrudUsuario);

Finalization

UnRegisterClass(TfCrudUsuario);

end.
