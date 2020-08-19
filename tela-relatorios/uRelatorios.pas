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
    btnRelatorio03: TButton;
    btnRelatorio04: TButton;
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
    pplRelatorio04: TppDBPipeline;
    rpRelatorio04: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel10: TppLabel;
    pplRelatorio03: TppDBPipeline;
    rpRelatorio03: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine5: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine6: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel16: TppLabel;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppLabel17: TppLabel;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText13: TppDBText;
    ppLabel20: TppLabel;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc11: TppDBCalc;
    procedure btnRelatorio05Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnRelatorio04Click(Sender: TObject);
    procedure btnRelatorio03Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorios: TfRelatorios;

implementation

{$R *.dfm}

procedure TfRelatorios.btnRelatorio03Click(Sender: TObject);
begin
  rpRelatorio03.Print;
end;

procedure TfRelatorios.btnRelatorio04Click(Sender: TObject);
begin
  rpRelatorio04.Print;
end;

procedure TfRelatorios.btnRelatorio05Click(Sender: TObject);
begin
  rpRelatorio05.Print;
end;

procedure TfRelatorios.FormCreate(Sender: TObject);
begin
  Persistencia.qRelatorio03.Open;
  Persistencia.qRelatorio04.Open;
  Persistencia.qRelatorio05.Open;
end;

procedure TfRelatorios.FormDestroy(Sender: TObject);
begin
  Persistencia.qRelatorio03.Close;
  Persistencia.qRelatorio04.Close;
  Persistencia.qRelatorio05.Close;
end;

Initialization

RegisterClass(TfRelatorios);

Finalization

UnRegisterClass(TfRelatorios);

end.
