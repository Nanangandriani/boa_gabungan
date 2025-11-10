unit U_cetak_rekap_hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, MemDS, DBAccess, Uni, MemTableEh, frxClass,
  frxDBSet, dxRibbon, dxBar, cxBarEditItem, cxClasses, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, DataDriverEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxDropDownEdit, cxSpinEdit;

type
  TF_cetak_rekap_hutang = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DataSetDriverEh1: TDataSetDriverEh;
    DBGridRekapHutang: TDBGridEh;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    frxDBDataset4: TfrxDBDataset;
    MemRekapHutang: TMemTableEh;
    QRekapHutang: TUniQuery;
    QPerusahaan: TUniQuery;
    DSRekapHutang: TDataSource;
    uniqrekaphutang: TUniQuery;
    frxdbrekaphutang: TfrxDBDataset;
    frxrekaphutang: TfrxReport;
    DSQTgl_Hutang: TDataSource;
    QTgl_hutang: TUniQuery;
    cbbulan: TdxBarCombo;
    QRekapHutangprinciple_code: TStringField;
    QRekapHutangprinciple_name: TStringField;
    QRekapHutangsisa_hutang: TFloatField;
    QRekapHutangnilai_retur: TFloatField;
    QRekapHutangnilai_kredit: TFloatField;
    QRekapHutangnilai_debit: TFloatField;
    QRekapHutangsaldo_akhir: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_jenis_hutang,bpjs_kes,bpjs_ket:string;
    tgl_htg,tgl_mulai,tgl_cutoff:tdatetime;
    tgl1,tgl2:tdate;
    procedure load_item_type;
    procedure load_tgl_hutang;
  end;

 function
//var
  F_cetak_rekap_hutang: TF_cetak_rekap_hutang;

implementation

{$R *.dfm}

uses UDataModule;



var
  realF_cetak_rekap_hutang : TF_cetak_rekap_hutang;


  // implementasi function
function F_cetak_rekap_hutang: TF_cetak_rekap_hutang;
begin
  if realF_cetak_rekap_hutang <> nil then
     F_cetak_rekap_hutang:= realF_cetak_rekap_hutang
  else
    Application.CreateForm(TF_cetak_rekap_hutang, Result);
end;

function maxdate(amonth,ayear:integer):integer;
 var
  dummy:integer;
 begin
   dummy:=0;
   case amonth of
   1,3,5,7,8,10,12:dummy:=31;
   4,6,9,11:dummy:=30;
   2:
   begin
    if ayear mod 4=0 then
      dummy:=29
      else
       dummy:=28;
      end;
    end;
    maxdate:=dummy;
 end;

procedure TF_cetak_rekap_hutang.load_tgl_hutang;
begin
    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;
end;

procedure TF_cetak_rekap_hutang.dxBarLargeButton4Click(Sender: TObject);
//var
   //tgl1,tgl2:tdate;
