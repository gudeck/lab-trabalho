unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls,
  uPersistencia, uControleTelas;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
    Image1: TImage;
    procedure btEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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

  if not Persistencia.qLogin.Locate('NOME;SENHA',
    VarArrayOf([edNome.Text, edSenha.Text]), []) then
    ShowMessage('Usuário ou senha inválidos!')
  else
  begin
    ControleTelas.chamaTela('fMenu');
  end;

end;

procedure TfTelaInicial.FormCreate(Sender: TObject);
begin
  Persistencia.qLogin.Open;
end;

procedure TfTelaInicial.FormDestroy(Sender: TObject);
begin
  Persistencia.qLogin.Close;
end;

end.
