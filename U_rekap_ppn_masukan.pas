unit U_rekap_ppn_masukan;

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
  dxRibbon, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, frxClass, DataDriverEh,
  MemTableEh, MemDS, DBAccess, Uni, frxDBSet;

type
  TFrekap_ppn_masukan = class(TForm)
    QRekap_ppn_masukan: TUniQuery;
    DSppn_masukan: TDataSource;
    Mem_ppn_masukan: TMemTableEh;
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
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxPrint: TdxBarLargeButton;
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
    DTPick1: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridRekap_ppn: TDBGridEh;
    frxDBDataset1: TfrxDBDataset;
    Qrekap_ppn: TUniQuery;
    frxrekapppnmasukan: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  Frekap_ppn_masukan: TFrekap_ppn_masukan;

implementation

{$R *.dfm}

var
  RealFrekap_ppn_masukan: TFrekap_ppn_masukan;

function Frekap_ppn_masukan: TFrekap_ppn_masukan;
begin
  if RealFrekap_ppn_masukan <>nil then
     Frekap_ppn_masukan:=RealFrekap_ppn_masukan
  else
  Application.CreateForm(TFrekap_ppn_masukan,Result);
end;


procedure TFrekap_ppn_masukan.ActPrintExecute(Sender: TObject);
begin
  with Qrekap_ppn do
  begin
    close;
    sql.Clear;
    sql.Text:='select DISTINCT a.voucher_no,a.trans_date,'''' nofaktur,a.remark,a.to_,0 dpp,a.paid_amount,'+
              'a.code_account,a."position" from (SELECT a.voucher_no,b.trans_date,'''' nofaktur,a.remark,a.to_,0 dpp,b.paid_amount,b.code_account,b."position" FROM t_cash_bank_expenditure a '+
              'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) a '+
              'where code_account=''1131.06'' and "position"=''D'' and '+
              'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' order by trans_date, voucher_no asc';
    open;
  end;
  frxrekapppnmasukan.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_ppn_masukan.fr3');
  Tfrxmemoview(frxrekapppnmasukan.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmm yyyy',DTPick1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTPick2.EditValue);
  frxrekapppnmasukan.ReportOptions.Name:='Rekap PPN Masukan';
  frxrekapppnmasukan.ShowReport();
end;

procedure TFrekap_ppn_masukan.DxRefreshClick(Sender: TObject);
begin
   if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Awal Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Akhir Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    DBGridRekap_ppn.StartLoadingStatus();
    with QRekap_ppn_masukan do
    begin
      close;
      sql.Clear;
      sql.Text:='select DISTINCT a.voucher_no,a.trans_date,'''' nofaktur,a.remark,a.to_,0 dpp,a.paid_amount,'+
                'a.code_account,a."position" from (SELECT a.voucher_no,b.trans_date,'''' nofaktur,a.remark,a.to_,0 dpp,b.paid_amount,b.code_account,b."position" '+
                'FROM t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) a '+
                'where code_account=''1131.06'' and "position"=''D'' and '+
                'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' order by trans_date, voucher_no asc';
      open;
    end;
    Mem_ppn_masukan.Close;
    Mem_ppn_masukan.Open;
    DBGridRekap_ppn.FinishLoadingStatus();
end;

procedure TFrekap_ppn_masukan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=CaFree;
end;

procedure TFrekap_ppn_masukan.FormCreate(Sender: TObject);
begin
  RealFrekap_ppn_masukan:=self;
end;

procedure TFrekap_ppn_masukan.FormDestroy(Sender: TObject);
begin
   RealFrekap_ppn_masukan:=Nil;
end;

procedure TFrekap_ppn_masukan.FormShow(Sender: TObject);
begin
   DTPick1.EditValue:=date();
   DTPick2.EditValue:=date();
end;

Initialization
  RegisterClasses([TFrekap_ppn_masukan]);

end.