begin

    if jenis_hutang.Text ='' then
    begin
      MessageDlg('Jenis Hutang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      jenis_hutang.SetFocus;
      Exit;
    end;
    if cbbulan.Text ='' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbulan.SetFocus;
      Exit;
    end;

    bpjs_ket:='2102.02';
    bpjs_kes:='2102.03';

    tgl1:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,1);
    tgl2:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,maxdate(cbbulan.ItemIndex,cbtahun.EditValue));
    load_tgl_hutang;

    if Jenis_Hutang.Text='BIAYA' then
    begin
      with uniqrekaphutang do
      begin
         close;
         sql.Clear;
         sql.Text:='select gg.* from '+
                   '(select principle_code,principle_name,sisa_hutang,nilai_retur,nilai_kredit '+
                   '+tkl_kredit-(case when hh.nilai_um is null then 0 else hh.nilai_um end) as nilai_kredit,nilai_debit+tkl_debit as nilai_debit from '+
                   '(select supp.principle_code,supp.principle_name, '+
                   '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end) sisa_hutang, '+
                   '(case when retur.nilai_retur is null then 0 else retur.nilai_retur end)nilai_retur, '+
                   '(case when beli.nilai_debit is null then 0 else beli.nilai_debit end)nilai_kredit, '+
                   '(case when tkl.nilai_kredit is null then 0 else tkl.nilai_kredit end)tkl_kredit, '+
                   '(case when tkl.nilai_debit is null then 0 else tkl.nilai_debit end)tkl_debit, '+
                   '(case when bayar.nilai_kredit is null then 0 else bayar.nilai_kredit end)nilai_debit, '+
                   '(case when pot_beli.nilai_pot is null then 0 else pot_beli.nilai_pot end)pot_beli '+
                   'from '+
                   '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                   'left join (select * from t_initial_balance_debt a '+
                   'INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                   //'WHERE b.code='2102.04' or b.code='2102.05' or b.code='2102.06' or b.code='2102.07' '+
                   'WHERE b.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07'') '+
                   'and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= supp.principle_code '+
                   'left join '+
                   '(select jj.kodesup,round(cast(jj.saldo_awal_tahun+jj.kredit '+
                   '+jj.saldo_tkl-jj.debit-jj.debit_retur-jj.nilai_pot as numeric),2) sisa_hutang from '+
                   '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                   '(case when y.nilai is null then 0 else y.nilai end)debit, '+
                   '(case when z.nilai is null then 0 else z.nilai end)debit_retur, '+
                   '(case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot, '+
                   '(case when tkl.saldo_tkl is null then 0 else tkl.saldo_tkl end)saldo_tkl from '+
                   '(select * from t_supplier )a '+
                   'left join '+
                   '(select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                   '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                   '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where code=''2102.04'' or code=''2102.05'' or code=''2102.06'' or code=''2102.07'' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   ')a '+
                   'left join '+
                   '(select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no group by kodesup,b.po_no,a.valas)a left join '+
                   '(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x  group by kodesup )x on a.supplier_code=x.kodesup '+
                   'left join(select supplier_code as kodesup,sum(bayar) as nilai from '+
                   '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   '(select voucher_no,supplier_code,sum(pay)as bayar from t_buy_pay x '+
                   'INNER JOIN v_ak_account y ON x.acc_balance=y.account_code2 '+
                   'WHERE y.code=''2102.04'' or y.code=''2102.05'' or y.code=''2102.06'' or y.code=''2102.07'' '+
                   'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' group by voucher_no,supplier_code order by voucher_no,supplier_code)a '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                   'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                   'left join '+
                   '(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a,t_purchase_return b '+
                   'left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account jj on dd.account_code=jj.account_code2 '+
                   'where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and jj.code=''2102.04'' or jj.code=''2102.05'' or jj.code=''2102.06'' or jj.code=''2102.07'' '+
                   'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                   'left join '+
                   '(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'  and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and ee.code=''2102.04'' or ee.code=''2102.05'' or ee.code=''2102.06'' or ee.code=''2102.07'' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                   'left join '+
                   '(select akun_kredit as kode_supplier,kredit-debit-c.initial_balance as saldo_tkl from '+
                   '(select akun_kredit, (case when kredit is null then 0 else kredit end)kredit,(case when debit is null then 0 else debit end)debit from '+
                   '(select akun_kredit,sum(kredit)as kredit from(SELECT (case a.account_code when ''2130.01'' then ''TK'' when ''2130.32'' then ''TKL'' end)akun_kredit, sum(a.kredit) AS kredit FROM t_memorial_journal_detail a '+
                   'LEFT JOIN t_memorial_journal b ON a.memo_no::text = b.memo_no::text WHERE (a.account_code::text = ''2130.01''::text or a.account_code::text=''2130.32'') and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'  and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+
                   'GROUP BY a.account_code  union select supplier_code as akun_kredit,initial_balance as kredit from t_initial_balance_debt where supplier_code=''TK'' or supplier_code=''TKL'')ccc group by akun_kredit)a '+
                   'left join(select (case code_account when ''2130.01'' then ''TK'' when ''2130.32'' then ''TKL'' end)kodesp ,sum(amount)as debit from (SELECT a.trans_date,b.code_account,a.amount from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)dd '+
                   'where dd.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and (code_account=''2130.01'' or code_account=''2130.32'') group by code_account)b on a.akun_kredit=b.kodesp)xxx '+
                   'left join (select * from t_initial_balance_debt)c on xxx.akun_kredit=c.supplier_code)tkl on a.supplier_code=tkl.kode_supplier '+
                   'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'' and  "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj )hutang '+
                   'on supp.principle_code=hutang.kodesup '+
                   'left join(select kodesup,sum(nilai)as nilai_retur from '+
                   '(select a.return_no as noinv,b.supplier_code as kodesup,b.return_date as tanggal,(case when b.valas=''USD'' then a.total_price*b.valas_value else a.total_price end)nilai  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account e on c.account_code=e.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and e.code=''2102.04'' or e.code=''2102.05'' or e.code=''2102.06'' or e.code=''2102.07'' and  b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')inv group by kodesup order by kodesup)retur on supp.principle_code=retur.kodesup '+
                   'left join(select kodesup,sum(nilai_debit)as nilai_debit from '+
                   '(select a.supplier_code as kodesup,(case when a.valas=''USD'' then b.nilai*a.valas_value else b.nilai end)nilai_debit from '+
                   '(select * from t_purchase_invoice dd INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 where code=''2102.04'' OR '+
                   'code=''2102.05'' or code=''2102.06'' or code=''2102.07'' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join (select trans_no,sum(grandtotal)as nilai from t_purchase_invoice_det group by trans_no)b on a.trans_no=b.trans_no  order by kodesup)x group by kodesup order by kodesup )beli on supp.principle_code=beli.kodesup '+
                   'left join (select ''TKL'' kodesup, sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_tkl where account_code=''6102.14'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   'UNION ALL '+
                   'select ''TK'' kodesup, sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_tkl where account_code=''5102.14'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+') tkl on supp.principle_code=tkl.kodesup '+
                   'left join '+
                   '(select xx.kodesup,sum(xx.nilai) nilai_kredit from '+
                   '(select distinct a.trans_no as noinv,b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan from (select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'' '+
                   'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+
                   'union all '+
                   'select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup,bb.discount_date as tanggal,bb.stock_code as kode,''POTONGAN PEMBELIAN'' as ket, bb.price_rp+bb.ppnrp as nilai,1 as urutan from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and '+
                   //'(ee.code=''2102.04'' or ee.code=''2102.05'' or ee.code=''2102.06'' or ee.code=''2102.07'') '+
                   'ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'union all '+
                   'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan from '+
                   '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit from '+
                   '(select noinv,kodesup,tanggal,sum(nilai)as nilai from  (select voucher_no as noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,account_acc as kode,description as keterangan, '+
                   'paid_amount as nilai, '+
                   '4 as urutan from t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and '+
                   //'(b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'') '+
                   ' b.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   ')x  group by noinv,kodesup,tanggal)y '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                   'left join (select voucher_no,sum(paid_amount) jumlah from (SELECT a.voucher_no,b.paid_amount,b."position",b.code_account from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)pp where "position"=''K'' and code_account<>''1101.01'' GROUP BY voucher_no) kas on kas.voucher_no=xx.noinv '+
                   'union all '+
                   'select a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   '(case when b.valas=''USD'' then a.total_price*b.valas_value else a.total_price end)nilai,5 as urutan  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and '+
                   //'(d.code=''2102.04'' or d.code=''2102.05'' or d.code=''2102.06'' or d.code=''2102.07'') '+
                   'd.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'union all '+
                   'select a.bk_no as noinv,'''' as nopo,'''' kodesup '+
                   ',b.trans_date as tanggal,a.account_code as kode,a.keterangan,a.pay as nilai,a.urutan from (select voucher_no,bk_no,account_code,remark keterangan,pay,6 as urutan from t_payment_detail_real a '+
                   'INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where source_id=3 and '+
                   //'(b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'') '+
                   ' b.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   ')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)cc where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')b on a.bk_no=b.voucher_no '+
                   ')xx '+
                   'where tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' GROUP BY xx.kodesup)bayar on supp.principle_code=bayar.kodesup '+
                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and '+
                   //'ee.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07'') '+
                   'ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'group by bb.supplier_code order by bb.supplier_code)pot_beli on supp.principle_code=pot_beli.supplier_code '+
                   'left join(select supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' group by supplier_code order by supplier_code)um on supp.principle_code=um.supplier_code '+
                   ')xx '+
                   'left join (select a.supplier_code,sum((case when b.nilai_um is null then 0 else b.nilai_um end))nilai_um from '+
                   '(select distinct a.trans_no,a.po_no,b.supplier_code from t_purchase_invoice_det a,t_purchase_invoice b '+
                   'INNER JOIN v_ak_account c on b.account_code=c.account_code2 '+
                   'where a.trans_no=b.trans_no and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and c.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07''))a '+
                   'left join (select supplier_code,po_no,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code GROUP BY a.supplier_code) hh on hh.supplier_code=xx.principle_code '+
                   'UNION '+
                   'select principle_code,principle_name,initial_balance+awal_kredit-awal_debit as sisa_hutang,0::float nilai_retur,sum(nilai_kredit+nilai_kredit2)as nilai_kredit,sum(nilai_debit+nilai_debit2)as nilai_debit from '+
                   '(select distinct a.principle_code,a.principle_name,b.initial_balance, '+
                   '(case when c.awal_kredit is null then 0 else c.awal_kredit end)awal_kredit, '+
                   '(case when c.awal_debit is null then 0 else c.awal_debit end)awal_debit, '+
                   '(case when d.nilai_debit is null then 0 else d.nilai_debit end)nilai_debit, '+
                   '(case when d.nilai_kredit is null then 0 else d.nilai_kredit end)nilai_kredit, '+
                   '(case when yy.nilai_kredit2 is null then 0 else yy.nilai_kredit2 end)nilai_kredit2, '+
                   '(case when yy.nilai_debit2 is null then 0 else yy.nilai_debit2 end)nilai_debit2 '+
                   'from '+
                   '(select ''HTG BY SEWA''::text principle_code,''HUTANG BIAYA SEWA''::text principle_name)a '+
                   'left join (select * from t_initial_balance_debt where supplier_code=''HTG BY SEWA'')b on a.principle_code=b.supplier_code '+
                   'left join (select ''HTG BY SEWA''::text principle_code,sum(kredit)as awal_kredit,sum(debit)as awal_debit from '+
                   '(select a.memo_no,(case when a.kredit is null then 0 else kredit end)kredit,(case when b.debit is null then 0 else b.debit end)debit from '+
                   '(select a.memo_no,sum(kredit)as kredit from t_memorial_journal_detail a,t_memorial_journal b where a.memo_no=b.memo_no '+
                   'and a.account_code=''2102.04'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+'  group by a.memo_no)a '+
                   'left join '+
                   '(select a.voucher_no,sum(b.paid_amount)as debit from t_payment_detail_real a '+
                   'INNER JOIN (SELECT a.voucher_no,b.paid_amount,b.code_account,b.trans_date from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.bk_no=b.voucher_no '+
                   'INNER JOIN v_ak_account c on b.code_account=c.account_code2 '+
                   'where c.code=''2102.04'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'group by a.voucher_no)b on a.memo_no=b.voucher_no)x  group by principle_code)c on a.principle_code=c.principle_code '+
                   'left join(select principle_code,sum(nilai_kredit)as nilai_kredit,sum(nilai_debit)as nilai_debit from '+
                   '(select ''HTG BY SEWA'' ::TEXT principle_code,a.account_code as kd_akun,''HUTANG BIAYA SEWA'' as nasup,a.kredit as nilai_kredit,0 ::float as nilai_debit from t_memorial_journal_detail a '+
                   'left join t_ak_account b on a.account_code=b.code '+
                   'left join t_memorial_journal c on a.memo_no=c.memo_no '+
                   'where a.account_code in (select account_code from t_memorial_data_source_account) and a.kredit<>0 and a.account_code=''2102.''  and c.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')x  group by principle_code)d on a.principle_code=d.principle_code '+
                   'LEFT JOIN '+
                   '(select principle_code,0 ::float as nilai_kredit2,nilai_debit as nilai_debit2 from '+
                   '(select ''HTG BY SEWA'' ::TEXT  principle_code,''HUTANG BIAYA SEWA'' as principle_name,0 ::float as sisa_hutang,0 ::float as nilai_retur,0 ::float as  nilai_kredit,a.paid_amount as nilai_debit from '+
                   '(SELECT a.trans_date,b.paid_amount,b.code_account,"position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) a '+
                   'where a.code_account=''2102.04'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and a."position"=''D'')e group by principle_code,nilai_kredit2,nilai_debit2)yy on yy.principle_code=a.principle_code )xxx '+
                   'group by xxx.principle_code,principle_name,xxx.initial_balance,xxx.awal_kredit,xxx.awal_debit '+
                   'union '+
                   'select ''BPJS KES'' ::TEXT principle_code , ''BPJS KESEHATAN'' ::TEXT principle_name,(select initial_balance+(select ((case when sum(a.kredit) is NULL then 0 else sum(a.kredit) end)-(case when sum(a.debit) is NULL then 0 else sum(a.debit) end)) '+
                   ' from v_kartu_hutang_bpjs a '+
                   'where a.tgl_bk BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and a.akun_kredit=''2102.03'') from t_initial_balance_debt '+
                   'where "year"=(select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER and supplier_code=''BPJS KES'') sisa_hutang,0::FLOAT nilai_retur,sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_bpjs '+
                   'where akun_kredit=''2102.03'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   'UNION '+
                   'select ''BPJS KET'' ::TEXT principle_code , ''BPJS KETENAGAKERJAAN'' ::TEXT principle_name,(select initial_balance+(select ((case when sum(a.kredit) is NULL then 0 else sum(a.kredit) end)-(case when sum(a.debit) is NULL then 0 else sum(a.debit) end)) '+
                   'from v_kartu_hutang_bpjs a where a.tgl_bk BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and a.akun_kredit=''2102.02'') from t_initial_balance_debt where "year"=(select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER '+
                   'and supplier_code=''BPJS KET'') sisa_hutang,0::FLOAT nilai_retur,sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_bpjs where akun_kredit=''2102.02'' '+
                   'and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   ')gg '+
                   'where (gg.sisa_hutang>0 or  gg.nilai_kredit>0 or gg.nilai_debit+gg.nilai_retur>0) order by gg.principle_name asc ';
         open;
      end;
      frxRekaphutang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang.fr3');
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_jenis_hutang')).Memo.Text:='REKAP HUTANG'+' '+Jenis_Hutang.text;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_bulan')).Memo.Text:='BULAN'+' '+cbbulan.Text+' '+cbtahun.EditValue;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo15')).Memo.Text:=cbbulan.Text;
      frxRekaphutang.ReportOptions.Name:='Rekap Hutang';
      frxRekaphutang.showreport;

    end
    else
    //if Jenis_Hutang.Text='DAGANG' then
    begin
      with uniqrekaphutang do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT yyy.* FROM '+
                   '(select gg.principle_code,gg.principle_name, sisa_hutang,nilai_retur, round(cast((gg.nilai_kredit)as numeric),2) nilai_kredit, round(cast((gg.nilai_debit)as numeric),2) nilai_debit from '+
                   '(select principle_code,principle_name,sisa_hutang,nilai_retur,nilai_kredit '+
                   '-(case when hh.nilai_um is null then 0 else hh.nilai_um end) as nilai_kredit,nilai_debit as nilai_debit from '+
                   '(select supp.principle_code,supp.principle_name, '+
                   '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end) sisa_hutang, '+
                   '(case when retur.nilai_retur is null then 0 else retur.nilai_retur end)nilai_retur, '+
                   '(case when beli.nilai_debit is null then 0 else beli.nilai_debit end)nilai_kredit, '+
                   '(case when bayar.nilai_kredit is null then 0 else bayar.nilai_kredit end)nilai_debit, '+
                   '(case when pot_beli.nilai_pot is null then 0 else pot_beli.nilai_pot end)pot_beli '+
                   'from '+
                   '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp left join '+
                   '(select * from t_initial_balance_debt a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where code='+Quotedstr(vkd_jenis_hutang)+' and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= supp.principle_code  left join '+

                   '(select jj.kodesup,jj.saldo_awal_tahun + round( CAST ( ( jj.kredit ) AS NUMERIC ), 2 ) '+
                   '- round( CAST ( ( jj.debit ) AS NUMERIC ), 2 ) '+
                   '- round( CAST ( ( jj.debit_retur ) AS NUMERIC ), 2 ) - round( CAST ( ( jj.nilai_pot ) AS NUMERIC ), 2 ) sisa_hutang  from '+

                   '(select a.supplier_code as kodesup, '+
                   'case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun, '+
                   '(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                   '(case when y.nilai is null then 0 else y.nilai end)debit, '+
                   '(case when z.nilai is null then 0 else z.nilai end)debit_retur, '+
                   '(case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from (select * from t_supplier )a '+
                   'left join '+

                   '(select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                   '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                   '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(subtotalrp) else sum(nilai) end)nilai from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' )a '+
                   'left join '+
                   '(select trans_no,po_no,stock_code as kode,qty,unit as jumlah,subtotalrp,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                   'left join '+
                   '(select po_no,supplier_code,(case when valas=''USD'' then sum(um_value)*valas_value else sum(um_value) end)nilai_um from t_po '+
                   'where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                   ' group by kodesup )x on a.supplier_code=x.kodesup '+

                   'left join(select supplier_code as kodesup,sum(bayar) as nilai from '+
                   '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   '(select voucher_no,supplier_code,sum(paid_amount)as bayar,account_acc,code,trans_date from t_cash_bank_expenditure_payable a '+
                   'INNER JOIN v_ak_account b on a.account_acc=b.account_code2  where code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'and  trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+
                   'group by voucher_no,supplier_code,account_acc,code,trans_date order by voucher_no,supplier_code)a '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                   'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+

                   'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price+b.ppn_rp) end)nilai from '+
                   't_purchase_return_det a,t_purchase_return b left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                   'inner join v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+

                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'inner join v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+

                   'left join '+
                   '(select * from t_initial_balance_debt  a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where code='+Quotedstr(vkd_jenis_hutang)+' and '+
                   '"year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj )hutang on supp.principle_code=hutang.kodesup '+

                   'left join(select kodesup,sum(nilai)as nilai_retur from '+
                   '(select a.return_no as noinv,b.supplier_code as kodesup,b.return_date as tanggal,(case when b.valas=''USD'' then a.total_price*b.valas_value else b.price+b.ppn_rp end)nilai  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and d.code='+Quotedstr(vkd_jenis_hutang)+' and b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')inv group by kodesup order by kodesup)retur on supp.principle_code=retur.kodesup '+
                   'left join '+
                   '(select kodesup,sum(nilai_debit)as nilai_debit from '+
                   '(select a.supplier_code as kodesup,(case when a.valas=''USD'' then b.total else b.nilai end)nilai_debit from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where b.code='+Quotedstr(vkd_jenis_hutang)+' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join (select trans_no,sum(subtotalrp)as total,sum(grandtotal)as nilai from t_purchase_invoice_det group by trans_no)b on a.trans_no=b.trans_no  order by kodesup)x group by kodesup order by kodesup )beli on supp.principle_code=beli.kodesup '+
                   'left join (select xx.kodesup,sum(xx.nilai) nilai_kredit from '+
                   '(select distinct a.trans_no as noinv,b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2  where code='+Quotedstr(vkd_jenis_hutang)+' and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a  left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+

                   'union all '+
                   'select bb.receive_no as noinv,'''' as po_no,bb.supplier_code as kodesup,bb.discount_date as tanggal,bb.stock_code as kode,''POTONGAN PEMBELIAN'' as ket,bb.price_rp+bb.ppnrp as nilai,1 as urutan from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+

                   'union all '+
                   'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan from '+
                   '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit from '+
                   '(select noinv,kodesup,tanggal,sum(nilai)as nilai from '+
                   '(select  voucher_no as noinv,'''' as po_no,supplier_code as kodesup,trans_date as tanggal,account_acc as kode,description,paid_amount as nilai,4 as urutan from t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and code='+Quotedstr(vkd_jenis_hutang)+')x  group by noinv,kodesup,tanggal)y '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                   'left join (select voucher_no,sum(paid_amount) jumlah from (SELECT a.voucher_no,b.paid_amount,b."position",b.code_account from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)cc where "position"=''K'' '+
                   'and code_account <>''1101.01'' '+
                   'GROUP BY voucher_no) kas on kas.voucher_no=xx.noinv '+
                   'union all '+
                   'select a.return_no as noinv,'''' as po_no,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   '(case when b.valas=''USD''then a.total_price*b.valas_value else  b.price+b.ppn_rp end)nilai,5 as urutan  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and d.code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'union all '+
                   'select a.bk_no as noinv,'''' as nopo, '+
                   ' '''' kodesup, '+
                   'b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                   '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where source_id=3 and code='+Quotedstr(vkd_jenis_hutang)+')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)pp where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' )b on a.bk_no=b.voucher_no '+
                   ')xx '+
                   'where tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  GROUP BY xx.kodesup)bayar on supp.principle_code=bayar.kodesup '+
                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)pot_beli on supp.principle_code=pot_beli.supplier_code '+
                   'left join(select supplier_code,(case when valas=''USD'' then sum(um_value)* valas_value else sum(um_value) end)nilai_um from t_po where um_status=true and po_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  group by supplier_code,valas,valas_value order by supplier_code)um on supp.principle_code=um.supplier_code '+
                   'left join (select kodesup,sum(nilai) as debit_do from '+
                   '(select a.bk_no as noinv,'''' as po_no, '+
                   ' '''' kodesup '+
                   ',b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                   '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real a '+
                   'INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where source_id=3 and code='+Quotedstr(vkd_jenis_hutang)+')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)qq where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')b on a.bk_no=b.voucher_no '+

                   ')x  where x.tanggal is not null group by kodesup order by kodesup)bayar_do on supp.principle_code=bayar_do.kodesup '+

                   ')xx '+
                   'left join '+
                   '(select a.supplier_code,sum((case when b.nilai_um is null then 0 else b.nilai_um end))nilai_um from '+
                   '(select distinct a.trans_no,a.po_no,b.supplier_code from t_purchase_invoice_det a,t_purchase_invoice b where a.trans_no=b.trans_no and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join(select supplier_code,po_no,(case when valas=''USD'' then sum(um_value)*valas_value else sum(um_value) end)nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code GROUP BY a.supplier_code) hh on hh.supplier_code=xx.principle_code )gg '+

                   'where (gg.sisa_hutang>0 or  gg.nilai_kredit>0 or gg.nilai_debit+gg.nilai_retur>0)  order by gg.principle_name asc)yyy';
         Open;
      end;
      frxRekaphutang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang.fr3');
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_jenis_hutang')).Memo.Text:='REKAP HUTANG'+' '+Jenis_Hutang.text;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_bulan')).Memo.Text:='BULAN'+' '+cbbulan.Text+' '+cbtahun.EditValue;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo15')).Memo.Text:=cbbulan.Text;
      frxRekaphutang.ReportOptions.Name:='Rekap Hutang';
      frxRekaphutang.showreport;
    end;

end;

procedure TF_cetak_rekap_hutang.dxRefreshClick(Sender: TObject);
begin
    if QRekapHutang.Active=false then
      QRekapHutang.Active:=true;
    if MemRekapHutang.Active=false then
      MemRekapHutang.Active:=true;

    bpjs_ket:='2102.02';
    bpjs_kes:='2102.03';

    tgl1:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,1);
    tgl2:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,maxdate(cbbulan.ItemIndex,cbtahun.EditValue));
    load_tgl_hutang;

    DBGridRekapHutang.StartLoadingStatus();
    if Jenis_Hutang.Text='BIAYA' then
    begin
      with QRekapHutang do
      begin
         close;
         sql.Clear;
         sql.Text:=' SELECT hhh.*, (sisa_hutang +nilai_kredit-nilai_debit) as saldo_akhir FROM '+
                   '(select gg.* from '+
                   '(select principle_code,principle_name,sisa_hutang,nilai_retur,nilai_kredit '+
                   '+tkl_kredit-(case when hh.nilai_um is null then 0 else hh.nilai_um end) as nilai_kredit,nilai_debit+tkl_debit as nilai_debit from '+
                   '(select supp.principle_code,supp.principle_name, '+
                   '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end) sisa_hutang, '+
                   '(case when retur.nilai_retur is null then 0 else retur.nilai_retur end)nilai_retur, '+
                   '(case when beli.nilai_debit is null then 0 else beli.nilai_debit end)nilai_kredit, '+
                   '(case when tkl.nilai_kredit is null then 0 else tkl.nilai_kredit end)tkl_kredit, '+
                   '(case when tkl.nilai_debit is null then 0 else tkl.nilai_debit end)tkl_debit, '+
                   '(case when bayar.nilai_kredit is null then 0 else bayar.nilai_kredit end)nilai_debit, '+
                   '(case when pot_beli.nilai_pot is null then 0 else pot_beli.nilai_pot end)pot_beli '+
                   'from '+
                   '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp '+
                   'left join (select * from t_initial_balance_debt a '+
                   'INNER JOIN v_ak_account b on a.debt_type=b.account_code2 '+
                   //'WHERE b.code='2102.04' or b.code='2102.05' or b.code='2102.06' or b.code='2102.07' '+
                   'WHERE b.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07'') '+
                   'and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= supp.principle_code '+
                   'left join '+
                   '(select jj.kodesup,round(cast(jj.saldo_awal_tahun+jj.kredit '+
                   '+jj.saldo_tkl-jj.debit-jj.debit_retur-jj.nilai_pot as numeric),2) sisa_hutang from '+
                   '(select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                   '(case when y.nilai is null then 0 else y.nilai end)debit, '+
                   '(case when z.nilai is null then 0 else z.nilai end)debit_retur, '+
                   '(case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot, '+
                   '(case when tkl.saldo_tkl is null then 0 else tkl.saldo_tkl end)saldo_tkl from '+
                   '(select * from t_supplier )a '+
                   'left join '+
                   '(select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                   '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                   '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai*valas_value) else sum(nilai) end)nilai from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where code=''2102.04'' or code=''2102.05'' or code=''2102.06'' or code=''2102.07'' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   ')a '+
                   'left join '+
                   '(select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no group by kodesup,b.po_no,a.valas)a left join '+
                   '(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x  group by kodesup )x on a.supplier_code=x.kodesup '+
                   'left join(select supplier_code as kodesup,sum(bayar) as nilai from '+
                   '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   '(select voucher_no,supplier_code,sum(pay)as bayar from t_buy_pay x '+
                   'INNER JOIN v_ak_account y ON x.acc_balance=y.account_code2 '+
                   'WHERE y.code=''2102.04'' or y.code=''2102.05'' or y.code=''2102.06'' or y.code=''2102.07'' '+
                   'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' group by voucher_no,supplier_code order by voucher_no,supplier_code)a '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2130.02'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                   'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                   'left join '+
                   '(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price) end)nilai from t_purchase_return_det a,t_purchase_return b '+
                   'left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account jj on dd.account_code=jj.account_code2 '+
                   'where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and jj.code=''2102.04'' or jj.code=''2102.05'' or jj.code=''2102.06'' or jj.code=''2102.07'' '+
                   'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+
                   'left join '+
                   '(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'  and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and ee.code=''2102.04'' or ee.code=''2102.05'' or ee.code=''2102.06'' or ee.code=''2102.07'' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+
                   'left join '+
                   '(select akun_kredit as kode_supplier,kredit-debit-c.initial_balance as saldo_tkl from '+
                   '(select akun_kredit, (case when kredit is null then 0 else kredit end)kredit,(case when debit is null then 0 else debit end)debit from '+
                   '(select akun_kredit,sum(kredit)as kredit from(SELECT (case a.account_code when ''2130.01'' then ''TK'' when ''2130.32'' then ''TKL'' end)akun_kredit, sum(a.kredit) AS kredit FROM t_memorial_journal_detail a '+
                   'LEFT JOIN t_memorial_journal b ON a.memo_no::text = b.memo_no::text WHERE (a.account_code::text = ''2130.01''::text or a.account_code::text=''2130.32'') and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+'  and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+
                   'GROUP BY a.account_code  union select supplier_code as akun_kredit,initial_balance as kredit from t_initial_balance_debt where supplier_code=''TK'' or supplier_code=''TKL'')ccc group by akun_kredit)a '+
                   'left join(select (case code_account when ''2130.01'' then ''TK'' when ''2130.32'' then ''TKL'' end)kodesp ,sum(amount)as debit from (SELECT a.trans_date,b.code_account,a.amount from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)dd '+
                   'where dd.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and (code_account=''2130.01'' or code_account=''2130.32'') group by code_account)b on a.akun_kredit=b.kodesp)xxx '+
                   'left join (select * from t_initial_balance_debt)c on xxx.akun_kredit=c.supplier_code)tkl on a.supplier_code=tkl.kode_supplier '+
                   'left join (select * from t_initial_balance_debt  a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'' and  "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj )hutang '+
                   'on supp.principle_code=hutang.kodesup '+
                   'left join(select kodesup,sum(nilai)as nilai_retur from '+
                   '(select a.return_no as noinv,b.supplier_code as kodesup,b.return_date as tanggal,(case when b.valas=''USD'' then a.total_price*b.valas_value else a.total_price end)nilai  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account e on c.account_code=e.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and e.code=''2102.04'' or e.code=''2102.05'' or e.code=''2102.06'' or e.code=''2102.07'' and  b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')inv group by kodesup order by kodesup)retur on supp.principle_code=retur.kodesup '+
                   'left join(select kodesup,sum(nilai_debit)as nilai_debit from '+
                   '(select a.supplier_code as kodesup,(case when a.valas=''USD'' then b.nilai*a.valas_value else b.nilai end)nilai_debit from '+
                   '(select * from t_purchase_invoice dd INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 where code=''2102.04'' OR '+
                   'code=''2102.05'' or code=''2102.06'' or code=''2102.07'' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join (select trans_no,sum(grandtotal)as nilai from t_purchase_invoice_det group by trans_no)b on a.trans_no=b.trans_no  order by kodesup)x group by kodesup order by kodesup )beli on supp.principle_code=beli.kodesup '+
                   'left join (select ''TKL'' kodesup, sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_tkl where account_code=''6102.14'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   'UNION ALL '+
                   'select ''TK'' kodesup, sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_tkl where account_code=''5102.14'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+') tkl on supp.principle_code=tkl.kodesup '+
                   'left join '+
                   '(select xx.kodesup,sum(xx.nilai) nilai_kredit from '+
                   '(select distinct a.trans_no as noinv,b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan from (select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'' '+
                   'and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+
                   'union all '+
                   'select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup,bb.discount_date as tanggal,bb.stock_code as kode,''POTONGAN PEMBELIAN'' as ket, bb.price_rp+bb.ppnrp as nilai,1 as urutan from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and '+
                   //'(ee.code=''2102.04'' or ee.code=''2102.05'' or ee.code=''2102.06'' or ee.code=''2102.07'') '+
                   'ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'union all '+
                   'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan from '+
                   '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit from '+
                   '(select noinv,kodesup,tanggal,sum(nilai)as nilai from  (select voucher_no as noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,account_acc as kode,description as keterangan, '+
                   'paid_amount as nilai, '+
                   '4 as urutan from t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and '+
                   //'(b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'') '+
                   ' b.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   ')x  group by noinv,kodesup,tanggal)y '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                   'left join (select voucher_no,sum(paid_amount) jumlah from (SELECT a.voucher_no,b.paid_amount,b."position",b.code_account from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)pp where "position"=''K'' and code_account<>''1101.01'' GROUP BY voucher_no) kas on kas.voucher_no=xx.noinv '+
                   'union all '+
                   'select a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   '(case when b.valas=''USD'' then a.total_price*b.valas_value else a.total_price end)nilai,5 as urutan  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and '+
                   //'(d.code=''2102.04'' or d.code=''2102.05'' or d.code=''2102.06'' or d.code=''2102.07'') '+
                   'd.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'union all '+
                   'select a.bk_no as noinv,'''' as nopo,'''' kodesup '+
                   ',b.trans_date as tanggal,a.account_code as kode,a.keterangan,a.pay as nilai,a.urutan from (select voucher_no,bk_no,account_code,remark keterangan,pay,6 as urutan from t_payment_detail_real a '+
                   'INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where source_id=3 and '+
                   //'(b.code=''2102.04'' or b.code=''2102.05'' or b.code=''2102.06'' or b.code=''2102.07'') '+
                   ' b.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   ')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)cc where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')b on a.bk_no=b.voucher_no '+
                   ')xx '+
                   'where tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' GROUP BY xx.kodesup)bayar on supp.principle_code=bayar.kodesup '+
                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and '+
                   //'ee.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07'') '+
                   'ee.code in(SELECT account_code FROM t_expenses_payable_account) '+
                   'group by bb.supplier_code order by bb.supplier_code)pot_beli on supp.principle_code=pot_beli.supplier_code '+
                   'left join(select supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' group by supplier_code order by supplier_code)um on supp.principle_code=um.supplier_code '+
                   ')xx '+
                   'left join (select a.supplier_code,sum((case when b.nilai_um is null then 0 else b.nilai_um end))nilai_um from '+
                   '(select distinct a.trans_no,a.po_no,b.supplier_code from t_purchase_invoice_det a,t_purchase_invoice b '+
                   'INNER JOIN v_ak_account c on b.account_code=c.account_code2 '+
                   'where a.trans_no=b.trans_no and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and c.code in(''2102.04'',''2102.05'',''2102.06'',''2102.07''))a '+
                   'left join (select supplier_code,po_no,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code GROUP BY a.supplier_code) hh on hh.supplier_code=xx.principle_code '+
                   'UNION '+
                   'select principle_code,principle_name,initial_balance+awal_kredit-awal_debit as sisa_hutang,0::float nilai_retur,sum(nilai_kredit+nilai_kredit2)as nilai_kredit,sum(nilai_debit+nilai_debit2)as nilai_debit from '+
                   '(select distinct a.principle_code,a.principle_name,b.initial_balance, '+
                   '(case when c.awal_kredit is null then 0 else c.awal_kredit end)awal_kredit, '+
                   '(case when c.awal_debit is null then 0 else c.awal_debit end)awal_debit, '+
                   '(case when d.nilai_debit is null then 0 else d.nilai_debit end)nilai_debit, '+
                   '(case when d.nilai_kredit is null then 0 else d.nilai_kredit end)nilai_kredit, '+
                   '(case when yy.nilai_kredit2 is null then 0 else yy.nilai_kredit2 end)nilai_kredit2, '+
                   '(case when yy.nilai_debit2 is null then 0 else yy.nilai_debit2 end)nilai_debit2 '+
                   'from '+
                   '(select ''HTG BY SEWA''::text principle_code,''HUTANG BIAYA SEWA''::text principle_name)a '+
                   'left join (select * from t_initial_balance_debt where supplier_code=''HTG BY SEWA'')b on a.principle_code=b.supplier_code '+
                   'left join (select ''HTG BY SEWA''::text principle_code,sum(kredit)as awal_kredit,sum(debit)as awal_debit from '+
                   '(select a.memo_no,(case when a.kredit is null then 0 else kredit end)kredit,(case when b.debit is null then 0 else b.debit end)debit from '+
                   '(select a.memo_no,sum(kredit)as kredit from t_memorial_journal_detail a,t_memorial_journal b where a.memo_no=b.memo_no '+
                   'and a.account_code=''2102.04'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+'  group by a.memo_no)a '+
                   'left join '+
                   '(select a.voucher_no,sum(b.paid_amount)as debit from t_payment_detail_real a '+
                   'INNER JOIN (SELECT a.voucher_no,b.paid_amount,b.code_account,b.trans_date from t_cash_bank_expenditure a '+
                   'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)b on a.bk_no=b.voucher_no '+
                   'INNER JOIN v_ak_account c on b.code_account=c.account_code2 '+
                   'where c.code=''2102.04'' and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'group by a.voucher_no)b on a.memo_no=b.voucher_no)x  group by principle_code)c on a.principle_code=c.principle_code '+
                   'left join(select principle_code,sum(nilai_kredit)as nilai_kredit,sum(nilai_debit)as nilai_debit from '+
                   '(select ''HTG BY SEWA'' ::TEXT principle_code,a.account_code as kd_akun,''HUTANG BIAYA SEWA'' as nasup,a.kredit as nilai_kredit,0 ::float as nilai_debit from t_memorial_journal_detail a '+
                   'left join t_ak_account b on a.account_code=b.code '+
                   'left join t_memorial_journal c on a.memo_no=c.memo_no '+
                   'where a.account_code in (select account_code from t_memorial_data_source_account) and a.kredit<>0 and a.account_code=''2102.''  and c.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')x  group by principle_code)d on a.principle_code=d.principle_code '+
                   'LEFT JOIN '+
                   '(select principle_code,0 ::float as nilai_kredit2,nilai_debit as nilai_debit2 from '+
                   '(select ''HTG BY SEWA'' ::TEXT  principle_code,''HUTANG BIAYA SEWA'' as principle_name,0 ::float as sisa_hutang,0 ::float as nilai_retur,0 ::float as  nilai_kredit,a.paid_amount as nilai_debit from '+
                   '(SELECT a.trans_date,b.paid_amount,b.code_account,"position" from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) a '+
                   'where a.code_account=''2102.04'' and a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and a."position"=''D'')e group by principle_code,nilai_kredit2,nilai_debit2)yy on yy.principle_code=a.principle_code )xxx '+
                   'group by xxx.principle_code,principle_name,xxx.initial_balance,xxx.awal_kredit,xxx.awal_debit '+
                   'union '+
                   'select ''BPJS KES'' ::TEXT principle_code , ''BPJS KESEHATAN'' ::TEXT principle_name,(select initial_balance+(select ((case when sum(a.kredit) is NULL then 0 else sum(a.kredit) end)-(case when sum(a.debit) is NULL then 0 else sum(a.debit) end)) '+
                   ' from v_kartu_hutang_bpjs a '+
                   'where a.tgl_bk BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and a.akun_kredit=''2102.03'') from t_initial_balance_debt '+
                   'where "year"=(select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER and supplier_code=''BPJS KES'') sisa_hutang,0::FLOAT nilai_retur,sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_bpjs '+
                   'where akun_kredit=''2102.03'' and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   'UNION '+
                   'select ''BPJS KET'' ::TEXT principle_code , ''BPJS KETENAGAKERJAAN'' ::TEXT principle_name,(select initial_balance+(select ((case when sum(a.kredit) is NULL then 0 else sum(a.kredit) end)-(case when sum(a.debit) is NULL then 0 else sum(a.debit) end)) '+
                   'from v_kartu_hutang_bpjs a where a.tgl_bk BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   'and a.akun_kredit=''2102.02'') from t_initial_balance_debt where "year"=(select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER '+
                   'and supplier_code=''BPJS KET'') sisa_hutang,0::FLOAT nilai_retur,sum(kredit) nilai_kredit, sum(debit) nilai_debit from v_kartu_hutang_bpjs where akun_kredit=''2102.02'' '+
                   'and tgl_bk between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   ')gg '+
                   'where (gg.sisa_hutang>0 or  gg.nilai_kredit>0 or gg.nilai_debit+gg.nilai_retur>0) order by gg.principle_name asc '+
                   ')hhh ';
         open;
      end;
      QRekapHutang.Close;
      QRekapHutang.Open;
      MemRekapHutang.Close;
      MemRekapHutang.Open;
    end
    else
    begin
      with QRekapHutang do
      begin
         close;
         sql.Clear;
         sql.Text:='SELECT zzz.*,(sisa_hutang +nilai_kredit-nilai_debit) as saldo_akhir FROM '+
                   '(SELECT yyy.* FROM '+
                   '(select gg.principle_code,gg.principle_name, sisa_hutang,nilai_retur, round(cast((gg.nilai_kredit)as numeric),2) nilai_kredit, round(cast((gg.nilai_debit)as numeric),2) nilai_debit from '+
                   '(select principle_code,principle_name,sisa_hutang,nilai_retur,nilai_kredit '+
                   '-(case when hh.nilai_um is null then 0 else hh.nilai_um end) as nilai_kredit,nilai_debit as nilai_debit from '+
                   '(select supp.principle_code,supp.principle_name, '+
                   '(case when hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end) sisa_hutang, '+
                   '(case when retur.nilai_retur is null then 0 else retur.nilai_retur end)nilai_retur, '+
                   '(case when beli.nilai_debit is null then 0 else beli.nilai_debit end)nilai_kredit, '+
                   '(case when bayar.nilai_kredit is null then 0 else bayar.nilai_kredit end)nilai_debit, '+
                   '(case when pot_beli.nilai_pot is null then 0 else pot_beli.nilai_pot end)pot_beli '+
                   'from '+
                   '(select id,supplier_code as principle_code,supplier_name as principle_name from t_supplier order by supplier_code)supp left join '+
                   '(select * from t_initial_balance_debt a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where code='+Quotedstr(vkd_jenis_hutang)+' and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= supp.principle_code  left join '+

                   '(select jj.kodesup,jj.saldo_awal_tahun + round( CAST ( ( jj.kredit ) AS NUMERIC ), 2 ) '+
                   '- round( CAST ( ( jj.debit ) AS NUMERIC ), 2 ) '+
                   '- round( CAST ( ( jj.debit_retur ) AS NUMERIC ), 2 ) - round( CAST ( ( jj.nilai_pot ) AS NUMERIC ), 2 ) sisa_hutang  from '+

                   '(select a.supplier_code as kodesup, '+
                   'case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun, '+
                   '(case when x.nilai is null then 0 else x.nilai end)kredit, '+
                   '(case when y.nilai is null then 0 else y.nilai end)debit, '+
                   '(case when z.nilai is null then 0 else z.nilai end)debit_retur, '+
                   '(case when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_pot from (select * from t_supplier )a '+
                   'left join '+

                   '(select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                   '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                   '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(subtotalrp) else sum(nilai) end)nilai from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where b.code='+Quotedstr(vkd_jenis_hutang)+' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' )a '+
                   'left join '+
                   '(select trans_no,po_no,stock_code as kode,qty,unit as jumlah,subtotalrp,grandtotal as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kodesup,b.po_no,a.valas)a '+
                   'left join '+
                   '(select po_no,supplier_code,(case when valas=''USD'' then sum(um_value)*valas_value else sum(um_value) end)nilai_um from t_po '+
                   'where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x '+
                   ' group by kodesup )x on a.supplier_code=x.kodesup '+

                   'left join(select supplier_code as kodesup,sum(bayar) as nilai from '+
                   '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   '(select voucher_no,supplier_code,sum(paid_amount)as bayar,account_acc,code,trans_date from t_cash_bank_expenditure_payable a '+
                   'INNER JOIN v_ak_account b on a.account_acc=b.account_code2  where code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'and  trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+
                   'group by voucher_no,supplier_code,account_acc,code,trans_date order by voucher_no,supplier_code)a '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x '+
                   'group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+

                   'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(a.total_price+b.ppn_rp) end)nilai from '+
                   't_purchase_return_det a,t_purchase_return b left join t_purchase_invoice dd on b.receive_no=dd.trans_no '+
                   'inner join v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'group by b.supplier_code,b.valas order by b.supplier_code)z on a.supplier_code=z.kodesup '+

                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'inner join v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)xx on a.supplier_code=xx.supplier_code '+

                   'left join '+
                   '(select * from t_initial_balance_debt  a INNER JOIN v_ak_account b ON a.debt_type=b.account_code2 '+
                   'where code='+Quotedstr(vkd_jenis_hutang)+' and '+
                   '"year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code) jj )hutang on supp.principle_code=hutang.kodesup '+

                   'left join(select kodesup,sum(nilai)as nilai_retur from '+
                   '(select a.return_no as noinv,b.supplier_code as kodesup,b.return_date as tanggal,(case when b.valas=''USD'' then a.total_price*b.valas_value else b.price+b.ppn_rp end)nilai  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and d.code='+Quotedstr(vkd_jenis_hutang)+' and b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')inv group by kodesup order by kodesup)retur on supp.principle_code=retur.kodesup '+
                   'left join '+
                   '(select kodesup,sum(nilai_debit)as nilai_debit from '+
                   '(select a.supplier_code as kodesup,(case when a.valas=''USD'' then b.total else b.nilai end)nilai_debit from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where b.code='+Quotedstr(vkd_jenis_hutang)+' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join (select trans_no,sum(subtotalrp)as total,sum(grandtotal)as nilai from t_purchase_invoice_det group by trans_no)b on a.trans_no=b.trans_no  order by kodesup)x group by kodesup order by kodesup )beli on supp.principle_code=beli.kodesup '+
                   'left join (select xx.kodesup,sum(xx.nilai) nilai_kredit from '+
                   '(select distinct a.trans_no as noinv,b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan from '+
                   '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on a.account_code=b.account_code2  where code='+Quotedstr(vkd_jenis_hutang)+' and  trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a  left join (select trans_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+

                   'union all '+
                   'select bb.receive_no as noinv,'''' as po_no,bb.supplier_code as kodesup,bb.discount_date as tanggal,bb.stock_code as kode,''POTONGAN PEMBELIAN'' as ket,bb.price_rp+bb.ppnrp as nilai,1 as urutan from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' '+

                   'union all '+
                   'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan from '+
                   '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit from '+
                   '(select noinv,kodesup,tanggal,sum(nilai)as nilai from '+
                   '(select  voucher_no as noinv,'''' as po_no,supplier_code as kodesup,trans_date as tanggal,account_acc as kode,description,paid_amount as nilai,4 as urutan from t_cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' and code='+Quotedstr(vkd_jenis_hutang)+')x  group by noinv,kodesup,tanggal)y '+
                   'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                   'left join (select voucher_no,sum(paid_amount) jumlah from (SELECT a.voucher_no,b.paid_amount,b."position",b.code_account from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)cc where "position"=''K'' '+
                   'and code_account <>''1101.01'' '+
                   'GROUP BY voucher_no) kas on kas.voucher_no=xx.noinv '+
                   'union all '+
                   'select a.return_no as noinv,'''' as po_no,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   '(case when b.valas=''USD''then a.total_price*b.valas_value else  b.price+b.ppn_rp end)nilai,5 as urutan  from t_purchase_return_det a,t_purchase_return b,t_purchase_invoice c '+
                   'INNER JOIN v_ak_account d on c.account_code=d.account_code2 '+
                   'where a.return_no=b.return_no and b.receive_no=c.trans_no and d.code='+Quotedstr(vkd_jenis_hutang)+' '+
                   'union all '+
                   'select a.bk_no as noinv,'''' as nopo, '+
                   ' '''' kodesup, '+
                   'b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                   '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real a INNER JOIN v_ak_account b on a.account_code=b.account_code2 where source_id=3 and code='+Quotedstr(vkd_jenis_hutang)+')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)pp where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' )b on a.bk_no=b.voucher_no '+
                   ')xx '+
                   'where tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  GROUP BY xx.kodesup)bayar on supp.principle_code=bayar.kodesup '+
                   'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb '+
                   'left join t_purchase_invoice dd on bb.receive_no=dd.trans_no '+
                   'INNER JOIN v_ak_account ee on dd.account_code=ee.account_code2 '+
                   'where bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' and ee.code='+Quotedstr(vkd_jenis_hutang)+' group by bb.supplier_code order by bb.supplier_code)pot_beli on supp.principle_code=pot_beli.supplier_code '+
                   'left join(select supplier_code,(case when valas=''USD'' then sum(um_value)* valas_value else sum(um_value) end)nilai_um from t_po where um_status=true and po_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  group by supplier_code,valas,valas_value order by supplier_code)um on supp.principle_code=um.supplier_code '+
                   'left join (select kodesup,sum(nilai) as debit_do from '+
                   '(select a.bk_no as noinv,'''' as po_no, '+
                   ' '''' kodesup '+
                   ',b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                   '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real a '+
                   'INNER JOIN v_ak_account b on a.account_code=b.account_code2 '+
                   'where source_id=3 and code='+Quotedstr(vkd_jenis_hutang)+')a '+
                   'left join (select distinct voucher_no,trans_date from (SELECT a.voucher_no,b.trans_date from t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher)qq where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')b on a.bk_no=b.voucher_no '+

                   ')x  where x.tanggal is not null group by kodesup order by kodesup)bayar_do on supp.principle_code=bayar_do.kodesup '+

                   ')xx '+
                   'left join '+
                   '(select a.supplier_code,sum((case when b.nilai_um is null then 0 else b.nilai_um end))nilai_um from '+
                   '(select distinct a.trans_no,a.po_no,b.supplier_code from t_purchase_invoice_det a,t_purchase_invoice b where a.trans_no=b.trans_no and b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a '+
                   'left join(select supplier_code,po_no,(case when valas=''USD'' then sum(um_value)*valas_value else sum(um_value) end)nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code GROUP BY a.supplier_code) hh on hh.supplier_code=xx.principle_code )gg '+

                   'where (gg.sisa_hutang>0 or  gg.nilai_kredit>0 or gg.nilai_debit+gg.nilai_retur>0)  order by gg.principle_name asc)yyy '+
                   ')zzz';
         Open;
      end;
      QRekapHutang.Close;
      QRekapHutang.Open;
      MemRekapHutang.Close;
      MemRekapHutang.Open;
    end;
    DBGridRekapHutang.FinishLoadingStatus();
