unit uCrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, uPersistencia, Vcl.DBCtrls, Vcl.Mask;

type
  TfCrudDisciplina = class(TfBase)
    Label1: TLabel;
    edId: TDBEdit;
    Label2: TLabel;
    edNome: TDBEdit;
    Label3: TLabel;
    edDescricao: TDBMemo;
    Label4: TLabel;
    edMedia: TDBEdit;
    cbOpcional: TDBCheckBox;
    Label5: TLabel;
    edDataCriacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudDisciplina: TfCrudDisciplina;

implementation

{$R *.dfm}

end.
