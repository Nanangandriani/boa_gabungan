unit U_Data_rencana_lunas_hutang_pengajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Data.DB, MemDS, DBAccess,
  Uni, RzButton, MemTableDataEh, MemTableEh, RzRadChk;

type
  TFDataRencanaLunasHutangPengajuan = class(TForm)
    RzPanel1: TRzPanel;
    Button4: TButton;
    txtnmsupp: TEdit;
    cbsupp: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    DtSelesai: TDateTimePicker;
    DtMulai: TDateTimePicker;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    PGC1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    QdataRencana: TUniQuery;
    DSRenana: TDataSource;
    QdataRencanaid: TLargeintField;
    QdataRencanabank: TStringField;
    QdataRencanasupplier_code: TStringField;
    QdataRencanainv_no: TStringField;
    QdataRencanafaktur_no: TStringField;
    QdataRencanafaktur_date: TDateField;
    QdataRencanacek_no: TStringField;
    QdataRencanafactory_code: TStringField;
    QdataRencanapph_account: TStringField;
    QdataRencanacek_date: TDateField;
    QdataRencanapaid_date: TDateField;
    QdataRencanaperiode1: TDateField;
    QdataRencanaperiodetempo1: TDateField;
    QdataRencanaperiode2: TDateField;
    QdataRencanaperiodetempo2: TDateField;
    QdataRencanaamount: TFloatField;
    QdataRencananpph: TFloatField;
    QdataRencanapaid_status: TSmallintField;
    QdataRencanadebt_type: TIntegerField;
    QdataRencanausername: TStringField;
    QdataRencanaexchange_rate: TFloatField;
    QdataRencanadolar_amount: TFloatField;
    QdataRencanaapprove_status: TBooleanField;
    QdataRencanasj_no: TStringField;
    QdataRencanaplan_to: TSmallintField;
    QdataRencanavoucher_no: TStringField;
    QdataRencanapph_name: TStringField;
    QdataRencanaapprove_name: TStringField;
    QdataRencanasupplier_name: TStringField;
    BCari: TRzBitBtn;
    MemDataRencana: TMemTableEh;
    DSMemRencana: TDataSource;
    RzPanel3: TRzPanel;
    btn_proses: TRzBitBtn;
    DSRencanaNonHutang: TDataSource;
    QdataRencanaNonHutang: TUniQuery;
    StringField1: TStringField;
    LargeintField1: TLargeintField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateField1: TDateField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateField2: TDateField;
    DateField3: TDateField;
    DateField4: TDateField;
    DateField5: TDateField;
    DateField6: TDateField;
    DateField7: TDateField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    SmallintField1: TSmallintField;
    IntegerField1: TIntegerField;
    StringField9: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    BooleanField1: TBooleanField;
    StringField10: TStringField;
    SmallintField2: TSmallintField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    DBGridEh2: TDBGridEh;
    RzPanel4: TRzPanel;
    btn_proses2: TRzBitBtn;
    CBrencanake: TComboBox;
    Label12: TLabel;
    Cb_Daf_Hutang: TRzCheckBox;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure btn_prosesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Chk_Daf_HutangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     vcall: string;
     Status: Integer;
     periode1, periode2: TDate;
     procedure load_rencanake;
  end;

var
//function
  FDataRencanaLunasHutangPengajuan: TFDataRencanaLunasHutangPengajuan;

implementation

{$R *.dfm}

uses UDataKolektor, UDataModule, USearch_Supplier,
  UDataPengajuanPengeluaranKasBank, UMainMenu;

//var
  //RealFDataRencanaLunasHutangPengajuan: TFDataRencanaLunasHutangPengajuan;

{function FDataRencanaLunasHutangPengajuan: TFDataRencanaLunasHutangPengajuan;
begin
  if RealFDataRencanaLunasHutangPengajuan <> nil then
     FDataRencanaLunasHutangPengajuan:=RealFDataRencanaLunasHutangPengajuan
  else
     Application.CreateForm(TFDataRencanaLunasHutangPengajuan,Result);
end;}

procedure TFDataRencanaLunasHutangPengajuan.BCariClick(Sender: TObject);
var query :string;
    URUTAN_KE : Integer;
