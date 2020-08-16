unit uFaturamentoItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, uPersistencia;

type
  TfFaturamentoItens = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsoFaturamento: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dsoCliente: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    dsoItensNaoFaturados: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFaturamentoItens: TfFaturamentoItens;

implementation

{$R *.dfm}

procedure TfFaturamentoItens.Button1Click(Sender: TObject);
begin
  Persistencia.qProduto.Locate('idProduto',
    Persistencia.qProdutosNaoForamFaturadosidProduto.Value, []);

  if not(Persistencia.qProdutosNaoForamFaturados.IsEmpty) and
    ((Persistencia.qProdutosNaoForamFaturadosquantidade.Value >
    Persistencia.qProdutoqtdeEstoque.Value) or
    (Persistencia.qProdutoqtdeEstoque.Value -
    Persistencia.qProdutosNaoForamFaturadosquantidade.Value < 0)) then
  begin
    ShowMessage('Quantidade a ser faturada excede estoque!');
  end
  else
  begin
    Persistencia.qProduto.Edit;
    Persistencia.qProdutoqtdeEstoque.AsInteger :=
      Persistencia.qProdutoqtdeEstoque.Value -
      Persistencia.qProdutosNaoForamFaturadosquantidade.Value;
    Persistencia.qProduto.Post;

    Persistencia.qFaturamentoItem.Append;
    Persistencia.qFaturamentoItemidFaturamento.AsInteger :=
      Persistencia.qFaturamentoidFaturamento.AsInteger;
    Persistencia.qFaturamentoItemidProduto.AsInteger :=
      Persistencia.qProdutosNaoForamFaturadosidProduto.Value;
    Persistencia.qFaturamentoItemidPedido.AsInteger :=
      Persistencia.qProdutosNaoForamFaturadosidPedido.Value;
    Persistencia.qFaturamentoItem.Post;

    Persistencia.qProdutosNaoForamFaturados.Close;
    Persistencia.qProdutosNaoForamFaturados.Open;
  end;
end;

procedure TfFaturamentoItens.FormCreate(Sender: TObject);
begin
  Persistencia.qProdutosNaoForamFaturados.Parameters.ParamByName('idCliente')
    .Value := Persistencia.qClienteidCliente.AsInteger;
  Persistencia.qProdutosNaoForamFaturados.Open;

  Persistencia.qProduto.Open;
  Persistencia.qFaturamentoItem.Open;
end;

procedure TfFaturamentoItens.FormDestroy(Sender: TObject);
begin
  Persistencia.qProdutosNaoForamFaturados.Close;

  Persistencia.qProduto.Close;
  Persistencia.qFaturamentoItem.Close;
end;

Initialization

RegisterClass(TfFaturamentoItens);

Finalization

UnRegisterClass(TfFaturamentoItens);

end.
