unit uCrudPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, uPersistencia, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons,
  uControleTelas;

type
  TfCrudPedido = class(TfBase)
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btnRemover: TSpeedButton;
    btnAdicionar: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure AtualizarEstoque();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudPedido: TfCrudPedido;

implementation

{$R *.dfm}

procedure TfCrudPedido.AtualizarEstoque;
begin
  Persistencia.qPedidoProduto.Locate('idPedido;idProduto',
    VarArrayOf([Persistencia.qPedidoidPedido.AsInteger,
    Persistencia.qProdutosPedidoPossuiidProduto.AsInteger]), []);

  Persistencia.qProdutosPedidoPossui.Edit;
  Persistencia.qProdutosPedidoPossuiqtdeEstoque.AsInteger :=
    Persistencia.qProdutosPedidoPossuiqtdeEstoque.Value +
    Persistencia.qPedidoProdutoquantidade.Value;
  Persistencia.qProdutosPedidoPossui.Post;

end;

procedure TfCrudPedido.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  if (Persistencia.qPedidoidPedido.AsInteger > 0) then
    ControleTelas.chamaTela(btnAdicionar.Hint);
end;

procedure TfCrudPedido.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if not Persistencia.qProdutosPedidoPossui.IsEmpty then
  begin
    Persistencia.qPedidoProduto.Open;
    Persistencia.qPedidoProduto.Edit;

    AtualizarEstoque();

    Persistencia.qPedidoProduto.Delete;
    Persistencia.qPedidoProduto.Close;

    Persistencia.qProdutosPedidoPossui.Close;
    Persistencia.qProdutosPedidoPossui.Open;
  end
  else
    ShowMessage('Não há registros a excluir!');
end;

procedure TfCrudPedido.FormCreate(Sender: TObject);
begin
  inherited;
  Persistencia.qCliente.Open;
  Persistencia.qProdutosPedidoPossui.Open;
end;

procedure TfCrudPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  Persistencia.qCliente.Close;
  Persistencia.qProdutosPedidoPossui.Close;
end;

Initialization

RegisterClass(TfCrudPedido);

Finalization

UnRegisterClass(TfCrudPedido);

end.
