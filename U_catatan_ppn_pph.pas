unit U_catatan_ppn_pph;

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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxDropDownEdit, cxSpinEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore,
  dxRibbonSkins, dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dxRibbon, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, DataDriverEh, dxBar, cxBarEditItem, cxClasses, frxClass,
  frxDBSet, MemTableEh, MemDS, DBAccess, Uni;

type
  TF_catatan_ppn_pph = class(TForm)
    DSCatatan_ppn_pph: TDataSource;
    QPerusahaan: TUniQuery;
    QCatatan_ppn_pph: TUniQuery;
    MemCatatan_ppn_pph: TMemTableEh;
    frxDBDataset4: TfrxDBDataset;
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
    Ed_supplier: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    cbbulan1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    cbtahun: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    cbbulan: TdxBarCombo;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridCatatan_ppn_pph: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarEdit1: TdxBarEdit;
    DSQTgl_Hutang: TDataSource;
    QTgl_hutang: TUniQuery;
    frxDBDatasetCat_ppn_pph: TfrxDBDataset;
    frxReport2: TfrxReport;
    QCat_ppn_pph: TUniQuery;
    DTawal: TcxBarEditItem;
    DTakhir: TcxBarEditItem;
    QCatatan_ppn_pphvoucher: TMemoField;
    QCatatan_ppn_pphvoucher_tmp: TMemoField;
    QCatatan_ppn_pphtanggal: TDateField;
    QCatatan_ppn_pphaccount_code: TMemoField;
    QCatatan_ppn_pphdeskripsi: TMemoField;
    QCatatan_ppn_pphkepada: TMemoField;
    QCatatan_ppn_pphnofaktur: TMemoField;
    QCatatan_ppn_pphsaldo_kredit: TFloatField;
    QCatatan_ppn_pphsaldo_debit: TFloatField;
    QCatatan_ppn_pphdpp: TFloatField;
    QCatatan_ppn_pphsaldo: TFloatField;
    QCatatan_ppn_pphppn: TFloatField;
    QCatatan_ppn_pphpph21: TFloatField;
    QCatatan_ppn_pphpph22: TFloatField;
    QCatatan_ppn_pphpph23: TFloatField;
    QCatatan_ppn_pphpph15: TFloatField;
    QCatatan_ppn_pphpph4_2: TFloatField;
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tgl_cutoff:tdatetime;
    procedure load_cut_off;
  end;

//var
function
  F_catatan_ppn_pph: TF_catatan_ppn_pph;

implementation

{$R *.dfm}

uses UDataModule;

var
  realF_catatan_ppn_pph : TF_catatan_ppn_pph;

 // implementasi function
function F_catatan_ppn_pph: TF_catatan_ppn_pph;
begin
  if realF_catatan_ppn_pph <> nil then
     F_catatan_ppn_pph:= realF_catatan_ppn_pph
  else
    Application.CreateForm(TF_catatan_ppn_pph, Result);
end;

