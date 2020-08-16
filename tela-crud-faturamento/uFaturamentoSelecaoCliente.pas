unit uFaturamentoSelecaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPersistencia, Data.DB, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, uControleTelas;

type
  TfFaturamentoSelecaoCliente = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    btnSelecionar: TButton;
    dsoFaturamento: TDataSource;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFaturamentoSelecaoCliente: TfFaturamentoSelecaoCliente;

implementation

{$R *.dfm}

procedure TfFaturamentoSelecaoCliente.btnSelecionarClick(Sender: TObject);
begin
  Persistencia.qFaturamentodataFaturamento.AsDateTime := Now;
  Persistencia.qFaturamento.Post;

  Panel1.Enabled := False;
  ControleTelas.chamaTela(btnSelecionar.Hint);
end;

procedure TfFaturamentoSelecaoCliente.FormCreate(Sender: TObject);
begin
  Persistencia.qCliente.Open;

  Persistencia.qFaturamento.Open;
  Persistencia.qFaturamento.Append;
end;

procedure TfFaturamentoSelecaoCliente.FormDestroy(Sender: TObject);
begin
  Persistencia.qCliente.Close;
  Persistencia.qFaturamento.Close;
end;

Initialization

RegisterClass(TfFaturamentoSelecaoCliente);

Finalization

UnRegisterClass(TfFaturamentoSelecaoCliente);

end.
