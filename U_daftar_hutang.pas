unit U_daftar_hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzPanel, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, MemDS, DBAccess, Uni, MemTableDataEh, MemTableEh, RzRadChk;

type
  TFDaftar_Hutang = class(TForm)
    RzPanel1: TRzPanel;
    txtnmsupp: TEdit;
    cbsupp: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    DtSelesai: TDateTimePicker;
    DtMulai: TDateTimePicker;
    EdNo_Cek: TEdit;
    rzkurs: TRzNumericEdit;
    Label5: TLabel;
    Label1: TLabel;
    lbnocek: TLabel;
    BCari: TRzBitBtn;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Btutup: TRzBitBtn;
    BProses: TRzBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RzPanel2: TRzPanel;
    DBGridDafHutang: TDBGridEh;
    QdaftarHutang: TUniQuery;
    DSdaftarhutang: TDataSource;
    Button4: TButton;
    QdaftarHutangtanggal: TDateField;
    QdaftarHutangkodesup: TMemoField;
    QdaftarHutangnasup: TStringField;
    QdaftarHutangno_inv: TMemoField;
    QdaftarHutangnofakturpajak: TMemoField;
    QdaftarHutangsj_no: TMemoField;
    QdaftarHutangtglfaktur: TDateField;
    QdaftarHutangtgltempo: TDateField;
    QdaftarHutangvalas: TMemoField;
    QdaftarHutangvalas_value: TFloatField;
    QdaftarHutangjum_dolar: TFloatField;
    QdaftarHutangppn_rp: TFloatField;
    QdaftarHutangjumlah: TFloatField;
    QdaftarHutangnpph: TFloatField;
    QdaftarHutangakun_pph: TMemoField;
    QdaftarHutangplan_stat: TBooleanField;
    QdaftarHutangstatus: TIntegerField;
    QdaftarHutangapproval_status: TIntegerField;
    Memdaftarhutang: TMemTableEh;
    QdaftarHutangsource_id: TIntegerField;
    QUang_Muka_Pembelian: TUniQuery;
    QUang_Muka_Pembeliantanggal: TDateField;
    QUang_Muka_Pembeliankodesup: TStringField;
    QUang_Muka_Pembeliannasup: TStringField;
    QUang_Muka_Pembelianno_inv: TStringField;
    QUang_Muka_Pembeliannofakturpajak: TStringField;
    QUang_Muka_Pembeliansj_no: TMemoField;
    QUang_Muka_Pembeliantglfaktur: TMemoField;
    QUang_Muka_Pembeliantgltempo: TMemoField;
    QUang_Muka_Pembelianvalas: TMemoField;
    QUang_Muka_Pembelianvalas_value: TIntegerField;
    QUang_Muka_Pembelianjum_dolar: TIntegerField;
    QUang_Muka_Pembelianppn_rp: TIntegerField;
    QUang_Muka_Pembelianjumlah: TFloatField;
    QUang_Muka_Pembeliannpph: TIntegerField;
    QUang_Muka_Pembelianakun_pph: TMemoField;
    QUang_Muka_Pembelianplan_stat: TBooleanField;
    QUang_Muka_Pembelianstatus: TIntegerField;
    QUang_Muka_Pembelianurutan: TIntegerField;
    QUang_Muka_Pembelianapproval_status: TIntegerField;
    QUang_Muka_Pembelianbayar: TFloatField;
    QUang_Muka_Pembelianrencanake: TIntegerField;
    QUang_Muka_Pembeliansisa: TFloatField;
    QUang_Muka_Pembeliansource_id: TIntegerField;
    QHutang_Kredit: TUniQuery;
    QImport: TUniQuery;
    Qmemorial: TUniQuery;
    QdaftarHutangurutan: TLargeintField;
    QdaftarHutangbayar: TFloatField;
    QdaftarHutangrencanake: TIntegerField;
    QdaftarHutangsisa: TFloatField;
    QdaftarHutangstatus_bayar: TIntegerField;
    procedure BtutupClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns2GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure BProsesClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridDafHutangGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
     vcall: string;
     Status: Integer;
     periode1, periode2: TDate;
    { Public declarations }
    procedure ProsesRencanaLunasHutang;

  end;

var
  FDaftar_Hutang: TFDaftar_Hutang;

implementation

{$R *.dfm}

uses UDataModule, u_rencana_lunas_hutang_input, USearch_Supplier,
  U_daf_pilih_detail_bayar;

procedure TFDaftar_Hutang.ProsesRencanaLunasHutang;
var
  rec: Integer;
