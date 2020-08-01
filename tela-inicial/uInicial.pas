unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, uMenu, Vcl.ComCtrls,
  uPersistencia;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
    Image1: TImage;
    procedure btEntrarClick(Sender: TObject);
    procedure chamaTela(nomeForm: string);
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

  if not Persistencia.dsUsuario.Locate('NOME;SENHA',
    VarArrayOf([edNome.Text, edSenha.Text]), []) then
    ShowMessage('Usuário ou senha inválidos!')
  else
  begin
    Persistencia.qTelasUsuarioPossui.Close;
    Persistencia.qTelasUsuarioPossui.Parameters.ParamByName('idUsuario').Value
      := Persistencia.dsUsuarioID.AsInteger;
    Persistencia.qTelasUsuarioPossui.Open;
    chamaTela('fMenu');
  end;

end;

procedure TfTelaInicial.chamaTela(nomeForm: string);
var
  persistentClass: TPersistentClass;
begin
  persistentClass := Getclass('T' + trim(nomeForm));
  if (persistentClass <> nil) then
  begin
    with tFormClass(persistentClass).Create(Application) do
      try
        Name := nomeForm;
        ShowModal;
      finally
        Free;
        tFormClass(persistentClass) := nil;
      end;
  end;

end;

end.
