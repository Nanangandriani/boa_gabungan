unit U_Data_rencana_lunas_hutang_pengajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Data.DB, MemDS, DBAccess,
  Uni, RzButton, MemTableDataEh, MemTableEh;

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
    DBGridEh2: TDBGridEh;
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
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure btn_prosesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     vcall: string;
     Status: Integer;
     periode1, periode2: TDate;
  end;

var
  FDataRencanaLunasHutangPengajuan: TFDataRencanaLunasHutangPengajuan;

implementation

{$R *.dfm}

uses UDataKolektor, UDataModule, USearch_Supplier,
  UDataPengajuanPengeluaranKasBank;

procedure TFDataRencanaLunasHutangPengajuan.BCariClick(Sender: TObject);
var query :string;
    URUTAN_KE : Integer;
begin
    query:='SELECT a.*,b.supplier_name FROM t_paid_debt_det A '+
           'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code ';

    with dm.Qtemp do
    begin
       close;
       sql.clear;
       sql.add(query);
       if (Length(cbsupp.Text)=0)   then
         begin
           sql.add('where a.approve_status=true and a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+'  and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
           sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
         end
         else
         begin
           sql.add('where a.supplier_code='+QuotedStr(cbsupp.Text)+'  and approve_status=true and  a.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DtMulai.Date))+' and a.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DtSelesai.Date))+' ');
           sql.add('order by a.supplier_code,a.faktur_date,a.faktur_no');
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
         MemDataRencana['plan_to']:=Dm.Qtemp.FieldByName('plan_to').AsString;
         MemDataRencana['pilih']:=0;
         MemDataRencana.post;
         Dm.Qtemp.next;
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

procedure TFDataRencanaLunasHutangPengajuan.FormShow(Sender: TObject);
begin
   TabSheet2.TabVisible:=false;
   TabSheet3.TabVisible:=false;
   //if QdataRencana.Active=false then
      //QdataRencana.Active:=true;
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
             FDataPengajuanPengeluaranKasBank.Ed_nocek.Text:=MemDataRencana['cek_no'];
             FDataPengajuanPengeluaranKasBank.tgl_cek.Date:=MemDataRencana['cek_date'];
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

end.
