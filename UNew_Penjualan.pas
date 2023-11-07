unit UNew_Penjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, RzEdit,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, RzCmboBx, RzPanel,// sEdit,
  RzLabel;

type
  TFinput_penjualan = class(TForm)
    pninput: TPanel;
    qty: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DTtgl_invoice: TRzDateTimeEdit;
    EdNoInvoice: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    DBGridgrn: TDBGridEh;
    DBGridbrowse: TDBGridEh;
    Memdetail: TMemTableEh;
    DSdetail: TDataSource;
    DSbrowse: TDataSource;
    Qbrowse: TUniQuery;
    Qtemp: TUniQuery;
    Label1: TLabel;
    Label4: TLabel;
    EdFaktur: TRzEdit;
    EdPelanggan: TRzEdit;
    Qdate: TUniQuery;
    DTtgl_jatuh_tempo: TRzDateTimeEdit;
    Label10: TLabel;
    Label12: TLabel;
    RzPanel1: TRzPanel;
    Label17: TLabel;
    Label18: TLabel;
    EDGrand_total: TRzEdit;
    EDTotal: TRzEdit;
    Label20: TLabel;
    Label21: TLabel;
    RzBitBtn1: TRzBitBtn;
    Qtemp2: TUniQuery;
    Label14: TLabel;
    Label15: TLabel;
    Edppn_persen: TRzEdit;
    Label16: TLabel;
    Edppn: TRzEdit;
    RzBitBtn2: TRzBitBtn;
    edidpiutang: TEdit;
    edidjurnal_umum: TEdit;
    Panel2: TPanel;
    Btn_show_produk: TRzBitBtn;
    Memdetailno_sp_muat: TStringField;
    Memdetailkode_produk: TStringField;
    Memdetailqty: TIntegerField;
    Memdetailsatuan: TStringField;
    Memdetailharga: TFloatField;
    Memdetailtotal_harga: TFloatField;
    Memdetaillain: TSmallintField;
    Memdetailnm_produk: TStringField;
    Label2: TLabel;
    Label7: TLabel;
    CBmata_uang: TRzComboBox;
    Label8: TLabel;
    Labelvalas: TLabel;
    ednilai_valas: TRzEdit;
    Memdetailtotal_harga_dolar: TFloatField;
    Memdetailharga_dolar: TFloatField;
    RzGroupBox1: TRzGroupBox;
    RzGroupBox2: TRzGroupBox;
    RzEdit1: TRzEdit;
    RzEdit2: TRzEdit;
    RzEdit3: TRzEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    Label9: TLabel;
    Label19: TLabel;
    CBkategori: TRzComboBox;
    Label22: TLabel;
    Label23: TLabel;
    CBstatus_do: TRzComboBox;
    eddpp: TEdit;
    procedure Btn_show_spmuatClick(Sender: TObject);
    procedure DBGridgrnColEnter(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DTtgl_invoiceKeyPress(Sender: TObject; var Key: Char);
    procedure EdSpMuatKeyPress(Sender: TObject; var Key: Char);
    procedure Edppn_persenChange(Sender: TObject);
    procedure EDTotalChange(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure EDGrand_totalChange(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure EdppnChange(Sender: TObject);
    procedure Btn_show_produkClick(Sender: TObject);
    procedure CBmata_uangChange(Sender: TObject);
    procedure ednilai_valasChange(Sender: TObject);
    procedure DBGridgrnColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Koreksi;
    procedure Autocode;
  end;

Function Finput_penjualan: TFinput_penjualan;
var Status:Integer;
    Total:Currency;

implementation

{$R *.dfm}

uses  UPenjualan,{ Ubrowse_sp_muat, Ubrowse_faktur_pajak,
  Ubrowse_pelanggan_rencana_pelunasan,} UMainmenu, UDataModule,
  Ubrowse_pelanggan, Ubrowse_faktur_pajak;
var
  RealFinput_penjualan: TFinput_penjualan;
function Finput_penjualan: TFinput_penjualan;
begin
  if RealFinput_penjualan <> nil then
    Finput_penjualan:= RealFinput_penjualan
  else
    Application.CreateForm(TFinput_penjualan, Result);
end;

Function Ribuan(RzEdit : TRzEdit):String;
var
 NilaiRupiah: string;
 AngkaRupiah: Currency;
begin
if RzEdit.Text='' then Exit;
 NilaiRupiah := RzEdit.text;
 NilaiRupiah := StringReplace(NilaiRupiah,',','',[rfReplaceAll,rfIgnoreCase]);
 NilaiRupiah := StringReplace(NilaiRupiah,'.','',[rfReplaceAll,rfIgnoreCase]);
 AngkaRupiah := StrToCurrDef(NilaiRupiah,0);
 RzEdit.Text := FormatCurr('#,###',AngkaRupiah);
 RzEdit.SelStart := length(RzEdit.text);
end;

Function HapusFormat(Nilai:TRzEdit):Integer;
var
  Hasil:String;
begin
  Hasil:=Nilai.Text;
  Hasil:=StringReplace(Hasil,',','',[rfReplaceAll,rfIgnoreCase]);
  Hasil:=StringReplace(Hasil,'.','',[rfReplaceAll,rfIgnoreCase]);
  Result:=StrToInt(Hasil);
end;

function IntToRoman(num: Cardinal): string;
const
  Nvals = 13;
  vals: array [1..Nvals] of word =
    (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);
  roms: array [1..Nvals] of string[2] =
    ('I', 'IV', 'V', 'IX', 'X', 'XL', 'L', 'XC', 'C',
    'CD', 'D', 'CM', 'M');
var
  b: 1..Nvals;
begin
  result := '';
  b := Nvals;
  while num > 0 do
  begin
    while vals[b] > num do
      dec(b);
    dec (num, vals[b]);
    result := result + roms[b]
  end;
end;

procedure TFinput_penjualan.Autocode;
var
kode,bulan,tahun,year,cek_bulan_tahun,kode_perusahaan,bulan_a,tgl : String;
Urut,bulan1 : Integer;
begin
  year:= year;
  with Qdate do
  begin
    Close;
    Open;
  end;
  tgl:= FormatDateTime('dd', DTtgl_invoice.Date);
  bulan_a := FormatDateTime('mm', DTtgl_invoice.Date);
  bulan1 := StrToInt(bulan_a);
  bulan := inttoroman(bulan1);
  tahun := FormatDateTime('yyyy', DTtgl_invoice.Date);

  With DM.Qtemp3 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select kode_perusahaan from t_data_perusahaan';
    open;
  end;
  kode_perusahaan:=dm.QTemp3.FieldByName('kode_perusahaan').AsString;
  cek_bulan_tahun:= bulan+'/'+kode_perusahaan+'/'+tahun;

  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select *,substring(no_invoice,5,5) kode from t_no_penjualan '+
                'where tgl_invoice='+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl_invoice.Date))+' order by substring(no_invoice,5,5) Desc Limit 1';
    open;
  end;


  if (Dm.Qtemp2.RecordCount = 0) or (formatdatetime('yyyy-mm-dd',dm.QTemp2.FieldByName('tgl_invoice').AsDateTime)<>formatdatetime('yyyy-mm-dd',DTtgl_invoice.Date)) then
  urut := 1
  else begin
//    With Dm.Qtemp do
//    begin
//      Close;
//      Sql.Clear;
//      Sql.Text := 'SELECT substring(no_invoice,5,5) kode FROM t_no_penjualan '+
//                  'where EXTRACT(MONTH FROM tgl_invoice) = '+ bulan_a +' order by id DESC LIMIT 1';
//      Open;
//    end;
    Urut := dm.Qtemp2.FieldByName('kode').AsInteger + 1;
  end;
  EdNoInvoice.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  EdNoInvoice.Text := 'INV/'+kode+'/'+tgl+'/'+bulan+'/'+kode_perusahaan+'/'+tahun;
end;

procedure TFinput_penjualan.DBGridgrnColEnter(Sender: TObject);
var
   Grand_total,ppn,PPN_rupiah : Currency;
begin
    if Memdetail.RecordCount>0 then
    begin

      Memdetail.Edit;
//      if (Memdetail['qty']='') or (Memdetail['qty']=NULL) then
//      begin
//        Memdetail['total_harga']:= 0;
//      end
//      else
//      begin
        Memdetail['total_harga']:= Memdetail['harga'] * Memdetail['qty'];
//      end;
      Memdetail.Post;
      Memdetail.First;
      Total:=0;
      while not Memdetail.Eof do
      begin
           Total := Total+Memdetail['lain'] + Memdetail['total_harga'];
           Memdetail.Next;
      end;

      if Edppn_persen.Text='' then
      begin
        PPN_rupiah  := 0/100*(Total);
        Edppn.Text :=  CurrToStr(PPN_rupiah);
      end
      else
      begin
        PPN_rupiah  := StrToInt(Edppn_persen.Text)/100*(Total);
        Edppn.Text :=  CurrToStr(PPN_rupiah);

      end;


  //    ppn:= StrToInt(Edppn.Text);
  //    EDTotal.Text := IntToStr(Total);
      Grand_total := Total+PPN_rupiah;
      EDGrand_total.Text := CurrToStr(Grand_total);
      Ribuan(Edppn);
      Ribuan(EDGrand_total);
    end;
end;

procedure TFinput_penjualan.DBGridgrnColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  if EdPelanggan.Text='' then
  begin
    MessageDlg('Pelanggan Diisi Terlebih Dahulu..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    //Fbrowse_sp_muat.Show;
  end;
end;

procedure TFinput_penjualan.DTtgl_invoiceKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
    begin
      EdFaktur.SetFocus;
    end;
end;

procedure TFinput_penjualan.EDGrand_totalChange(Sender: TObject);
begin
  Ribuan(EDGrand_total);
end;

procedure TFinput_penjualan.ednilai_valasChange(Sender: TObject);
begin
  Ribuan(ednilai_valas);
end;

procedure TFinput_penjualan.EdppnChange(Sender: TObject);
begin
  Ribuan(Edppn);
end;

procedure TFinput_penjualan.Edppn_persenChange(Sender: TObject);
var
   PPN_rupiah,Grand_total : Currency;
begin
  if Edppn_persen.Text='' then
  begin
    PPN_rupiah  := 0/100*(Total);
    Edppn.Text :=  CurrToStr(PPN_rupiah);
    Grand_total := Total+PPN_rupiah;
    EDGrand_total.Text := CurrToStr(Grand_total);
    Ribuan(Edppn);
    Ribuan(EDGrand_total);
  end
  else
  begin
    PPN_rupiah  := StrToInt(Edppn_persen.Text)/100*(Total);
    Edppn.Text :=  CurrToStr(PPN_rupiah);
    Grand_total := Total+PPN_rupiah;
    EDGrand_total.Text := CurrToStr(Grand_total);
    Ribuan(Edppn);
    Ribuan(EDGrand_total);
  end;
end;

procedure TFinput_penjualan.EdSpMuatKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    EdPelanggan.SetFocus;
  end;
end;

procedure TFinput_penjualan.EDTotalChange(Sender: TObject);
var
   PPN_rupiah : real;
   Grand_total : Integer;
begin
  PPN_rupiah  := StrToFloat(Edppn_persen.Text)/100*StrToFloat(EDTotal.Text);
  Edppn.Text :=  FloatToStr(PPN_rupiah);
  Grand_total := StrToInt(EDTotal.Text)+StrToInt(Edppn.Text);
  EDGrand_total.Text := IntToStr(Grand_total);
  Ribuan(EDGrand_total);
end;

procedure TFinput_penjualan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFinput_penjualan.FormCreate(Sender: TObject);
begin
  RealFinput_penjualan:=self;
end;

procedure TFinput_penjualan.FormDestroy(Sender: TObject);
begin
  RealFinput_penjualan:=nil;
end;

procedure TFinput_penjualan.FormShow(Sender: TObject);
begin
  Memdetail.Close;
  Memdetail.Open;
end;

procedure TFinput_penjualan.RzBitBtn1Click(Sender: TObject);
begin
  Fbrowse_faktur_pajak.ShowModal;
end;

procedure TFinput_penjualan.RzBitBtn2Click(Sender: TObject);
begin
  status_browse_pelanggan := 7;
  Fbrowse_data_pelanggan.Show;
  Memdetail.EmptyTable;
end;

procedure TFinput_penjualan.CBmata_uangChange(Sender: TObject);
begin
  if CBmata_uang.Text='RUPIAH' then
  begin
    ednilai_valas.Visible:=false;
    Label8.Visible:=false;
    Labelvalas.Visible:=false;
    DBGridgrn.Columns[6].Visible:=false;
    DBGridgrn.Columns[7].Visible:=false;
  end
  else
  begin
    ednilai_valas.Visible:=true;
    Label8.Visible:=true;
    Labelvalas.Visible:=true;
//    DBGridgrn.Columns[6].Visible:=true;
//    DBGridgrn.Columns[7].Visible:=true;
  end;
end;

procedure TFinput_penjualan.Btn_show_produkClick(Sender: TObject);
begin
  if EdPelanggan.Text='' then
  begin
    MessageDlg('Pelanggan Diisi Terlebih Dahulu..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    //Status_sp:=0;
    //Fbrowse_sp_muat.Show;
  end;
end;

procedure TFinput_penjualan.Btn_show_spmuatClick(Sender: TObject);
begin
  if EdPelanggan.Text='' then
  begin
    MessageDlg('Pelanggan Diisi Terlebih Dahulu..!!',mtInformation,[mbRetry],0);
  end
  else if CBkategori.Text='' then
  begin
    MessageDlg('Kategori Diisi Terlebih Dahulu..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    //Status_sp:=0;
   // Fbrowse_sp_muat.Show;
  end;
end;

procedure TFinput_penjualan.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFinput_penjualan.BSimpanClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
  if DTtgl_invoice.Text='' then
  begin
    MessageDlg('Tanggal Invoice Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if EdFaktur.Text='' then
  begin
    MessageDlg('No Faktur Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if DTtgl_jatuh_tempo.Text='' then
  begin
     MessageDlg('Jatuh Tempo Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if EdPelanggan.Text='' then
  begin
     MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if Status = 0 then
  begin
    Save;
    Dm.Koneksi.Commit;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    CLose;
    Flist_penjualan.Refresh;
  end
  else if Status = 1 then
  begin
    Update;
    Dm.Koneksi.Commit;
  end
  else if Status = 2 then
  begin
    Koreksi;
    Dm.Koneksi.Commit;
  end;
  Except on E :Exception do
    begin
      begin
        MessageDlg('Silahkan ulangi proses simpan..!!', MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFinput_penjualan.Clear;
begin
  Memdetail.EmptyTable;
  EdNoInvoice.Text:='';
  EdFaktur.Text:='';
  DTtgl_invoice.Text:='';
  EdPelanggan.Text:='';
  DTtgl_jatuh_tempo.Text:='';
  EDGrand_total.Text:='';
  Edppn_persen.Text:='11';
  Edppn.Text:='0';
  CBstatus_do.ItemIndex:=0;
end;

procedure TFinput_penjualan.Save;
var
no_sp_muat : String;
begin

  Autocode;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_no_penjualan(no_invoice,tgl_invoice) '+
    'Values (:parno_invoice,:partgl_invoice)';
    parambyname('parno_invoice').Value:=EdNoInvoice.Text;
    parambyname('partgl_invoice').Value:=DTtgl_invoice.Text;
    execsql;
  end;

  with Dm.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text:='SELECT a.kode_pelanggan, CURRENT_DATE date_now from t_pelanggan a '+
              'WHERE a.nama_pelanggan ='+QuotedStr(edpelanggan.Text);
    Open
  end;
  Memdetail.First;
  while not Memdetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_penjualan_detail(no_invoice,produk,harga,qty,satuan,total_harga,lain2,no_sp_muat) '+
      'Values (:parno_invoice,:parproduk,:parharga, :parqty,:parsatuan,:partotal_harga,:parlain2,:parno_sp_muat )';
      parambyname('parno_invoice').Value:=EdNoInvoice.Text;
      parambyname('parproduk').Value:=Memdetail['nm_produk'];
      parambyname('parharga').Value:=Memdetail['harga'];
      parambyname('parqty').Value:=Memdetail['qty'];
      parambyname('parsatuan').Value:=Memdetail['satuan'];
      parambyname('partotal_harga').Value:=Memdetail['total_harga'];
      parambyname('parlain2').Value:=Memdetail['lain'];
      parambyname('parno_sp_muat').Value:=Memdetail['no_sp_muat'];
      execsql;
    end;
    Memdetail.Next;
  end;

  with Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT SUM (total_harga) sum_total_harga, SUM (lain2) sum_lain2 FROM t_penjualan_detail WHERE no_invoice = '+QuotedStr(EdNoInvoice.Text);
    open;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_penjualan(no_invoice,no_faktur_pajak,tgl_invoice,pelanggan,'+
              'piutang_dagang,tot_lain2,jangka_waktu,ppn_persen,ppn_ribuan,sisa_piutang,'+
              'status_post,created_by,created_date,dpp,mata_uang,kurs_rupiah,kategori_penjualan,status_do) '+
              'Values (:parno_invoice,:parno_faktur_pajak,:partgl_invoice,:par_pelanggan,'+
              ':parpiutang_dagang,:parlain_lain,:parjangka_waktu,:parppn_persen,:parppn_ribuan,:parsisa_piutang,'+
              ':parstatus_post,:parcreated_by,:parcreated_date,:pardpp,:parmata_uang,:parkurs_rupiah,:parkategori_penjualan,:parstatus_do)';
    parambyname('parno_invoice').Value:=EdNoInvoice.Text;
    parambyname('parno_faktur_pajak').Value:=EdFaktur.Text;
    parambyname('partgl_invoice').Value:=DTtgl_invoice.Text;
    parambyname('par_pelanggan').Value:=Dm.Qtemp2.FieldByName('kode_pelanggan').AsString;
    parambyname('parpiutang_dagang').Value:=HapusFormat(EDGrand_total);
    if (Qtemp.FieldByName('sum_lain2').AsString ='') or (Qtemp.FieldByName('sum_lain2').AsString = NULL) then
    begin
      parambyname('parlain_lain').Value:=0;
    end
    else
    begin
      parambyname('parlain_lain').Value:=Qtemp.FieldByName('sum_lain2').AsCurrency;
    end;
    parambyname('parjangka_waktu').Value:=DTtgl_jatuh_tempo.Text;
    parambyname('parppn_persen').Value:=Edppn_persen.Text;
    parambyname('parppn_ribuan').Value:=HapusFormat(Edppn);
    parambyname('parsisa_piutang').Value:=HapusFormat(EDGrand_total);
    parambyname('parstatus_post').Value:='0';
//    parambyname('parcreated_by').Value:=FMainMenu.ST.Panels[4].Text;
    parambyname('parcreated_date').Value:=NOW;
    parambyname('pardpp').Value:=Total;
    parambyname('parmata_uang').Value:=CBmata_uang.Text;
    parambyname('parstatus_do').Value:=CBstatus_do.Text;
    if CBmata_uang.Text='RUPIAH' then
    begin
      parambyname('parkurs_rupiah').Value:=0;
    end
    else
    begin
      parambyname('parkurs_rupiah').Value:=HapusFormat(ednilai_valas);
    end;

    if CBkategori.ItemIndex=0 then
    begin
      parambyname('parkategori_penjualan').Value:=1;
    end
    else
    begin
      parambyname('parkategori_penjualan').Value:=2;
    end;
    execsql;
  end;

  with Dm.Qtemp do
  begin
    close;
    Sql.Clear;
    Sql.Text:= 'update t_faktur set status=:parstatus '+
               'where no_faktur=:parno_faktur';
    parambyname('parno_faktur').Value:=EdFaktur.Text;
    parambyname('parstatus').Value:='Aktif';
    ExecSql;
  end;

  with dm.QTemp2 do
  begin
    Close;
    Sql.Clear;
  {  Sql.Text:='Delete from t_status_input where menu=''PENJUALAN'' '+
              'and userr='+QuotedStr(FMainMenu.ST.Panels[4].Text);    }
    ExecSQL;
  end;
end;



procedure TFinput_penjualan.Update;
begin
//DELETE PO DETAIL
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('Delete From t_penjualan_detail');
    sql.Add('where no_invoice=:parno_invoice');
    ParamByName('parno_invoice').Value := EdNoInvoice.Text;
    execsql;
  end;
  with Dm.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text:='SELECT a.kode_pelanggan, CURRENT_DATE date_now from t_pelanggan a '+
              'WHERE a.nama_pelanggan ='+QuotedStr(edpelanggan.Text);
    Open;
  end;
  //INSERT PO DETAIL KEMBALI
  Memdetail.First;
  while not Memdetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_penjualan_detail(no_invoice,produk,harga,qty,satuan,total_harga,lain2,no_sp_muat) '+
      'Values (:parno_invoice,:parproduk,:parharga, :parqty,:parsatuan,:partotal_harga,:parlain2,:parno_sp_muat )';
      parambyname('parno_invoice').Value:=EdNoInvoice.Text;
      parambyname('parproduk').Value:=Memdetail['nm_produk'];
      parambyname('parharga').Value:=Memdetail['harga'];
      parambyname('parqty').Value:=Memdetail['qty'];
      parambyname('parsatuan').Value:=Memdetail['satuan'];
      parambyname('partotal_harga').Value:=Memdetail['total_harga'];
      parambyname('parlain2').Value:=Memdetail['lain'];
      parambyname('parno_sp_muat').Value:=Memdetail['no_sp_muat'];
      execsql;
    end;
    Memdetail.Next;
  end;

  //UPDATE PO
  with Dm.Qtemp do
  begin
    close;
    Sql.Clear;
    Sql.Text :='update t_penjualan set no_faktur_pajak=:parno_faktur_pajak, tgl_invoice=:partgl_invoice,'+
               'pelanggan=:parpelanggan,jangka_waktu=:parjangka_waktu'+
               ',ppn_persen=:parppn_persen,ppn_ribuan=:parppn_ribuan,piutang_dagang=:parpiutang_dagang, '+
               'sisa_piutang=:parsisa_piutang,update_by=:parupdate_by,update_date=:parupdate_date,dpp=:pardpp,'+
               'kategori_penjualan=:parkategori_penjualan,status_do=:parstatus_do where no_invoice=:parno_invoice';
    ParamByName('parno_invoice').Value := EdNoInvoice.Text;
    ParambyName('parno_faktur_pajak').Value := EdFaktur.Text;
    ParambyName('partgl_invoice').Value := DTtgl_invoice.Text;
    ParambyName('parpelanggan').Value := Dm.Qtemp2.FieldByName('kode_pelanggan').AsString;
    ParambyName('parjangka_waktu').Value := DTtgl_jatuh_tempo.Text;
    parambyname('parppn_persen').Value:=Edppn_persen.Text;
    parambyname('parppn_ribuan').Value:=HapusFormat(Edppn);
    parambyname('parpiutang_dagang').Value:=HapusFormat(EDGrand_total);
    parambyname('parsisa_piutang').Value:=HapusFormat(EDGrand_total);
//    parambyname('parupdate_by').Value:=FMainMenu.ST.Panels[4].Text;
    parambyname('parupdate_date').Value:=NOW;
    parambyname('pardpp').Value:=Total;
    if CBkategori.ItemIndex=0 then
    begin
      parambyname('parkategori_penjualan').Value:=1;
    end
    else
    begin
      parambyname('parkategori_penjualan').Value:=2;
    end;
    parambyname('parstatus_do').Value:=CBstatus_do.Text;
    ExecSql;
  end;

  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flist_penjualan.Refresh;
end;

procedure TFinput_penjualan.Koreksi;
var
saldo1 :Currency;
deskripsi :String;
begin
  //DELETE PO DETAIL
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('Delete From t_penjualan_detail');
    sql.Add('where no_invoice=:parno_invoice');
    ParamByName('parno_invoice').Value := EdNoInvoice.Text;
    execsql;
  end;
  with Dm.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text:='SELECT a.kode_pelanggan, CURRENT_DATE date_now from t_pelanggan a '+
              'WHERE a.nama_pelanggan ='+QuotedStr(edpelanggan.Text);
    Open
  end;
  //INSERT PO DETAIL KEMBALI
  Memdetail.First;
  while not Memdetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_penjualan_detail(no_invoice,produk,harga,qty,satuan,total_harga,lain2,no_sp_muat) '+
      'Values (:parno_invoice,:parproduk,:parharga, :parqty,:parsatuan,:partotal_harga,:parlain2,:parno_sp_muat )';
      parambyname('parno_invoice').Value:=EdNoInvoice.Text;
      parambyname('parproduk').Value:=Memdetail['nm_produk'];
      parambyname('parharga').Value:=Memdetail['harga'];
      parambyname('parqty').Value:=Memdetail['qty'];
      parambyname('parsatuan').Value:=Memdetail['satuan'];
      parambyname('partotal_harga').Value:=Memdetail['total_harga'];
      parambyname('parlain2').Value:=Memdetail['lain'];
      parambyname('parno_sp_muat').Value:=Memdetail['no_sp_muat'];
      execsql;
    end;
    Memdetail.Next;
  end;

  //UPDATE PO
  with Dm.Qtemp do
  begin
    close;
    Sql.Clear;
    Sql.Text :='update t_penjualan set no_faktur_pajak=:parno_faktur_pajak, tgl_invoice=:partgl_invoice,'+
               'pelanggan=:parpelanggan,jangka_waktu=:parjangka_waktu'+
               ',ppn_persen=:parppn_persen,ppn_ribuan=:parppn_ribuan,piutang_dagang=:parpiutang_dagang, '+
               'sisa_piutang=:parsisa_piutang,update_by=:parupdate_by,update_date=:parupdate_date,dpp=:pardpp,'+
               'kategori_penjualan=:parkategori_penjualan,status_do=:parstatus_do where no_invoice=:parno_invoice';
    ParamByName('parno_invoice').Value := EdNoInvoice.Text;
    ParambyName('parno_faktur_pajak').Value := EdFaktur.Text;
    ParambyName('partgl_invoice').Value := DTtgl_invoice.Text;
    ParambyName('parpelanggan').Value := Dm.Qtemp2.FieldByName('kode_pelanggan').AsString;
    ParambyName('parjangka_waktu').Value := DTtgl_jatuh_tempo.Text;
    parambyname('parppn_persen').Value:=Edppn_persen.Text;
    parambyname('parppn_ribuan').Value:=HapusFormat(Edppn);
    parambyname('parpiutang_dagang').Value:=HapusFormat(EDGrand_total);
    parambyname('parsisa_piutang').Value:=HapusFormat(EDGrand_total);
 // parambyname('parupdate_by').Value:=FMainMenu.ST.Panels[4].Text;
    parambyname('parupdate_date').Value:=NOW;
    parambyname('pardpp').Value:=Total;
    if CBkategori.ItemIndex=0 then
    begin
      parambyname('parkategori_penjualan').Value:=1;
    end
    else
    begin
      parambyname('parkategori_penjualan').Value:=2;
    end;
    parambyname('parstatus_do').Value:=CBstatus_do.Text;
    ExecSql;
  end;

//  //Update Piutang
//  with dm.Qtemp3 do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='SELECT a.saldo,a.kode_pelanggan FROM t_piutang a '+
//              'left join t_pelanggan b on a.kode_pelanggan=b.kode_pelanggan '+
//              'where b.nama_pelanggan= '+QuotedStr(EdPelanggan.Text) +' '+
//              'order by id DESC LIMIT 1';
//    open;
//  end;
//
//  saldo1:= dm.Qtemp3.FieldByName('saldo').AsCurrency + HapusFormat(EDGrand_total);
//
//  with Qtemp do
//  begin
//    close;
//    sql.Clear;
//    sql.Text:='SELECT array_to_string( ARRAY(SELECT concat(produk,'' '',qty,'' '',satuan,'' '') || '' '' FROM t_penjualan_detail '+
//              'where no_invoice= c.no_invoice), '','') deskripsi from t_penjualan c '+
//              'where tgl_invoice = '''+FormatDateTime('YYYY-MM-DD',DTtgl_invoice.Date)+'''' ;
//    Open;
//  end;
//
//  with Dm.Qtemp do
//  begin
//    close;
//    Sql.Clear;
//    Sql.Text :='update t_piutang set no_faktur=:parno_faktur, kode_pelanggan=:parkode_pelanggan,'+
//               'tgl=:partgl,debet=:pardebet,kredit=:parkredit'+
//               ',saldo=:parsaldo,jenis=:parjenis,keterangan=:parketerangan '+
//               'where id=:parid';
//    ParamByName('parid').Value := edidpiutang.Text;
//    Parambyname('parno_faktur').Value:=edfaktur.Text;
//    Parambyname('parkode_pelanggan').Value:=Dm.Qtemp2.FieldByName('kode_pelanggan').AsString;
//    Parambyname('partgl').Value:=DTtgl_invoice.Text;
//    Parambyname('pardebet').Value:=HapusFormat(EDGrand_total);
//    Parambyname('parkredit').Value:=0;
//    Parambyname('parsaldo').Value:= saldo1;
//    Parambyname('parjenis').Value:= 'Penjualan';
//    Parambyname('parketerangan').Value:='Penjualan'+Qtemp.FieldByName('deskripsi').AsString;
//    ExecSql;
//  end;
//
//  //Update Jurnal Umum
//  //JURNAL (PIUTANG DAGANG)
//  if Dm.Qtemp2.FieldByName('kode_pelanggan').AsString='MAB' then
//  begin
//    deskripsi:='3';
//  end
//  else if Dm.Qtemp2.FieldByName('kode_pelanggan').AsString='MNB' then
//  begin
//    deskripsi:='4';
//  end
//  else if Dm.Qtemp2.FieldByName('kode_pelanggan').AsString='HKJ' then
//  begin
//    deskripsi:='5';
//  end
//  else if Dm.Qtemp2.FieldByName('kode_pelanggan').AsString='NPA' then
//  begin
//    deskripsi:='6';
//  end;
//
//  with dm.Qtemp3 do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='select kd_akun from t_master_akun where kode='+QuotedStr(deskripsi);
//    Open;
//  end;
//
//  with Dm.Qtemp do
//  begin
//    close;
//    Sql.Clear;
//    Sql.Text :='update t_jurnal_umum set kd_akun_perkiraan=:parkd_akun_perkiraan,'+
//               'debet=:pardebet,kredit=:parkredit,tgl_trans=:partgl_trans '+
//               'where no_trans=:parno_trans and modul=''PENJUALAN'' and '+
//               'kd_akun_perkiraan='+QuotedStr(dm.Qtemp3.FieldByName('kd_akun').Asstring);
//    parambyname('parno_trans').Value:=EdNoInvoice.Text;
//    parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
//    parambyname('pardebet').Value:=EDGrand_total.Text;
//    parambyname('parkredit').Value:=0;
//    parambyname('partgl_trans').Value:= DTtgl_invoice.Text;
//    ExecSql;
//  end;
//
//  //JURNAL (PPN)
//  with dm.Qtemp3 do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='select kd_akun from t_master_akun where kode=''2'' ';
//    Open;
//  end;
//
//  with Dm.Qtemp do
//  begin
//    close;
//    Sql.Clear;
//    Sql.Text :='update t_jurnal_umum set kd_akun_perkiraan=:parkd_akun_perkiraan,'+
//               'debet=:pardebet,kredit=:parkredit,tgl_trans=:partgl_trans '+
//               'where no_trans=:parno_trans and modul=''PENJUALAN'' and '+
//               'kd_akun_perkiraan='+QuotedStr(dm.Qtemp3.FieldByName('kd_akun').Asstring);
//    parambyname('parno_trans').Value:=EdNoInvoice.Text;
//    parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
//    parambyname('pardebet').Value:=0;
//    parambyname('parkredit').Value:=Edppn.Text;
//    parambyname('partgl_trans').Value:= DTtgl_invoice.Text;
//    ExecSql;
//  end;
//
//  //JURAL DPP
//  with dm.Qtemp3 do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='select kd_akun from t_master_akun where kode=''7'' ';
//    Open;
//  end;
//  with Dm.Qtemp do
//  begin
//    close;
//    Sql.Clear;
//    Sql.Text :='update t_jurnal_umum set kd_akun_perkiraan=:parkd_akun_perkiraan,'+
//               'debet=:pardebet,kredit=:parkredit,tgl_trans=:partgl_trans '+
//               'where no_trans=:parno_trans and modul=''PENJUALAN'' and '+
//               'kd_akun_perkiraan='+QuotedStr(dm.Qtemp3.FieldByName('kd_akun').Asstring);
//    parambyname('parno_trans').Value:=EdNoInvoice.Text;
//    parambyname('parkd_akun_perkiraan').Value:=dm.Qtemp3.FieldByName('kd_akun').Asstring;
//    parambyname('pardebet').Value:=0;
//    parambyname('parkredit').Value:=Edppn.Text;
//    parambyname('partgl_trans').Value:= DTtgl_invoice.Text;
//    ExecSql;
//  end;

  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flist_penjualan.Refresh;
end;

end.
