unit uCrudDisciplina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, uPersistencia, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TfCrudDisciplina = class(TfBase)
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edDescricao: TDBMemo;
    Label4: TLabel;
    edMedia: TDBEdit;
    cbOpcional: TDBCheckBox;
    Label5: TLabel;
    edDataCriacao: TDBEdit;
    cmbDocente: TDBLookupComboBox;
    Label6: TLabel;
    gbInformacoesAulas: TGroupBox;
    DBGrid1: TDBGrid;
    sbtNovo: TSpeedButton;
    sbtExcluir: TSpeedButton;
    edNomeTurma: TEdit;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure sbtNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudDisciplina: TfCrudDisciplina;

implementation

{$R *.dfm}

procedure TfCrudDisciplina.FormShow(Sender: TObject);
begin
  inherited;
  Persistencia.dsAula.Open;
  Persistencia.dsDocente.Open;
end;

procedure TfCrudDisciplina.sbtNovoClick(Sender: TObject);
begin
  inherited;
  if (Persistencia.dsDisciplinaID.AsInteger > 0) and
    (trim(edNomeTurma.Text) <> '') then
  begin
    Persistencia.dsAula.Append;
    Persistencia.dsAulaID_DISCIPLINA.AsInteger :=
      Persistencia.dsDisciplinaID.AsInteger;
    Persistencia.dsAulaNOME_TURMA.AsString := edNomeTurma.Text;
    Persistencia.dsAula.Post;

    Persistencia.dsAula.Close;
    Persistencia.qAula.Close;
    Persistencia.qAula.Open;
    Persistencia.dsAula.Open;

    edNomeTurma.Clear;
    edNomeTurma.SetFocus;
  end;
end;

Initialization

RegisterClass(TfBase);

Finalization

UnRegisterClass(TfBase);

end.
