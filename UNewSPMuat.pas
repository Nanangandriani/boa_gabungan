unit UNewSPMuat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.Buttons, MemDS,
  DBAccess, Uni, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, RzEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, DataDriverEh, RzPanel,
  RzLabel, RzCmboBx;

type
  TFinput_sp_muat = class(TForm)
    pninput: TPanel;
    qty: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DTtgl_sp_muat: TRzDateTimeEdit;
    Ed_no_sp_muat: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    DBGridnewspmuat: TDBGridEh;
    DBGridbrowse: TDBGridEh;
    Memdetail: TMemTableEh;
    DSdetail: TDataSource;
    Qtemp: TUniQuery;
    ed_no_kendaraan: TRzEdit;
    Label1: TLabel;
    Label4: TLabel;
    DTtgl_pengiriman: TRzDateTimeEdit;
    Label7: TLabel;
    Label8: TLabel;
    MemoKet: TRzMemo;
    Qdate: TUniQuery;
    RzPanel1: TRzPanel;
    Btn_show_produk: TRzBitBtn;
    Qtemp_spmuat_detail: TUniQuery;
    DataSetDriverEh1: TDataSetDriverEh;
    Qtemp2: TUniQuery;
    RzBitBtn1: TRzBitBtn;
    Memdetailno_po_pelanggan: TStringField;
    Memdetailgudang: TStringField;
    Memdetailproduk: TStringField;
    Memdetailqty: TFloatField;
    Memdetailsatuan: TStringField;
    Memdetailiddetailgdng: TSmallintField;
    Memdetailpelanggan: TStringField;
    Memdetailid: TIntegerField;
    Memdetailnama_pelanggan: TStringField;
    Memdetailnm_produk: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    edpelanggan: TRzEdit;
    RzBitBtn2: TRzBitBtn;
    Edit1: TEdit;
    edid_no_urut: TEdit;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure Btn_show_produkClick(Sender: TObject);
    procedure EdprodukKeyPress(Sender: TObject; var Key: Char);
    procedure DTtgl_sp_muatKeyPress(Sender: TObject; var Key: Char);
    procedure DTtgl_pengirimanKeyPress(Sender: TObject; var Key: Char);
    procedure ed_no_kendaraanKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure DBGridnewspmuatColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
  end;

Function Finput_sp_muat: TFinput_sp_muat;
var  Status:Integer;

implementation

{$R *.dfm}

uses UDatamodule, UListSPmuat,{ UNewProdukPO_spmuat,} UMainmenu,Ubrowse_pelanggan;
var RealFinput_sp_muat: TFinput_sp_muat;
function Finput_sp_muat: TFinput_sp_muat;
begin
  if RealFinput_sp_muat <> nil then Finput_sp_muat:= RealFinput_sp_muat
  else  Application.CreateForm(TFinput_sp_muat, Result);
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

procedure TFinput_sp_muat.Autocode;
var
kode,bulan,tahun,year,cek_bulan_tahun,kode_perusahaan,bulan_a,tahun_a,tgl : String;
Urut,bulan1 : Integer;
begin
  with Qdate do
  begin
    Close;
    Open;
  end;
  tgl:= FormatDateTime('dd', DTtgl_sp_muat.Date);
  bulan_a := FormatDateTime('mm', DTtgl_sp_muat.Date);
  bulan1 := StrToInt(bulan_a);
  bulan := inttoroman(bulan1);
  tahun := FormatDateTime('yyyy', DTtgl_sp_muat.Date);

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
    Sql.Text := 'select *,substring(no_sp_muat,5,5) kode from t_no_sp_muat '+
                'where tgl_sp_muat='+QuotedStr(formatdatetime('yyyy-mm-dd',DTtgl_sp_muat.Date))+' order by substring(no_sp_muat,5,5) DESC LIMIT 1';
    open;
  end;

  if (Dm.Qtemp2.RecordCount = 0) or (formatdatetime('yyyy-mm-dd',dm.QTemp2.FieldByName('tgl_sp_muat').AsDateTime)<>formatdatetime('yyyy-mm-dd',DTtgl_sp_muat.Date)) then
  begin
    urut := 1;
  end
  else
  begin
//    With Dm.Qtemp do
//    begin
//      Close;
//      Sql.Clear;
//      Sql.Text := 'SELECT substring(no_sp_muat,5,5) kode FROM t_no_sp_muat '+
//                  'where EXTRACT(MONTH FROM tgl_sp_muat) = '+ bulan_a +' order by id DESC LIMIT 1';
//      Open;
//    end;
    Urut := dm.Qtemp2.FieldByName('kode').AsInteger + 1;
  end;
  Ed_no_sp_muat.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  Ed_no_sp_muat.Text := 'SPM/'+kode+'/'+tgl+'/'+bulan+'/'+kode_perusahaan+'/'+tahun;
