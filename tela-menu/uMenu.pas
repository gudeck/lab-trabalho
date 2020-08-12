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
    Image1: TImage;
    btnProduto: TButton;
    btnPedido: TButton;
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnPedidoClick(Sender: TObject);
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

procedure TfMenu.btnClienteClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnCliente.Hint);
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  Persistencia.qTelasLoginPossui.Parameters.ParamByName('idUsuario').Value :=
    Persistencia.qLoginID.AsInteger;
  Persistencia.qTelasLoginPossui.Open;

  btnCliente.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnCliente.Hint, []);
  btnProduto.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnProduto.Hint, []);
  btnUsuario.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnUsuario.Hint, []);
  btnPedido.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnPedido.Hint, []);
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
