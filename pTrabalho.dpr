program pTrabalho;

uses
  Vcl.Forms,
  uInicial in 'tela-inicial\uInicial.pas' {fTelaInicial},
  uPersistencia in 'Persistencia\uPersistencia.pas' {Persistencia: TDataModule},
  uBase in '..\tela-base\uBase.pas' {fBase},
  uMenu in 'tela-menu\uMenu.pas' {fMenu},
  uCrudUsuario in 'tela-crud-usuario\uCrudUsuario.pas' {fCrudUsuario},
  uControleTelas in 'util\uControleTelas.pas',
  uAssociacaoTelas in 'tela-associacao-telas\uAssociacaoTelas.pas' {fAssociacaoTelas},
  uCrudProduto in 'tela-crud-produto\uCrudProduto.pas' {fCrudProduto},
  uCrudCliente in 'tela-crud-cliente\uCrudCliente.pas' {fCrudCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPersistencia, Persistencia);
  Application.CreateForm(TfTelaInicial, fTelaInicial);
  Application.Run;
end.
