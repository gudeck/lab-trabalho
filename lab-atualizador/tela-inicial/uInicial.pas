unit uInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.ComCtrls, ShellAPI;

type
  TfTelaInicial = class(TForm)
    btEntrar: TButton;
    edNome: TLabeledEdit;
    edSenha: TLabeledEdit;
    function GetExeVersion(Exe: string): string;
    function isEmpty(Edit: TLabeledEdit): Boolean;
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
var
  Executavel, ExecutavelServidor, VersaoExecutavel: string;
begin

  if isEmpty(edNome) or isEmpty(edSenha) then
  begin
    ShowMessage('Usuário ou senha inválidos!');
  end
  else
  begin
    Executavel := 'D:\Users\guzuc\Desktop\executavel-delphi\pTrabalho.exe';
    ExecutavelServidor :=
      'D:\Users\guzuc\Desktop\atualizador-delphi\pTrabalho.exe';

    VersaoExecutavel := GetExeVersion(Executavel);

    if VersaoExecutavel <> (GetExeVersion(ExecutavelServidor)) then
    begin
      ShowMessage('Versão diferente da encontrada no servidor! Atualizando...');
      CopyFile(PCHAR(ExecutavelServidor), PCHAR(Executavel), false);
    end;

    ShellExecute(handle, 'open', PCHAR(Executavel),
      PCHAR(edNome.Text + ' ' + edSenha.Text + ' ' + VersaoExecutavel), '',
      SW_SHOWNORMAL);

    Application.Terminate;
  end;
end;

function TfTelaInicial.GetExeVersion(Exe: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PCHAR(Exe), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PCHAR(Exe), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [V1, V2, V3, V4]);
  except
    Result := '1.0.0';
  end;
end;

function TfTelaInicial.isEmpty(Edit: TLabeledEdit): Boolean;
begin
  Result := Trim(Edit.Text).isEmpty;
end;

end.
