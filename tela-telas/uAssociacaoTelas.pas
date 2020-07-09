unit uAssociacaoTelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, uPersistencia, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfAssociacaoTelas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    edNome: TDBEdit;
    btBuscar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAssociacaoTelas: TfAssociacaoTelas;

implementation

{$R *.dfm}

procedure TfAssociacaoTelas.btBuscarClick(Sender: TObject);
begin
  Persistencia.dsTela.Close;
  Persistencia.dsTela.Open;
end;

procedure TfAssociacaoTelas.FormShow(Sender: TObject);
begin
  Persistencia.dsTelaAll.Open;
end;

end.