End;

procedure TFinput_sp_muat.Save;
begin

  Autocode;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_no_sp_muat(no_sp_muat,tgl_sp_muat) '+
              'Values (:parno_sp_muat,:partgl_sp_muat)';
    parambyname('parno_sp_muat').Value:=Ed_no_sp_muat.Text;
    parambyname('partgl_sp_muat').Value:=DTtgl_sp_muat.Text;
    execsql;
  end;

  Memdetail.First;
  while not Memdetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_sp_muat_detail(no_sp_muat,no_po_pelanggan,gudang,produk,qty,satuan,iddetailgdng,status) '+
                'Values (:parno_sp_muat,:parno_po_pelanggan,:pargudang,:parproduk,:parqty,:parsatuan,:pariddetailgdng,:parstatus)';
      parambyname('parno_sp_muat').Value:=Ed_no_sp_muat.Text;
      parambyname('parno_po_pelanggan').Value:=Memdetail['no_po_pelanggan'];
      parambyname('pargudang').Value:=Memdetail['gudang'];
      parambyname('parproduk').Value:=Memdetail['produk'];
      parambyname('parqty').Value:=Memdetail['qty'];
      parambyname('parsatuan').Value:=Memdetail['satuan'];
      parambyname('pariddetailgdng').Value:=Memdetail['iddetailgdng'];
      parambyname('parstatus').Value:='0';
      execsql;
    end;
    Memdetail.Next;
  end;
  with dm.QTemp2 do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select kode_pelanggan from t_pelanggan where nama_pelanggan='+QuotedStr(edpelanggan.Text);
    Open;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Insert Into t_sp_muat(no_sp_muat,tgl_sp_muat,tgl_pengiriman,no_kend,ket,created_date,created_by,pelanggan,status) '+
              'Values (:parno_sp_muat,:partgl_sp_muat,:partgl_pengiriman,:parno_kend,:parket,:parcreated_date,:parcreated_by,:parpelanggan,:parstatus)';
    parambyname('parno_sp_muat').Value:=Ed_no_sp_muat.Text;
    parambyname('partgl_sp_muat').Value:=DTtgl_sp_muat.Text;
    parambyname('partgl_pengiriman').Value:=DTtgl_pengiriman.text;
    parambyname('parno_kend').Value:=ed_no_kendaraan.Text;
    parambyname('parket').Value:=MemoKet.Text;
    parambyname('parcreated_date').Value:=NOW;
//    parambyname('parcreated_by').Value:=FMainMenu.ST.Panels[4].Text;
    parambyname('parpelanggan').Value:=Dm.QTemp2.FieldByName('kode_pelanggan').AsString;
    parambyname('parstatus').Value:=0;
    execsql;
  end;

  with dm.QTemp2 do
  begin
    Close;
    Sql.Clear;
  //  Sql.Text:='Delete from t_status_input where menu=''SP MUAT'' '+
  //            'and userr='+QuotedStr(FMainMenu.ST.Panels[4].Text);
    ExecSQL;
  end;

end;

procedure TFinput_sp_muat.Update;
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='Select * from t_penjualan_detail where no_sp_muat='+QuotedStr(Ed_no_sp_muat.Text);
    Open;
  end;
  if dm.Qtemp.RecordCount=0 then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Delete From t_sp_muat_detail '+
                'where no_sp_muat='+QuotedStr(Ed_no_sp_muat.Text);
      execsql;
    end;
    Memdetail.First;
    while not Memdetail.Eof do
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_sp_muat_detail(no_sp_muat,no_po_pelanggan,gudang,produk,qty,satuan,iddetailgdng) '+
                  'Values (:parno_sp_muat,:parno_po_pelanggan,:pargudang,:parproduk,:parqty,:parsatuan,:pariddetailgdng)';
        parambyname('parno_sp_muat').Value:=Ed_no_sp_muat.Text;
        parambyname('parno_po_pelanggan').Value:=Memdetail['no_po_pelanggan'];
        parambyname('pargudang').Value:=Memdetail['gudang'];
        parambyname('parproduk').Value:=Memdetail['produk'];
        parambyname('parqty').Value:=Memdetail['qty'];
        parambyname('parsatuan').Value:=Memdetail['satuan'];
        parambyname('pariddetailgdng').Value:=Memdetail['iddetailgdng'];
        execsql;
      end;
      Memdetail.Next;
    end;

    with dm.QTemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select kode_pelanggan from t_pelanggan where nama_pelanggan='+QuotedStr(edpelanggan.Text);
      Open;
    end;
    with Dm.Qtemp do
    begin
      close;
      Sql.Clear;
      Sql.Text:= 'update t_sp_muat set tgl_sp_muat=:partgl_sp_muat,tgl_pengiriman=:partgl_pengiriman,'+
                 'no_kend=:parno_kend,tujuan=:partujuan,ket=:parket,update_date=:parupdate_date,update_by=:parupdate_by, '+
                 'pelanggan=:parpelanggan where no_sp_muat=:parno_sp_muat';
      parambyname('parno_sp_muat').Value:=Ed_no_sp_muat.Text;
      parambyname('partgl_sp_muat').Value:=DTtgl_sp_muat.Text;
      parambyname('partgl_pengiriman').Value:=DTtgl_pengiriman.text;
      parambyname('parno_kend').Value:=ed_no_kendaraan.Text;
      parambyname('parket').Value:=MemoKet.Text;
      parambyname('parupdate_date').Value:=NOW;
