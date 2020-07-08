unit uPersistencia;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, Data.Win.ADODB;

type
  TPersistencia = class(TDataModule)
    Connection: TADOConnection;
    qDisciplina: TADOQuery;
    dsDisciplina: TClientDataSet;
    pDisciplina: TDataSetProvider;
    qDisciplinaID: TLargeintField;
    qDisciplinaNOME: TStringField;
    qDisciplinaDESCRICAO: TMemoField;
    qDisciplinaMEDIA: TIntegerField;
    qDisciplinaOPCIONAL: TBooleanField;
    qDisciplinaDATA_CRIACAO: TDateTimeField;
    dsDisciplinaID: TLargeintField;
    dsDisciplinaNOME: TStringField;
    dsDisciplinaDESCRICAO: TMemoField;
    dsDisciplinaMEDIA: TIntegerField;
    dsDisciplinaOPCIONAL: TBooleanField;
    dsDisciplinaDATA_CRIACAO: TDateTimeField;
    qDocente: TADOQuery;
    qAula: TADOQuery;
    pDocente: TDataSetProvider;
    pAula: TDataSetProvider;
    dsDocente: TClientDataSet;
    dsAula: TClientDataSet;
    dsoDocente: TDataSource;
    dsoAula: TDataSource;
    dsAulaID: TLargeintField;
    dsAulaNOME_TURMA: TStringField;
    dsAulaID_DISCIPLINA: TLargeintField;
    dsDocenteID: TLargeintField;
    dsDocenteNOME: TStringField;
    qUsuario: TADOQuery;
    qTela: TADOQuery;
    pUsuario: TDataSetProvider;
    pTela: TDataSetProvider;
    dsUsuario: TClientDataSet;
    dsTela: TClientDataSet;
    dsoUsuario: TDataSource;
    dsoTela: TDataSource;
    dsUsuarioID: TLargeintField;
    dsUsuarioNOME: TStringField;
    dsUsuarioSENHA: TStringField;
    dsTelaID: TLargeintField;
    dsTelaNOME: TStringField;
    procedure dsDisciplinaAfterPost(DataSet: TDataSet);
    procedure dsDisciplinaAfterDelete(DataSet: TDataSet);
    procedure dsDisciplinaAfterCancel(DataSet: TDataSet);
    procedure dsDisciplinaAfterInsert(DataSet: TDataSet);
    procedure dsAulaAfterPost(DataSet: TDataSet);
    procedure dsAulaAfterDelete(DataSet: TDataSet);
    procedure dsAulaAfterCancel(DataSet: TDataSet);
    procedure qAulaBeforeOpen(DataSet: TDataSet);
    procedure dsDisciplinaAfterScroll(DataSet: TDataSet);
    procedure dsDisciplinaBeforeDelete(DataSet: TDataSet);
    procedure dsUsuarioAfterCancel(DataSet: TDataSet);
    procedure dsUsuarioAfterDelete(DataSet: TDataSet);
    procedure dsUsuarioAfterPost(DataSet: TDataSet);
    procedure dsTelaAfterCancel(DataSet: TDataSet);
    procedure dsTelaAfterDelete(DataSet: TDataSet);
    procedure dsTelaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Persistencia: TPersistencia;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TPersistencia.dsAulaAfterCancel(DataSet: TDataSet);
begin
  dsAula.CancelUpdates;
end;

procedure TPersistencia.dsAulaAfterDelete(DataSet: TDataSet);
begin
  dsAula.ApplyUpdates(-1);
end;

procedure TPersistencia.dsAulaAfterPost(DataSet: TDataSet);
begin
  dsAula.ApplyUpdates(-1);
end;

procedure TPersistencia.dsDisciplinaAfterCancel(DataSet: TDataSet);
begin
  dsDisciplina.CancelUpdates;
end;

procedure TPersistencia.dsDisciplinaAfterDelete(DataSet: TDataSet);
begin
  dsDisciplina.ApplyUpdates(-1);
end;

procedure TPersistencia.dsDisciplinaAfterInsert(DataSet: TDataSet);
begin
  dsDisciplinaDATA_CRIACAO.AsDateTime := Now;
  dsDisciplinaOPCIONAL.AsBoolean := False;
  dsDisciplinaMEDIA.AsInteger := 60;
end;

procedure TPersistencia.dsDisciplinaAfterPost(DataSet: TDataSet);
begin
  dsDisciplina.ApplyUpdates(-1);
end;

procedure TPersistencia.dsDisciplinaAfterScroll(DataSet: TDataSet);
begin
  dsAula.Close;
  qAula.Close;

  qAula.Open;
  dsAula.Open;
end;

procedure TPersistencia.dsDisciplinaBeforeDelete(DataSet: TDataSet);
begin
  dsAula.First;
  while not dsAula.Eof do
    dsAula.Delete;
end;

procedure TPersistencia.dsTelaAfterCancel(DataSet: TDataSet);
begin
  dsTela.CancelUpdates;
end;

procedure TPersistencia.dsTelaAfterDelete(DataSet: TDataSet);
begin
  dsTela.ApplyUpdates(-1);
end;

procedure TPersistencia.dsTelaAfterPost(DataSet: TDataSet);
begin
  dsTela.ApplyUpdates(-1);
end;

procedure TPersistencia.dsUsuarioAfterCancel(DataSet: TDataSet);
begin
  dsUsuario.CancelUpdates;
end;

procedure TPersistencia.dsUsuarioAfterDelete(DataSet: TDataSet);
begin
  dsUsuario.ApplyUpdates(-1);
end;

procedure TPersistencia.dsUsuarioAfterPost(DataSet: TDataSet);
begin
  dsUsuario.ApplyUpdates(-1);
end;

procedure TPersistencia.qAulaBeforeOpen(DataSet: TDataSet);
begin
  qAula.Parameters.ParamByName('idDisciplina').Value :=
    dsDisciplinaID.AsInteger;
end;

end.
