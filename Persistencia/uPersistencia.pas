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
    procedure dsDisciplinaAfterPost(DataSet: TDataSet);
    procedure dsDisciplinaAfterDelete(DataSet: TDataSet);
    procedure dsDisciplinaAfterCancel(DataSet: TDataSet);
    procedure dsDisciplinaAfterInsert(DataSet: TDataSet);
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

end.
