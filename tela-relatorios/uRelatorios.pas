unit uRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPersistencia, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache,
  ppDesignLayer, ppParameter, ppProd, ppReport;

type
  TfRelatorios = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnRelatorio05: TButton;
    pplRelatorio05: TppDBPipeline;
    rpRelatorio05: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    procedure btnRelatorio05Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorios: TfRelatorios;

implementation

{$R *.dfm}

procedure TfRelatorios.btnRelatorio05Click(Sender: TObject);
begin
  rpRelatorio05.Print;
end;

procedure TfRelatorios.FormCreate(Sender: TObject);
begin
  Persistencia.qRelatorio05.Open;
end;

procedure TfRelatorios.FormDestroy(Sender: TObject);
begin
  Persistencia.qRelatorio05.Close;
end;

Initialization

RegisterClass(TfRelatorios);

Finalization

UnRegisterClass(TfRelatorios);

end.
