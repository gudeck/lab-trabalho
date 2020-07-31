unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uCrud, Vcl.ExtCtrls, uMenu, uPersistencia, Vcl.Imaging.jpeg;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
    Image1: TImage;
    procedure btEntrarClick(Sender: TObject);
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

  if not Persistencia.qUsuario.Locate('NOME;SENHA',
    VarArrayOf([edNome.Text, edSenha.Text]), []) then
    ShowMessage('Usuário ou senha inválidos!')
  else
  begin
    fMenu.Show;
  end;

end;

end.