//      parambyname('parupdate_by').Value:=FMainMenu.ST.Panels[4].Text;
      parambyname('parpelanggan').Value:=Dm.QTemp2.FieldByName('kode_pelanggan').AsString;
      ExecSql;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    Flist_sp_muat.Refresh;
  end
  else if dm.Qtemp.RecordCount>0 then
  begin
    MessageDlg('Gagal Ubah, Surat Perintah Muat No. '+Ed_no_sp_muat.Text+' sudah masuk kepenjualan !!!',mtInformation,[mbCancel],0);
  end;
end;

procedure TFinput_sp_muat.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFinput_sp_muat.BSimpanClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
  try
  if DTtgl_sp_muat.Text='' then
  begin
    MessageDlg('Tanggal SP Muat Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if DTtgl_pengiriman.Text='' then
  begin
    MessageDlg('Tanggal Pengiriman Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if ed_no_kendaraan.Text='' then
  begin
    MessageDlg('No Kendaraan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if Status = 0 then
  begin
    Save;
    Dm.Koneksi.Commit;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    Flist_sp_muat.Refresh;
  end
  else if Status = 1 then
  begin
    Update;
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

procedure TFinput_sp_muat.Clear;
begin
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='Delete From t_sp_muat_detail_temp';
    ExecSQL;
  end;
  Qtemp_spmuat_detail.Close;
  Qtemp_spmuat_detail.Open;
  Memdetail.Close;
  Memdetail.Open;
  Memdetail.EmptyTable;
  ed_no_kendaraan.Text:='';
  DTtgl_sp_muat.Date:=now;
  DTtgl_pengiriman.Date:=now;
  MemoKet.Text:='';
  edpelanggan.Text:='';
  Ed_no_sp_muat.Text:='';
end;

procedure TFinput_sp_muat.DBGridnewspmuatColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  {Fnewspmuatperpo.Memdetail.EmptyTable;
  Fnewspmuatperpo.Edno_po.Text:='';
  Fnewspmuatperpo.ShowModal;   10-10-2023}
end;

procedure TFinput_sp_muat.DTtgl_pengirimanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    ed_no_kendaraan.SetFocus;
  end;
end;

procedure TFinput_sp_muat.DTtgl_sp_muatKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    DTtgl_pengiriman.SetFocus;
  end;
end;

procedure TFinput_sp_muat.EdprodukKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Btn_show_produkClick(sender);
  end;
end;

procedure TFinput_sp_muat.ed_no_kendaraanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(13) then
  begin
    MemoKet.SetFocus;
  end;
end;

procedure TFinput_sp_muat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qtemp_spmuat_detail.Close;
  Action:=cafree;
end;

procedure TFinput_sp_muat.FormCreate(Sender: TObject);
begin
  RealFinput_sp_muat:=self;
end;

procedure TFinput_sp_muat.FormDestroy(Sender: TObject);
begin
  RealFinput_sp_muat:=nil;
end;

procedure TFinput_sp_muat.FormShow(Sender: TObject);
begin
  Memdetail.Close;
  Memdetail.Open;
end;

procedure TFinput_sp_muat.RzBitBtn1Click(Sender: TObject);
begin
  if DBGridnewspmuat.Fields[6].AsString='' then
  begin
    MessageDlg('Data kosong, tidak dapat dihapus..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Delete From t_sp_muat_detail_temp where id = '+QuotedStr(DBGridnewspmuat.Fields[6].AsString);
      execsql;
    end;
    Qtemp_spmuat_detail.Close;
    Qtemp_spmuat_detail.Open;
    Memdetail.Close;
    Memdetail.Open;
  end;
end;

procedure TFinput_sp_muat.RzBitBtn2Click(Sender: TObject);
begin
  status_browse_pelanggan:= 6;
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFinput_sp_muat.Btn_show_produkClick(Sender: TObject);
begin
  {Fnewspmuatperpo.Memdetail.EmptyTable;
  Fnewspmuatperpo.Edno_po.Text:='';
  Fnewspmuatperpo.ShowModal;           10-10-2023 }
end;


end.
