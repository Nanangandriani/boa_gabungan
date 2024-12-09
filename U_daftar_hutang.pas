unit U_daftar_hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  RzButton, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzPanel, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, MemDS, DBAccess, Uni, MemTableDataEh, MemTableEh;

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
    procedure BtutupClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns2GetCellParams(Sender: TObject; EditMode: Boolean;
      Params: TColCellParamsEh);
    procedure BProsesClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

uses UDataModule, u_rencana_lunas_hutang_input, USearch_Supplier;

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
                    FRencana_Lunas_Hutang.MemRencana['nosj']:=Memdaftarhutang['sj_no'];
                    FRencana_Lunas_Hutang.MemRencana['nofaktur']:=Memdaftarhutang['nofakturpajak'];
                    FRencana_Lunas_Hutang.MemRencana['tglfaktur']:=Memdaftarhutang['tglfaktur'];
                    FRencana_Lunas_Hutang.MemRencana['akun_pph']:=Memdaftarhutang['akun_pph'];
                    FRencana_Lunas_Hutang.MemRencana['npph']:=Memdaftarhutang['npph'];
                    FRencana_Lunas_Hutang.MemRencana['jumlah']:=Memdaftarhutang['jumlah'];
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
var query1,query2:string;
begin
   query1:='SELECT  tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfaktur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_pph,plan_stat,status,urutan,approval_status,bayar,rencanake,jumlah-bayar as sisa '+
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
           '(case when sj_status=1 and fk_status=1 and invoice_status=1 then 1 else 0 end)status,0 as ppnrp,pph_rp,id as urutan,approval_status  from purchase.t_purchase_invoice where (faktur_date + due_date) between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+

           'union all '+
           'select  a.notrans as no_terima,a.date_trans as tanggal,b.vendor_code as kodesup,a.notrans as no_inv,a.notrans as nofakturpajak,a.date_trans as tgl_faktur, '+
           ' ''''::character varying as nosj,''IDR''::character varying as valas,0 as valas_value,  0 as  due_date,false as stat_rencana,1 as status,0 as ppnrp,0 as pph_rp,0 as id,0 as status_approval '+
           ' from public.t_delivery_order a '+
           'inner join public.t_delivery_order_services b  on a.notrans=b.notrans '+
           'where a.date_trans between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' '+
           ')a '+
           'left join '+
           '(select a.trans_no,b.supplier_code,b.valas,sum(a.grandtotal)as jumlah,(case when b.valas=''USD'' then sum(a.subtotalrp) else sum(a.grandtotal) end)as hutang,sum(a.subtotal)subtotal,sum(a.ppn_rp)ppn_rp ,sum(a.pph_rp)pph_rp,sum(a.pph_rp)as npph '+
           'from purchase.t_purchase_invoice_det a,purchase.t_purchase_invoice b  where a.trans_no=b.trans_no group by a.trans_no,b.supplier_code,b.valas '+
           'order by trans_no,supplier_code)b on a.trans_no=b.trans_no and a.kodesup=b.supplier_code '+
           'left join '+
           't_supplier c on a.kodesup=c.supplier_code '+
           'left join '+
           '(select faktur_no from cash_banks.t_paid_debt_det)as lunas  on a.nofakturpajak=lunas.faktur_no '+
           'left join '+
           '(select a.receive_no,b.valas_value,b.valas,case when b.valas=''USD'' then sum(a.total_price)*b.valas_value else sum(b.price+b.ppn_rp) end as nil_retur from purchase.t_purchase_return_det a,purchase.t_purchase_return b '+
           'where a.return_no=b.return_no  group by a.receive_no,b.valas_value,b.valas order by a.receive_no)retur on a.trans_no=retur.receive_no '+
           'left join '+
           '(select receive_no,sum(price_rp) as nilai_pot_rp,sum(price) as nilai_pot_dolar,sum(ppnrp)as ppnrp from purchase.t_purchase_discount GROUP BY receive_no)pot on a.trans_no=pot.receive_no '+
           'left join '+
           '(select notrans as do_no,vendor_code,sum(total_cost)as harga from public.t_delivery_order_services group by do_no,vendor_code order by do_no,vendor_code)do1 on a.trans_no=do1.do_no '+
           ')xxx  '+
           'left join '+
           '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um end)nilai_um from '+
           '(select distinct a.trans_no,a.po_no,b.supplier_code from purchase.t_purchase_invoice_det a,purchase.t_purchase_invoice b where a.trans_no=b.trans_no '+
           ' and (faktur_date + due_date) between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+')a '+
           'left join '+
           '(select supplier_code,po_no,sum(um_value)as nilai_um from purchase.t_po where um_status=true and po_date<=''2024-10-21''  '+
           'group  by po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.po_no and a.supplier_code=b.supplier_code)um_beli on xxx.no_inv=um_beli.trans_no '+

           ')zzz ' +
           'ORDER BY tglfaktur,nofakturpajak,urutan ASC)y '+
           'left join '+
           '(select faktur_no,plan_to from cash_banks.v_plan_paid_debt where paid_status=0  and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+')yy on y.nofakturpajak=yy.faktur_no '+
           'left join '+
           '(select lpb_no,pay from cash_banks.t_buy_pay)z on y.no_inv=z.lpb_no ORDER BY y.urutan) zz ';

    if qdaftarhutang.Active=false then
       qdaftarhutang.Active:=true;
    with qdaftarhutang do
    begin
      close;
      sql.clear;
      sql.add(query1);
      if length(cbsupp.Text)<>0 then
       sql.Add('where kodesup='+QuotedStr(cbsupp.Text));
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
       Memdaftarhutang['pilih']:=0;
       Memdaftarhutang.post;
       qdaftarhutang.next;
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

procedure TFDaftar_Hutang.DBGridEh1Columns2GetCellParams(Sender: TObject;
  EditMode: Boolean; Params: TColCellParamsEh);
begin
   text := Copy(QdaftarHutangnofakturpajak.AsString, 1, 200);
end;

procedure TFDaftar_Hutang.FormShow(Sender: TObject);
begin
   DtMulai.Date:=now;
   DtSelesai.Date:=now;
end;

end.
