unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, uPersistencia,
  uControleTelas;

type
  TfMenu = class(TForm)
    btnUsuario: TButton;
    btnCliente: TButton;
    btnProduto: TButton;
    btnPedido: TButton;
    btnEntradaEstoque: TButton;
    btnFaturamento: TButton;
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
    procedure btnEntradaEstoqueClick(Sender: TObject);
    procedure btnFaturamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

{$R *.dfm}

procedure TfMenu.btnPedidoClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnPedido.Hint);
end;

procedure TfMenu.btnProdutoClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnProduto.Hint);
end;

procedure TfMenu.btnUsuarioClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnUsuario.Hint);
end;

procedure TfMenu.btnEntradaEstoqueClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnEntradaEstoque.Hint);
end;

procedure TfMenu.btnFaturamentoClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnFaturamento.Hint);
end;

procedure TfMenu.btnClienteClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnCliente.Hint);
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  Persistencia.qTelasLoginPossui.Parameters.ParamByName('idUsuario').Value :=
    Persistencia.qLoginID.AsInteger;
  Persistencia.qTelasLoginPossui.Open;

  btnUsuario.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnUsuario.Hint, []);
  btnCliente.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnCliente.Hint, []);
  btnProduto.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnProduto.Hint, []);
  btnPedido.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnPedido.Hint, []);
  btnEntradaEstoque.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnEntradaEstoque.Hint, []);
  btnFaturamento.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnFaturamento.Hint, []);
end;

procedure TfMenu.FormDestroy(Sender: TObject);
begin
  Persistencia.qTelasLoginPossui.Close;

  Persistencia.qLogin.Close;
  Persistencia.qLogin.Open;
end;

Initialization

RegisterClass(TfMenu);

Finalization

UnRegisterClass(TfMenu);

end.
