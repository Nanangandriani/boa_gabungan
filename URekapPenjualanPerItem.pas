unit URekapPenjualanPerItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxCalendar, cxButtonEdit, frxExportXLSX, frxExportXLS, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, MemDS, DBAccess, Uni,
  dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFRekapPenjualanPerItem = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    edTP: TcxBarEditItem;
    QRekapPenjualan: TUniQuery;
    QCetak: TUniQuery;
    frxDBDBHPenjualan: TfrxDBDataset;
    dsRekap: TDataSource;
    Report: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    edKelompokBarang: TcxBarEditItem;
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edKelompokBarangPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    strCodeTP,strGropID:String;
  end;

  function FRekapPenjualanPerItem: TFRekapPenjualanPerItem;

//var
//  FRekapPenjualanPerItem: TFRekapPenjualanPerItem;

implementation

{$R *.dfm}

uses UMasterData, UMy_Function;
var
  rekappenjualanperitem : TFRekapPenjualanPerItem;

function FRekapPenjualanPerItem: TFRekapPenjualanPerItem;
begin
  if rekappenjualanperitem <> nil then
    FRekapPenjualanPerItem:= rekappenjualanperitem
  else
    Application.CreateForm(TFRekapPenjualanPerItem, Result);
end;


procedure TFRekapPenjualanPerItem.btPreviewClick(Sender: TObject);
var strReportName:string;
begin
  if edKelompokBarang.EditValue='' then
  begin
    MessageDlg('Kelompok Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_rekap_penjualan_peritem('+QuotedStr(strCodeTP)+','+strGropID+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+');';
      open;
    end;

    strReportName:='RekapPenjualanPer_Item';

    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
    Report.ShowReport();

  end;
end;

procedure TFRekapPenjualanPerItem.btSearchClick(Sender: TObject);
begin
  if edKelompokBarang.EditValue='' then
  begin
    MessageDlg('Kelompok Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    with QRekapPenjualan do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_rekap_penjualan_peritem('+QuotedStr(strCodeTP)+','+strGropID+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+','+
      QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+');';
      open;
    end;
  end;
end;

procedure TFRekapPenjualanPerItem.dxBarLargeButton2Click(Sender: TObject);
begin
  QRekapPenjualan.Close;
  strCodeTP:='';
  strGropID:='';
  edTP.EditValue:='';
  edKelompokBarang.EditValue:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
end;

procedure TFRekapPenjualanPerItem.edKelompokBarangPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Kelompok Barang';
  FMasterData.vcall:='rekappenjualanperitem_kelompokbarang';
  FMasterData.update_grid('group_id','group_name',QuotedStr(''),'t_item_group','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualanPerItem.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rekappenjualanperitem_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapPenjualanPerItem.FormCreate(Sender: TObject);
begin
  rekappenjualanperitem:=Self;
end;

procedure TFRekapPenjualanPerItem.FormDestroy(Sender: TObject);
begin
  rekappenjualanperitem:=nil;
end;

procedure TFRekapPenjualanPerItem.FormShow(Sender: TObject);
begin
  strCodeTP:='';
  strGropID:='';
  edTP.EditValue:='';
  edKelompokBarang.EditValue:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
end;

procedure TFRekapPenjualanPerItem.ReportGetValue(const VarName: string;
  var Value: Variant);
  var strPeriode:String;
begin
  if CompareText(VarName, 'lap') = 0 then
  Value := 'REKAP PENJUALAN PER ITEM PRODUK '+UpperCase(edKelompokBarang.EditValue);

  if CompareText(VarName, 'prsh') = 0 then
  Value := 'TP : '+UpperCase(edTP.EditValue);

  if dtAwal.EditValue<>dtAkhir.EditValue then
  begin
    strPeriode:=FormatDateTime('dd mmmm yyyy',dtAwal.EditValue)+' S/D '+FormatDateTime('dd mmmm yyyy',dtAkhir.EditValue) ;
  end else begin
    strPeriode:=FormatDateTime('dd mmmm yyyy',dtAwal.EditValue) ;
  end;

  if CompareText(VarName, 'periode') = 0 then
  Value := 'PERIODE : '+strPeriode;

end;

initialization
  RegisterClass(TFRekapPenjualanPerItem);


end.
