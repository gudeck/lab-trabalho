unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCrud, Vcl.ExtCtrls,
  uMenu;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure btEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTelaInicial: TfTelaInicial;

implementation

{$R *.dfm}

procedure TfTelaInicial.btEntrarClick(Sender: TObject);
begin
  fMenu.Show;
end;

end.
