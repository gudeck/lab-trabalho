program pTrabalho;

uses
  Vcl.Forms,
  uInicial in 'tela-inicial\uInicial.pas' {fTelaInicial},
  uPersistencia in 'Persistencia\uPersistencia.pas' {Persistencia: TDataModule},
  uBase in '..\tela-base\uBase.pas' {fBase},
  uCrud in 'tela-crud\uCrud.pas' {fCrudDisciplina},
  uMenu in 'tela-menu\uMenu.pas' {fMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfTelaInicial, fTelaInicial);
  Application.CreateForm(TPersistencia, Persistencia);
  Application.CreateForm(TfBase, fBase);
  Application.CreateForm(TfCrudDisciplina, fCrudDisciplina);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
