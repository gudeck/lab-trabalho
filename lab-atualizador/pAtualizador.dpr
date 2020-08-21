program pAtualizador;

uses
  Vcl.Forms,
  uInicial in 'tela-inicial\uInicial.pas' {fTelaInicial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfTelaInicial, fTelaInicial);
  Application.Run;
end.
