unit uCrudUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, uPersistencia, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons,
  uAssociacaoTelas;

type
  TfCrudUsuario = class(TfBase)
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edSenha: TDBEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudUsuario: TfCrudUsuario;

implementation

{$R *.dfm}


end.
