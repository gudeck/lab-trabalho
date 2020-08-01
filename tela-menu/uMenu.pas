unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, uCrudDisciplina, uCrudUsuario,
  uAssociacaoTelas, Vcl.ComCtrls, uPersistencia;

type
  TfMenu = class(TForm)
    btnDisciplinas: TButton;
    btnUsuarios: TButton;
    Image1: TImage;
    procedure btnDisciplinasClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  fCrudDisciplina.Show;
end;

procedure TfMenu.btnUsuariosClick(Sender: TObject);
begin
  fCrudUsuario.Show;
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  btnDisciplinas.Visible := Persistencia.qTelasUsuarioPossui.Locate('NOME',
    btnDisciplinas.Hint, []);
  btnUsuarios.Visible := Persistencia.qTelasUsuarioPossui.Locate('NOME',
    btnUsuarios.Hint, []);
end;

Initialization

RegisterClass(TfMenu);

Finalization

UnRegisterClass(TfMenu);

end.
