unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, uPersistencia,
  uControleTelas;

type
  TfMenu = class(TForm)
    btnUsuarios: TButton;
    btnClientes: TButton;
    Image1: TImage;
    btnProdutos: TButton;
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

{$R *.dfm}

procedure TfMenu.btnProdutosClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnProdutos.Hint);
end;

procedure TfMenu.btnUsuariosClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnUsuarios.Hint);
end;

procedure TfMenu.btnClientesClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnClientes.Hint);
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  Persistencia.qTelasLoginPossui.Parameters.ParamByName('idUsuario').Value :=
    Persistencia.qLoginID.AsInteger;
  Persistencia.qTelasLoginPossui.Open;

  btnClientes.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnClientes.Hint, []);
  btnProdutos.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnProdutos.Hint, []);
  btnUsuarios.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnUsuarios.Hint, []);
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