begin
    query:='SELECT a.*,b.supplier_name FROM t_paid_debt_det A '+
               'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code ';

    if vcall='Pelunasan_Hutang' then
    begin
        with dm.Qtemp do
        begin
           close;
           sql.clear;
           sql.add(query);
           if (Length(cbsupp.Text)=0)   then
             begin
               sql.add('where a.source_plan_id=1 and a.approve_status=true and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               //sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
               sql.add('order by a.supplier_code,a.faktur_no');
             end
             else
           if (Length(cbrencanake.Text)=0)  then
             begin
               sql.add('where a.source_plan_id=1 and a.supplier_code='+QuotedStr(cbsupp.Text)+'  and approve_status=true and  a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               //sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
               sql.add('order by a.supplier_code,a.faktur_no');
             end
             else
             begin
               sql.add('where a.source_plan_id=1 and a.supplier_code='+QuotedStr(cbsupp.Text)+'  and approve_status=true and  a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' and a.plan_to='+QuotedStr(CBrencanake.Text)+' ');
               //sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
               sql.add('order by a.supplier_code,a.faktur_no');
             end;
           open;
        end;
        MemDataRencana.active:=false;
        MemDataRencana.active:=true;
        MemDataRencana.EmptyTable;

        if  Dm.Qtemp.RecordCount<>0 then
        begin
          Dm.Qtemp.first;
          while not Dm.Qtemp.Eof do
          begin
             MemDataRencana.insert;
             MemDataRencana['supplier_code']:=Dm.Qtemp.FieldByName('supplier_code').AsString;
             MemDataRencana['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
             MemDataRencana['sj_no']:=Dm.Qtemp.FieldByName('sj_no').AsString;
             MemDataRencana['inv_no']:=Dm.Qtemp.FieldByName('inv_no').AsString;
             MemDataRencana['faktur_no']:=Dm.Qtemp.FieldByName('faktur_no').AsString;
             MemDataRencana['faktur_date']:=Dm.Qtemp.FieldByName('faktur_date').AsString;
             MemDataRencana['paid_date']:=Dm.Qtemp.FieldByName('paid_date').AsString;
             MemDataRencana['periode1']:=Dm.Qtemp.FieldByName('periode1').AsDateTime;
             MemDataRencana['periode2']:=Dm.Qtemp.FieldByName('periode2').AsDateTime;
             MemDataRencana['amount']:=Dm.Qtemp.FieldByName('amount').value;
             MemDataRencana['source_id']:=Dm.Qtemp.FieldByName('source_plan_id').value;
             MemDataRencana['plan_to']:=Dm.Qtemp.FieldByName('plan_to').AsString;
             MemDataRencana['pilih']:=0;
             MemDataRencana['bank']:=Dm.Qtemp.FieldByName('bank').AsString;
             MemDataRencana['cek_no']:=Dm.Qtemp.FieldByName('cek_no').AsString;
             MemDataRencana['cek_date']:=Dm.Qtemp.FieldByName('cek_date').AsString;
             MemDataRencana.post;
             Dm.Qtemp.next;
          end;
        end;
    end
    else
    if vcall='Pelunasan_Non_Hutang' then
    begin
        with dm.Qtemp do
        begin
           close;
           sql.clear;
           sql.add(query);
           if (Length(cbsupp.Text)=0)   then
             begin
               sql.add('where a.source_plan_id<>1 and a.approve_status=true and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               sql.add('order by a.supplier_code,a.faktur_no');
             end
             else
             begin
               sql.add('where a.source_plan_id<>1 and a.supplier_code='+QuotedStr(cbsupp.Text)+'  and approve_status=true and  a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
               sql.add('order by a.supplier_code,a.faktur_no');
             end;
           open;
        end;
        MemDataRencana.active:=false;
        MemDataRencana.active:=true;
        MemDataRencana.EmptyTable;

        if  Dm.Qtemp.RecordCount<>0 then
        begin
          Dm.Qtemp.first;
          while not Dm.Qtemp.Eof do
          begin
             MemDataRencana.insert;
             MemDataRencana['supplier_code']:=Dm.Qtemp.FieldByName('supplier_code').AsString;
             MemDataRencana['supplier_name']:=Dm.Qtemp.FieldByName('supplier_name').AsString;
             MemDataRencana['sj_no']:=Dm.Qtemp.FieldByName('sj_no').AsString;
             MemDataRencana['inv_no']:=Dm.Qtemp.FieldByName('inv_no').AsString;
             MemDataRencana['faktur_no']:=Dm.Qtemp.FieldByName('faktur_no').AsString;
             //MemDataRencana['faktur_date']:=Dm.Qtemp.FieldByName('faktur_date').AsString;
             //MemDataRencana['paid_date']:=Dm.Qtemp.FieldByName('paid_date').AsString;
             MemDataRencana['periode1']:=Dm.Qtemp.FieldByName('periode1').AsDateTime;
             MemDataRencana['periode2']:=Dm.Qtemp.FieldByName('periode2').AsDateTime;
             MemDataRencana['amount']:=Dm.Qtemp.FieldByName('amount').value;
             MemDataRencana['plan_to']:=Dm.Qtemp.FieldByName('plan_to').AsString;
             MemDataRencana['source_id']:=Dm.Qtemp.FieldByName('source_plan_id').value;
             MemDataRencana['pilih']:=0;
             MemDataRencana.post;
             Dm.Qtemp.next;
          end;
        end;

    end;



    {if  Dm.Qtemp.RecordCount=0 then
    begin
      MemDataRencana.active:=false;
      MemDataRencana.active:=true;
      MemDataRencana.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;}
end;

procedure TFDataRencanaLunasHutangPengajuan.Button4Click(Sender: TObject);
begin
  with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Datarencanalunashutangajuan';
    FSearch_Supplier.ShowModal;
end;

procedure TFDataRencanaLunasHutangPengajuan.Chk_Daf_HutangClick(Sender: TObject);
begin
    if Cb_Daf_Hutang.checked then
    begin
      MemDataRencana.DisableControls;
      try
        MemDataRencana.First;
        while not MemDataRencana.Eof do
        begin
          MemDataRencana.Edit;
          MemDataRencana['pilih']:=True;
          MemDataRencana.Post;
          MemDataRencana.Next;
        end;
      finally
        MemDataRencana.EnableControls;
      end;
    end
    else
    begin
      MemDataRencana.DisableControls;
      try
        MemDataRencana.First;
        while not MemDataRencana.Eof do
        begin
          MemDataRencana.Edit;
          MemDataRencana['pilih']:=False;
          MemDataRencana.Post;
          MemDataRencana.Next;
        end;
      finally
        MemDataRencana.EnableControls;
      end;
    end;
end;

procedure TFDataRencanaLunasHutangPengajuan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //Action:=CaFree;
end;

procedure TFDataRencanaLunasHutangPengajuan.FormCreate(Sender: TObject);
begin
   //RealFDataRencanaLunasHutangPengajuan:=self;
end;

procedure TFDataRencanaLunasHutangPengajuan.FormDestroy(Sender: TObject);
begin
   //RealFDataRencanaLunasHutangPengajuan:=nil;
end;

procedure TFDataRencanaLunasHutangPengajuan.FormShow(Sender: TObject);
begin
   if vcall='Pelunasan_Hutang' then
   begin
      PGC1.ActivePage:=TabSheet1;
      TabSheet2.TabVisible:=true;
      TabSheet2.TabVisible:=false;
   end
   else
   if vcall='Pelunasan_Non_Hutang' then
   begin
     PGC1.ActivePage:=TabSheet2;
     TabSheet1.TabVisible:=false;
     TabSheet2.TabVisible:=true;
   end;
   self.load_rencanake;
   dtmulai.Date:=Now;
   dtselesai.Date:=Now;
   BCariClick(sender);
end;

procedure TFDataRencanaLunasHutangPengajuan.btn_prosesClick(Sender: TObject);
var
  rec: Integer;
begin
   Status:=0;
   rec:=0;

      if vcall='Pelunasan_Hutang' then
      begin

      {if not dm.Koneksi.InTransaction then
             dm.Koneksi.StartTransaction;
      try}
        if MemDataRencana.RecordCount=0 then
        begin
          MessageDlg('Tidak Ada Data',mtInformation,[mbRetry],0);

        end
        else if Status = 0 then
        begin
           //cek ada yang di tandai tidak
           MemDataRencana.First;
           while not MemDataRencana.Eof do
           begin
             if MemDataRencana['pilih']=true then
             begin
              rec:=rec+1;
             end;
           MemDataRencana.Next;
           end;

           if rec=0 then
           begin
             ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
             exit;
           end;

           //data di tandai kirm ke daftar rencana pelunasan
           if rec>0 then
           begin
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=false;
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=true;
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.EmptyTable;

             MemDataRencana.First;
             while not MemDataRencana.Eof do
             begin
               if MemDataRencana['pilih']=true then
               begin
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang.insert;
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_tagihan']:=MemDataRencana['inv_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_sj']:=MemDataRencana['sj_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_faktur']:=MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['tgl_faktur']:=MemDataRencana['faktur_date'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['jum_hutang']:=MemDataRencana['amount'];
                    //FDataPengajuanPengeluaranKasBank.MemDetailHutang['keterangan']:='EX.'+formatdatetime('dd/mm/yyyy',MemDataRencana['faktur_date'].AsDateTime)+' No.Faktur : '+MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang.FieldByName('keterangan').AsString :='EX. ' + FormatDateTime('dd/mm/yyyy', MemDataRencana.FieldByName('faktur_date').AsDateTime) +' No.Faktur : ' + MemDataRencana.FieldByName('faktur_no').AsString;
                    //FDataPengajuanPengeluaranKasBank.MemDetailHutang['keterangan']:='No.Faktur : '+MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang.post;
               end;
               MemDataRencana.Next;
             end;
             FDataPengajuanPengeluaranKasBank.edKode_supplier.Text:=MemDataRencana['supplier_code'];
             FDataPengajuanPengeluaranKasBank.ednama_supplier.Text:=MemDataRencana['supplier_name'];
             FDataPengajuanPengeluaranKasBank.CbRencana.Text:=MemDataRencana['plan_to'];
             //FDataPengajuanPengeluaranKasBank.EdJumlah.Text:=MemDataRencana['amount'];
             FDataPengajuanPengeluaranKasBank.EdJumlah.Text:=FDataPengajuanPengeluaranKasBank.DBGridTagihan.Columns[4].Footer.sumvalue; //02-12-2025
             FDataPengajuanPengeluaranKasBank.dtPeriode1.Date:=MemDataRencana['periode1'];
             FDataPengajuanPengeluaranKasBank.dtPeriode2.Date:=MemDataRencana['periode2'];
             FDataPengajuanPengeluaranKasBank.Ed_kepada.Text:=MemDataRencana['supplier_name'];
             FDataPengajuanPengeluaranKasBank.edKodeSumberPengeluaran.Text:=MemDataRencana['source_id'];
             FDataPengajuanPengeluaranKasBank.EdNamaBank.Text:=MemDataRencana['bank'];
             FDataPengajuanPengeluaranKasBank.Ed_nocek.Text:=MemDataRencana['cek_no'];
             FDataPengajuanPengeluaranKasBank.tgl_cek.Date:=MemDataRencana['cek_date'];
             FDataPengajuanPengeluaranKasBank.edUntukPengeluaran.Text:='PELUNASAN HUTANG';
             FDataPengajuanPengeluaranKasBank.MemKeterangan.Text:='PELUNASAN HUTANG';
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


      end
      else
      if vcall='Pelunasan_Non_Hutang' then
      begin
         if MemDataRencana.RecordCount=0 then
         begin
            MessageDlg('Tidak Ada Data',mtInformation,[mbRetry],0);
         end
         else if Status = 0 then
         begin
           //cek ada yang di tandai tidak
           MemDataRencana.First;
           while not MemDataRencana.Eof do
           begin
             if MemDataRencana['pilih']=true then
             begin
              rec:=rec+1;
             end;
           MemDataRencana.Next;
           end;

           if rec=0 then
           begin
             ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
             exit;
           end;

           //data di tandai kirm ke daftar rencana pelunasan
           if rec>0 then
           begin
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=false;
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.active:=true;
             FDataPengajuanPengeluaranKasBank.MemDetailHutang.EmptyTable;

             MemDataRencana.First;
             while not MemDataRencana.Eof do
             begin
               if MemDataRencana['pilih']=true then
               begin
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang.insert;
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_tagihan']:=MemDataRencana['inv_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_sj']:=MemDataRencana['sj_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['no_faktur']:=MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['tgl_faktur']:=MemDataRencana['faktur_date'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['jum_hutang']:=MemDataRencana['amount'];
                    //FDataPengajuanPengeluaranKasBank.MemDetailHutang['keterangan']:='EX.'+formatdatetime('dd/mm/yyyy',MemDataRencana['faktur_date'].Date)+' No.Faktur : '+MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang['keterangan']:='No.Faktur : '+MemDataRencana['faktur_no'];
                    FDataPengajuanPengeluaranKasBank.MemDetailHutang.post;
               end;
               MemDataRencana.Next;
             end;
             FDataPengajuanPengeluaranKasBank.edKode_supplier.Text:=MemDataRencana['supplier_code'];
             FDataPengajuanPengeluaranKasBank.ednama_supplier.Text:=MemDataRencana['supplier_name'];
             FDataPengajuanPengeluaranKasBank.CbRencana.Text:=MemDataRencana['plan_to'];
             FDataPengajuanPengeluaranKasBank.EdJumlah.Text:=MemDataRencana['amount'];
             FDataPengajuanPengeluaranKasBank.dtPeriode1.Date:=MemDataRencana['periode1'];
             FDataPengajuanPengeluaranKasBank.dtPeriode2.Date:=MemDataRencana['periode2'];
             FDataPengajuanPengeluaranKasBank.Ed_kepada.Text:=MemDataRencana['supplier_name'];
             FDataPengajuanPengeluaranKasBank.edKodeSumberPengeluaran.Text:=MemDataRencana['source_id'];
             //FDataPengajuanPengeluaranKasBank.Ed_nocek.Text:=MemDataRencana['cek_no'];
             //FDataPengajuanPengeluaranKasBank.tgl_cek.Date:=MemDataRencana['cek_date'];
           end;
      {end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;}
           if MemDataRencana['source_id']='2' then
           with dm.QTemp do
           begin
              close;
              sql.Clear;
              sql.Text:='select concat(''PEMBAYARAN UANG MUKA '', array_to_string(ARRAY(SELECT concat '+
                        '(d.item_name,'''',sum(d.qty),'' '',d.unit,'' '') || '' '' FROM '+
                        '(select r.po_no,r.item_stock_code,f.item_name,r.qty,r.unit,r.detail_id from t_podetail r '+
                        'left join (SELECT DISTINCT item_stock_code,item_name from t_item_stock) f '+
                        'on r.item_stock_code=f.item_stock_code) d where d.po_no IN '+
                        '(select voucher_no from t_payment_detail_submission where username='+QuotedStr(Nm)+') GROUP BY d.detail_id,d.item_name,d.unit), '', '') ) ket ';

              open;
           end;

           with dm.QTemp1 do
           begin
              close;
              sql.Clear;
              sql.Text:='select  array_to_string(ARRAY(select DISTINCT b.account_name from t_po a '+
                        'left join v_ak_account b on a.um_account_code=b.account_code2 where a.po_no in '+
                        '(select voucher_no from t_payment_detail_submission where username='+QuotedStr(Nm)+')), '', '') nama_perkiraan';
              open;
           end;
           FDataPengajuanPengeluaranKasBank.edUntukPengeluaran.Text:=dm.Qtemp1.FieldByName('nama_perkiraan').AsString;
           FDataPengajuanPengeluaranKasBank.MemKeterangan.Text:=dm.Qtemp.FieldByName('ket').AsString;

      end;
      Close;
      end;


end;

procedure TFDataRencanaLunasHutangPengajuan.load_rencanake;
begin
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='SELECT * from t_plan_to ';
        Open;
      end;
      Dm.Qtemp.First;
      CbRencanake.Items.Clear;
      while not dm.Qtemp.Eof do
      begin
         CbRencanake.Items.Add(Dm.Qtemp.FieldByName('plan_to').AsString);
         Dm.Qtemp.Next;
      end;
end;

end.