begin
   Status:=0;
   rec:=0;
      {if not dm.Koneksi.InTransaction then
             dm.Koneksi.StartTransaction;
      try}
        if Memdaftarhutang.RecordCount=0 then
        begin
          MessageDlg('Tidak Ada Data',mtInformation,[mbRetry],0);

        end
        else if Status = 0 then
        begin
           //cek ada yang di tandai tidak
           Memdaftarhutang.First;
           while not Memdaftarhutang.Eof do
           begin
             if Memdaftarhutang['pilih']=true then
             begin
              rec:=rec+1;
             end;
           Memdaftarhutang.Next;
           end;

           if rec=0 then
           begin
             ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
             exit;
           end;

           //data di tandai kirm ke daftar rencana pelunasan
           if rec>0 then
           begin
             FRencana_Lunas_Hutang.MemRencana.active:=false;
             FRencana_Lunas_Hutang.MemRencana.active:=true;
             FRencana_Lunas_Hutang.MemRencana.EmptyTable;

             Memdaftarhutang.First;
             while not Memdaftarhutang.Eof do
             begin
               if Memdaftarhutang['pilih']=true then
               begin
                    FRencana_Lunas_Hutang.MemRencana.insert;
                    FRencana_Lunas_Hutang.MemRencana['kd_sup']:=Memdaftarhutang['kodesup'];
                    FRencana_Lunas_Hutang.MemRencana['noinv']:=Memdaftarhutang['no_inv'];
                    //FRencana_Lunas_Hutang.MemRencana['nosj']:=Memdaftarhutang['sj_no'];
                    FRencana_Lunas_Hutang.MemRencana['nosj']:=Memdaftarhutang['no_inv']; //09-12-2025
                    FRencana_Lunas_Hutang.MemRencana['nofaktur']:=Memdaftarhutang['nofakturpajak'];
                    FRencana_Lunas_Hutang.MemRencana['tglfaktur']:=Memdaftarhutang['tglfaktur'];
                    FRencana_Lunas_Hutang.MemRencana['akun_pph']:=Memdaftarhutang['akun_pph'];
                    FRencana_Lunas_Hutang.MemRencana['npph']:=Memdaftarhutang['npph'];
                    FRencana_Lunas_Hutang.MemRencana['jumlah']:=Memdaftarhutang['jumlah'];
                    FRencana_Lunas_Hutang.MemRencana['source_id']:=Memdaftarhutang['source_id'];
                    FRencana_Lunas_Hutang.MemRencana.post;
               end;
             Memdaftarhutang.Next;
             end;
           end;
      {end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;}
      end;
      Close;
end;

