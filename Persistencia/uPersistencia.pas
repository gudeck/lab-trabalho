unit uPersistencia;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, Data.Win.ADODB;

type
  TPersistencia = class(TDataModule)
    Connection: TADOConnection;
    qUsuario: TADOQuery;
    qTelasUsuarioNaoPossui: TADOQuery;
    qLogin: TADOQuery;
    dsoTelasUsuarioNaoPossui: TDataSource;
    qUsuarioTelas: TADOQuery;
    dsoTelasUsuarioPossui: TDataSource;
    qTelasLoginPossui: TADOQuery;
    qLoginID: TLargeintField;
    qLoginNOME: TStringField;
    qLoginSENHA: TStringField;
    qTelasLoginPossuiID: TLargeintField;
    qTelasLoginPossuiNOME: TStringField;
    qUsuarioID: TLargeintField;
    qUsuarioNOME: TStringField;
    qUsuarioSENHA: TStringField;
    qTelasUsuarioNaoPossuiID: TLargeintField;
    qTelasUsuarioNaoPossuiNOME: TStringField;
    qUsuarioTelasID_USUARIO: TLargeintField;
    qUsuarioTelasID_TELA: TLargeintField;
    qTelasUsuarioPossui: TADOQuery;
    qTelasUsuarioPossuiID: TLargeintField;
    qTelasUsuarioPossuiNOME: TStringField;
    qUsuarioTelasALTERAR: TBooleanField;
    qUsuarioTelasEXCLUIR: TBooleanField;
    qUsuarioTelasIMPRIMIR: TBooleanField;
    qUsuarioTelasINSERIR: TBooleanField;
    qProduto: TADOQuery;
    qProdutoidProduto: TLargeintField;
    qProdutoproduto: TStringField;
    qProdutovalor: TBCDField;
    qProdutoqtdeEstoque: TIntegerField;
    qProdutocodigobarras: TIntegerField;
    procedure qUsuarioAfterScroll(DataSet: TDataSet);

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
// procedure TPersistencia.qDisciplinaAfterInsert(DataSet: TDataSet);
// begin
// qDisciplinaDATA_CRIACAO.AsDateTime := Now;
// qDisciplinaOPCIONAL.AsBoolean := False;
// qDisciplinaMEDIA.AsInteger := 60;
// end;
//
// procedure TPersistencia.qDisciplinaAfterScroll(DataSet: TDataSet);
// begin
// qAula.Close;
// qAula.Parameters.ParamByName('idDisciplina').Value := qDisciplinaID.AsInteger;
// qAula.Open;
// end;
//
// procedure TPersistencia.qDisciplinaBeforeDelete(DataSet: TDataSet);
// begin
// qAula.First;
// while not qAula.Eof do
// qAula.Delete;
// end;

procedure TPersistencia.qUsuarioAfterScroll(DataSet: TDataSet);
begin
  qTelasUsuarioPossui.Close;
  qTelasUsuarioPossui.Parameters.ParamByName('idUsuario').Value :=
    qUsuarioID.Value;
  qTelasUsuarioPossui.Open;
end;

end.
