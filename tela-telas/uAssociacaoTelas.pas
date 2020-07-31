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
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAssociacaoTelas: TfAssociacaoTelas;

implementation

{$R *.dfm}

end.
