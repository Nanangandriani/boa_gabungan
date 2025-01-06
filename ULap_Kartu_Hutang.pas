unit ULap_Kartu_Hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCalendar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxBarEditItem, cxClasses, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni,
  cxButtonEdit, MemTableDataEh, MemTableEh, DataDriverEh;

type
  TFLap_Kartu_Hutang = class(TForm)
    QPerusahaan: TUniQuery;
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
    DBGridKartuHutang: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Ed_supplier: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    DataSetDriverEh1: TDataSetDriverEh;
    DSKartuHutang: TDataSource;
    MemKartuHutang: TMemTableEh;
    QKartuHutang: TUniQuery;
    QTgl_hutang: TUniQuery;
    DSQTgl_Hutang: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    QCetak: TUniQuery;
    frxReport1: TfrxReport;
    Qsupp: TUniQuery;
    DSsupp: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    procedure Ed_supplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Jenis_HutangChange(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_supp,vkd_jenis_hutang:string;
    tgl_htg,tgl_mulai,tgl_cutoff,tgl_saldobank:tdatetime;
    procedure load_currency;
    procedure load_item_type;
  end;

 function
//var
  FLap_Kartu_Hutang: TFLap_Kartu_Hutang;

implementation

{$R *.dfm}

uses USearch_Supplier,UMasterData, UDataModule, UMy_Function;

var
  realFLap_Kartu_Hutang : TFLap_Kartu_Hutang;

  // implementasi function
function FLap_Kartu_Hutang: TFLap_Kartu_Hutang;
begin
  if realFLap_Kartu_Hutang <> nil then
     FLap_Kartu_Hutang:= realFLap_Kartu_Hutang
  else
    Application.CreateForm(TFLap_Kartu_Hutang, Result);
end;

procedure TFLap_Kartu_Hutang.load_item_type;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_item_type WHERE deleted_at IS NULL ';
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

procedure TFLap_Kartu_Hutang.load_currency;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_currency WHERE status=''true'' ';
        Open;
      end;
      Dm.Qtemp.First;
      CB_valas.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CB_valas.Items.Add(Dm.Qtemp.FieldByName('currency_code').AsString);
         Dm.Qtemp.Next;
      end;
end;

procedure TFLap_Kartu_Hutang.dxBarLargeButton4Click(Sender: TObject);
begin
   if ed_supplier.EditValue ='' then
    begin
      MessageDlg('Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      ed_supplier.SetFocus;
      Exit;
    end;
    if jenis_hutang.Text ='' then
    begin
      MessageDlg('Jenis Hutang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      jenis_hutang.SetFocus;
      Exit;
    end;
    if dtp1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;
    if dtp2.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;

    with Qsupp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+'';
      Open;
    end;

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT *, round(cast(sum(sa+kredit-debit) over (ORDER BY nomor asc ) as numeric),2) saldo from '+
                '(select  "row_number"() over (ORDER BY tanggal,urutan)+1 nomor,''''ket,* ,0 sa,nilai_debit debit,nilai_kredit kredit from '+
                '(SELECT gg.*,hh.receive_no,hh.faktur_no,hh.item_stock_code,hh.item_name,hh.unit,hh.tot_qty FROM '+
                '(select kodesup ::text,nasup ::text,address,telp,noinv,tanggal,urutan, '+
                'round(cast((nilai_kredit-nilai_um)as numeric),2) as nilai_kredit, '+
                'round(cast((nilai_debit)as numeric),2) nilai_debit  from '+
                '(select zz.*,(case when um_beli.nilai_um is null then 0 else um_beli.nilai_um end)nilai_um from '+
                '(select kodesup,nasup,address,telp,noinv,tanggal,urutan, '+
                'sum(nilai_kredit) as nilai_kredit '+
                ',sum(nilai_debit)as nilai_debit  from '+
                '(select a.supplier_code as kodesup,a.supplier_name as nasup,a.address,a.telp,inv.noinv,inv.tanggal,inv.keterangan,inv.urutan, '+
                '(case when kredit.nilai_kredit is null then 0 else kredit.nilai_kredit end)nilai_kredit, '+
                '(case when inv.nilai is null then 0 else inv.nilai end)nilai_debit, '+
                '(case when kredit.nilai_pot is null then 0 else kredit.nilai_pot end)nilai_pot from '+
                '(select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select x.* from '+
                '(select distinct a.receive_no as noinv,b.po_no,a.supplier_code as kodesup,a.receive_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan,account_code from '+
                '(select * from t_item_receive where account_code='+Quotedstr(vkd_jenis_hutang)+' and receive_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and debt_remaining <>0 )a '+
                'left join (select receive_no,po_no,stock_code as kode,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_item_receive_det )b on a.receive_no=b.receive_no '+
                'union all '+
                'select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup,bb.discount_date as tanggal, bb.stock_code as kode, ''POTONGAN PEMBELIAN''  as ket, '+
                '(case when bb.ppnrp is null then bb.price_rp else bb.price_rp+bb.ppnrp end) as nilai,1 as urutan,dd.account_code from t_purchase_discount bb '+
                'left join t_item_receive dd on bb.receive_no=dd.receive_no  where bb.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' '+
                'union all '+
                'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan,acc_balance from '+
                '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit,acc_balance from '+
                '(select noinv,kodesup,tanggal,sum(nilai)as nilai,acc_balance from '+
                '(select distinct voucher_no as noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,bank_number_account as kode,description as keterangan,sum(paid_amount) as nilai,4 as urutan,account_acc as acc_balance from t_cash_bank_expenditure_payable a '+
                'INNER JOIN t_ak_account b on a.account_acc= b.code where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and account_acc='+Quotedstr(vkd_jenis_hutang)+' GROUP BY noinv,kodesup,tanggal,kode,keterangan,acc_balance)x  group by noinv,kodesup,tanggal,acc_balance)y '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                'left join (select no_voucher,sum(paid_amount) jumlah from t_cash_bank_expenditure_det where position=''K'' and code_account<>''1111'' GROUP BY no_voucher) kas on kas.no_voucher=xx.noinv '+
                'union all '+
                'select a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                '(case when b.valas=''USD''then a.total_price*b.valas_value else b.price+b.ppn_rp end)nilai,5 as urutan,c.account_code  from t_purchase_return_det a,t_purchase_return b, '+
                ' t_item_receive c where a.return_no=b.return_no and b.receive_no=c.receive_no and c.account_code=''2110'' '+
                'union all '+
                'select a.bk_no as noinv,'''' as nopo,'''' as kodesup,b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan,a.account_code from '+
                '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                'left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' )b on a.bk_no=b.no_voucher )x  )inv on a.supplier_code=inv.kodesup '+
                'left join(select a.receive_no as noinv,a.supplier_code as kodesup,b.kode,(case when a.valas=''USD'' then b.nilai1 else b.nilai2 end)nilai_kredit,c.nilai as nilai_pot from '+
                '(select * from t_item_receive where receive_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' )a '+
                'left join (select receive_no,stock_code as kode,qty,unit as jumlah,sum(subtotalrp)as nilai1,SUM ( grandtotal ) AS nilai2 from t_item_receive_det group by receive_no,stock_code,qty,unit)b on a.receive_no=b.receive_no '+
                'left join (select DISTINCT receive_no,sum(price_rp) as nilai from t_purchase_discount where supplier_code='+Quotedstr(ed_code_supp.EditValue)+' GROUP BY receive_no )c on a.receive_no=c.receive_no )kredit  on inv.noinv=kredit.noinv and inv.kode=kredit.kode and inv.urutan<>5 '+
                ')xxx  group by kodesup,nasup,address,telp,noinv,tanggal,urutan order by kodesup,nasup,address,telp,noinv,tanggal,urutan)zz '+

                'left join(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                '(select distinct a.receive_no,a.po_no,b.supplier_code from t_item_receive_det a,t_item_receive b where a.receive_no=b.receive_no and b.receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and b.supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select supplier_code,po_no,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and  supplier_code='+Quotedstr(ed_code_supp.EditValue)+' group  by po_no,supplier_code order by po_no,supplier_code)b '+
                'on a.po_no=b.po_no and a.supplier_code=b.supplier_code)um_beli on zz.noinv=um_beli.receive_no)ttt  where (nilai_kredit-nilai_um>0) or (nilai_debit>0) and tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' order by tanggal,urutan,nasup,noinv )gg '+
                'left JOIN (select c.receive_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit,sum(a.qty)as tot_qty from '+
                '(select * from t_item_receive_det)a '+
                'left join t_item_stock b on a.item_stock_code=b.item_stock_code '+
                'left join t_item_receive c on a.receive_no=c.receive_no group by c.receive_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit order by b.item_stock_code,b.item_name,a.unit)hh on gg.noinv=hh.receive_no)jj '+

                'UNION ALL '+
                'select 1 as nomor,''Saldo Awal'' ket,kodesup,''Saldo Awal'' nasup,'''' address,'''' telp,'''' noinv, '+
                'null tanggal, 0 urutan, 0 nilai_kredit,0 nilai_debit,'''' no_terima,'''' nofaktur,'''' kd_material_stok,'''' nm_material,'''' satuan,0 tot_qty,saldo_awal as sa,0 debit,0 kredit FROM '+
                '(SELECT kodesup,''Saldo Awal'' as nasup,sum(yyy.saldo_awal_tahun+yyy.kredit-yyy.debit-yyy.debit_retur-yyy.nilai_pot) saldo_awal,0 debit,0 kredit from '+

                '(/*yyy*/select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,round(cast(case when x.nilai is null then 0 else x.nilai end as numeric),2)kredit, '+
                'round(cast(case when y.nilai is null then 0 else y.nilai end as numeric),2)debit, '+
                'round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit_retur, '+
                'round(cast(case when xx.nilai_pot is null then 0 else xx.nilai_pot end as numeric),2)nilai_pot from '+
                '( select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai1) else sum(nilai2) end)nilai from '+
                '(select * from t_item_receive where account_code='+Quotedstr(vkd_jenis_hutang)+' and receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and debt_remaining<>0)a '+
                'left join (select receive_no,po_no,stock_code as kode,qty,unit as jumlah,subtotalrp as nilai1,grandtotal as nilai2, 0 as urutan from t_item_receive_det )b on a.receive_no=b.receive_no group by kodesup,b.po_no,a.valas)a '+
                'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x  group by kodesup)x on a.supplier_code=x.kodesup '+
                'left join(select supplier_code as kodesup,sum(bayar)as nilai from '+
                '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from (select voucher_no,supplier_code,sum(paid_amount)as bayar from t_cash_bank_expenditure_payable '+
                'where supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and account_acc='+Quotedstr(vkd_jenis_hutang)+' and  trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' group by voucher_no,supplier_code order by voucher_no,supplier_code)a '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x  group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(b.price+b.ppn_rp) end)nilai from t_purchase_return_det a,t_purchase_return b '+
                'left join t_item_receive dd on b.receive_no=dd.receive_no where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' group by b.supplier_code,b.valas order by b.supplier_code)z  on a.supplier_code=z.kodesup /*Pot pembelian*/ '+
                'left join(select dd.supplier_code,sum(bb.hargapot)as nilai_pot from '+
                '(select receive_no,discount_date ,(price_rp+(case when ppnrp isnull then 0 else ppnrp end)) hargapot from  t_purchase_discount) bb '+
                'left join t_item_receive dd on bb.receive_no=dd.receive_no where discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' group by dd.supplier_code order by supplier_code)xx on a.supplier_code=xx.supplier_code '+
                'left join (select kodesup,sum(nilai)as nilai from '+
                '(select a.bk_no as noinv,'''' as kodesup, b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                '(select voucher_no,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                'left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+') b on a.bk_no=b.no_voucher '+
                ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+
                'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code where a.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' '+
                '/*yyy*/)yyy GROUP BY kodesup,saldo_awal_tahun,kredit,debit, '+
                'debit_retur,nilai_pot)kk group by kk.kodesup,kk.saldo_awal)zzz  group by zzz.nomor,zzz.kodesup,zzz.nasup,zzz.address,zzz.telp,zzz.noinv,zzz.tanggal, '+
                'zzz.urutan,zzz.nilai_kredit,zzz.nilai_debit,zzz.receive_no,zzz.faktur_no,zzz.item_stock_code,zzz.item_name,zzz.unit,zzz.tot_qty,zzz.sa,zzz.debit,zzz.kredit,zzz.ket  ORDER BY nomor ASC ';
      open;
    end;
    if QCetak.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QCetak.RecordCount<>0 then
    begin
       cLocation := ExtractFilePath(Application.ExeName);
       //ShowMessage(cLocation);
       frxReport1.LoadFromFile(cLocation +'report/Kartu_Hutang'+ '.fr3');
       //Report.DesignReport();
       frxReport1.ShowReport();
    end;
end;

procedure TFLap_Kartu_Hutang.dxRefreshClick(Sender: TObject);
begin
    if ed_supplier.EditValue ='' then
    begin
      MessageDlg('Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      ed_supplier.SetFocus;
      Exit;
    end;
    if jenis_hutang.Text ='' then
    begin
      MessageDlg('Jenis Hutang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      jenis_hutang.SetFocus;
      Exit;
    end;
    if dtp1.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;
    if dtp2.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      datetimepicker1.SetFocus;
      Exit;
    end;

    with QTgl_hutang do
    begin
        close;
        sql.Clear;
        sql.Add('select * from t_tmpsyst');
        open;
    end;
    tgl_htg:=QTgl_hutang.FieldByName('debt_date').asdatetime;

    DBGridKartuHutang.StartLoadingStatus();
    with QKartuHutang do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT *, round(cast(sum(sa+kredit-debit) over (ORDER BY nomor asc ) as numeric),2) saldo from '+
                '(select  "row_number"() over (ORDER BY tanggal,urutan)+1 nomor,''''ket,* ,0 sa,nilai_debit debit,nilai_kredit kredit from '+
                '(SELECT gg.*,hh.receive_no,hh.faktur_no,hh.item_stock_code,hh.item_name,hh.unit,hh.tot_qty FROM '+
                '(select kodesup ::text,nasup ::text,address,telp,noinv,tanggal,urutan, '+
                'round(cast((nilai_kredit-nilai_um)as numeric),2) as nilai_kredit, '+
                'round(cast((nilai_debit)as numeric),2) nilai_debit  from '+
                '(select zz.*,(case when um_beli.nilai_um is null then 0 else um_beli.nilai_um end)nilai_um from '+
                '(select kodesup,nasup,address,telp,noinv,tanggal,urutan, '+
                'sum(nilai_kredit) as nilai_kredit '+
                ',sum(nilai_debit)as nilai_debit  from '+
                '(select a.supplier_code as kodesup,a.supplier_name as nasup,a.address,a.telp,inv.noinv,inv.tanggal,inv.keterangan,inv.urutan, '+
                '(case when kredit.nilai_kredit is null then 0 else kredit.nilai_kredit end)nilai_kredit, '+
                '(case when inv.nilai is null then 0 else inv.nilai end)nilai_debit, '+
                '(case when kredit.nilai_pot is null then 0 else kredit.nilai_pot end)nilai_pot from '+
                '(select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select x.* from '+
                '(select distinct a.receive_no as noinv,b.po_no,a.supplier_code as kodesup,a.receive_date as tanggal,b.kode,b.kode as keterangan,nilai,urutan,account_code from '+
                '(select * from t_item_receive where account_code='+Quotedstr(vkd_jenis_hutang)+' and receive_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+'  and debt_remaining <>0 )a '+
                'left join (select receive_no,po_no,stock_code as kode,unit as jumlah,grandtotal * 0 as nilai, 0 as urutan from t_item_receive_det )b on a.receive_no=b.receive_no '+
                'union all '+
                'select bb.receive_no as noinv,'''' as nopo,bb.supplier_code as kodesup,bb.discount_date as tanggal, bb.stock_code as kode, ''POTONGAN PEMBELIAN''  as ket, '+
                '(case when bb.ppnrp is null then bb.price_rp else bb.price_rp+bb.ppnrp end) as nilai,1 as urutan,dd.account_code from t_purchase_discount bb '+
                'left join t_item_receive dd on bb.receive_no=dd.receive_no  where bb.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and bb.discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' '+
                'union all '+
                'select noinv,nopo,kodesup,tanggal,kode,keterangan,nilai,urutan,acc_balance from '+
                '(select noinv,'''' as nopo,kodesup,tanggal,'''' as kode,'''' as keterangan,nilai,4 as urutan,(case when z.saldo is null then 0 else z.saldo end)nilai_kredit,acc_balance from '+
                '(select noinv,kodesup,tanggal,sum(nilai)as nilai,acc_balance from '+
                '(select distinct voucher_no as noinv,'''' as nopo,supplier_code as kodesup,trans_date as tanggal,bank_number_account as kode,description as keterangan,sum(paid_amount) as nilai,4 as urutan,account_acc as acc_balance from t_cash_bank_expenditure_payable a '+
                'INNER JOIN t_ak_account b on a.account_acc= b.code where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and account_acc='+Quotedstr(vkd_jenis_hutang)+' GROUP BY noinv,kodesup,tanggal,kode,keterangan,acc_balance)x  group by noinv,kodesup,tanggal,acc_balance)y '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real group by voucher )z on y.noinv=z.voucher)xx '+
                'left join (select no_voucher,sum(paid_amount) jumlah from t_cash_bank_expenditure_det where position=''K'' and code_account<>''1111'' GROUP BY no_voucher) kas on kas.no_voucher=xx.noinv '+
                'union all '+
                'select a.return_no as noinv,'''' as nopo,b.supplier_code as kodesup,b.return_date as tanggal,a.stock_code as kode,concat(a.stock_code,'' '' ,qty,'' '' ,unit)as keterangan, '+
                '(case when b.valas=''USD''then a.total_price*b.valas_value else b.price+b.ppn_rp end)nilai,5 as urutan,c.account_code  from t_purchase_return_det a,t_purchase_return b, '+
                ' t_item_receive c where a.return_no=b.return_no and b.receive_no=c.receive_no and c.account_code=''2110'' '+
                'union all '+
                'select a.bk_no as noinv,'''' as nopo,'''' as kodesup,b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan,a.account_code from '+
                '(select voucher_no ,bk_no ,account_code,remark,pay,6 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                'left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' )b on a.bk_no=b.no_voucher )x  )inv on a.supplier_code=inv.kodesup '+
                'left join(select a.receive_no as noinv,a.supplier_code as kodesup,b.kode,(case when a.valas=''USD'' then b.nilai1 else b.nilai2 end)nilai_kredit,c.nilai as nilai_pot from '+
                '(select * from t_item_receive where receive_date  between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' )a '+
                'left join (select receive_no,stock_code as kode,qty,unit as jumlah,sum(subtotalrp)as nilai1,SUM ( grandtotal ) AS nilai2 from t_item_receive_det group by receive_no,stock_code,qty,unit)b on a.receive_no=b.receive_no '+
                'left join (select DISTINCT receive_no,sum(price_rp) as nilai from t_purchase_discount where supplier_code='+Quotedstr(ed_code_supp.EditValue)+' GROUP BY receive_no )c on a.receive_no=c.receive_no )kredit  on inv.noinv=kredit.noinv and inv.kode=kredit.kode and inv.urutan<>5 '+
                ')xxx  group by kodesup,nasup,address,telp,noinv,tanggal,urutan order by kodesup,nasup,address,telp,noinv,tanggal,urutan)zz '+

                'left join(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                '(select distinct a.receive_no,a.po_no,b.supplier_code from t_item_receive_det a,t_item_receive b where a.receive_no=b.receive_no and b.receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and b.supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select supplier_code,po_no,sum(um_value)as nilai_um from t_po where um_status=true and po_date<='+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' and  supplier_code='+Quotedstr(ed_code_supp.EditValue)+' group  by po_no,supplier_code order by po_no,supplier_code)b '+
                'on a.po_no=b.po_no and a.supplier_code=b.supplier_code)um_beli on zz.noinv=um_beli.receive_no)ttt  where (nilai_kredit-nilai_um>0) or (nilai_debit>0) and tanggal between '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+' order by tanggal,urutan,nasup,noinv )gg '+
                'left JOIN (select c.receive_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit,sum(a.qty)as tot_qty from '+
                '(select * from t_item_receive_det)a '+
                'left join t_item_stock b on a.item_stock_code=b.item_stock_code '+
                'left join t_item_receive c on a.receive_no=c.receive_no group by c.receive_no,c.faktur_no,b.item_stock_code,b.item_name,a.unit order by b.item_stock_code,b.item_name,a.unit)hh on gg.noinv=hh.receive_no)jj '+

                'UNION ALL '+
                'select 1 as nomor,''Saldo Awal'' ket,kodesup,''Saldo Awal'' nasup,'''' address,'''' telp,'''' noinv, '+
                'null tanggal, 0 urutan, 0 nilai_kredit,0 nilai_debit,'''' no_terima,'''' nofaktur,'''' kd_material_stok,'''' nm_material,'''' satuan,0 tot_qty,saldo_awal as sa,0 debit,0 kredit FROM '+
                '(SELECT kodesup,''Saldo Awal'' as nasup,sum(yyy.saldo_awal_tahun+yyy.kredit-yyy.debit-yyy.debit_retur-yyy.nilai_pot) saldo_awal,0 debit,0 kredit from '+

                '(/*yyy*/select a.supplier_code as kodesup,case when saldo_awal.initial_balance is null then 0 else saldo_awal.initial_balance end saldo_awal_tahun,round(cast(case when x.nilai is null then 0 else x.nilai end as numeric),2)kredit, '+
                'round(cast(case when y.nilai is null then 0 else y.nilai end as numeric),2)debit, '+
                'round(cast(case when z.nilai is null then 0 else z.nilai end as numeric),2)debit_retur, '+
                'round(cast(case when xx.nilai_pot is null then 0 else xx.nilai_pot end as numeric),2)nilai_pot from '+
                '( select * from t_supplier where supplier_code='+Quotedstr(ed_code_supp.EditValue)+')a '+
                'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from '+
                '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
                '(select a.supplier_code as kodesup,b.po_no,(case when a.valas=''USD'' then sum(nilai1) else sum(nilai2) end)nilai from '+
                '(select * from t_item_receive where account_code='+Quotedstr(vkd_jenis_hutang)+' and receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and debt_remaining<>0)a '+
                'left join (select receive_no,po_no,stock_code as kode,qty,unit as jumlah,subtotalrp as nilai1,grandtotal as nilai2, 0 as urutan from t_item_receive_det )b on a.receive_no=b.receive_no group by kodesup,b.po_no,a.valas)a '+
                'left join(select po_no,supplier_code,sum(um_value)as nilai_um from t_po where um_status=true and po_date<'+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+' and supplier_code='+Quotedstr(ed_code_supp.EditValue)+' group by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup=b.supplier_code)x  group by kodesup)x on a.supplier_code=x.kodesup '+
                'left join(select supplier_code as kodesup,sum(bayar)as nilai from '+
                '(select a.voucher_no,a.supplier_code,a.bayar,(case when b.saldo is null then 0 else b.saldo end)nilai_kredit from (select voucher_no,supplier_code,sum(paid_amount)as bayar from t_cash_bank_expenditure_payable '+
                'where supplier_code='+Quotedstr(ed_code_supp.EditValue)+' and account_acc='+Quotedstr(vkd_jenis_hutang)+' and  trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' group by voucher_no,supplier_code order by voucher_no,supplier_code)a '+
                'left join (select voucher,sum(saldo)as saldo from t_credit_trx_real where account_code<>''2142'' group by voucher order by voucher)b 	on a.voucher_no=b.voucher)x  group by supplier_code order by supplier_code)y on a.supplier_code=y.kodesup '+
                'left join(select b.supplier_code as kodesup,(case when b.valas=''USD'' then sum(a.total_price*b.valas_value) else sum(b.price+b.ppn_rp) end)nilai from t_purchase_return_det a,t_purchase_return b '+
                'left join t_item_receive dd on b.receive_no=dd.receive_no where a.return_no=b.return_no and return_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' group by b.supplier_code,b.valas order by b.supplier_code)z  on a.supplier_code=z.kodesup /*Pot pembelian*/ '+
                'left join(select dd.supplier_code,sum(bb.hargapot)as nilai_pot from '+
                '(select receive_no,discount_date ,(price_rp+(case when ppnrp isnull then 0 else ppnrp end)) hargapot from  t_purchase_discount) bb '+
                'left join t_item_receive dd on bb.receive_no=dd.receive_no where discount_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+' and dd.account_code='+Quotedstr(vkd_jenis_hutang)+' group by dd.supplier_code order by supplier_code)xx on a.supplier_code=xx.supplier_code '+
                'left join (select kodesup,sum(nilai)as nilai from '+
                '(select a.bk_no as noinv,'''' as kodesup, b.trans_date as tanggal,a.account_code as kode,a.remark,a.pay as nilai,a.urutan from '+
                '(select voucher_no,bk_no ,account_code,remark,pay,4 as urutan from t_payment_detail_real where source_id=3 and account_code='+Quotedstr(vkd_jenis_hutang)+' )a '+
                'left join (select distinct no_voucher,trans_date from t_cash_bank_expenditure_det where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl_htg))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue-1))+') b on a.bk_no=b.no_voucher '+
                ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup '+
                'left join (select * from t_initial_balance_debt where debt_type='+Quotedstr(vkd_jenis_hutang)+' and "year" = (select to_char(debt_date, ''YYYY'') from t_tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.supplier_code where a.supplier_code='+Quotedstr(ed_code_supp.EditValue)+' '+
                '/*yyy*/)yyy GROUP BY kodesup,saldo_awal_tahun,kredit,debit, '+
                'debit_retur,nilai_pot)kk group by kk.kodesup,kk.saldo_awal)zzz  group by zzz.nomor,zzz.kodesup,zzz.nasup,zzz.address,zzz.telp,zzz.noinv,zzz.tanggal, '+
                'zzz.urutan,zzz.nilai_kredit,zzz.nilai_debit,zzz.receive_no,zzz.faktur_no,zzz.item_stock_code,zzz.item_name,zzz.unit,zzz.tot_qty,zzz.sa,zzz.debit,zzz.kredit,zzz.ket  ORDER BY nomor ASC ';
      open;
    end;
    MemKartuHutang.Close;
    MemKartuHutang.Open;
    QKartuHutang.Close;
    QKartuHutang.Open;
    DBGridKartuHutang.FinishLoadingStatus();
end;


procedure TFLap_Kartu_Hutang.Ed_supplierPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  {FMasterData.Caption:='Master Data Supplier';
  FMasterData.vcall:='Lap_Kartu_Hutang';
  FMasterData.update_grid('supplier_code','supplier_name','address','t_supplier','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;}

    with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Lap_Kartu_Hutang';
    FSearch_Supplier.ShowModal;
end;

procedure TFLap_Kartu_Hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFLap_Kartu_Hutang.FormCreate(Sender: TObject);
begin
   realFLap_Kartu_Hutang:=self;
end;

procedure TFLap_Kartu_Hutang.FormDestroy(Sender: TObject);
begin
   realFLap_Kartu_Hutang:=nil;
end;

procedure TFLap_Kartu_Hutang.FormShow(Sender: TObject);
begin
   load_currency;
   load_item_type;
end;

procedure TFLap_Kartu_Hutang.Jenis_HutangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
       close;
       sql.Text:='SELECT * from t_item_type WHERE type='+Quotedstr(Jenis_Hutang.Text)+' ';
       Open;
       vkd_jenis_hutang:=fieldbyname('acc_code_pemb').AsString;
       //showmessage(vkd_jenis_hutang);
   end;

end;

initialization
  RegisterClass(TFLap_Kartu_Hutang);

end.