procedure TF_catatan_ppn_pph.dxRefreshClick(Sender: TObject);
begin
   DBGridCatatan_ppn_pph.StartLoadingStatus();
   with QCatatan_ppn_pph do
   begin
      close;
      sql.Clear;
      sql.Text:='/*--Hutang PPH PS22  2130.06	2130	Hutang Pajak - PPh.Ps.22*/'+
                'SELECT voucher,voucher_tmp,tanggal,account_code,deskripsi,kepada,faktur_no	nofaktur,saldo_kredit,saldo_debit,dpp,saldo,ppn,(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 from '+
                '(select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit, '+
                'case WHEN v.dpp is null then 0 else v.dpp end dpp,case WHEN t.npph is null then 0 else t.npph end saldo, 0 as ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi,b.kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.06'')a '+
                'left join (select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount as jumlah,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.06'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description as keterangan,case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada,paid_amount saldo_kredit, 0 saldo_debit FROM '+
                '(SELECT a.voucher_no,b.trans_date,a.description,b.code_account,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.06'' order by trans_date,voucher_no Asc))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no,K.trans_date as periode1,k.kepada,l.supplier_code from(SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')r on xx.voucher=r.voucher_no  LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi,b.to_ as kepada, c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo, 0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,b.trans_date,b.code_account,a.to_  from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b  on a.voucher_no=b.voucher_no left join "V_do_lpb2" c on a.voucher_no=c.voucher where b.code_account=''2130.06'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and  a.source_id=3 and no_fp_no_inv is not null) '+
                'UNION ALL '+
                '(select distinct m.voucher_no,m.voucher_tmp,m.trans_date as tanggal,n.account_code, '+
                '(case when n.description1='''' then n.description else n.description end) deskripsi,m.to_ as kepada,n.inv_supp_no nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,n.dpp,n.saldo, 0 ppn from '+
                '(SELECT a.voucher_no,a.voucher_tmp,b.trans_date,a.to_ from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) m ,t_credit_trx_real n where m.voucher_no=n.voucher and n.account_code=''2130.06'' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(SELECT a.voucher_no as voucher,'''' voucher_tmp,a.trans_date as tanggal,a.code_account,a.description as deskripsi,a.description as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,a.paid_amount as saldo, 0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.06'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, (case when a.account_pph_code=''2142'' then ''PPH PS 23'' when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                ' when a.account_pph_code=''2130.03'' then ''PPH PS 25''  when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15''  when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi, '+
                'supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp from '+
                't_purchase_invoice_det a  left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.06'' '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date,b.account_code,a.notes as deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.06'' and a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' order by a.trans_date asc) '+
                ')yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)xx '+

                'UNION All '+
                '/*--Hutang PPH PS23  2130.02	2130	Hutang Pajak - PPh.Ps.23 */ '+
                'SELECT voucher,	'''' as voucher_tmp,	tanggal,kodesp as	kode_account,	deskripsi,	kepada,	nofaktur,	0 saldo_kredit,	0 saldo_debit,	dpp,	pph as saldo,ppn, '+
                '(case when kodesp=''2130.01'' then pph else 0 end) pph21, '+
                '(case when kodesp=''2130.06'' then pph else 0 end) pph22, '+
                '(case when kodesp=''2130.02'' then pph else 0 end) pph23, '+
                '(case when kodesp=''2130.07'' then pph else 0 end) pph15, '+
                '(case when kodesp=''2130.04'' then pph else 0 end) pph4_2 FROM '+
                '( SELECT yyy.* FROM '+
                '(SELECT yy.* FROM '+
                '( '+
                'SELECT  a.voucher,a.tanggal,a.kodesp,x.deskripsi,kepada,a.faktur_no as nofaktur ,y.dpp as dpp,a.pph as pph,'''' as nodo,a.supplier_code as kdsup,y.ppn_rp as ppn FROM '+
                '(SELECT DISTINCT a.*,b.faktur_no,c.saldo as pph,b.supplier_code FROM '+
                '(SELECT DISTINCT voucher_no as voucher,trans_date tanggal,to_ kepada,code_account as kodesp FROM '+
                '(SELECT a.voucher_no,a.trans_date,a.to_,b.code_account,b."position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.02'' and "position"=''K'')a '+
                'LEFT JOIN t_cash_bank_expenditure_payable b on a.voucher=b.voucher_no '+
                'LEFT JOIN t_credit_trx_real c on a.voucher=c.voucher and b.faktur_no=c.inv_supp_no WHERE (c.voucher is not null ) and (b.faktur_no is not null)) a '+
                'LEFT JOIN  t_purchase_invoice f ON f.faktur_no=a.faktur_no '+
                'LEFT JOIN (SELECT a.trans_no,string_agg (b.item_name, '', '' ) AS deskripsi FROM t_purchase_invoice_det a '+
                'LEFT JOIN t_item_stock b ON a.item_stock_code::text = b.item_stock_code::text GROUP BY a.trans_no) x On x.trans_no=f.trans_no '+
                'LEFT JOIN (SELECT trans_no,sum(subtotal) as dpp,ppn_rp FROM t_purchase_invoice_det GROUP BY trans_no,ppn_rp) y on f.trans_no=y.trans_no '+
                'UNION ALL '+
                'SELECT aa.voucher_no,aa.trans_date tanggal,aa.code as kodesp,b.description1,aa.to_ as kepada,b.inv_supp_no as nofaktur ,b.dpp as dpp,b.saldo as pph,'''' as nodo,supplier_code as kdsup,0 ppn  FROM '+
                '(SELECT a.*,c.faktur_no as no_inv_supp,b.inv_supp_no,e.code  FROM '+
                '(SELECT distinct voucher_no,trans_date,supplier_code,to_ FROM (SELECT a.voucher_no,a.trans_date,a.supplier_code,a.to_,b.code_account,b."position" from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.02'' and "position"=''K'')a '+
                'LEFT JOIN t_credit_trx_real b on a.voucher_no=b.voucher '+
                'LEFT JOIN t_cash_bank_expenditure_payable c on a.voucher_no=c.voucher_no '+
                'INNER JOIN v_ak_account e on c.account_acc=e.account_code2 '+
                'LEFT JOIN t_payment_detail_real d on a.voucher_no=d.voucher_no '+
                'WHERE (b.voucher is not null) and (b.voucher is null)and (c.voucher_no is null))aa '+
                'LEFT JOIN t_credit_trx_real b ON aa.voucher_no=b.voucher '+
                'UNION ALL '+
                'SELECT e.voucher_no as voucher,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,d.supplier_name as kepada,b.faktur_no,a.subtotalrp as dpp,a.pph_rp as pph,'''' as nodo,d.supplier_code,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                'LEFT JOIN t_cash_bank_expenditure_payable e on a.trans_no=e.invoice_no '+
                'INNER JOIN v_ak_account f on a.account_code=f.account_code2 '+
                'where b.trans_date >'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and f.code=''2130.02'' '+
                'UNION ALL '+
                'SELECT d.bk_no as voucher ,e.trans_date,''2130.02'' as kdsp,''PPH PS 23'' as jenis_pph, c.supplier_name as kepada,'''' as nofaktur ,subtotal as dpp,b.pph_rp as pph, '''' nodo,c.supplier_code,0 ppn FROM t_po a '+
                'left join t_podetail b ON a.po_no=b.po_no '+
                'left join t_supplier c on a.supplier_code=c.supplier_code '+
                'left join t_payment_detail_real d on a.po_no=d.voucher_no '+
                'LEFT JOIN (SELECT a.voucher_no,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)e on d.bk_no=e.voucher_no '+
                'where trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'and b.pph_rp<>0 GROUP BY e.trans_date,c.supplier_name,c.supplier_code,d.bk_no,b.pph_rp,b.subtotal '+
                'UNION ALL '+
                'SELECT distinct m.voucher_no voucher,m.trans_date as tanggal,n.account_code as kodesp,n.description1 deskripsi,m.to_ as kepada,n.inv_supp_no nofaktur,n.dpp,n.saldo,'''' as nodo,'''' as kdsup, 0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,a.to_  from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)m ,t_credit_trx_real n '+
                'WHERE m.voucher_no=n.voucher and n.Account_code=''2130.02'' and description1<>'''' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')yy order by yy.tanggal,yy.voucher,yy.nofaktur asc )yyy ORDER BY kepada,voucher,nofaktur,tanggal ASC)yyyy '+

                'UNION ALL '+
                '/*--Hutang PPH Pasal 15  2130.07	2130	Hutang Pajak - PPh.Ps.15 */'+
                'SELECT voucher,voucher_tmp,tanggal,account_code,deskripsi,kepada,faktur_no,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end) pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '(select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit, '+
                '0 ::float saldo_debit,case WHEN v.dpp is null then 0 else v.dpp end dpp,case WHEN t.npph is null then 0 else t.npph end saldo,0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi,b.kepada,a.saldo saldo_kredit,case when c.saldo is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.07'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,description,kepada,paid_amount,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.07'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi,case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada, paid_amount saldo_kredit, 0 saldo_debit from '+
                '(SELECT  a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.07''  order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no voucher,K.trans_date as periode1,k.kepada,l.supplier_code from (SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') r on xx.voucher=r.voucher '+
                'LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1  and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi, kepada, c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,a.trans_date,b.code_account,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.voucher_no=b.voucher_no '+
                'left join "V_do_lpb2" c on a.voucher_no=c.voucher '+
                'where b.code_account=''2130.07'' and b.trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and  a.source_id=3 and no_fp_no_inv is not null ) '+
                'UNION ALL '+
                '(SELECT a.voucher_no as voucher,'''' voucher_tmp,a.trans_date as tanggal,a.code_account,a.description deskripsi,a.name_cust as kepada,'''' as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn  from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.07'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo ,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.07'' and a.trans_no not in (select invoice_no FROM t_cash_bank_expenditure_payable) '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date tanggal,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.07'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and b.debit <0  order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)z '+

                'UNION ALL '+
                '/* --Hutang PPH PS 25 2130.03	2130	Hutang Pajak - PPh.Ps.25 */ '+
                'SELECT voucher,voucher_tmp,tanggal,account_code kode_account,deskripsi,kepada,faktur_no,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '( select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit,case WHEN v.dpp is null then 0 else v.dpp end dpp, '+
                'case WHEN t.npph is null then 0 else t.npph end saldo, 0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi, b.kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.03'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount as jumlah,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.03'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi, '+
                'case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada,paid_amount saldo_kredit,0 saldo_debit from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)j where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.03''  order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN (select DISTINCT k.voucher_no,K.trans_date as periode1,k.kepada,l.supplier_code from '+
                '(SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' ) r on xx.voucher=r.voucher_no '+
                'LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher,b.voucher_tmp,b.trans_date tanggal,b.code_account,c.deskripsi,b.to_ as kepada,c.no_fp_no_inv nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,a.trans_date,b.code_account,a.to_ from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b on a.voucher_no=b.voucher_no '+
                'left join "V_do_lpb2" c on a.voucher_no=c.voucher  where b.code_account=''2130.03'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and  a.source_id=3 and no_fp_no_inv is not null ) '+
                'UNION ALL '+
                '(select distinct m.voucher_no,m.voucher_tmp,m.trans_date as tanggal,n.account_code,(case when n.description1='''' then n.description else n.description1 end) deskripsi,m. '+
                'to_ as kepada,n.inv_supp_no nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,n.dpp,n.saldo,0 ppn from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.trans_date,a.to_ from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) m ,t_credit_trx_real n where m.voucher_no=n.voucher and n.Account_code=''2130.03'' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' ) '+
                'UNION ALL '+
                '(SELECT voucher_no as voucher,'''' voucher_tmp,trans_date as tanggal,code_account,description deskripsi,name_cust as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,b.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a '+
                'INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.03'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi, supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                'where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+'   and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.03'' '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.03'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)KK '+

                'UNION ALL '+
                '/*---Hutang PPH PS 4 ayat 2 */ '+
                'SELECT voucher,	voucher_tmp,tanggal,account_code,deskripsi,kepada,nofaktur,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '( '+
                '(select xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,xx.deskripsi,xx.kepada,xx.nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,xx.dpp, case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end saldo, 0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.trans_date tanggal,a.account_code,a.description1 as deskripsi, b.kepada,a.inv_supp_no nofaktur,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit,A.dpp from '+
                '(select * from t_credit_trx_real where account_code=''2130.04'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,kepada,trans_date  from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.VOUCHER=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,description keterangan,paid_amount,saldo_debit,0 dpp from v_titipan_bpjs_penerimaan_kas where code_account=''2130.04'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi,name_cust diterima_dari,description, paid_amount saldo_kredit, 0 saldo_debit,0 dpp from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.04'' order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no,k.periode1,k.periode2,k.plan_to,k.to_,l.supplier_code from '+
                '(SELECT a.voucher_no,a.periode1,a.periode2,a.plan_to,a.to_ from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher '+
                ') k '+
                'left join t_supplier l on k.to_=l.supplier_name) r on xx.voucher_tmp=r.voucher_no where case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end <> 0 order by xx.tanggal,xx.voucher) '+
                'UNION All '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date tgl_terima,a.account_pph_code, (case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25''  when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' when a.account_pph_code=''2130.07'' then ''PPH PS 15''  '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,  supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp  from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date >'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.04'') zz';
      open;
   end;
   DBGridCatatan_ppn_pph.FinishLoadingStatus();

end;

procedure TF_catatan_ppn_pph.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TF_catatan_ppn_pph.FormCreate(Sender: TObject);
begin
   realF_catatan_ppn_pph:=self;
end;

procedure TF_catatan_ppn_pph.FormDestroy(Sender: TObject);
begin
   realF_catatan_ppn_pph:=nil;
end;

procedure TF_catatan_ppn_pph.FormShow(Sender: TObject);
begin
    DTawal.EditValue := Date;
    DTakhir.EditValue := Date;
end;

procedure TF_catatan_ppn_pph.load_cut_off;
begin
    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_cutoff:=QTgl_hutang.FieldByName('cutoff_date').asdatetime;
end;

procedure TF_catatan_ppn_pph.dxBarLargeButton4Click(Sender: TObject);
begin
   load_cut_off;
   with QCat_ppn_pph do
   begin
      close;
      sql.Clear;
      sql.Text:='/*--Hutang PPH PS22  2130.06	2130	Hutang Pajak - PPh.Ps.22*/'+
                'SELECT voucher,voucher_tmp,tanggal,account_code,deskripsi,kepada,faktur_no	nofaktur,saldo_kredit,saldo_debit,dpp,saldo,ppn,(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 from '+
                '(select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit, '+
                'case WHEN v.dpp is null then 0 else v.dpp end dpp,case WHEN t.npph is null then 0 else t.npph end saldo, 0 as ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi,b.kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.06'')a '+
                'left join (select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount as jumlah,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.06'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description as keterangan,case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada,paid_amount saldo_kredit, 0 saldo_debit FROM '+
                '(SELECT a.voucher_no,b.trans_date,a.description,b.code_account,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.06'' order by trans_date,voucher_no Asc))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no,K.trans_date as periode1,k.kepada,l.supplier_code from(SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')r on xx.voucher=r.voucher_no  LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi,b.to_ as kepada, c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo, 0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,b.trans_date,b.code_account,a.to_  from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b  on a.voucher_no=b.voucher_no left join "V_do_lpb2" c on a.voucher_no=c.voucher where b.code_account=''2130.06'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and  a.source_id=3 and no_fp_no_inv is not null) '+
                'UNION ALL '+
                '(select distinct m.voucher_no,m.voucher_tmp,m.trans_date as tanggal,n.account_code, '+
                '(case when n.description1='''' then n.description else n.description end) deskripsi,m.to_ as kepada,n.inv_supp_no nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,n.dpp,n.saldo, 0 ppn from '+
                '(SELECT a.voucher_no,a.voucher_tmp,b.trans_date,a.to_ from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) m ,t_credit_trx_real n where m.voucher_no=n.voucher and n.account_code=''2130.06'' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(SELECT a.voucher_no as voucher,'''' voucher_tmp,a.trans_date as tanggal,a.code_account,a.description as deskripsi,a.description as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,a.paid_amount as saldo, 0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.06'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, (case when a.account_pph_code=''2142'' then ''PPH PS 23'' when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                ' when a.account_pph_code=''2130.03'' then ''PPH PS 25''  when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15''  when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi, '+
                'supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp from '+
                't_purchase_invoice_det a  left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.06'' '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date,b.account_code,a.notes as deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.06'' and a.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' order by a.trans_date asc) '+
                ')yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)xx '+

                'UNION All '+
                '/*--Hutang PPH PS23  2130.02	2130	Hutang Pajak - PPh.Ps.23 */ '+
                'SELECT voucher,	'''' as voucher_tmp,	tanggal,kodesp as	kode_account,	deskripsi,	kepada,	nofaktur,	0 saldo_kredit,	0 saldo_debit,	dpp,	pph as saldo,ppn, '+
                '(case when kodesp=''2130.01'' then pph else 0 end) pph21, '+
                '(case when kodesp=''2130.06'' then pph else 0 end) pph22, '+
                '(case when kodesp=''2130.02'' then pph else 0 end) pph23, '+
                '(case when kodesp=''2130.07'' then pph else 0 end) pph15, '+
                '(case when kodesp=''2130.04'' then pph else 0 end) pph4_2 FROM '+
                '( SELECT yyy.* FROM '+
                '(SELECT yy.* FROM '+
                '( '+
                'SELECT  a.voucher,a.tanggal,a.kodesp,x.deskripsi,kepada,a.faktur_no as nofaktur ,y.dpp as dpp,a.pph as pph,'''' as nodo,a.supplier_code as kdsup,y.ppn_rp as ppn FROM '+
                '(SELECT DISTINCT a.*,b.faktur_no,c.saldo as pph,b.supplier_code FROM '+
                '(SELECT DISTINCT voucher_no as voucher,trans_date tanggal,to_ kepada,code_account as kodesp FROM '+
                '(SELECT a.voucher_no,a.trans_date,a.to_,b.code_account,b."position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.02'' and "position"=''K'')a '+
                'LEFT JOIN t_cash_bank_expenditure_payable b on a.voucher=b.voucher_no '+
                'LEFT JOIN t_credit_trx_real c on a.voucher=c.voucher and b.faktur_no=c.inv_supp_no WHERE (c.voucher is not null ) and (b.faktur_no is not null)) a '+
                'LEFT JOIN  t_purchase_invoice f ON f.faktur_no=a.faktur_no '+
                'LEFT JOIN (SELECT a.trans_no,string_agg (b.item_name, '', '' ) AS deskripsi FROM t_purchase_invoice_det a '+
                'LEFT JOIN t_item_stock b ON a.item_stock_code::text = b.item_stock_code::text GROUP BY a.trans_no) x On x.trans_no=f.trans_no '+
                'LEFT JOIN (SELECT trans_no,sum(subtotal) as dpp,ppn_rp FROM t_purchase_invoice_det GROUP BY trans_no,ppn_rp) y on f.trans_no=y.trans_no '+
                'UNION ALL '+
                'SELECT aa.voucher_no,aa.trans_date tanggal,aa.code as kodesp,b.description1,aa.to_ as kepada,b.inv_supp_no as nofaktur ,b.dpp as dpp,b.saldo as pph,'''' as nodo,supplier_code as kdsup,0 ppn  FROM '+
                '(SELECT a.*,c.faktur_no as no_inv_supp,b.inv_supp_no,e.code  FROM '+
                '(SELECT distinct voucher_no,trans_date,supplier_code,to_ FROM (SELECT a.voucher_no,a.trans_date,a.supplier_code,a.to_,b.code_account,b."position" from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.02'' and "position"=''K'')a '+
                'LEFT JOIN t_credit_trx_real b on a.voucher_no=b.voucher '+
                'LEFT JOIN t_cash_bank_expenditure_payable c on a.voucher_no=c.voucher_no '+
                'INNER JOIN v_ak_account e on c.account_acc=e.account_code2 '+
                'LEFT JOIN t_payment_detail_real d on a.voucher_no=d.voucher_no '+
                'WHERE (b.voucher is not null) and (b.voucher is null)and (c.voucher_no is null))aa '+
                'LEFT JOIN t_credit_trx_real b ON aa.voucher_no=b.voucher '+
                'UNION ALL '+
                'SELECT e.voucher_no as voucher,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,d.supplier_name as kepada,b.faktur_no,a.subtotalrp as dpp,a.pph_rp as pph,'''' as nodo,d.supplier_code,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                'LEFT JOIN t_cash_bank_expenditure_payable e on a.trans_no=e.invoice_no '+
                'INNER JOIN v_ak_account f on a.account_code=f.account_code2 '+
                'where b.trans_date >'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and f.code=''2130.02'' '+
                'UNION ALL '+
                'SELECT d.bk_no as voucher ,e.trans_date,''2130.02'' as kdsp,''PPH PS 23'' as jenis_pph, c.supplier_name as kepada,'''' as nofaktur ,subtotal as dpp,b.pph_rp as pph, '''' nodo,c.supplier_code,0 ppn FROM t_po a '+
                'left join t_podetail b ON a.po_no=b.po_no '+
                'left join t_supplier c on a.supplier_code=c.supplier_code '+
                'left join t_payment_detail_real d on a.po_no=d.voucher_no '+
                'LEFT JOIN (SELECT a.voucher_no,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)e on d.bk_no=e.voucher_no '+
                'where trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'and b.pph_rp<>0 GROUP BY e.trans_date,c.supplier_name,c.supplier_code,d.bk_no,b.pph_rp,b.subtotal '+
                'UNION ALL '+
                'SELECT distinct m.voucher_no voucher,m.trans_date as tanggal,n.account_code as kodesp,n.description1 deskripsi,m.to_ as kepada,n.inv_supp_no nofaktur,n.dpp,n.saldo,'''' as nodo,'''' as kdsup, 0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,a.to_  from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)m ,t_credit_trx_real n '+
                'WHERE m.voucher_no=n.voucher and n.Account_code=''2130.02'' and description1<>'''' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')yy order by yy.tanggal,yy.voucher,yy.nofaktur asc )yyy ORDER BY kepada,voucher,nofaktur,tanggal ASC)yyyy '+

                'UNION ALL '+
                '/*--Hutang PPH Pasal 15  2130.07	2130	Hutang Pajak - PPh.Ps.15 */'+
                'SELECT voucher,voucher_tmp,tanggal,account_code,deskripsi,kepada,faktur_no,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end) pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '(select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit, '+
                '0 ::float saldo_debit,case WHEN v.dpp is null then 0 else v.dpp end dpp,case WHEN t.npph is null then 0 else t.npph end saldo,0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi,b.kepada,a.saldo saldo_kredit,case when c.saldo is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.07'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,description,kepada,paid_amount,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.07'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi,case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada, paid_amount saldo_kredit, 0 saldo_debit from '+
                '(SELECT  a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.07''  order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no voucher,K.trans_date as periode1,k.kepada,l.supplier_code from (SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') r on xx.voucher=r.voucher '+
                'LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1  and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher, b.voucher_tmp, b.trans_date tanggal, b.code_account, c.deskripsi, kepada, c.no_fp_no_inv nofaktur,0 ::float saldo_kredit, 0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,a.trans_date,b.code_account,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.voucher_no=b.voucher_no '+
                'left join "V_do_lpb2" c on a.voucher_no=c.voucher '+
                'where b.code_account=''2130.07'' and b.trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and  a.source_id=3 and no_fp_no_inv is not null ) '+
                'UNION ALL '+
                '(SELECT a.voucher_no as voucher,'''' voucher_tmp,a.trans_date as tanggal,a.code_account,a.description deskripsi,a.name_cust as kepada,'''' as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn  from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a '+
                'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.07'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo ,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.07'' and a.trans_no not in (select invoice_no FROM t_cash_bank_expenditure_payable) '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date tanggal,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.07'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and b.debit <0  order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)z '+

                'UNION ALL '+
                '/* --Hutang PPH PS 25 2130.03	2130	Hutang Pajak - PPh.Ps.25 */ '+
                'SELECT voucher,voucher_tmp,tanggal,account_code kode_account,deskripsi,kepada,faktur_no,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '( select yy.* from '+
                '( '+
                '(select distinct xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,v.deskripsi,xx.kepada,t.faktur_no,0 ::float saldo_kredit,0 ::float saldo_debit,case WHEN v.dpp is null then 0 else v.dpp end dpp, '+
                'case WHEN t.npph is null then 0 else t.npph end saldo, 0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.tanggal,a.account_code,a.description as deskripsi, b.kepada,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit from '+
                '(select * from t_credit_trx_real where account_code=''2130.03'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,to_ as kepada,trans_date as tanggal from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.to_,a.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.voucher=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,paid_amount as jumlah,saldo_debit from v_titipan_bpjs_penerimaan_kas where code_account=''2130.03'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi, '+
                'case when code_account=''2130.02'' then ''PPH 23'' when code_account=''2130.01'' then ''PPH 21'' END kepada,paid_amount saldo_kredit,0 saldo_debit from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)j where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.03''  order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN (select DISTINCT k.voucher_no,K.trans_date as periode1,k.kepada,l.supplier_code from '+
                '(SELECT a.voucher_no,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) k '+
                'left join t_supplier l on k.kepada=l.supplier_name where k.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' ) r on xx.voucher=r.voucher_no '+
                'LEFT JOIN t_paid_debt_det t on t.periode1=r.periode1 and r.supplier_code=t.supplier_code '+
                'LEFT JOIN "V_do_lpb2" v  on t.faktur_no=v.no_fp_no_inv where case WHEN t.npph is null then 0 else t.npph end <> 0 ) '+
                'UNION ALL '+
                '(select a.voucher_no voucher,b.voucher_tmp,b.trans_date tanggal,b.code_account,c.deskripsi,b.to_ as kepada,c.no_fp_no_inv nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,c.dpp,c.pph23 saldo,0 ppn from t_payment_detail_real a '+
                'left join (SELECT a.voucher_no,a.voucher_tmp,a.trans_date,b.code_account,a.to_ from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b on a.voucher_no=b.voucher_no '+
                'left join "V_do_lpb2" c on a.voucher_no=c.voucher  where b.code_account=''2130.03'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and  a.source_id=3 and no_fp_no_inv is not null ) '+
                'UNION ALL '+
                '(select distinct m.voucher_no,m.voucher_tmp,m.trans_date as tanggal,n.account_code,(case when n.description1='''' then n.description else n.description1 end) deskripsi,m. '+
                'to_ as kepada,n.inv_supp_no nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,n.dpp,n.saldo,0 ppn from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.trans_date,a.to_ from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) m ,t_credit_trx_real n where m.voucher_no=n.voucher and n.Account_code=''2130.03'' and m.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' ) '+
                'UNION ALL '+
                '(SELECT voucher_no as voucher,'''' voucher_tmp,trans_date as tanggal,code_account,description deskripsi,name_cust as kepada,'''' as nofaktur, 0 saldo_kredit,  0 saldo_debit,0 as dpp,paid_amount as saldo,0 ppn from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,b.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a '+
                'INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+'  and code_account=''2130.03'' order by trans_date,voucher_no Asc) '+
                'UNION ALL '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date,a.account_pph_code, '+
                '(case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' '+
                'when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25'' '+
                'when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' '+
                'when a.account_pph_code=''2130.07'' then ''PPH PS 15'' '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi, supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code '+
                'where b.trans_date > '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+'   and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.03'' '+
                'UNION ALL '+
                '(SELECT a.bk_no as voucher,'''' as voucher_tmp,a.trans_date,b.account_code,notes deskripsi,'''' as kepada,''''as nofaktur,0 saldo_kredit,0 saldo_debit,0 as dpp,-(b.debit) as saldo,0 ppn FROM t_memorial_journal a '+
                'LEFT JOIN t_memorial_journal_detail b ON a.memo_no=b.memo_no WHERE b.account_code=''2130.03'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' order by a.trans_date asc))yy where yy.voucher is not null  order by yy.tanggal,yy.voucher,yy.faktur_no asc)KK '+

                'UNION ALL '+
                '/*---Hutang PPH PS 4 ayat 2 */ '+
                'SELECT voucher,	voucher_tmp,tanggal,account_code,deskripsi,kepada,nofaktur,saldo_kredit,saldo_debit,dpp,saldo,0 ppn, '+
                '(case when account_code=''2130.01'' then saldo else 0 end)pph21, '+
                '(case when account_code=''2130.06'' then saldo else 0 end) pph22, '+
                '(case when account_code=''2130.02'' then saldo else 0 end) pph23, '+
                '(case when account_code=''2130.07'' then saldo else 0 end) pph15, '+
                '(case when account_code=''2130.04'' then saldo else 0 end) pph4_2 FROM '+
                '( '+
                '(select xx.voucher,xx.voucher_tmp,xx.tanggal,xx.account_code,xx.deskripsi,xx.kepada,xx.nofaktur,0 ::float saldo_kredit,0 ::float saldo_debit,xx.dpp, case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end saldo, 0 ppn from '+
                '(select a.voucher,b.voucher_tmp,b.trans_date tanggal,a.account_code,a.description1 as deskripsi, b.kepada,a.inv_supp_no nofaktur,a.saldo saldo_kredit,case when c.saldo  is null then 0 else c.saldo end saldo_debit,A.dpp from '+
                '(select * from t_credit_trx_real where account_code=''2130.04'')a '+
                'left join '+
                '(select distinct voucher_no,voucher_tmp,kepada,trans_date  from '+
                '(SELECT a.voucher_no,a.voucher_tmp,a.trans_date,a.to_ as kepada from t_cash_bank_expenditure a '+
                'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+')b on a.VOUCHER=b.voucher_no '+
                'left join t_debit_trx_real c on a.voucher=c.voucher where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' '+
                'UNION ALL '+
                '(SELECT voucher_no,voucher_tmp,trans_date,code_account,deskripsi,kepada,description keterangan,paid_amount,saldo_debit,0 dpp from v_titipan_bpjs_penerimaan_kas where code_account=''2130.04'' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+') '+
                'UNION ALL '+
                '(select voucher_no,'''' voucher_tmp,trans_date,code_account,description deskripsi,name_cust diterima_dari,description, paid_amount saldo_kredit, 0 saldo_debit,0 dpp from '+
                '(SELECT a.voucher_no,a.trans_date,b.code_account,a.description,a.name_cust,b.paid_amount FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)x where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and code_account=''2130.04'' order by trans_date,voucher_no Asc ))xx '+
                'LEFT JOIN '+
                '(select DISTINCT k.voucher_no,k.periode1,k.periode2,k.plan_to,k.to_,l.supplier_code from '+
                '(SELECT a.voucher_no,a.periode1,a.periode2,a.plan_to,a.to_ from t_cash_bank_expenditure_submission a INNER JOIN t_cash_bank_expenditure_submission_det b on a.voucher_no=b.no_voucher '+
                ') k '+
                'left join t_supplier l on k.to_=l.supplier_name) r on xx.voucher_tmp=r.voucher_no where case WHEN xx.saldo_kredit is null then 0 else xx.saldo_kredit end <> 0 order by xx.tanggal,xx.voucher) '+
                'UNION All '+
                'SELECT '''' as voucher,'''' as voucher_tmp,b.trans_date tgl_terima,a.account_pph_code, (case when a.account_pph_code=''2130.02'' then ''PPH PS 23'' when a.account_pph_code=''2130.01'' then ''PPH PS 21'' '+
                'when a.account_pph_code=''2130.03'' then ''PPH PS 25''  when a.account_pph_code=''2130.04'' then ''PPH PS 4(2)'' when a.account_pph_code=''2130.07'' then ''PPH PS 15''  '+
                'when a.account_pph_code=''2130.06'' then ''PPH PS 22'' else a.account_pph_code end) as deskripsi,  supplier_name as kepada,b.faktur_no,0 saldo_kredit,0 saldo_debit,a.subtotalrp as dpp,a.pph_rp as saldo,a.ppn_rp  from t_purchase_invoice_det a '+
                'left join t_purchase_invoice b on a.trans_no=b.trans_no '+
                'LEFT JOIN t_supplier d on b.supplier_code=d.supplier_code where b.trans_date >'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_cutoff))+' and b.trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTawal.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTakhir.EditValue))+' and a.account_pph_code=''2130.04'') zz';
      open;
   end;
   frxReport2.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Catatan_PPN_PPH.fr3');
   Tfrxmemoview(frxReport2.FindObject('Memperiode')).Memo.Text:='Periode  : '+FormatDateTime('dd mmmm yyyy',DTawal.EditValue)+' '+'S/D'+' '+FormatDateTime('dd mmmm yyyy',DTakhir.EditValue);
   frxReport2.ReportOptions.Name:='Catatan_PPN_PPH';
   frxreport2.showreport;
end;

initialization
  RegisterClass(TF_catatan_ppn_pph);

end.
