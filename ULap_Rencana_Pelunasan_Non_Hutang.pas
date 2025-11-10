unit ULap_Rencana_Pelunasan_Non_Hutang;

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
  DynVarsEh, cxCalendar, cxButtonEdit, cxCheckBox, MemTableDataEh, Data.DB,
  frxClass, MemTableEh, DataDriverEh, dxBar, cxBarEditItem, cxClasses, frxDBSet,
  MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFlap_Rencana_Pelunasan_Non_Hutang = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridLapRencLunasNonHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    QPerusahaan: TUniQuery;
    frxDBDatasetPers: TfrxDBDataset;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    datetimepicker1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    DateTimePicker2: TcxBarEditItem;
    code_supp: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    dxBarEdit1: TdxBarEdit;
    supp_name: TdxBarEdit;
    dxBarLargeButton5: TdxBarLargeButton;
    CbRencana: TdxBarCombo;
    dxBarEdit3: TdxBarEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    Cb_semua: TcxBarEditItem;
    DataSetDriverEh1: TDataSetDriverEh;
    Mem_renc_pelunasan_non_hutang: TMemTableEh;
    QLap_renc_pelunasan_non_hutang: TUniQuery;
    QTgl_hutang: TUniQuery;
    DSQTgl_Hutang: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    QCetak: TUniQuery;
    frxReport1: TfrxReport;
    Qsupp: TUniQuery;
    DSsupp: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    DS_renc_pelunasan_non_hutang: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure load_rencana;
  end;

//var
function
  Flap_Rencana_Pelunasan_Non_Hutang: TFlap_Rencana_Pelunasan_Non_Hutang;

implementation

{$R *.dfm}

uses UDataModule;

var
  RealFlap_Rencana_Pelunasan_Non_Hutang:TFlap_Rencana_Pelunasan_Non_Hutang;

  // implementasi function
function Flap_Rencana_Pelunasan_Non_Hutang: TFlap_Rencana_Pelunasan_Non_Hutang;
begin
  if RealFlap_Rencana_Pelunasan_Non_Hutang <> nil then
     Flap_Rencana_Pelunasan_Non_Hutang:= RealFlap_Rencana_Pelunasan_Non_Hutang
  else
    Application.CreateForm(TFlap_Rencana_Pelunasan_Non_Hutang, Result);
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.dxBarLargeButton4Click(
  Sender: TObject);
