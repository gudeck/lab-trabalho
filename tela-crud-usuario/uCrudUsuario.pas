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
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrudUsuario: TfCrudUsuario;

implementation

{$R *.dfm}
// SELECT LAB.TELA.*
// FROM LAB.USUARIO_TELA
// JOIN LAB.TELA
// ON (USUARIO_TELA.ID_TELA = TELA.ID)
// WHERE LAB.USUARIO_TELA.ID_USUARIO=:idUsuario

procedure TfCrudUsuario.Button1Click(Sender: TObject);
begin
  inherited;
  fAssociacaoTelas.Show;

end;

procedure TfCrudUsuario.DBGridDblClick(Sender: TObject);
begin
  inherited;
  Persistencia.dsTela.Close;
  Persistencia.dsTela.Open;
end;

procedure TfCrudUsuario.FormShow(Sender: TObject);
begin
  inherited;

  Persistencia.dsTela.Close;
  Persistencia.dsTela.Open;

end;

end.
