unit ULap_Ikhtisar_Biaya_KasKecil_BOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls,
  dxRibbon, frxClass, frxDBSet, dxBar, cxBarEditItem, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DataDriverEh,
  MemTableEh, MemDS, DBAccess, Uni;

type
  TFLap_Ikhtisar_Baiaya_KasKecil_BOP = class(TForm)
    DSBHKasKecil: TDataSource;
    QBHKasKecil: TUniQuery;
    MemBHKasKecil: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    BtnClear: TdxBarLargeButton;
    txtkdacckredit1: TdxBarEdit;
    dxBarEdit3: TdxBarEdit;
    dxBarEdit2: TdxBarEdit;
    dxBarEdit4: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    DTPick11: TcxBarEditItem;
    QKasKecil: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    QPerusahaan: TUniQuery;
    QPerusahaancompany_code: TStringField;
    QPerusahaancompany_name: TStringField;
    QPerusahaanaddress: TStringField;
    QPerusahaantelp: TStringField;
    QPerusahaanemail: TStringField;
    QPerusahaannpwp: TStringField;
    QPerusahaancity: TStringField;
    QPerusahaanaddress2: TStringField;
    QPerusahaanid: TGuidField;
    QPerusahaancreated_at: TDateTimeField;
    QPerusahaancreated_by: TStringField;
    QPerusahaanupdated_at: TDateTimeField;
    QPerusahaanupdated_by: TStringField;
    QPerusahaandeleted_at: TDateTimeField;
    QPerusahaandeleted_by: TStringField;
    QPerusahaantype_of_business: TStringField;
    QPerusahaanlatitude: TStringField;
    QPerusahaanlongitude: TStringField;
    QPerusahaantax_status: TBooleanField;
    QPerusahaancurrency: TStringField;
    frxDBDatasetPers: TfrxDBDataset;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridKasKecil: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLap_Ikhtisar_Baiaya_KasKecil_BOP: TFLap_Ikhtisar_Baiaya_KasKecil_BOP;

implementation

{$R *.dfm}

end.
