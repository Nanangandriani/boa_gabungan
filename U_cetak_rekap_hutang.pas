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
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxDropDownEdit, cxSpinEdit,
  cxLabel, dxBarExtItems;

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
    QRekapHutangprinciple_code: TMemoField;
    QRekapHutangprinciple_name: TMemoField;
    QRekapHutangsisa_hutang: TFloatField;
    QRekapHutangnilai_retur: TIntegerField;
    QRekapHutangnilai_debit: TFloatField;
    QRekapHutangnilai_kredit: TFloatField;
    QRekapHutangsaldo_akhir: TFloatField;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
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

      with uniqrekaphutang do
      begin
         close;
         sql.Clear;
         sql.Text:=' SELECT kodesup as principle_code,	nasup as principle_name, '+
                   ' sum(sa) as sisa_hutang, 0 as nilai_retur, sum(debit) as nilai_debit, '+
                   ' sum(kredit) as nilai_kredit, sum(sa)+sum(kredit)-sum(debit) as saldo_akhir '+
                   ' from (select  "row_number"() over (ORDER BY tanggal,urutan)+1 nomor, '+
                   ' ket_lunas as ket,* ,0 sa,nilai_debit debit,nilai_kredit kredit from ( '+
                   ' SELECT gg.*,hh.trans_no,hh.faktur_no,hh.item_stock_code,hh.item_name, '+
                   ' hh.unit,hh.tot_qty FROM (select kodesup ::text,nasup ::text,address,telp, '+
                   ' noinv,tanggal,urutan,faktur_no2, round(cast((nilai_kredit-nilai_um)as numeric),2) as nilai_kredit, '+
                   ' round(cast((nilai_debit)as numeric),2) nilai_debit, ket_lunas, kode   from (select zz.*, '+
                   ' (case when um_beli.nilai_um is null then 0 else um_beli.nilai_um end)nilai_um from '+
                   ' (select kodesup,nasup,address,telp,noinv,tanggal,urutan,faktur_no2, '+
                   ' sum(nilai_kredit) as nilai_kredit ,sum(nilai_debit)as nilai_debit, '+
                   ' string_agg(keterangan,'' '') as ket_lunas, kode   from (select a.supplier_code as kodesup, '+
                   ' a.supplier_name as nasup,a.address,a.telp,inv.noinv,inv.tanggal,inv.keterangan,inv.urutan, '+
                   ' (case when kredit.nilai_kredit is null then 0 else kredit.nilai_kredit end)nilai_kredit, '+
                   ' (case when inv.nilai is null then 0 else inv.nilai end)nilai_debit, (case when kredit.nilai_pot '+
                   ' is null then 0 else kredit.nilai_pot end)nilai_pot,faktur_no2,inv.kode from '+
                   ' (select a.* from t_supplier  a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                   ' where type='+QuotedStr(Jenis_Hutang.Text)+')a left join (select x.* from (select distinct a.trans_no as noinv, '+
                   ' b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan, '+
                   ' nilai,urutan,account_code,'''' faktur_no2 from (select * from t_purchase_invoice '+
                   ' where deleted_at is null '+
                   //' -- and account_code='2101.01.SP20070' '+
                   ' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  and debt_remaining <>0 )a '+
                   ' left join (select trans_no,po_no,item_stock_code as kode,unit as jumlah, '+
                   ' grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+
                   ' union all select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup, '+
                   ' bb.discount_date as tanggal, bb.stock_code as kode, ''POTONGAN PEMBELIAN''  as ket, '+
                   ' (case when bb.ppnrp is null then bb.price_rp else bb.price_rp+bb.ppnrp end) as nilai, '+
                   ' 1 as urutan,dd.account_code,bb.faktur_no as faktur_no2  from t_purchase_discount bb '+
                   ' left join t_purchase_invoice dd on bb.receive_no=dd.ref_no  where dd.deleted_at is null '+
                   //' -- and bb.supplier_code='SP20070' '+
                   ' and bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //' --and dd.account_code='2101.01.SP20070'
                   ' union all select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai, '+
                   ' urutan,acc_balance,faktur_no as faktur_no2 from (select noinv,'''' as nopo,kodesup,'+
                   ' tanggal,'''' as kode,keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 '+
                   ' else z.saldo end)nilai_kredit,acc_balance,faktur_no from (select noinv,kodesup,tanggal,'+
                   ' sum(nilai)as nilai,acc_balance,keterangan,faktur_no from (select distinct voucher_no as '+
                   ' noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,bank_number_account as kode, '+
                   ' description as keterangan,sum(paid_amount) as nilai,4 as urutan,account_acc as acc_balance, '+
                   ' faktur_no from vexpenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //--and account_acc='2101.01.SP20070'
                   ' GROUP BY noinv,kodesup,tanggal,kode,keterangan,acc_balance,faktur_no)x  '+
                   ' group by noinv,kodesup,tanggal,acc_balance,keterangan,faktur_no)y '+
                   ' left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z '+
                   ' on y.noinv=z.voucher)xx left join (select no_voucher,sum(paid_amount) jumlah from '+
                   ' t_cash_bank_expenditure_det where position=''K'' and code_account<>''1101.01'' '+
                   ' GROUP BY no_voucher) kas on kas.no_voucher=xx.noinv GROUP BY noinv,nopo,kodesup,tanggal, '+
                   ' kode,keterangan,nilai,urutan,acc_balance,faktur_no union all select '+
                   ' a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal, '+
                   ' a.item_stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   ' (case when b.valas=''USD'' then '+
                   ' (a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) '+
                   ' else (a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) end)nilai, '+
                   ' 5 as urutan,c.account_code,'''' faktur_no2  from t_purchase_return_det a,t_purchase_return b, '+
                   ' t_purchase_invoice c where a.return_no=b.return_no and b.receive_no=c.trans_no and '+
                   ' c.deleted_at is null '+
                   //' --and c.account_code='2101.01.SP20070' '+
                   ' and b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' union all '+
                   ' select a.bk_no as noinv,'''' as nopo,'''' as kodesup,b.trans_date as tanggal, '+
                   ' a.account_code as kode,a.remark,a.pay as nilai,a.urutan,a.account_code,'''' faktur_no2 '+
                   ' from (select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real '+
                   ' where source_id=3 '+
                   //' --and account_code='2101.01.SP20070'
                   '	)a left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det '+
                   ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' )b on a.bk_no=b.no_voucher )x  )inv '+
                   ' on a.supplier_code=inv.kodesup left join(select a.trans_no as noinv,a.supplier_code as kodesup, '+
                   ' b.kode,(case when a.valas=''USD'' then b.nilai1 else b.nilai2 end)nilai_kredit,'+
                   ' c.nilai as nilai_pot from (select * from t_purchase_invoice where deleted_at is null and '+
                   ' trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a left join (select trans_no, '+
                   ' item_stock_code as kode,qty,unit as jumlah,sum(subtotalrp)as nilai1, '+
                   ' SUM ( grandtotal ) AS nilai2 from t_purchase_invoice_det '+
                   ' group by trans_no,item_stock_code,qty,unit)b on a.trans_no=b.trans_no '+
                   ' left join (select DISTINCT receive_no,sum(price_rp) as nilai from t_purchase_discount '+
                   //' --where supplier_code='SP20070'
                   ' GROUP BY receive_no )c on a.trans_no=c.receive_no )kredit  on inv.noinv=kredit.noinv '+
                   ' and inv.kode=kredit.kode and inv.urutan<>5 )xxx  group by kodesup,nasup,address,telp,noinv,'+
                   ' tanggal,urutan,faktur_no2,kode order by kodesup,nasup,address,telp,noinv,'+
                   ' tanggal,urutan,faktur_no2)zz left join(select a.*,(case when b.nilai_um is null then 0 else '+
                   ' b.nilai_um end)nilai_um from (select distinct a.trans_no,a.po_no,b.supplier_code from '+
                   ' t_purchase_invoice_det a,t_purchase_invoice b where a.trans_no=b.trans_no and '+
                   ' b.deleted_at is null and b.trans_no between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //' --and b.supplier_code='SP20070'
                   ' )a left join (select supplier_code,po_no,sum(um_value)as nilai_um from '+
                   ' t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //'	--and  supplier_code='SP20070'
                   ' group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no '+
                   ' and a.supplier_code=b.supplier_code)um_beli on zz.noinv=um_beli.trans_no)ttt where '+
                   ' (nilai_kredit-nilai_um>0) or (nilai_debit>0) and tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' order by tanggal,urutan,nasup,noinv )gg '+
                   ' left JOIN (select c.trans_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit,sum(a.qty)as tot_qty '+
                   ' from (select trans_no,item_stock_code,unit, qty from t_purchase_invoice_det  union all '+
                   ' select return_no as trans_no,item_stock_code,unit, qty from t_purchase_return_det)a '+
                   ' left join t_item_stock b on a.item_stock_code=b.item_stock_code left join (select trans_no, '+
                   ' faktur_no from t_purchase_invoice where  deleted_at is null   union all select '+
                   ' return_no as trans_no,faktur_no from t_purchase_return where  deleted_at is null ) c '+
                   ' on a.trans_no=c.trans_no group by c.trans_no,c.faktur_no,b.item_stock_code,b.item_name, '+
                   ' a.unit order by b.item_stock_code,b.item_name,a.unit)hh  on gg.noinv=hh.trans_no '+
                   ' AND gg.kode = hh.item_stock_code ORDER BY tanggal, trans_no, faktur_no asc)jj '+
                   ' UNION ALL select 1 as nomor,''Saldo Awal'' ket,kodesup,nasup,'''' address,'''' telp,'''' noinv, '+
                   ' null tanggal, 0 urutan,''''faktur_no2, 0 nilai_kredit,0 nilai_debit,'''' as ket_lunas, '+
                   ' '''' AS kode,'''' no_terima,'''' nofaktur,'''' kd_material_stok,'''' nm_material,'''' satuan, '+
                   ' 0 tot_qty,saldo_awal as sa,0 debit,0 kredit FROM (SELECT kodesup,supplier_name as nasup, '+
                   ' sum(yyy.saldo_awal_tahun+yyy.kredit-yyy.debit-yyy.debit_retur-yyy.nilai_pot) saldo_awal, '+
                   ' 0 debit,0 kredit from (/*yyy*/select a.supplier_code as kodesup, a.supplier_name, '+
                   ' case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance '+
                   ' end saldo_awal_tahun,round(cast(case when x.nilai is null then 0 else x.nilai end as '+
                   ' numeric),2)kredit, round(cast(case when y.nilai is null then 0 else y.nilai end as numeric),2) '+
                   ' debit, round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit_retur, '+
                   ' round(cast(case when xx.nilai_pot is null then 0 else xx.nilai_pot end as numeric),2)nilai_pot '+
                   ' from (select a.* from t_supplier  a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                   ' where type='+QuotedStr(Jenis_Hutang.Text)+')a left join (select kodesup,sum(nilai)-sum(nilai_um) '+
                   ' as nilai from (select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um '+
                   ' from (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai1) '+
                   ' else sum(nilai2) end)nilai from (select * from t_purchase_invoice where deleted_at is null '+
                   //'  --and account_code='2101.01.SP20070'
                   ' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and supplier_code='SP20070'
                   ' and debt_remaining<>0)a left join (select trans_no,po_no,stock_code as kode, '+
                   ' qty,unit as jumlah,subtotalrp as nilai1,grandtotal as nilai2, 0 as urutan '+
                   ' from t_purchase_invoice_det )b on a.trans_no=b.trans_no group by kodesup, '+
                   ' b.po_no,a.valas)a left join(select po_no,supplier_code,sum(um_value)as nilai_um '+
                   ' from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   //'--and supplier_code='SP20070'
                   ' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no '+
                   ' and a.kodesup=b.supplier_code)x  group by kodesup)x on a.supplier_code=x.kodesup '+
                   ' left join(select supplier_code as kodesup,sum(bayar)as nilai from (select a.voucher_no, '+
                   ' a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   ' (select voucher_no,supplier_code,sum(paid_amount)as bayar from vexpenditure_payable where '+
                   //'	--supplier_code='SP20070' and account_acc='2101.01.SP20070' and
                   'trans_date between  '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' group by voucher_no,supplier_code '+
                   ' order by voucher_no,supplier_code)a left join (select voucher,sum(saldo)as saldo '+
                   ' from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b '+
                   ' on a.voucher_no=b.voucher)x  group by supplier_code order by supplier_code)y on '+
                   ' a.supplier_code=y.kodesup left join(select b.supplier_code as kodesup,(case when '+
                   ' b.valas=''USD'' then  sum((a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) ) '+
                   ' else sum((a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) ) end)nilai '+
                   ' from t_purchase_return_det a,t_purchase_return b left join t_purchase_invoice dd on '+
                   ' b.receive_no=dd.trans_no where a.return_no=b.return_no and dd.deleted_at is null '+
                   ' and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and dd.account_code='2101.01.SP20070'
                   ' group by b.supplier_code,b.valas order by b.supplier_code)z  on a.supplier_code=z.kodesup '+
                   ' /*Pot pembelian*/ left join(select dd.supplier_code,sum(bb.hargapot)as nilai_pot from '+
                   ' (select receive_no,discount_date ,(price_rp+(case when ppnrp isnull then 0 else ppnrp end)) '+
                   ' hargapot from  t_purchase_discount) bb left join t_purchase_invoice dd on '+
                   ' bb.receive_no=dd.trans_no where dd.deleted_at is null and discount_date '+
                   ' between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and dd.account_code='2101.01'
                   ' group by dd.supplier_code order by supplier_code)xx on a.supplier_code=xx.supplier_code '+
                   ' left join (select kodesup,sum(nilai)as nilai from (select a.bk_no as noinv,'''' as kodesup, '+
                   ' b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan '+
                   ' from (select voucher_no,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real '+
                   '  where source_id=3 '+
                   //' --and account_code='2101.01'
                   ' )a left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det '+
                   '  where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+') b on a.bk_no=b.no_voucher )x '+
                   ' group by kodesup)debit_do on a.supplier_code=debit_do.kodesup left join (select * from '+
                   ' t_initial_balance_debt where '+
                   //' --debt_type='2101.01.SP20070' and
                   ' "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) '+
                   ' saldo_awal on saldo_awal.supplier_code= a.supplier_code '+
                   //' --where a.supplier_code='SP20070'
                   ' /*yyy*/)yyy GROUP BY kodesup,supplier_name,saldo_awal_tahun, '+
                   ' kredit,debit, debit_retur,nilai_pot)kk group by kk.kodesup,kk.nasup,kk.saldo_awal)zzz '+
                   ' GROUP BY kodesup,nasup';
         Open;
      end;

      frxRekaphutang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang.fr3');
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_jenis_hutang')).Memo.Text:='REKAP HUTANG'+' '+Jenis_Hutang.text;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo_bulan')).Memo.Text:='BULAN'+' '+cbbulan.Text+' '+cbtahun.EditValue;
      Tfrxmemoview(frxRekaphutang.FindObject('Memo15')).Memo.Text:=cbbulan.Text;
      frxRekaphutang.ReportOptions.Name:='Rekap Hutang';
      frxRekaphutang.showreport;

end;

procedure TF_cetak_rekap_hutang.dxRefreshClick(Sender: TObject);
begin
    //if QRekapHutang.Active=false then
    //  QRekapHutang.Active:=true;
    if MemRekapHutang.Active=false then
      MemRekapHutang.Active:=true;

    bpjs_ket:='2102.02';
    bpjs_kes:='2102.03';

    tgl1:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,1);
    tgl2:=EncodeDate(cbtahun.EditValue,cbbulan.ItemIndex,maxdate(cbbulan.ItemIndex,cbtahun.EditValue));
    //load_tgl_hutang;

    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;

    DBGridRekapHutang.StartLoadingStatus();
      with QRekapHutang do
      begin
         close;
         sql.Clear;
         sql.Text:=' SELECT kodesup as principle_code,	nasup as principle_name, '+
                   ' sum(sa) as sisa_hutang, 0 as nilai_retur, sum(debit) as nilai_debit, '+
                   ' sum(kredit) as nilai_kredit, sum(sa)+sum(kredit)-sum(debit) as saldo_akhir '+
                   ' from (select  "row_number"() over (ORDER BY tanggal,urutan)+1 nomor, '+
                   ' ket_lunas as ket,* ,0 sa,nilai_debit debit,nilai_kredit kredit from ( '+
                   ' SELECT gg.*,hh.trans_no,hh.faktur_no,hh.item_stock_code,hh.item_name, '+
                   ' hh.unit,hh.tot_qty FROM (select kodesup ::text,nasup ::text,address,telp, '+
                   ' noinv,tanggal,urutan,faktur_no2, round(cast((nilai_kredit-nilai_um)as numeric),2) as nilai_kredit, '+
                   ' round(cast((nilai_debit)as numeric),2) nilai_debit, ket_lunas, kode   from (select zz.*, '+
                   ' (case when um_beli.nilai_um is null then 0 else um_beli.nilai_um end)nilai_um from '+
                   ' (select kodesup,nasup,address,telp,noinv,tanggal,urutan,faktur_no2, '+
                   ' sum(nilai_kredit) as nilai_kredit ,sum(nilai_debit)as nilai_debit, '+
                   ' string_agg(keterangan,'' '') as ket_lunas, kode   from (select a.supplier_code as kodesup, '+
                   ' a.supplier_name as nasup,a.address,a.telp,inv.noinv,inv.tanggal,inv.keterangan,inv.urutan, '+
                   ' (case when kredit.nilai_kredit is null then 0 else kredit.nilai_kredit end)nilai_kredit, '+
                   ' (case when inv.nilai is null then 0 else inv.nilai end)nilai_debit, (case when kredit.nilai_pot '+
                   ' is null then 0 else kredit.nilai_pot end)nilai_pot,faktur_no2,inv.kode from '+
                   ' (select a.* from t_supplier  a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                   ' where type='+QuotedStr(Jenis_Hutang.Text)+')a left join (select x.* from (select distinct a.trans_no as noinv, '+
                   ' b.po_no,a.supplier_code as kodesup,a.trans_date as tanggal,b.kode,b.kode as keterangan, '+
                   ' nilai,urutan,account_code,'''' faktur_no2 from (select * from t_purchase_invoice '+
                   ' where deleted_at is null '+
                   //' -- and account_code='2101.01.SP20070' '+
                   ' and trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+'  and debt_remaining <>0 )a '+
                   ' left join (select trans_no,po_no,item_stock_code as kode,unit as jumlah, '+
                   ' grandtotal * 0 as nilai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.trans_no '+
                   ' union all select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup, '+
                   ' bb.discount_date as tanggal, bb.stock_code as kode, ''POTONGAN PEMBELIAN''  as ket, '+
                   ' (case when bb.ppnrp is null then bb.price_rp else bb.price_rp+bb.ppnrp end) as nilai, '+
                   ' 1 as urutan,dd.account_code,bb.faktur_no as faktur_no2  from t_purchase_discount bb '+
                   ' left join t_purchase_invoice dd on bb.receive_no=dd.ref_no  where dd.deleted_at is null '+
                   //' -- and bb.supplier_code='SP20070' '+
                   ' and bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //' --and dd.account_code='2101.01.SP20070'
                   ' union all select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai, '+
                   ' urutan,acc_balance,faktur_no as faktur_no2 from (select noinv,'''' as nopo,kodesup,'+
                   ' tanggal,'''' as kode,keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 '+
                   ' else z.saldo end)nilai_kredit,acc_balance,faktur_no from (select noinv,kodesup,tanggal,'+
                   ' sum(nilai)as nilai,acc_balance,keterangan,faktur_no from (select distinct voucher_no as '+
                   ' noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,bank_number_account as kode, '+
                   ' description as keterangan,sum(paid_amount) as nilai,4 as urutan,account_acc as acc_balance, '+
                   ' faktur_no from vexpenditure_payable a INNER JOIN v_ak_account b on a.account_acc=b.account_code2 '+
                   ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //--and account_acc='2101.01.SP20070'
                   ' GROUP BY noinv,kodesup,tanggal,kode,keterangan,acc_balance,faktur_no)x  '+
                   ' group by noinv,kodesup,tanggal,acc_balance,keterangan,faktur_no)y '+
                   ' left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z '+
                   ' on y.noinv=z.voucher)xx left join (select no_voucher,sum(paid_amount) jumlah from '+
                   ' t_cash_bank_expenditure_det where position=''K'' and code_account<>''1101.01'' '+
                   ' GROUP BY no_voucher) kas on kas.no_voucher=xx.noinv GROUP BY noinv,nopo,kodesup,tanggal, '+
                   ' kode,keterangan,nilai,urutan,acc_balance,faktur_no union all select '+
                   ' a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal, '+
                   ' a.item_stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                   ' (case when b.valas=''USD'' then '+
                   ' (a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) '+
                   ' else (a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) end)nilai, '+
                   ' 5 as urutan,c.account_code,'''' faktur_no2  from t_purchase_return_det a,t_purchase_return b, '+
                   ' t_purchase_invoice c where a.return_no=b.return_no and b.receive_no=c.trans_no and '+
                   ' c.deleted_at is null '+
                   //' --and c.account_code='2101.01.SP20070' '+
                   ' and b.return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' union all '+
                   ' select a.bk_no as noinv,'''' as nopo,'''' as kodesup,b.trans_date as tanggal, '+
                   ' a.account_code as kode,a.remark,a.pay as nilai,a.urutan,a.account_code,'''' faktur_no2 '+
                   ' from (select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real '+
                   ' where source_id=3 '+
                   //' --and account_code='2101.01.SP20070'
                   '	)a left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det '+
                   ' where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' )b on a.bk_no=b.no_voucher )x  )inv '+
                   ' on a.supplier_code=inv.kodesup left join(select a.trans_no as noinv,a.supplier_code as kodesup, '+
                   ' b.kode,(case when a.valas=''USD'' then b.nilai1 else b.nilai2 end)nilai_kredit,'+
                   ' c.nilai as nilai_pot from (select * from t_purchase_invoice where deleted_at is null and '+
                   ' trans_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+')a left join (select trans_no, '+
                   ' item_stock_code as kode,qty,unit as jumlah,sum(subtotalrp)as nilai1, '+
                   ' SUM ( grandtotal ) AS nilai2 from t_purchase_invoice_det '+
                   ' group by trans_no,item_stock_code,qty,unit)b on a.trans_no=b.trans_no '+
                   ' left join (select DISTINCT receive_no,sum(price_rp) as nilai from t_purchase_discount '+
                   //' --where supplier_code='SP20070'
                   ' GROUP BY receive_no )c on a.trans_no=c.receive_no )kredit  on inv.noinv=kredit.noinv '+
                   ' and inv.kode=kredit.kode and inv.urutan<>5 )xxx  group by kodesup,nasup,address,telp,noinv,'+
                   ' tanggal,urutan,faktur_no2,kode order by kodesup,nasup,address,telp,noinv,'+
                   ' tanggal,urutan,faktur_no2)zz left join(select a.*,(case when b.nilai_um is null then 0 else '+
                   ' b.nilai_um end)nilai_um from (select distinct a.trans_no,a.po_no,b.supplier_code from '+
                   ' t_purchase_invoice_det a,t_purchase_invoice b where a.trans_no=b.trans_no and '+
                   ' b.deleted_at is null and b.trans_no between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //' --and b.supplier_code='SP20070'
                   ' )a left join (select supplier_code,po_no,sum(um_value)as nilai_um from '+
                   ' t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' '+
                   //'	--and  supplier_code='SP20070'
                   ' group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no '+
                   ' and a.supplier_code=b.supplier_code)um_beli on zz.noinv=um_beli.trans_no)ttt where '+
                   ' (nilai_kredit-nilai_um>0) or (nilai_debit>0) and tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+' order by tanggal,urutan,nasup,noinv )gg '+
                   ' left JOIN (select c.trans_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit,sum(a.qty)as tot_qty '+
                   ' from (select trans_no,item_stock_code,unit, qty from t_purchase_invoice_det  union all '+
                   ' select return_no as trans_no,item_stock_code,unit, qty from t_purchase_return_det)a '+
                   ' left join t_item_stock b on a.item_stock_code=b.item_stock_code left join (select trans_no, '+
                   ' faktur_no from t_purchase_invoice where  deleted_at is null   union all select '+
                   ' return_no as trans_no,faktur_no from t_purchase_return where  deleted_at is null ) c '+
                   ' on a.trans_no=c.trans_no group by c.trans_no,c.faktur_no,b.item_stock_code,b.item_name, '+
                   ' a.unit order by b.item_stock_code,b.item_name,a.unit)hh  on gg.noinv=hh.trans_no '+
                   ' AND gg.kode = hh.item_stock_code ORDER BY tanggal, trans_no, faktur_no asc)jj '+
                   ' UNION ALL select 1 as nomor,''Saldo Awal'' ket,kodesup,nasup,'''' address,'''' telp,'''' noinv, '+
                   ' null tanggal, 0 urutan,''''faktur_no2, 0 nilai_kredit,0 nilai_debit,'''' as ket_lunas, '+
                   ' '''' AS kode,'''' no_terima,'''' nofaktur,'''' kd_material_stok,'''' nm_material,'''' satuan, '+
                   ' 0 tot_qty,saldo_awal as sa,0 debit,0 kredit FROM (SELECT kodesup,supplier_name as nasup, '+
                   ' sum(yyy.saldo_awal_tahun+yyy.kredit-yyy.debit-yyy.debit_retur-yyy.nilai_pot) saldo_awal, '+
                   ' 0 debit,0 kredit from (/*yyy*/select a.supplier_code as kodesup, a.supplier_name, '+
                   ' case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance '+
                   ' end saldo_awal_tahun,round(cast(case when x.nilai is null then 0 else x.nilai end as '+
                   ' numeric),2)kredit, round(cast(case when y.nilai is null then 0 else y.nilai end as numeric),2) '+
                   ' debit, round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit_retur, '+
                   ' round(cast(case when xx.nilai_pot is null then 0 else xx.nilai_pot end as numeric),2)nilai_pot '+
                   ' from (select a.* from t_supplier  a LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                   ' where type='+QuotedStr(Jenis_Hutang.Text)+')a left join (select kodesup,sum(nilai)-sum(nilai_um) '+
                   ' as nilai from (select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um '+
                   ' from (select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai1) '+
                   ' else sum(nilai2) end)nilai from (select * from t_purchase_invoice where deleted_at is null '+
                   //'  --and account_code='2101.01.SP20070'
                   ' and trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and supplier_code='SP20070'
                   ' and debt_remaining<>0)a left join (select trans_no,po_no,stock_code as kode, '+
                   ' qty,unit as jumlah,subtotalrp as nilai1,grandtotal as nilai2, 0 as urutan '+
                   ' from t_purchase_invoice_det )b on a.trans_no=b.trans_no group by kodesup, '+
                   ' b.po_no,a.valas)a left join(select po_no,supplier_code,sum(um_value)as nilai_um '+
                   ' from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+' '+
                   //'--and supplier_code='SP20070'
                   ' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no '+
                   ' and a.kodesup=b.supplier_code)x  group by kodesup)x on a.supplier_code=x.kodesup '+
                   ' left join(select supplier_code as kodesup,sum(bayar)as nilai from (select a.voucher_no, '+
                   ' a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from '+
                   ' (select voucher_no,supplier_code,sum(paid_amount)as bayar from vexpenditure_payable where '+
                   //'	--supplier_code='SP20070' and account_acc='2101.01.SP20070' and
                   'trans_date between  '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' group by voucher_no,supplier_code '+
                   ' order by voucher_no,supplier_code)a left join (select voucher,sum(saldo)as saldo '+
                   ' from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b '+
                   ' on a.voucher_no=b.voucher)x  group by supplier_code order by supplier_code)y on '+
                   ' a.supplier_code=y.kodesup left join(select b.supplier_code as kodesup,(case when '+
                   ' b.valas=''USD'' then  sum((a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) ) '+
                   ' else sum((a.total_price*b.valas_value + ((a.total_price*b.valas_value)*b.ppn/100)) ) end)nilai '+
                   ' from t_purchase_return_det a,t_purchase_return b left join t_purchase_invoice dd on '+
                   ' b.receive_no=dd.trans_no where a.return_no=b.return_no and dd.deleted_at is null '+
                   ' and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and dd.account_code='2101.01.SP20070'
                   ' group by b.supplier_code,b.valas order by b.supplier_code)z  on a.supplier_code=z.kodesup '+
                   ' /*Pot pembelian*/ left join(select dd.supplier_code,sum(bb.hargapot)as nilai_pot from '+
                   ' (select receive_no,discount_date ,(price_rp+(case when ppnrp isnull then 0 else ppnrp end)) '+
                   ' hargapot from  t_purchase_discount) bb left join t_purchase_invoice dd on '+
                   ' bb.receive_no=dd.trans_no where dd.deleted_at is null and discount_date '+
                   ' between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+' '+
                   //' --and dd.account_code='2101.01'
                   ' group by dd.supplier_code order by supplier_code)xx on a.supplier_code=xx.supplier_code '+
                   ' left join (select kodesup,sum(nilai)as nilai from (select a.bk_no as noinv,'''' as kodesup, '+
                   ' b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan '+
                   ' from (select voucher_no,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real '+
                   '  where source_id=3 '+
                   //' --and account_code='2101.01'
                   ' )a left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det '+
                   '  where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' '+
                   ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1-1))+') b on a.bk_no=b.no_voucher )x '+
                   ' group by kodesup)debit_do on a.supplier_code=debit_do.kodesup left join (select * from '+
                   ' t_initial_balance_debt where '+
                   //' --debt_type='2101.01.SP20070' and
                   ' "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) '+
                   ' saldo_awal on saldo_awal.supplier_code= a.supplier_code '+
                   //' --where a.supplier_code='SP20070'
                   ' /*yyy*/)yyy GROUP BY kodesup,supplier_name,saldo_awal_tahun, '+
                   ' kredit,debit, debit_retur,nilai_pot)kk group by kk.kodesup,kk.nasup,kk.saldo_awal)zzz '+
                   ' GROUP BY kodesup,nasup';
         Open;
      end;
      //QRekapHutang.Close;
      //QRekapHutang.Open;
      MemRekapHutang.Close;
      MemRekapHutang.Open;
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
