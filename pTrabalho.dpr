program pTrabalho;

uses
  Vcl.Forms,
  uInicial in 'tela-inicial\uInicial.pas' {fTelaInicial},
  uPersistencia in 'Persistencia\uPersistencia.pas' {Persistencia: TDataModule},
  uMenu in 'tela-menu\uMenu.pas' {fMenu},
  uCrudUsuario in 'tela-crud-usuario\uCrudUsuario.pas' {fCrudUsuario},
  uControleTelas in 'util\uControleTelas.pas',
  uAssociacaoTelas in 'tela-associacao-telas\uAssociacaoTelas.pas' {fAssociacaoTelas},
  uCrudProduto in 'tela-crud-produto\uCrudProduto.pas' {fCrudProduto},
  uCrudCliente in 'tela-crud-cliente\uCrudCliente.pas' {fCrudCliente},
  uAssociacaoProdutos in 'tela-associacao-produtos\uAssociacaoProdutos.pas' {fAssociacaoProdutos},
  uEntradaEstoque in 'tela-entrada-estoque\uEntradaEstoque.pas' {fEntradaEstoque},
  uCrudPedido in 'tela-crud-pedido\uCrudPedido.pas' {fCrudPedido},
  uFaturamentoSelecaoCliente in 'tela-crud-faturamento\uFaturamentoSelecaoCliente.pas' {fFaturamentoSelecaoCliente},
  uBase in 'tela-base\uBase.pas' {fBase},
  uFaturamentoItens in 'tela-crud-faturamento\uFaturamentoItens.pas' {fFaturamentoItens},
  uRelatorios in 'tela-relatorios\uRelatorios.pas' {fRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPersistencia, Persistencia);
  Application.CreateForm(TfTelaInicial, fTelaInicial);
  Application.Run;
end.
