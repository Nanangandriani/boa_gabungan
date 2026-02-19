unit URpt_BukuHarianReturPembelian;

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
  DynVarsEh, MemTableDataEh, Data.DB, cxCalendar, cxButtonEdit, cxTextEdit,
  cxDropDownEdit, dxBar, cxBarEditItem, cxClasses, MemTableEh, MemDS, DBAccess,
  Uni, frxClass, frxDBSet, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon,
  Vcl.StdCtrls, RzBtnEdt, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls;

type
  TFBuku_HarianReturPembelian = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Bprint: TRzBitBtn;
    BBatal: TRzBitBtn;
    BPrint2: TRzBitBtn;
    BPrint11: TRzBitBtn;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    edkd_akun1: TRzEdit;
    Ednm_akun1: TRzButtonEdit;
    CKUm: TCheckBox;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    Rpt: TfrxReport;
    DbRptSP: TfrxDBDataset;
    QRptBHP: TUniQuery;
    MemBHP: TMemTableEh;
    dsbph: TDataSource;
    QCategory: TUniQuery;
    QRptBHPNon: TUniQuery;
    DbRptBHPNon: TfrxDBDataset;
    QRptBHPDet: TUniQuery;
    DbRptSPdet: TfrxDBDataset;
    Rpt_BHP: TfrxDBDataset;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    dtMulai: TcxBarEditItem;
    dtSelesai: TcxBarEditItem;
    EdAkun: TcxBarEditItem;
    Ednm_akun: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    CB_SBU: TdxBarCombo;
    CbKategori: TcxBarEditItem;
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure queryreport;
  end;

var
  FBuku_HarianReturPembelian: TFBuku_HarianReturPembelian;

implementation

{$R *.dfm}

uses UDatamodule, UMy_Function;
procedure TFBuku_HarianReturPembelian.dxBarLargeButton1Click(Sender: TObject);
begin
  dm.QPerusahaan.Close;
  dm.QPerusahaan.open;
    queryreport;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Buku_Harian_Retur_Pembelian.Fr3');
    SetMemo(Rpt,'jns_hutang',' BUKU HARIAN RETUR PEMBELIAN ');//+CbKategori.EditValue);
    SetMemo(Rpt,'MPeriode',' Tanggal  : '+FormatDateTime('dd mmmm yyyy',DtMulai.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTSelesai.EditValue));
    Rpt.ShowReport();
end;

procedure TFBuku_HarianReturPembelian.DxRefreshClick(Sender: TObject);
begin
   queryreport;
end;

procedure TFBuku_HarianReturPembelian.queryreport;
begin
  with QRptBHP do
  begin
    close;
    sql.Clear;
  sql.Text:='select return_no trans_no,return_date trans_date,faktur_no,po_no,'''' ak_ppn,'''' ak_ppn_name,0 ppn,0 grandtotal,'+
  ' ''''ak_htng,'''' ak_ht_name,item_code,qty,unit,item_stock_code,item_name,'''' account_ppn,subtotal,'+
  ' ak_pemb,ak_pemb_name,group_name,supplier_name,supplier_code from '+
  ' (select * from "VBHPReturn_Pembelian" ) x where '+
  ' return_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtMulai.EditValue))+' '+
  ' and return_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtSelesai.EditValue))+' '+
  ' union '+
  ' select return_no,return_date,faktur_no,'''' po_no,ak_ppn,ak_ppn_name,sum(ppn) ppn,sum(grandtotal) grandtotal,'+
  ' ak_htng,ak_ht_name,'''' item_code,0 qty,''''unit,''''item_stock_code,'''' item_name,account_ppn,  '+
  ' 0 subtotal,'''' ak_pemb,'''' ak_pemb_name,'''' group_name,supplier_name,supplier_code from '+
  ' (select * from "VBHPReturn_Pembelian"  where'+
  ' return_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtMulai.EditValue))+' '+
  ' and return_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtSelesai.EditValue))+' )X '+
  ' GROUP BY return_no,return_date,faktur_no,ak_ppn,ak_ppn_name,ak_htng,ak_ht_name,account_ppn,supplier_name,'+
  'supplier_code ORDER BY trans_date,trans_no,grandtotal  ASC';
 Open;
  end;
end;


// Contoh RegisterClass
Initialization
  RegisterClass(TFBuku_HarianReturPembelian);
end.
