unit uCrudDisciplina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase,
  Data.DB, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons,
  uPersistencia;

type
  TfCrudDisciplina = class(TfBase)
    Label3: TLabel;
    edDescricao: TDBMemo;
    cbOpcional: TDBCheckBox;
    Label5: TLabel;
    edDataCriacao: TDBEdit;
    cmbDocente: TDBLookupComboBox;
    Label6: TLabel;
    gbInformacoesAulas: TGroupBox;
    DBGrid1: TDBGrid;
    sbtNovo: TSpeedButton;
    sbtExcluir: TSpeedButton;
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label4: TLabel;
    edMedia: TDBEdit;
    edAula: TLabeledEdit;
    procedure sbtNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudDisciplina: TfCrudDisciplina;

implementation

{$R *.dfm}

procedure TfCrudDisciplina.FormCreate(Sender: TObject);
begin
  inherited;
  Persistencia.qAula.Open;
  Persistencia.qDocente.Open;
end;

procedure TfCrudDisciplina.FormDestroy(Sender: TObject);
begin
  inherited;
  Persistencia.qAula.Close;
  Persistencia.qDocente.Close;
end;

procedure TfCrudDisciplina.sbtNovoClick(Sender: TObject);
begin
  inherited;
  if (Persistencia.qDisciplinaID.AsInteger > 0) and (Trim(edAula.Text) <> '')
  then
  begin
    Persistencia.qAula.Append;
    Persistencia.qAulaID_DISCIPLINA.AsInteger :=
      Persistencia.qDisciplinaID.AsInteger;
    Persistencia.qAulaNOME_TURMA.AsString := edAula.Text;
    Persistencia.qAula.Post;

    Persistencia.qAula.Close;
    Persistencia.qAula.Open;

    edAula.Clear;
    edAula.SetFocus;
  end;
end;

Initialization

RegisterClass(TfCrudDisciplina);

Finalization

UnRegisterClass(TfCrudDisciplina);

end.
