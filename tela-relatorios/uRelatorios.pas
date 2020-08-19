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
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppDBText14: TppDBText;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc10: TppDBCalc;
    pplRelatorio02: TppDBPipeline;
    rpRelatorio02: TppReport;
    ppParameterList4: TppParameterList;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLine3: TppLine;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppSummaryBand4: TppSummaryBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppLine7: TppLine;
    ppLabel25: TppLabel;
    ppDBText18: TppDBText;
    ppLabel26: TppLabel;
    ppDBText19: TppDBText;
    ppLabel27: TppLabel;
    ppDBText20: TppDBText;
    ppLabel28: TppLabel;
    ppDBText21: TppDBText;
    ppLine8: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText22: TppDBText;
    ppLine9: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel30: TppLabel;
    ppLine10: TppLine;
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