procedure TFDaftar_Hutang.BCariClick(Sender: TObject);
var query1,query2,query3,query4,query5:string;
begin
    query1:='/*Data_Pembelian*/'+
           'SELECT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph,plan_stat,status,urutan,approval_status,bayar,rencanake, '+
           'sisa,case when sisa > 0 then 0 else 1 end status_bayar,source_id  FROM '+
           '(SELECT  tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph,plan_stat,status,urutan,approval_status,bayar,rencanake,jumlah-bayar as sisa,1 as source_id '+
           'FROM '+
           '(SELECT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph, '+
           'plan_stat,status,approval_status,urutan,(case when pay ISNULL then 0 else pay end)bayar,(case when plan_to ISNULL then 0 else plan_to  end)rencanake '+
			     'FROM '+
           '(select tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah-nilai_um as jumlah,npph,''''::text as akun_pph,plan_stat,status,approval_status,urutan '+
           'from '+
           '(SELECT DISTINCT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value, '+
           '(case when valas=''USD'' then jumlah1-(pot_beli_dolar) else 0 end)jum_dolar, '+
           '(case when valas=''USD'' then jumlah-nil_retur-pot_beli_rp else jumlah+harga_do1-nil_retur-pot_beli_rp end)jumlah, '+
           '(case when um_beli.nilai_um is null then 0 else um_beli.nilai_um end)nilai_um, '+
           '(case when ppn_rp is null then 0 else ppn_rp end)ppn_rp, '+
           '(case when npph is null then 0 else npph end)npph,''''::text as akun_pph,plan_stat,status,approval_status,urutan '+
           'FROM '+

           '(SELECT tanggal,kodesup,c.supplier_name as nasup,a.no_inv,a.nofakturpajak,a.sj_no,a.faktur_date as tglfaktur,(a.faktur_date + a.due_date) as tgltempo,  a.plan_stat,lunas.faktur_no, '+
           '(case when b.jumlah is null then 0 else b.jumlah end)jumlah1, '+
           '(case when b.hutang is null then 0 else b.hutang end)jumlah,a.valas,a.valas_value, '+
           '(case when retur.nil_retur is null then 0 else retur.nil_retur end)nil_retur,b.ppn_rp,b.npph, '+
           '(case when pot.nilai_pot_rp is null then 0 else pot.nilai_pot_rp end)pot_beli_rp, '+
           '(case when pot.nilai_pot_dolar is null then 0 else pot.nilai_pot_dolar end)pot_beli_dolar, '+
           '(case when do1.harga is null then 0 else do1.harga end)harga_do1,status,approval_status,urutan '+
           'FROM '+

           '(select trans_no,trans_date as tanggal,supplier_code as kodesup,trans_no as no_inv,faktur_no as nofakturpajak,faktur_date,sj_no,valas,valas_value,due_date,plan_stat,'+
           '(case when sj_status=1 and fk_status=1 and invoice_status=1 then 1 else 0 end)status,0 as ppnrp,pph_rp,id as urutan,approval_status  from t_purchase_invoice where (faktur_date + due_date) between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+

           'union all '+
           'select  a.notrans as no_terima,a.date_trans as tanggal,b.vendor_code as kodesup,a.notrans as no_inv,a.notrans as nofakturpajak,a.date_trans as tgl_faktur, '+
           ' ''''::character varying as nosj,''IDR''::character varying as valas,0 as valas_value,  0 as  due_date,false as stat_rencana,1 as status,0 as ppnrp,0 as pph_rp,0 as id,0 as status_approval '+
           ' from t_delivery_order a '+
           'inner join t_delivery_order_services b  on a.notrans=b.notrans '+
           'where a.date_trans between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           ')a '+
           'left join '+
           '(select a.trans_no,b.supplier_code,b.valas,sum(a.grandtotal)as jumlah,(case when b.valas=''USD'' then sum(a.subtotalrp) else sum(a.grandtotal) end)as hutang,sum(a.subtotal)subtotal,sum(a.ppn_rp)ppn_rp ,sum(a.pph_rp)pph_rp,sum(a.pph_rp)as npph '+
           'from t_purchase_invoice_det a,t_purchase_invoice b  where a.trans_no=b.trans_no group by a.trans_no,b.supplier_code,b.valas '+
           'order by trans_no,supplier_code)b on a.trans_no=b.trans_no and a.kodesup=b.supplier_code '+
           'left join '+
           't_supplier c on a.kodesup=c.supplier_code '+
           'left join '+
           '(select faktur_no from t_paid_debt_det)as lunas  on a.nofakturpajak=lunas.faktur_no '+
           'left join '+
           '(select a.receive_no,b.valas_value,b.valas,case when b.valas=''USD'' then sum(a.total_price)*b.valas_value else sum(b.price+b.ppn_rp) end as nil_retur from t_purchase_return_det a,t_purchase_return b '+
           'where a.return_no=b.return_no  group by a.receive_no,b.valas_value,b.valas order by a.receive_no)retur on a.trans_no=retur.receive_no '+
           'left join '+
           '(select receive_no,sum(price_rp) as nilai_pot_rp,sum(price) as nilai_pot_dolar,sum(ppnrp)as ppnrp from t_purchase_discount GROUP BY receive_no)pot on a.trans_no=pot.receive_no '+
           'left join '+
           '(select notrans as do_no,vendor_code,sum(total_cost)as harga from t_delivery_order_services group by do_no,vendor_code order by do_no,vendor_code)do1 on a.trans_no=do1.do_no '+
           ')xxx  '+
           'left join '+
           '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
           '(select distinct a.trans_no,a.po_no,b.supplier_code from t_purchase_invoice_det a,t_purchase_invoice b where a.trans_no=b.trans_no '+
           ' and (faktur_date + due_date) between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+')a '+
           'left join '+
           '(select supplier_code,po_no,sum(um_value)as nilai_um from t_po where um_status=true and po_date<=''2025-01-01''  '+
           'group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code)um_beli on xxx.no_inv=um_beli.trans_no '+

           ')zzz ' +
           'ORDER BY tglfaktur,nofakturpajak,urutan ASC)y '+
           'left join '+
           '(select faktur_no,plan_to from v_plan_paid_debt where paid_status=0  and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+')yy on y.nofakturpajak=yy.faktur_no '+
           'left join '+
           '(select lpb_no,pay from t_buy_pay)z on y.no_inv=z.lpb_no ORDER BY y.urutan) zz '+

           'UNION ALL ' + // saldo awal rincian Faktur

           ' SELECT  date tanggal,supplier_code kodesup,supplier_name nasup,'''' no_inv,faktur_no nofakturpajak,'''' sj_no,tglfaktur,tgltempo,''IDR'' valas,1 valas_value,0 jum_dolar,0 ppn_rp,debt_amount as jumlah '+
           ',0 npph,'''' akun_pph,''1'' plan_stat,''1'' status,0 urutan,''1'' approval_status,0 bayar,''0'' rencanake,debt_amount-bayar as sisa,1 as source_id '+
           ' FROM '+
           ' (select a.date ,a.supplier_code ,b.supplier_name,a.faktur_no,a.date tglfaktur,b.tempo,(a.date+b.tempo)tgltempo,a.debt_amount,0 bayar FROM t_initial_balance_debt_det a '+
           ' INNER JOIN t_supplier b on a.supplier_code=b.supplier_code '+
           ' WHERE date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+')A '+

           'ORDER BY tglfaktur,nofakturpajak,urutan ASC)qqq';

           //'UNION All '+  //Uang Muka Pembelian
           //'SELECT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,null tglfaktur,null tgltempo,valas,valas_value,jum_dolar,ppn_rp '+
           //',jumlah,npph,akun_pph,false plan_stat,status,urutan,approval_status,bayar,rencanake,sum(jumlah-bayar) sisa,2 as source_id '+
           //'FROM '+
           //'(SELECT trans_date as tanggal,supplier_code kodesup,supplier_name nasup,no_trans as no_inv,po_no as nofakturpajak,no_trans sj_no, null tglfaktur,null tgltempo,'''' valas, '+
           //'0 valas_value,0 jum_dolar,0 ppn_rp,um_value jumlah,0 npph,'''' akun_pph,0 plan_stat,0 status,0 urutan,0 approval_status,um_value bayar, 0 rencanake from '+
           //'(SELECT a.trans_date,a.supplier_code,b.supplier_name,a.um_value,no_trans,po_no FROM t_advance_payment a INNER JOIN t_supplier b on a.supplier_code=b.supplier_code)a '+
           //'WHERE trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' )x '+
           //'GROUP BY tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph, plan_stat, status, urutan,approval_status,bayar,rencanake ';

           {'UNION ALL '+ //Hutang Kredit
           'SELECT trans_date,'''' kodesup,description as nasup,'''' no_inv,'''' nofakturpajak,''''	sj_no,null	tglfaktur,null	tgltempo,''''	valas,0	valas_value,0	jum_dolar,0	ppn_rp '+
           ',0 saldo ,0 npph,account_code,false plan_stat,0 status,0	urutan,0	approval_status,0	bayar,0 rencanake,0	sisa,3 source_id '+
           'FROM '+
           '(SELECT id,	voucher,	account_code,	description,	ket,	saldo,	trans_date from '+
           '(select distinct a.id,a.voucher,a.account_code,a.description,concat(a.description,'' '',b.to_)as ket,a.saldo,b.trans_date from '+
           '(select * from t_credit_trx_real where voucher_kredit is null)a '+
           'left join (SELECT a.voucher_no,b,to_ ,b.trans_date FROM t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b on a.voucher=b.voucher_no '+
           'where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           'UNION ALL '+
           '(SELECT 9 id,voucher_no,code_account,deskripsi,description ket,paid_amount saldo,trans_date tgltrans from v_titipan_bpjs_penerimaan_kas where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ) '+
           'union all '+
           'SELECT 0 id,voucher_no,code_account,for_acceptance,description, paid_amount jumlah, trans_date FROM '+
           '(SELECT a.voucher_no,b.code_account,a.for_acceptance,a.description,a.paid_amount,b.trans_date,b."position" FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no)a '+
           'where "position"=''K'' and code_account=''2130.01'' or code_account=''2130.02'' or code_account=''2130.03'' or code_account=''2130.04'' or code_account=''2130.07'') v '+
           'order by v.trans_date,v.voucher)yy ';}

    query2:='/*Uang_Muka_Pembelian*/'+
           'SELECT yy.* FROM '+
           '(SELECT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no::text sj_no ,null tglfaktur,null tgltempo,valas,valas_value,jum_dolar,ppn_rp '+
           ',jumlah,npph,akun_pph,false plan_stat,status,urutan,approval_status,bayar,rencanake,sum(jumlah-bayar) sisa,2 as source_id '+
           'FROM '+
           '(SELECT trans_date as tanggal,supplier_code kodesup,supplier_name nasup,no_trans as no_inv,po_no as nofakturpajak,no_trans sj_no, null tglfaktur,null tgltempo,'''' valas, '+
           '0 valas_value,0 jum_dolar,0 ppn_rp,um_value jumlah,0 npph,'''' akun_pph,0 plan_stat,0 status,0 urutan,0 approval_status,um_value bayar, 0 rencanake from '+
           '(SELECT a.trans_date,a.supplier_code,b.supplier_name,a.um_value,no_trans,po_no FROM t_advance_payment a INNER JOIN t_supplier b on a.supplier_code=b.supplier_code)a '+
           'WHERE trans_date BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' )x '+
           'GROUP BY tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph, plan_stat, status, urutan,approval_status,bayar,rencanake)yy ';

    query3:='/*Hutang_Kredit*/'+
           'SELECT trans_date,'''' kodesup,description as nasup,'''' no_inv,'''' nofakturpajak,'''' sj_no,null tglfaktur,null tgltempo,''''	valas,0 valas_value,0	jum_dolar,0	ppn_rp,0 saldo,0 npph,account_code, '+
           'false plan_stat,0 status,0 urutan,0	approval_status,0	bayar,0 rencanake,0	sisa,3 source_id FROM '+
           '(select distinct a.id,a.voucher,a.account_code,a.description,concat(a.description,'' '',b.to_)as ket,a.saldo,b.trans_date from '+
           '(select * from t_credit_trx_real where voucher_kredit is null)a '+
           'left join (SELECT a.voucher_no,a.to_,a.trans_date from t_cash_bank_expenditure a '+
           'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) b on a.voucher=b.voucher_no '+
           'where b.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           'UNION '+
           '(SELECT 9 id,voucher_no,code_account,deskripsi,description ket,paid_amount saldo,trans_date tgltrans from v_titipan_bpjs_penerimaan_kas '+
           'where trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           ') '+
           'union '+
           'SELECT 0 id,b.voucher_no,b.code_account,b.for_acceptance,b.description,b.paid_amount jumlah,b.trans_date FROM '+
           '(SELECT a.id,a.voucher_no,b.code_account,a.for_acceptance,a.description,b.paid_amount,b.trans_date,b."position" '+
           'FROM t_cash_bank_acceptance a INNER JOIN t_cash_bank_acceptance_det b on a.voucher_no=b.voucher_no) b where b."position"=''K'' '+
           'AND b.code_account=''2130.01'' or  b.code_account=''2130.02'' or b.code_account=''2130.03'' or b.code_account=''2130.04'' or '+
           'b.code_account=''2130.07'') v order by v.trans_date,v.voucher ';

    query4:='/*Import*/'+
           'select * from '+
           '(select receive_no as noref,receive_date as tglref,''PPN MASUKAN'' ::character varying as keter,b.supplier_name as nm_sumber,ppn_rp as saldo,ppn_account_code as akun_um from t_item_receive2 a INNER JOIN  t_supplier b ON a.supplier_code=b.supplier_code '+
           'where ppn_account_code is not null AND ppn_rp <>0  and receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           'union all '+
           'select receive_no as noref,receive_date as tglref,''PPH 22'' ::character varying as keter,b.supplier_name,pph_rp as saldo,pph_account_code as akun_um from t_item_receive2 a INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
           'where pph_account_code is not null AND pph_rp<>0  and receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           'union all '+
           'select receive_no as noref,receive_date as tglref,''BEA MASUK'' ::character varying as keter,b.supplier_name,import_duty as saldo, duty_account_code as akun_um from  t_item_receive2 a INNER JOIN t_supplier b ON a.supplier_code=b.supplier_code '+
           'where duty_account_code is not null AND import_duty <>0 and receive_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' )xx '+
           'left join t_payment_detail_real yy on xx.noref=yy.voucher_no and xx.akun_um=yy.account_code '+
           'left join t_purchase_invoice f on xx.noref=f.trans_no '+
           'where yy.voucher_no is null and f.approval_status=1 and f.invoice_status=1 and f.sj_status=1 and f.fk_status=1 and xx.saldo>0  order by tglref,noref,akun_um ';

    query5:='/*Memorial*/'+
           'select a.memo_no,c.trans_date,c.notes,a.kredit,a.account_code,b from t_memorial_journal_detail a '+
           'left join t_ak_account b on a.account_code=b.code '+
           'left join t_memorial_journal c on a.memo_no=c.memo_no '+
           'where a.account_code in (select code from t_memorial_data_source_account) and a.kredit<>0 '+
           'and c.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date));

    if vcall='Data_Hutang' then
    begin
      with qdaftarhutang do
      begin
        close;
        sql.clear;
        sql.add(query1+ ' ');
        sql.Add('WHERE 1=1');
        if length(cbsupp.Text)<>0 then
           //sql.Add('where kodesup='+QuotedStr(cbsupp.Text));
           sql.Add('AND kodesup = ' + QuotedStr(cbsupp.Text));

        if (not VarIsNull(DtMulai.date)) and (not VarIsNull(DtSelesai.date)) then
        begin
            SQL.Add('AND tgltempo BETWEEN ' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', DtMulai.Date)) + ' AND ' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', DtSelesai.Date)));
        end;
         sql.Add('ORDER BY tglfaktur,nofakturpajak,urutan ASC ');
        open;
      end;
      qdaftarhutang.Close;
      qdaftarhutang.Open;

      Memdaftarhutang.active:=false;
      Memdaftarhutang.active:=true;
      Memdaftarhutang.EmptyTable;

      if  qdaftarhutang.RecordCount=0 then
      begin
        Memdaftarhutang.active:=false;
        Memdaftarhutang.active:=true;
        Memdaftarhutang.EmptyTable;
      end;

      if  qdaftarhutang.RecordCount<>0 then
      begin
        qdaftarhutang.first;
        while not qdaftarhutang.Eof do
        begin
         Memdaftarhutang.insert;
         Memdaftarhutang['tanggal']:=qdaftarhutang.FieldByName('tanggal').AsDateTime;
         Memdaftarhutang['kodesup']:=qdaftarhutang.FieldByName('kodesup').Asstring;
         Memdaftarhutang['nasup']:=qdaftarhutang.FieldByName('nasup').AsString;
         Memdaftarhutang['nofakturpajak']:=qdaftarhutang.FieldByName('nofakturpajak').AsString;
         Memdaftarhutang['no_inv']:=qdaftarhutang.FieldByName('no_inv').AsString;
         Memdaftarhutang['sj_no']:=qdaftarhutang.FieldByName('sj_no').AsString;
         Memdaftarhutang['tglfaktur']:=qdaftarhutang.FieldByName('tglfaktur').AsDateTime;
         Memdaftarhutang['tgltempo']:=qdaftarhutang.FieldByName('tgltempo').AsDateTime;
         Memdaftarhutang['valas']:=qdaftarhutang.FieldByName('valas').AsString;
         Memdaftarhutang['npph']:=qdaftarhutang.FieldByName('npph').Asfloat;
         Memdaftarhutang['npph']:=qdaftarhutang.FieldByName('npph').Asfloat;
         Memdaftarhutang['jumlah']:=qdaftarhutang.FieldByName('jumlah').Asfloat;
         Memdaftarhutang['source_id']:=qdaftarhutang.FieldByName('source_id').AsInteger;
         Memdaftarhutang['pilih']:=0;
         Memdaftarhutang['urutan']:=qdaftarhutang.FieldByName('urutan').AsString;
         Memdaftarhutang['bayar']:=qdaftarhutang.FieldByName('bayar').Asfloat;
         Memdaftarhutang['rencanake']:=qdaftarhutang.FieldByName('rencanake').AsString;
         Memdaftarhutang['sisa']:=qdaftarhutang.FieldByName('sisa').Asfloat;
         Memdaftarhutang['status_bayar']:=qdaftarhutang.FieldByName('status_bayar').AsInteger;;
         Memdaftarhutang.post;
         qdaftarhutang.next;
        end;
      end;
    end;

    {if vcall='Uang_Muka_Pembelian' then
    begin
      //Frmdafdetailbayar.show;
      with QUang_Muka_Pembelian do
      begin
        close;
        sql.clear;
        sql.add(query2);
        if length(cbsupp.Text)<>0 then
          sql.Add('where kodesup='+QuotedStr(cbsupp.Text));
          sql.Add('ORDER BY urutan ASC ');
        open;
      end;
    end;}

    if vcall='Uang_Muka_Pembelian' then
    begin
      with QUang_Muka_Pembelian do
      begin
        close;
        sql.clear;
        sql.add(query2);
        if length(cbsupp.Text)<>0 then
          sql.Add('where supplier_code='+QuotedStr(cbsupp.Text));
          sql.Add('ORDER BY urutan ASC ');
        open;
      end;

      QUang_Muka_Pembelian.Close;
      QUang_Muka_Pembelian.Open;

      Memdaftarhutang.active:=false;
      Memdaftarhutang.active:=true;
      Memdaftarhutang.EmptyTable;

      if QUang_Muka_Pembelian.RecordCount=0 then
      begin
        Memdaftarhutang.active:=false;
        Memdaftarhutang.active:=true;
        Memdaftarhutang.EmptyTable;
      end;

      if QUang_Muka_Pembelian.RecordCount<>0 then
      begin
        QUang_Muka_Pembelian.first;
        while not QUang_Muka_Pembelian.Eof do
        begin
         Memdaftarhutang.insert;
         Memdaftarhutang['tanggal']:=QUang_Muka_Pembelian['tanggal'];
         Memdaftarhutang['kodesup']:=QUang_Muka_Pembelian['kodesup'];
         Memdaftarhutang['nasup']:=QUang_Muka_Pembelian['nasup'];
         Memdaftarhutang['nofakturpajak']:=QUang_Muka_Pembelian['nofakturpajak'];
         Memdaftarhutang['no_inv']:=QUang_Muka_Pembelian['no_inv'];
         Memdaftarhutang['sj_no']:=QUang_Muka_Pembelian['sj_no'];
         Memdaftarhutang['tglfaktur']:=QUang_Muka_Pembelian['tglfaktur'];
         Memdaftarhutang['tgltempo']:=QUang_Muka_Pembelian['tgltempo'];
         Memdaftarhutang['valas']:=QUang_Muka_Pembelian['valas'];
         Memdaftarhutang['npph']:=QUang_Muka_Pembelian['npph'];
         Memdaftarhutang['npph']:=QUang_Muka_Pembelian['npph'];
         Memdaftarhutang['jumlah']:=QUang_Muka_Pembelian['jumlah'];
         Memdaftarhutang['source_id']:=QUang_Muka_Pembelian['source_id'];
         Memdaftarhutang['pilih']:=0;
         Memdaftarhutang.post;
         QUang_Muka_Pembelian.next;
        end;
      end;
    end;

    if vcall='Hutang_Kredit' then
    begin
      with QHutang_Kredit do
      begin
        close;
        sql.clear;
        sql.add(query3);
        open;
      end;

      QHutang_Kredit.Close;
      QHutang_Kredit.Open;

      Memdaftarhutang.active:=false;
      Memdaftarhutang.active:=true;
      Memdaftarhutang.EmptyTable;

      if QHutang_Kredit.RecordCount=0 then
      begin
        Memdaftarhutang.active:=false;
        Memdaftarhutang.active:=true;
        Memdaftarhutang.EmptyTable;
      end;

      if QHutang_Kredit.RecordCount<>0 then
      begin
        QHutang_Kredit.first;
        while not QHutang_Kredit.Eof do
        begin
         Memdaftarhutang.insert;
         Memdaftarhutang['tanggal']:=QHutang_Kredit['tanggal'];
         Memdaftarhutang['kodesup']:=QHutang_Kredit['kodesup'];
         Memdaftarhutang['nasup']:=QHutang_Kredit['nasup'];
         Memdaftarhutang['nofakturpajak']:=QHutang_Kredit['nofakturpajak'];
         Memdaftarhutang['no_inv']:=QHutang_Kredit['no_inv'];
         Memdaftarhutang['sj_no']:=QHutang_Kredit['sj_no'];
         Memdaftarhutang['tglfaktur']:=QHutang_Kredit['tglfaktur'];
         Memdaftarhutang['tgltempo']:=QHutang_Kredit['tgltempo'];
         Memdaftarhutang['valas']:=QHutang_Kredit['valas'];
         Memdaftarhutang['npph']:=QHutang_Kredit['npph'];
         Memdaftarhutang['npph']:=QHutang_Kredit['npph'];
         Memdaftarhutang['jumlah']:=QHutang_Kredit['jumlah'];
         Memdaftarhutang['source_id']:=QHutang_Kredit['source_id'];
         Memdaftarhutang['pilih']:=0;
         Memdaftarhutang.post;
         QHutang_Kredit.next;
        end;
      end;
    end;

    if vcall='Import' then
    begin
      with QImport do
      begin
        close;
        sql.clear;
        sql.add(query4);
        open;
      end;

      QImport.Close;
      QImport.Open;

      Memdaftarhutang.active:=false;
      Memdaftarhutang.active:=true;
      Memdaftarhutang.EmptyTable;

      if QImport.RecordCount=0 then
      begin
        Memdaftarhutang.active:=false;
        Memdaftarhutang.active:=true;
        Memdaftarhutang.EmptyTable;
      end;

      if QImport.RecordCount<>0 then
      begin
        QImport.first;
        while not QImport.Eof do
        begin
         Memdaftarhutang.insert;
         Memdaftarhutang['tanggal']:=QImport['tanggal'];
         Memdaftarhutang['kodesup']:=QImport['kodesup'];
         Memdaftarhutang['nasup']:=QImport['nasup'];
         Memdaftarhutang['nofakturpajak']:=QImport['nofakturpajak'];
         Memdaftarhutang['no_inv']:=QImport['no_inv'];
         Memdaftarhutang['sj_no']:=QImport['sj_no'];
         Memdaftarhutang['tglfaktur']:=QImport['tglfaktur'];
         Memdaftarhutang['tgltempo']:=QImport['tgltempo'];
         Memdaftarhutang['valas']:=QImport['valas'];
         Memdaftarhutang['npph']:=QImport['npph'];
         Memdaftarhutang['npph']:=QImport['npph'];
         Memdaftarhutang['jumlah']:=QImport['jumlah'];
         Memdaftarhutang['source_id']:=QImport['source_id'];
         Memdaftarhutang['pilih']:=0;
         Memdaftarhutang.post;
         QImport.next;
        end;
      end;
    end;

    if vcall='Memorial' then
    begin
      with QMemorial do
      begin
        close;
        sql.clear;
        sql.add(query5);
        open;
      end;

      QMemorial.Close;
      QMemorial.Open;

      Memdaftarhutang.active:=false;
      Memdaftarhutang.active:=true;
      Memdaftarhutang.EmptyTable;

      if QMemorial.RecordCount=0 then
      begin
        Memdaftarhutang.active:=false;
        Memdaftarhutang.active:=true;
        Memdaftarhutang.EmptyTable;
      end;

      if QMemorial.RecordCount<>0 then
      begin
        QMemorial.first;
        while not QMemorial.Eof do
        begin
         Memdaftarhutang.insert;
         Memdaftarhutang['tanggal']:=QMemorial['tanggal'];
         Memdaftarhutang['kodesup']:=QMemorial['kodesup'];
         Memdaftarhutang['nasup']:=QMemorial['nasup'];
         Memdaftarhutang['nofakturpajak']:=QMemorial['nofakturpajak'];
         Memdaftarhutang['no_inv']:=QMemorial['no_inv'];
         Memdaftarhutang['sj_no']:=QMemorial['sj_no'];
         Memdaftarhutang['tglfaktur']:=QMemorial['tglfaktur'];
         Memdaftarhutang['tgltempo']:=QMemorial['tgltempo'];
         Memdaftarhutang['valas']:=QMemorial['valas'];
         Memdaftarhutang['npph']:=QMemorial['npph'];
         Memdaftarhutang['npph']:=QMemorial['npph'];
         Memdaftarhutang['jumlah']:=QMemorial['jumlah'];
         Memdaftarhutang['source_id']:=QMemorial['source_id'];
         Memdaftarhutang['pilih']:=0;
         Memdaftarhutang.post;
         QMemorial.next;
        end;
      end;
    end;