end;

procedure TF_cetak_rekap_hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TF_cetak_rekap_hutang.FormCreate(Sender: TObject);
begin
  realF_cetak_rekap_hutang:=self;
  cbtahun.EditValue:=FormatDateTime('YYYY',now());
end;

procedure TF_cetak_rekap_hutang.FormDestroy(Sender: TObject);
begin
   realF_cetak_rekap_hutang:=Nil;
end;

procedure TF_cetak_rekap_hutang.FormShow(Sender: TObject);
begin
   {if QRekapHutang.Active=false then
      QRekapHutang.Active:=true;
   if MemRekapHutang.Active=false then
      MemRekapHutang.Active:=true;}
   load_item_type;
end;

procedure TF_cetak_rekap_hutang.Jenis_HutangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Text:='SELECT DISTINCT a.type,a.acc_code_pemb FROM t_item_type a '+
                 'INNER JOIN v_ak_account b on a.acc_code_pemb=b.code '+
                 'INNER JOIN t_purchase_invoice c on b.account_code2=c.account_code '+
                 'WHERE a.type='+Quotedstr(Jenis_Hutang.Text)+' ';
       Open;
       vkd_jenis_hutang:=fieldbyname('acc_code_pemb').AsString;
       //showmessage(vkd_jenis_hutang);
   end;
end;

procedure TF_cetak_rekap_hutang.load_item_type;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT DISTINCT type from t_item_type WHERE deleted_at IS NULL ';
        Open;
      end;
      Dm.Qtemp.First;
      Jenis_Hutang.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         Jenis_Hutang.Items.Add(Dm.Qtemp.FieldByName('type').AsString);
         Dm.Qtemp.Next;
      end;
end;


initialization
  RegisterClass(TF_cetak_rekap_hutang);

end.
