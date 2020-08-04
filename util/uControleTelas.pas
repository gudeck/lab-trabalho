unit uControleTelas;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms;

type
  TControleTelas = class(TForm)
    procedure chamaTela(nomeForm: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControleTelas: TControleTelas;

implementation

procedure TControleTelas.chamaTela(nomeForm: string);
var
  persistentClass: TPersistentClass;
begin
  persistentClass := Getclass('T' + trim(nomeForm));
  if (persistentClass <> nil) then
  begin
    with tFormClass(persistentClass).Create(Application) do
      try
        Name := nomeForm;
        ShowModal;
      finally
        Free;
        tFormClass(persistentClass) := nil;
      end;
  end;

end;

end.
