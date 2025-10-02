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
  TFLap_Ikhtisar_Biaya_KasKecil_BOP = class(TForm)
    DSKasKecilBOP: TDataSource;
    QKasKecilBOP: TUniQuery;
    MemKasKecilBOP: TMemTableEh;
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
    QCetak_KasKecil_BOP: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
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
    DBGridKasKecilBOP: TDBGridEh;
    DTPick2: TcxBarEditItem;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxDBDataset_Biaya_Penjualan: TfrxDBDataset;
    QKasKecil_BiayaPenjualan: TUniQuery;
    procedure DxRefreshClick(Sender: TObject);
    procedure dxPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  FLap_Ikhtisar_Biaya_KasKecil_BOP: TFLap_Ikhtisar_Biaya_KasKecil_BOP;

implementation

{$R *.dfm}

uses UMy_Function;

var
  RealFLap_Ikhtisar_Biaya_KasKecil_BOP: TFLap_Ikhtisar_Biaya_KasKecil_BOP;

function  FLap_Ikhtisar_Biaya_KasKecil_BOP: TFLap_Ikhtisar_Biaya_KasKecil_BOP;
begin
  if RealFLap_Ikhtisar_Biaya_KasKecil_BOP <> nil then
     FLap_Ikhtisar_Biaya_KasKecil_BOP:= RealFLap_Ikhtisar_Biaya_KasKecil_BOP
  else
    Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_BOP, Result);
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_BOP.dxPrintClick(
  Sender: TObject);
begin
    if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    with QCetak_KasKecil_BOP do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.actors_name,a.voucher_no,a.description,a."name",b.total, '+
                '(case when b1.amount is null then 0 else b1.amount end)b1, '+
                '(case when b2.amount is null then 0 else b2.amount end)b2, '+
                '(case when b3.amount is null then 0 else b3.amount end)b3, '+
                '(case when b4.amount is null then 0 else b4.amount end)b4, '+
                '(case when b5.amount is null then 0 else b5.amount end)b5, '+
                '(case when b6.amount is null then 0 else b6.amount end)b6, '+
                '(case when b7.amount is null then 0 else b7.amount end)b7, '+
                '(case when b8.amount is null then 0 else b8.amount end)b8, '+
                '(case when b9.amount is null then 0 else b9.amount end)b9, '+
                '(case when b10.amount is null then 0 else b10.amount end)b10, '+
                '(case when b11.amount is null then 0 else b11.amount end)b11  '+
                'from '+
                '(select  DISTINCT a.voucher_no from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue)) + ' and code_account=''1112''  and position=''K'')xx '+
                'left join  (select distinct a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from (SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=3 and '+
                'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue)) + ' order by voucher_no)a on a.voucher_no=xx.voucher_no '+
                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where a.code_account=b.code and b.type_id=3 '+
                'and a."position"=''D''  group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+

                'left join (select voucher_no,amount from(SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''SBG1'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PD1'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRA1'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PBP'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''ALP'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRM'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MR1'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MG1'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''BBM'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''AKP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''KPP'')b11 on a.voucher_no=b11.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no ';
      open;
    end;
    //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Ikhtisar_Kas_Kecil_BOP.fr3');
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Ikhtisar_Kas_Kecil_Biaya_Penjualan.fr3');
    Tfrxmemoview(frxReport1.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmm yyyy',DTPick1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTPick2.EditValue);
    frxReport1.ReportOptions.Name:='Laporan Ikhtisar Biaya Kas Kecil BOP';
    frxReport1.showreport;

    {if QCetak_KasKecil_BOP.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QCetak_KasKecil_BOP.RecordCount<>0 then
    begin
       cLocation := ExtractFilePath(Application.ExeName);
       //ShowMessage(cLocation);
       frxReport1.LoadFromFile(cLocation +'report/Ikhtisar_Kas_Kecil_BOP'+ '.fr3');
       //Report.DesignReport();
       frxReport1.ShowReport();
    end;}
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_BOP.DxRefreshClick(Sender: TObject);
begin
    if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    DBGridKasKecilBOP.StartLoadingStatus();
    with QKasKecilBOP do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.actors_name,a.voucher_no,a.description,a."name",b.total, '+
                '(case when b1.amount is null then 0 else b1.amount end)b1, '+
                '(case when b2.amount is null then 0 else b2.amount end)b2, '+
                '(case when b3.amount is null then 0 else b3.amount end)b3, '+
                '(case when b4.amount is null then 0 else b4.amount end)b4, '+
                '(case when b5.amount is null then 0 else b5.amount end)b5, '+
                '(case when b6.amount is null then 0 else b6.amount end)b6, '+
                '(case when b7.amount is null then 0 else b7.amount end)b7, '+
                '(case when b8.amount is null then 0 else b8.amount end)b8, '+
                '(case when b9.amount is null then 0 else b9.amount end)b9, '+
                '(case when b10.amount is null then 0 else b10.amount end)b10, '+
                '(case when b11.amount is null then 0 else b11.amount end)b11  '+
                'from '+
                '(select  DISTINCT a.voucher_no from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue)) + ' and code_account=''1112''  and position=''K'')xx '+
                'left join  (select distinct a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from (SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=3 and '+
                'trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue)) + ' order by voucher_no)a on a.voucher_no=xx.voucher_no '+
                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where a.code_account=b.code and b.type_id=3 '+
                'and a."position"=''D''  group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+

                'left join (select voucher_no,amount from(SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''SBG1'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PD1'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRA1'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''PBP'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''ALP'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MRM'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MR1'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''MG1'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''BBM'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account)a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''AKP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=3 and b.category_code=''KPP'')b11 on a.voucher_no=b11.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no ';
      open;
    end;
    MemKasKecilBOP.Close;
    MemKasKecilBOP.Open;
    QKasKecilBOP.Close;
    QKasKecilBOP.Open;
    DBGridKasKecilBOP.FinishLoadingStatus();
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_BOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_BOP.FormCreate(Sender: TObject);
begin
  RealFLap_Ikhtisar_Biaya_KasKecil_BOP:=self;
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_BOP.FormDestroy(Sender: TObject);
begin
   RealFLap_Ikhtisar_Biaya_KasKecil_BOP:=nil;
end;

Initialization
  RegisterClasses([TFLap_Ikhtisar_Biaya_KasKecil_BOP]);

end.