end;

procedure TFDaftar_Hutang.BProsesClick(Sender: TObject);
var i:integer;
begin
   ProsesRencanaLunasHutang;


  {qdaftarhutang.first;
  while not qdaftarhutang.Eof do
  begin
    if qdaftarhutang.fieldbyname('plan_stat').Value=true then
    begin
      if qdaftarhutangstatus.Value=0 then
      begin
        showmessage('Data tidak dapat diproses karena dokumen belum lengkap untuk no.faktur : '+qdaftarhutangnofakturpajak.AsString);
        exit;
      end;
      if qdaftarhutangapproval_status.Value=0 then
      begin
        showmessage('Data tidak dapat diproses karena belum di Approve untuk no.faktur : '+qdaftarhutangnofakturpajak.AsString);
        exit;
      end;

      if DBGridDafHutang.SelectedRows.Count > 0 then
      begin
        with DBGridDafHutang.DataSource.DataSet do
        begin
           for i := 0 to DBGridDafHutang.SelectedRows.Count-1 do
            begin
              GotoBookmark((DBGridDafHutang.SelectedRows.Items[i]));
              FRencana_Lunas_Hutang.Show;
              with FRencana_Lunas_Hutang.MemRencana do
              begin
                FRencana_Lunas_Hutang.MemRencana.Insert;
                FRencana_Lunas_Hutang.MemRencana['kd_sup']:=QdaftarHutang['kodesup'];
                FRencana_Lunas_Hutang.MemRencana['noinv']:=QdaftarHutang['no_inv'];
                FRencana_Lunas_Hutang.MemRencana['nofaktur']:=QdaftarHutang['nofakturpajak'];
                FRencana_Lunas_Hutang.MemRencana['tglfaktur']:=QdaftarHutang['tglfaktur'];
                FRencana_Lunas_Hutang.MemRencana['jumlah']:=QdaftarHutang['jumlah'];
                FRencana_Lunas_Hutang.MemRencana['npph']:='';
                FRencana_Lunas_Hutang.MemRencana['akun_pph']:='';
                FRencana_Lunas_Hutang.MemRencana['kurs']:='';
                FRencana_Lunas_Hutang.MemRencana['jumlah_dolar']:='';
                FRencana_Lunas_Hutang.MemRencana['nosj']:=QdaftarHutang['sj_no'];
                FRencana_Lunas_Hutang.MemRencana['nm_akun_pph']:='';
                FRencana_Lunas_Hutang.MemRencana.Post;
              end;
            end;
        end;
      end;
        close;
    end;
    qdaftarhutang.Next;
  end;}

