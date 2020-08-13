unit uAssociacaoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, uPersistencia, Vcl.Mask, Vcl.DBCtrls;

type
  TfAssociacaoProdutos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnSelecionar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    procedure AtualizarEstoque;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAssociacaoProdutos: TfAssociacaoProdutos;

implementation

{$R *.dfm}

procedure TfAssociacaoProdutos.AtualizarEstoque;
begin
  Persistencia.qProdutosPedidoNaoPossui.Edit;
  Persistencia.qProdutosPedidoNaoPossuiqtdeEstoque.AsInteger :=
    Persistencia.qProdutosPedidoNaoPossuiqtdeEstoque.Value -
    Persistencia.qPedidoProdutoquantidade.Value;
  Persistencia.qProdutosPedidoNaoPossui.Post;
end;

procedure TfAssociacaoProdutos.btnSelecionarClick(Sender: TObject);
begin
  Persistencia.qPedidoProdutoidPedido.AsInteger :=
    Persistencia.qPedidoidPedido.Value;
  Persistencia.qPedidoProdutoidProduto.AsInteger :=
    Persistencia.qProdutosPedidoNaoPossuiidProduto.Value;

  if (Persistencia.qPedidoProdutoquantidade.Value > 0) and
    (Persistencia.qPedidoProdutoquantidade.Value <=
    Persistencia.qProdutosPedidoNaoPossuiqtdeEstoque.Value) then
  begin
    AtualizarEstoque();

    Persistencia.qPedidoProduto.Post;
    Self.Close;
  end
  else
    ShowMessage('Insira uma quantidade válida!');

end;

procedure TfAssociacaoProdutos.FormCreate(Sender: TObject);
begin
  Persistencia.qProdutosPedidoNaoPossui.Parameters.ParamByName('idPedido').Value
    := Persistencia.qPedidoidPedido.Value;
  Persistencia.qProdutosPedidoNaoPossui.Open;

  Persistencia.qPedidoProduto.Open;
  Persistencia.qPedidoProduto.Append;
end;

procedure TfAssociacaoProdutos.FormDestroy(Sender: TObject);
begin
  Persistencia.qProdutosPedidoNaoPossui.Close;
  Persistencia.qPedidoProduto.Close;

  Persistencia.qProdutosPedidoPossui.Close;
  Persistencia.qProdutosPedidoPossui.Open;
end;

Initialization

RegisterClass(TfAssociacaoProdutos);

Finalization

UnRegisterClass(TfAssociacaoProdutos);

end.
