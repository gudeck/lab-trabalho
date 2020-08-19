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
    qCliente: TADOQuery;
    qClienteidCliente: TLargeintField;
    qClientenomeCliente: TStringField;
    qClientecnpj: TIntegerField;
    qClientedtNascimento: TDateTimeField;
    qClienteidCidade: TLargeintField;
    qClienteendereco: TStringField;
    qClientecep: TIntegerField;
    qClientenumero: TIntegerField;
    qClientecomplemento: TStringField;
    qClienteemail: TStringField;
    qPedido: TADOQuery;
    qPedidoProduto: TADOQuery;
    qPedidoidPedido: TLargeintField;
    qPedidoidCliente: TLargeintField;
    qPedidodtCadastro: TDateTimeField;
    qPedidodtPrevistaEntrega: TDateTimeField;
    qPedidoProdutoidPedido: TLargeintField;
    qPedidoProdutoidProduto: TLargeintField;
    qPedidoProdutoquantidade: TIntegerField;
    qProdutosPedidoPossui: TADOQuery;
    qProdutosPedidoNaoPossui: TADOQuery;
    qProdutosPedidoNaoPossuiidProduto: TLargeintField;
    qProdutosPedidoNaoPossuiproduto: TStringField;
    qProdutosPedidoNaoPossuivalor: TBCDField;
    qProdutosPedidoNaoPossuiqtdeEstoque: TIntegerField;
    qProdutosPedidoNaoPossuicodigobarras: TIntegerField;
    qProdutosPedidoPossuiidProduto: TLargeintField;
    qProdutosPedidoPossuiproduto: TStringField;
    qProdutosPedidoPossuivalor: TBCDField;
    qProdutosPedidoPossuiqtdeEstoque: TIntegerField;
    qProdutosPedidoPossuicodigobarras: TIntegerField;
    dsoCliente: TDataSource;
    dsoProdutosPedidoPossui: TDataSource;
    dsoProdutosPedidoNaoPossui: TDataSource;
    qEntradaEstoque: TADOQuery;
    dsEntradaEstoque: TClientDataSet;
    dsEntradaEstoqueidEntrada: TLargeintField;
    dsEntradaEstoqueidProduto: TLargeintField;
    dsEntradaEstoquedataEntrada: TDateTimeField;
    dsEntradaEstoquequantidade: TIntegerField;
    dsoEntradaEstoque: TDataSource;
    pEntradaEstoque: TDataSetProvider;
    qFaturamento: TADOQuery;
    qFaturamentoidFaturamento: TLargeintField;
    qFaturamentodataFaturamento: TDateTimeField;
    qFaturamentoidCliente: TLargeintField;
    qProdutosNaoForamFaturados: TADOQuery;
    qProdutosNaoForamFaturadosidPedido: TLargeintField;
    qProdutosNaoForamFaturadosidProduto: TLargeintField;
    qProdutosNaoForamFaturadosproduto: TStringField;
    qProdutosNaoForamFaturadosquantidade: TIntegerField;
    qFaturamentoItem: TADOQuery;
    qFaturamentoItemidFaturamento: TLargeintField;
    qFaturamentoItemidProduto: TLargeintField;
    qFaturamentoItemidPedido: TLargeintField;
    qRelatorio05: TADOQuery;
    dsoRelatorio05: TDataSource;
    qRelatorio05idPedido: TLargeintField;
    qRelatorio05TOTAL_VENDIDO: TFMTBCDField;
    qRelatorio05TOTAL_FATURADO: TFMTBCDField;
    qRelatorio05TOTAL_ABERTO: TFMTBCDField;
    qRelatorio04: TADOQuery;
    dsoRelatorio04: TDataSource;
    qRelatorio03: TADOQuery;
    dsoRelatorio03: TDataSource;
    qRelatorio03idCidade: TLargeintField;
    qRelatorio03Cidade: TStringField;
    qRelatorio03VALOR_TOTAL_VENDIDO: TFMTBCDField;
    qRelatorio03QUANTIDADE_VENDIDA: TIntegerField;
    qRelatorio03VALOR_TOTAL_FATURADO: TFMTBCDField;
    qRelatorio03QUANTIDADE_FATURADA: TIntegerField;
    qRelatorio04idProduto: TLargeintField;
    qRelatorio04produto: TStringField;
    qRelatorio04VALOR_TOTAL_VENDIDO: TFMTBCDField;
    qRelatorio04QUANTIDADE_VENDIDA: TIntegerField;
    qRelatorio04VALOR_TOTAL_FATURADO: TFMTBCDField;
    qRelatorio04QUANTIDADE_FATURADA: TIntegerField;
    qRelatorio02: TADOQuery;
    dsoRelatorio02: TDataSource;
    qRelatorio02idCliente: TLargeintField;
    qRelatorio02nomeCliente: TStringField;
    qRelatorio02idProduto: TLargeintField;
    qRelatorio02produto: TStringField;
    qRelatorio02valor: TBCDField;
    qRelatorio02quantidade_vendida: TIntegerField;
    qRelatorio02quantidade_faturada: TIntegerField;
    procedure qUsuarioAfterScroll(DataSet: TDataSet);
    procedure qPedidoAfterScroll(DataSet: TDataSet);
    procedure qPedidoBeforePost(DataSet: TDataSet);

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

procedure TPersistencia.qPedidoAfterScroll(DataSet: TDataSet);
begin
  qProdutosPedidoPossui.Close;
  qProdutosPedidoPossui.Parameters.ParamByName('idPedido').Value :=
    qPedidoidPedido.Value;
  qProdutosPedidoPossui.Open;
end;

procedure TPersistencia.qPedidoBeforePost(DataSet: TDataSet);
begin
  Persistencia.qPedidodtCadastro.AsDateTime := Now;
end;

procedure TPersistencia.qUsuarioAfterScroll(DataSet: TDataSet);
begin
  qTelasUsuarioPossui.Close;
  qTelasUsuarioPossui.Parameters.ParamByName('idUsuario').Value :=
    qUsuarioID.Value;
  qTelasUsuarioPossui.Open;
end;

end.
