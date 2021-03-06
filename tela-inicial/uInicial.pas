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
    ShowMessage('Usu�rio ou senha inv�lidos!')
  else
  begin
    ControleTelas.chamaTela('fMenu');
    edNome.Text := EmptyStr;
    edSenha.Text := EmptyStr;
  end;

end;

procedure TfTelaInicial.FormCreate(Sender: TObject);
begin
  Persistencia.qLogin.Open;

  edNome.Text := ParamStr(1);
  edSenha.Text := ParamStr(2);

  btEntrarClick(Sender);

end;

procedure TfTelaInicial.FormDestroy(Sender: TObject);
begin
  Persistencia.qLogin.Close;
end;

end.
