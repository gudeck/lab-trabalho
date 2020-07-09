unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCrud, Vcl.ExtCtrls,
  uMenu, uPersistencia;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
    procedure btEntrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTelaInicial: TfTelaInicial;

implementation

{$R *.dfm}

procedure TfTelaInicial.btEntrarClick(Sender: TObject);
begin
  Persistencia.qUsuario.SQL.Text :=
    'SELECT * FROM LAB.USUARIO WHERE NOME=:nome AND SENHA=:senha';
  Persistencia.qUsuario.Parameters.ParamByName('nome').Value := edNome.Text;
  Persistencia.qUsuario.Parameters.ParamByName('senha').Value := edSenha.Text;
  Persistencia.qUsuario.Open;

  if Persistencia.qUsuario.IsEmpty then
    ShowMessage('Usuário ou senha inálido!')
  else
    fMenu.Show;
end;

procedure TfTelaInicial.FormShow(Sender: TObject);
begin
  Persistencia.dsUsuario.Open;
end;

end.
