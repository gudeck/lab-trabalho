unit uEntradaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uPersistencia, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfEntradaEstoque = class(TForm)
    edCodigoBarras: TLabeledEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnEnviar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEntradaEstoque: TfEntradaEstoque;

implementation

{$R *.dfm}

procedure TfEntradaEstoque.btnEnviarClick(Sender: TObject);
begin

  Persistencia.dsEntradaEstoque.First;
  while not Persistencia.dsEntradaEstoque.Eof do
  begin
    Persistencia.qProduto.Locate('idProduto',
      Persistencia.dsEntradaEstoqueidProduto.AsInteger, []);

    Persistencia.qProduto.Edit;
    Persistencia.qProdutoqtdeEstoque.AsInteger :=
      Persistencia.qProdutoqtdeEstoque.Value +
      Persistencia.dsEntradaEstoquequantidade.Value;
    Persistencia.qProduto.Post;

    Persistencia.dsEntradaEstoque.Next;
  end;

  Persistencia.dsEntradaEstoque.Edit;
  Persistencia.dsEntradaEstoque.Post;
  Persistencia.dsEntradaEstoque.ApplyUpdates(-1);

  Persistencia.dsEntradaEstoque.EmptyDataSet;
end;

procedure TfEntradaEstoque.edCodigoBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if (Persistencia.qProduto.Locate('codigobarras',
      StrToInt(edCodigoBarras.Text), [])) then
    begin
      if (Persistencia.dsEntradaEstoque.Locate('idProduto',
        Persistencia.qProdutoidProduto.Value, [])) then
      begin
        Persistencia.dsEntradaEstoque.Edit;
        Persistencia.dsEntradaEstoquequantidade.AsInteger :=
          Persistencia.dsEntradaEstoquequantidade.Value + 1;
      end
      else
      begin
        Persistencia.dsEntradaEstoque.Append;
        Persistencia.dsEntradaEstoqueidProduto.AsInteger :=
          Persistencia.qProdutoidProduto.Value;
        Persistencia.dsEntradaEstoquequantidade.AsInteger := 1;
        Persistencia.dsEntradaEstoquedataEntrada.AsDateTime := Now;
      end;
    end
    else
      ShowMessage('Produto inextistente.');
    edCodigoBarras.Clear;
  end;
end;

procedure TfEntradaEstoque.FormCreate(Sender: TObject);
begin
  Persistencia.qProduto.Open;

  Persistencia.qEntradaEstoque.Open;
  Persistencia.dsEntradaEstoque.Open;

  Persistencia.dsEntradaEstoque.EmptyDataSet;
end;

procedure TfEntradaEstoque.FormDestroy(Sender: TObject);
begin
  Persistencia.qProduto.Close;

  Persistencia.dsEntradaEstoque.Close;
  Persistencia.qEntradaEstoque.Close;
end;

Initialization

RegisterClass(TfEntradaEstoque);

Finalization

UnRegisterClass(TfEntradaEstoque);

end.