end;

procedure TFDaftar_Hutang.BtutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftar_Hutang.Button4Click(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
     QSupplier.Close;
     QSupplier.Open;
  end;
  FSearch_Supplier.Caption:='Master Data Supplier';
  FSearch_Supplier.vcall:='daftar_hutang';
  FSearch_Supplier.ShowModal;
end;


procedure TFDaftar_Hutang.DBGridDafHutangGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   //if Qdaftarhutang.FieldByName('status').Value =0  then
   if  Memdaftarhutang['status']=0  then
   begin
      Background := Clyellow;
   end;

   //if Qdaftarhutang.FieldByName('rencanake').Value <> 0  then
   if  Memdaftarhutang['rencanake']<>0  then
   begin
      Background := Clmoneygreen;
   end;

   //if Qdaftarhutang.FieldByName('status_bayar').Value=1  then
   if  Memdaftarhutang['status_bayar']=1  then
   begin
      Background := Clred;
   end;
end;

procedure TFDaftar_Hutang.DBGridEh1Columns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
   //text := Copy(QdaftarHutangnofakturpajak.AsString, 1, 200);
end;

procedure TFDaftar_Hutang.FormShow(Sender: TObject);
begin
   if qdaftarhutang.Active=false then
      qdaftarhutang.Active:=true;
   Memdaftarhutang.Close;
   Memdaftarhutang.Open;
   Memdaftarhutang.EmptyTable;
   DtMulai.Date:=now;
   DtSelesai.Date:=now;
   cbsupp.Text:='';
   txtnmsupp.Text:='';
   FDaftar_Hutang.Caption:='Daftar Hutang';

end;




end.
