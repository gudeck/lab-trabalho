unit uAssociacaoTelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  uPersistencia;

type
  TfAssociacaoTelas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnSelecionar: TButton;
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAssociacaoTelas: TfAssociacaoTelas;

implementation

{$R *.dfm}

procedure TfAssociacaoTelas.btnSelecionarClick(Sender: TObject);
begin
  Persistencia.qUsuarioTelas.Append;
  Persistencia.qUsuarioTelasID_USUARIO.AsInteger :=
    Persistencia.qUsuarioID.Value;
  Persistencia.qUsuarioTelasID_TELA.AsInteger :=
    Persistencia.qTelasUsuarioNaoPossuiID.Value;
  Persistencia.qUsuarioTelas.Post;

  Self.Close;
end;

procedure TfAssociacaoTelas.FormCreate(Sender: TObject);
begin
  Persistencia.qTelasUsuarioNaoPossui.Parameters.ParamByName('idUsuario').Value
    := Persistencia.qUsuarioID.Value;

  Persistencia.qTelasUsuarioNaoPossui.Open;
  Persistencia.qUsuarioTelas.Open;
end;

procedure TfAssociacaoTelas.FormDestroy(Sender: TObject);
begin
  Persistencia.qTelasUsuarioNaoPossui.Close;
  Persistencia.qUsuarioTelas.Close;

  Persistencia.qTelasUsuarioPossui.Close;
  Persistencia.qTelasUsuarioPossui.Open;
end;

Initialization

RegisterClass(TfAssociacaoTelas);

Finalization

UnRegisterClass(TfAssociacaoTelas);

end.
