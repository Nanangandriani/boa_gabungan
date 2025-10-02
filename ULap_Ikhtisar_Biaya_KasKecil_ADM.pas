unit ULap_Ikhtisar_Biaya_KasKecil_ADM;

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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxBarEditItem,
  cxClasses, MemDS, DBAccess, Uni, frxClass, frxDBSet, DataDriverEh;

type
  TFLap_Ikhtisar_Biaya_KasKecil_ADM = class(TForm)
    DataSetDriverEh1: TDataSetDriverEh;
    frxReport1: TfrxReport;
    frxDBDatasetPers: TfrxDBDataset;
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
    frxDBDataset1: TfrxDBDataset;
    QCetak_KasKecil_ADM: TUniQuery;
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
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    MemKasKecilADM: TMemTableEh;
    QKasKecilADM: TUniQuery;
    DSKasKecilADM: TDataSource;
    DBGridKasKecilADM: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    frxDBDataset2: TfrxDBDataset;
    QCetak_KasKecil_BOP: TUniQuery;
    frxReport2: TfrxReport;
    frxReportADM2: TfrxReport;
    frxDBDatasetADM2: TfrxDBDataset;
    QkasKecilADM2: TUniQuery;
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
  FLap_Ikhtisar_Biaya_KasKecil_ADM: TFLap_Ikhtisar_Biaya_KasKecil_ADM;

implementation

{$R *.dfm}


var
  RealFLap_Ikhtisar_Biaya_KasKecil_ADM: TFLap_Ikhtisar_Biaya_KasKecil_ADM;

 // implementasi function
function FLap_Ikhtisar_Biaya_KasKecil_ADM: TFLap_Ikhtisar_Biaya_KasKecil_ADM;
begin
  if RealFLap_Ikhtisar_Biaya_KasKecil_ADM <> nil then
     FLap_Ikhtisar_Biaya_KasKecil_ADM:= RealFLap_Ikhtisar_Biaya_KasKecil_ADM
  else
    Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_ADM, Result);
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_ADM.dxPrintClick(
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

    with QCetak_KasKecil_ADM do
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
                '(case when b11.amount is null then 0 else b11.amount end)b11, '+
                '(case when b12.amount is null then 0 else b12.amount end)b12  '+
                'from '+
                '(select distinct  a.voucher_no  from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' and code_account=''1112''  and position=''K'')xx '+
                'left join (select distinct a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from (SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=2 and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' order by voucher_no)a on a.voucher_no=xx.voucher_no '+

                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and a."position"=''D''  group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''SBG'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''ASR'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''JMT'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''PD2'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''ATK'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''LNA'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''PTM'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''MRA'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''PDK'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''PDP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''KPK'')b11 on a.voucher_no=b11.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b '+
                'where a.code_account=b.code and b.type_id=2 and b.category_code=''HMS'')b12 on a.voucher_no=b12.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no; ';
      open;
    end;
    //frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Ikhtisar_Kas_Kecil_ADM.fr3');
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Ikhtisar_Kas_Kecil_ADM2.fr3');
    Tfrxmemoview(frxReport1.FindObject('Memoperiode')).Memo.Text:='Tanggal  : '+FormatDateTime('dd mmm yyyy',DTPick1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTPick2.EditValue);
    frxReport1.ReportOptions.Name:='Laporan Ikhtisar Biaya Kas Kecil ADM';
    frxReport1.showreport;
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_ADM.DxRefreshClick(Sender: TObject);
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

    DBGridKasKecilADM.StartLoadingStatus();
    with QKasKecilADM do
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
                '(case when b11.amount is null then 0 else b11.amount end)b11, '+
                '(case when b12.amount is null then 0 else b12.amount end)b12  '+
                'from '+
                '(select distinct  a.voucher_no  from t_petty_cash a INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue)) + ' and code_account=''1112''  and position=''K'')xx '+
                'left join (select distinct a.actors_name,a.voucher_no,a.code_account,a.trans_date,a.description,a.order_no,b.code,c."name" from (SELECT a.voucher_no,a.actors_name,a.trans_date,a.description,b.code_account,a.order_no,a.actors_code from t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no) a,t_ak_account b,t_cost_actors c where a.code_account=b.code and a.actors_code=c.code and b.type_id=2 and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' order by voucher_no)a on a.voucher_no=xx.voucher_no '+

                'left join (select voucher_no,a.code_account,a."position",sum(amount)as total from (select a.voucher_no,b.code_account,b."position",a.amount FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account,b."position") a,t_ak_account b where a.code_account=b.code and b.type_id=2 and a."position"=''D''  '+
                'group by voucher_no,a.code_account,a."position" order by voucher_no)b on a.voucher_no=b.voucher_no '+
                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''SBG'')b1 on a.voucher_no=b1.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''ASR'')b2 on a.voucher_no=b2.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''JMT'')b3 on a.voucher_no=b3.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PD2'')b4 on a.voucher_no=b4.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''ATK'')b5 on a.voucher_no=b5.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''LNA'')b6 on a.voucher_no=b6.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PTM'')b7 on a.voucher_no=b7.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''MRA'')b8 on a.voucher_no=b8.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PDK'')b9 on a.voucher_no=b9.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''PDP'')b10 on a.voucher_no=b10.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''KPK'')b11 on a.voucher_no=b11.voucher_no '+

                'left join (select voucher_no,amount from (SELECT a.voucher_no,a.amount,b.code_account FROM t_petty_cash a '+
                'INNER JOIN t_petty_cash_det b ON a.voucher_no=b.voucher_no GROUP BY a.voucher_no,b.code_account) a,t_ak_account b where a.code_account=b.code and b.type_id=2 and b.category_code=''HMS'')b12 on a.voucher_no=b12.voucher_no '+
                'where a.voucher_no is not null order by a.trans_date,a.voucher_no,a.order_no; ';
      open;
    end;
    MemKasKecilADM.Close;
    MemKasKecilADM.Open;
    QKasKecilADM.Close;
    QKasKecilADM.Open;
    DBGridKasKecilADM.FinishLoadingStatus();
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_ADM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_ADM.FormCreate(Sender: TObject);
begin
   RealFLap_Ikhtisar_Biaya_KasKecil_ADM:=self;
end;

procedure TFLap_Ikhtisar_Biaya_KasKecil_ADM.FormDestroy(Sender: TObject);
begin
   RealFLap_Ikhtisar_Biaya_KasKecil_ADM:=nil;
end;

Initialization
  RegisterClasses([TFLap_Ikhtisar_Biaya_KasKecil_ADM]);

end.
