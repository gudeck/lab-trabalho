unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, uPersistencia,
  uControleTelas;

type
  TfMenu = class(TForm)
    btnDisciplinas: TButton;
    btnUsuarios: TButton;
    Image1: TImage;
    procedure btnDisciplinasClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

{$R *.dfm}

procedure TfMenu.btnDisciplinasClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnDisciplinas.Hint);
end;

procedure TfMenu.btnUsuariosClick(Sender: TObject);
begin
  ControleTelas.chamaTela(btnUsuarios.Hint);
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  Persistencia.qTelasLoginPossui.Parameters.ParamByName('idUsuario').Value :=
    Persistencia.qLoginID.AsInteger;
  Persistencia.qTelasLoginPossui.Open;

  btnDisciplinas.Visible := Persistencia.qTelasLoginPossui.Locate('NOME',
    btnDisciplinas.Hint, []);
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
