program pTrabalho;

uses
  Vcl.Forms,
  uInicial in 'tela-inicial\uInicial.pas' {fTelaInicial},
  uPersistencia in 'Persistencia\uPersistencia.pas' {Persistencia: TDataModule},
  uBase in '..\tela-base\uBase.pas' {fBase},
  uMenu in 'tela-menu\uMenu.pas' {fMenu},
  uCrudUsuario in 'tela-crud-usuario\uCrudUsuario.pas' {fCrudUsuario},
  uAssociacaoTelas in 'tela-telas\uAssociacaoTelas.pas' {fAssociacaoTelas},
  uCrudDisciplina in 'tela-crud-disciplina\uCrudDisciplina.pas' {fCrudDisciplina};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfTelaInicial, fTelaInicial);
  Application.CreateForm(TPersistencia, Persistencia);
  Application.CreateForm(TfCrudDisciplina, fCrudDisciplina);
  Application.Run;
end.