begin
   if cbrencana.Text='' then
   begin
     MessageDlg('rencana ke tidak boleh Kosong ',MtWarning,[MbOk],0);
     cbrencana.SetFocus;
     Exit;
   end;
   with QCetak do
   begin
     close;
     sql.Clear;
     sql.Text:= 'select noinv, kepada,ket, '+
                '(case when currency=''USD'' then jumlah*kurs else jumlah end) jumlah from '+
                '(select voucher_no as noinv,to_ as kepada,trans_date,1 as urutan,remark as ket,currency,kurs,sum(paid_amount)as jumlah from '+
                '(SELECT  a.voucher_no,a.to_,a.trans_date,a.periode1,a.periode2,a.remark,a.currency,a.kurs,a.plan_to,b.code_account,b."position",b.paid_amount from t_cash_bank_expenditure_submission a '+
                'INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)a '+
                'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position" =''D'' and code_account<>''2101.01'' '+
                'and code_account not in(SELECT account_code FROM t_expenses_payable_account) and code_account not in(SELECT account_code FROM t_asset_payable_account) group by voucher_no,to_,trans_date,remark,currency,kurs '+
                'UNION ALL '+
                'select a.voucher_no as noinv,a.to_ as kepada,a.trans_date,2 as urutan,a.remark as ket,currency,kurs,-(sum(a.paid_amount))as jumlah from '+
                '(SELECT a.voucher_no,a.to_,a.remark as kepada,a.trans_date,a.remark,a.currency,a.kurs,a.periode1,a.periode2,plan_to,b."position",b.code_account,b.paid_amount from t_cash_bank_expenditure_submission a '+
                'INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)a '+
                'where voucher_no IN '+
                '(select voucher_no from '+
                '(SELECT a.voucher_no,a.periode1,a.periode2,a.trans_date,to_,plan_to,remark,currency,kurs,"position",code_account from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)x '+
                'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position"=''D'' and code_account<>''2101.01'' '+
                'and code_account not in(SELECT account_code FROM t_expenses_payable_account) '+
                'and code_account not in(SELECT account_code FROM t_asset_payable_account) '+
                'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position"=''K'' and code_account<>''1101.01'') '+
                'group by voucher_no,to_,trans_date,remark,currency,kurs,periode1,periode2,plan_to,"position",code_account)y '+
                'WHERE y.noinv in '+
                '(select distinct z.voucher_no from '+
                '(SELECT a.voucher_no from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)z '+
                'EXCEPT select DISTINCT voucher_no from t_cash_bank_expenditure_submission_payable) order by noinv';
     Open;
   end;
   QCetak.Close;
   QCetak.Open;
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Lap_Rencana_Pelunasan_Non_Hutang.fr3');
   Tfrxmemoview(frxreport1.FindObject('Memo_jenis_hutang')).Memo.Text:='RENCANA PELUNASAN NON HUTANG'+' '+Jenis_Hutang.text;
   Tfrxmemoview(frxreport1.FindObject('Memoperiode2')).Memo.Text:='Periode  : '+FormatDateTime('dd mmm yyyy',DTP1.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmm yyyy',DTP2.EditValue);
   frxreport1.showreport;
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.dxRefreshClick(Sender: TObject);
begin
   if cbrencana.Text='' then
   begin
     MessageDlg('rencana ke tidak boleh Kosong ',MtWarning,[MbOk],0);
     cbrencana.SetFocus;
     Exit;
   end;

   DBGridLapRencLunasNonHutang.StartLoadingStatus();
   with QLap_renc_pelunasan_non_hutang do
   begin
     close;
     sql.Clear;
     sql.Text:= 'select noinv, kepada,ket, '+
                '(case when currency=''USD'' then jumlah*kurs else jumlah end) jumlah from '+
                '(select voucher_no as noinv,to_ as kepada,trans_date,1 as urutan,remark as ket,currency,kurs,sum(paid_amount)as jumlah from '+
                '(SELECT  a.voucher_no,a.to_,a.trans_date,a.periode1,a.periode2,a.remark,a.currency,a.kurs,a.plan_to,b.code_account,b."position",b.paid_amount from t_cash_bank_expenditure_submission a '+
                'INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)a '+
                'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position" =''D'' and code_account<>''2101.01'' '+
                'and code_account not in(SELECT account_code FROM t_expenses_payable_account) and code_account not in(SELECT account_code FROM t_asset_payable_account) group by voucher_no,to_,trans_date,remark,currency,kurs '+
                'UNION ALL '+
                'select a.voucher_no as noinv,a.to_ as kepada,a.trans_date,2 as urutan,a.remark as ket,currency,kurs,-(sum(a.paid_amount))as jumlah from '+
                '(SELECT a.voucher_no,a.to_,a.remark as kepada,a.trans_date,a.remark,a.currency,a.kurs,a.periode1,a.periode2,plan_to,b."position",b.code_account,b.paid_amount from t_cash_bank_expenditure_submission a '+
                'INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)a '+
                'where voucher_no IN '+
                '(select voucher_no from '+
                '(SELECT a.voucher_no,a.periode1,a.periode2,a.trans_date,to_,plan_to,remark,currency,kurs,"position",code_account from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)x '+
                'where periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position"=''D'' and code_account<>''2101.01'' '+
                'and code_account not in(SELECT account_code FROM t_expenses_payable_account) '+
                'and code_account not in(SELECT account_code FROM t_asset_payable_account) '+
                'and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and plan_to='+QuotedStr(CbRencana.Text)+' and "position"=''K'' and code_account<>''1101.01'') '+
                'group by voucher_no,to_,trans_date,remark,currency,kurs,periode1,periode2,plan_to,"position",code_account)y '+
                'WHERE y.noinv in '+
                '(select distinct z.voucher_no from '+
                '(SELECT a.voucher_no from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher)z '+
                'EXCEPT select DISTINCT voucher_no from t_cash_bank_expenditure_submission_payable) order by noinv';
     Open;
   end;
   QLap_renc_pelunasan_non_hutang.Close;
   QLap_renc_pelunasan_non_hutang.Open;
   Mem_renc_pelunasan_non_hutang.Close;
   Mem_renc_pelunasan_non_hutang.Open;
   DBGridLapRencLunasNonHutang.FinishLoadingStatus();
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.FormCreate(Sender: TObject);
begin
   RealFlap_Rencana_Pelunasan_Non_Hutang:=self;
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.FormDestroy(Sender: TObject);
begin
   RealFlap_Rencana_Pelunasan_Non_Hutang:=nil;
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.FormShow(Sender: TObject);
begin
    DTP1.EditValue:=date();
    DTP2.EditValue:=date();
    Cb_semua.EditValue:=false;
    load_rencana;
end;

procedure TFlap_Rencana_Pelunasan_Non_Hutang.load_rencana;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT plan_to FROM t_plan_to order by id ASC ';
        Open;
      end;
      Dm.Qtemp.First;
      CbRencana.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CbRencana.Items.Add(Dm.Qtemp.FieldByName('plan_to').AsString);
         Dm.Qtemp.Next;
      end;
end;

initialization
  RegisterClass(TFlap_Rencana_Pelunasan_Non_Hutang);

end.
