unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, uCrud, uCrudUsuario, uAssociacaoTelas;

type
  TfMenu = class(TForm)
    btnDisciplinas: TButton;
    btnUsuarios: TButton;
    Image1: TImage;
    procedure btnDisciplinasClick(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnTelasClick(Sender: TObject);
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

procedure TfMenu.btnTelasClick(Sender: TObject);
begin
  fAssociacaoTelas.Show;
end;

procedure TfMenu.btnUsuariosClick(Sender: TObject);
begin
  fCrudUsuario.Show;
end;

end.
