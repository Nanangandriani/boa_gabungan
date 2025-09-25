unit UPerhitunganAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, ComCtrls, RzButton, ExtCtrls, RzPanel,
  RzCmboBx, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Db, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  uJSON,DBGridEh, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Buttons, IdIOHandlerStack, IdSSL, Vcl.Samples.Gauges;

type
  TFPerhitunganAsset = class(TForm)
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    bt_Proses: TRzBitBtn;
    bt_Tutup: TRzBitBtn;
    GroupBox1: TGroupBox;
    edKodeAsset: TEdit;
    edNamaAsset: TEdit;
    dtTanggalAkuisisi: TDateTimePicker;
    edBiayaAkuisisi: TRzNumericEdit;
    MemKeterangan: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    cbMetode: TComboBox;
    edPersen: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edNilaiBeli: TRzNumericEdit;
    Label9: TLabel;
    edNilaiResidu: TRzNumericEdit;
    dtAwalSusut: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    edNilaiHasil: TRzNumericEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cbKelompok: TRzComboBox;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    MemRincian: TMemTableEh;
    Label16: TLabel;
    edJumlahItem: TRzNumericEdit;
    http: TIdHTTP;
    Label17: TLabel;
    cbNamaHarta: TRzComboBox;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    edKodeKredit: TEdit;
    edNamaKredit: TEdit;
    btHitung: TRzBitBtn;
    btClear: TRzBitBtn;
    edSatuan: TEdit;
    edMasaTahun: TRzNumericEdit;
    edTambahMasaBulan: TRzNumericEdit;
    Label19: TLabel;
    Label20: TLabel;
    edKodeDebit: TEdit;
    SpeedButton2: TSpeedButton;
    edNamaDebit: TEdit;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Gauge1: TGauge;
    procedure cbKelompokChange(Sender: TObject);
    procedure edNilaiResiduChange(Sender: TObject);
    procedure btHitungClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure bt_TutupClick(Sender: TObject);
    procedure bt_ProsesClick(Sender: TObject);
    procedure SumRincian;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbNamaHartaChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edKodeAssetChange(Sender: TObject);
    procedure edMasaTahunChange(Sender: TObject);
    procedure edBiayaAkuisisiChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     vNilaiPerbulan, vJumlah, vHargaSatuan, Total,NoRec : real;
     vTotalBulan,vTotalTahun :Integer;
     vKodeAsset, vSatuan, vFaktur_Pembelian, vInv_Pembelian, vKode_Supp, vKode_Brg, vKodeKelPenyusutan, vKodeNamaHarta,
     ID_PENGAJUAN_ASSET, NO_PENGAJUAN_ASSET, ID_DETAIL_ASSET, SPESIFIKASI_ASSET  : string;
     next_proses:boolean;
  end;

var
  FPerhitunganAsset: TFPerhitunganAsset;
  json: TMyJSON;

implementation

uses uLkJSON, UMainMenu, DateUtils, uMy_Function, Math, u_master_asset2,
  UPengajuanAsset, UDataModule, UCari_DaftarPerk;// off 23-05-2025, u_dafperkiraan, u_otorisasi;

{$R *.dfm}    

function UpdateStatusAssetViaPost(vid_detpengajuan,vkode_asset,vdesc,vstatus,vuser,vlpb,vpo,vspesification,vbrand,vinvoice:string; vpurchase_date:TDateTime; vqty,vJumTahun:integer; vpurchase_value:real): string;
var
  key,url,s,BaseUrl,Vpath,Vtoken,str : string;
  vBody,vBody2,KetAlasan  : string;
  jumdata : Real;
  xxx: Integer;
  cnt: Integer;
  iii: Integer;
  sss, row, row1, row2: String;
  res: String;
  date : TDate;
      //component
      gNet          :TIdHTTP;
      //respon component
      httpresult    : TIdHTTP ;
      resp: TMemoryStream;
      slParam   : TStringStream;
      //slParams : TStringStream;
begin     
      resp := TMemoryStream.Create;
      BaseUrl:=SelectRow('SELECT value FROM parameter where id=''baseurlasset''');
      key:=SelectRow('SELECT value FROM parameter where id=''keyapiasset''');
      vtoken:=SelectRow('SELECT value FROM parameter where id=''tokenapiasset''');
      Vpath:='api/submission/update';

      vBody:='{'+
             '"id":"'+vid_detpengajuan+'",'+
             '"asset_code_ex":"'+vkode_asset+'",'+
             '"desc":"'+vdesc+'",'+
             '"status":"'+vstatus+'",'+
             '"user":"'+vuser+'",'+
             '"lpb":"'+vlpb+'",'+
             '"po":"'+vpo+'",'+  
             '"asset_usage_period":"'+IntToStr(vJumTahun)+'",'+
             '"asset_usage_period_unit":"Tahun",'+
             '"qty":"'+IntToStr(vqty)+'",'+
             '"spesification":"'+vspesification+'",'+
             '"brand":"'+vbrand+'",'+
             '"invoice":"'+vinvoice+'",'+
             '"purchase_date":"'+formatdatetime('yyyy-mm-dd',vpurchase_date)+'",'+
             '"purchase_value":"'+FloatToStr(vpurchase_value)+'"'+
             '}';

      url:= BaseUrl+Vpath;
      slParam := TStringStream.Create('{'+
                                      '"id":"'+vid_detpengajuan+'",'+
                                      '"asset_code_ex":"'+vkode_asset+'",'+
                                      '"desc":"'+vdesc+'",'+
                                      '"status":"'+vstatus+'",'+
                                      '"user":"'+vuser+'",'+
                                      '"lpb":"'+vlpb+'",'+
                                      '"po":"'+vpo+'",'+
                                      '"asset_usage_period":"'+IntToStr(vJumTahun)+'",'+
                                      '"asset_usage_period_unit":"Tahun",'+
                                      '"qty":"'+IntToStr(vqty)+'",'+
                                      '"spesification":"'+vspesification+'",'+
                                      '"brand":"'+vbrand+'",'+
                                      '"invoice":"'+vinvoice+'",'+
                                      '"purchase_date":"'+formatdatetime('yyyy-mm-dd',vpurchase_date)+'",'+
                                      '"purchase_value":"'+FloatToStr(vpurchase_value)+'"'+
                                      '}');

      TRY
      gNet :=  TIdHTTP.Create(nil);
      gNet.HandleRedirects := true;
      gNet.ReadTimeout := 5000;
      gNet.Request.Accept := 'application/form-data';
      gNet.Request.CustomHeaders.Values[key] := Vtoken;
      gNet.Request.ContentType := 'application/json';
      //res:=  gNet.get(url);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , false, url+vBody);
      UpdateLogErrorAPI(BaseUrl , Vpath , vtoken , True, url+vBody);
      //Result := gNet.get(url);
      Result := gNet.Post(url, slParam);
      //res:=  gNet.Post(url, slParam);
      slParam.Position := 0;
      finally
       resp.Free;
       slParam.free;
      end;
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

function NamaBulan(Bulan: Integer): string;
const
  Nama: array[1..12] of string =
    ('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni',
     'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');
begin
  if (Bulan >= 1) and (Bulan <= 12) then
    Result := Nama[Bulan]
  else
    Result := 'Bulan tidak valid';
end;

procedure TFPerhitunganAsset.SumRincian;
begin
try
  MemRincian.DisableControls;
  MemRincian.First;
  Total := 0;
  NoRec := 0;
  While not(MemRincian.EOF) do begin
    Total := Total + MemRincian['JUMLAH'];  
    NoRec := NoRec + 1;
    MemRincian.Next;
  end;
finally
  MemRincian.EnableControls;
  //Label16.Caption:=FloatToStr(Total);
end;
end;

procedure TFPerhitunganAsset.cbKelompokChange(Sender: TObject);
begin
  if cbKelompok.ItemIndex<1 then
  begin
    ShowMessage('Silakan Pilih Kelompok Penyusutan...');
    exit;
  end;

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset where id='+QuotedStr(IntToStr(cbKelompok.ItemIndex)));
      open;
    end;

    edMasaTahun.Text:=dm.Qtemp.fieldbyname('masa_tahun').value;
    edTambahMasaBulan.value:=0;
    edPersen.Text:=dm.Qtemp.fieldbyname('persentase_garis_lurus').value;
    edNilaiResidu.VALUE:=0;
    edNilaiHasil.value:=((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.Value));
    vNilaiPerbulan:=Round((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.Value));
    vTotalBulan:=((StrToInt(edMasaTahun.text)*12)+StrToInt(edTambahMasaBulan.Text));
    vTotalTahun:=StrToInt(edMasaTahun.text);
    vKodeKelPenyusutan:=dm.Qtemp.fieldbyname('kode').value;

    ///
    
   with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tmaster_harta_asset order by id');
      open;
      first;
    end;

    cbNamaHarta.Clear;
    cbNamaHarta.Items.add('');
    while not dm.Qtemp.eof do
    begin
      cbNamaHarta.Items.add(dm.Qtemp.fieldbyname('nama_harta').AsString);
      dm.Qtemp.Next;
    end;
    cbNamaHarta.itemindex:=0;
    //
end;

procedure TFPerhitunganAsset.edNilaiResiduChange(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset where id='+QuotedStr(IntToStr(cbKelompok.ItemIndex)));
      open;
    end;

  edNilaiHasil.value:=((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.value));
  vNilaiPerbulan:=Round((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.value));
end;

procedure TFPerhitunganAsset.btHitungClick(Sender: TObject);
var
NoRec,i,ii,a:integer;
JumlahWeek: String;
//perbulan: ('12',24,36,48,60,72,84,96,108,120,132,144,156,168,180,192,204,216,228,240);
begin
  //vTotalBulan:=24;
  //if Length(cbKelompok.Text)=0 then
  if cbKelompok.ItemIndex<1 then
  begin
    //ShowMessage(InttoSTR(cbKelompok.ItemIndex));
    ShowMessage('XXSilakan Pilih Kelompok Penyusutan...');
    exit;
  end;


  NoRec:=0;
  MemRincian.EmptyTable;
  MemRincian.active:=true;
    // --- Set Progress Bar / Gauge ---
  Gauge1.MinValue := 0;
  Gauge1.MaxValue := vTotalBulan;
  Gauge1.Progress := 0;
  Gauge1.Visible := True; // pastikan terlihat

  for i:=0  to vTotalBulan-1  do
  //for vTotalBulan to i:=1 do
  begin
     with FPerhitunganAsset do
     begin
      MemRincian.insert;
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add('select id,jumlah_bulan from t_asset_hitung_bulan order by id asc');
        open;
        first;
      end;

      while not dm.Qtemp.eof do
      begin
        if (MonthOf(dtAwalSusut.Date))+i <= 12 then
        begin
          MemRincian['ANGKABULAN']:=(MonthOf(dtAwalSusut.Date))+i;
          MemRincian['NAMABULAN']:=NamaBulan((MonthOf(dtAwalSusut.Date))+i);
          MemRincian['TAHUN']:=(YearOf(dtAwalSusut.Date));
          MemRincian['JUMLAH']:=vNilaiPerbulan;
          MemRincian['NOURUT']:=i;
          {JumlahWeek:=SelectRow('SET @date:='+QuotedStr((YearOf(dtAwalSusut.Date))+'-'+(MonthOf(dtAwalSusut.Date))+i'-01'+)'; '+
                                'SELECT WEEK(LAST_DAY(@date)) - WEEK(DATE_SUB(@date, INTERVAL DAYOFMONTH(@date)-1 DAY));'); }

        end;
        if (MonthOf(dtAwalSusut.Date))+i > dm.Qtemp.FieldByName('jumlah_bulan').value then
        begin
          MemRincian['ANGKABULAN']:=(MonthOf(dtAwalSusut.Date))+i-dm.Qtemp.FieldByName('jumlah_bulan').value;
          MemRincian['NAMABULAN']:=NamaBulan((MonthOf(dtAwalSusut.Date))+i-dm.Qtemp.FieldByName('jumlah_bulan').value);
          MemRincian['TAHUN']:=(YearOf(dtAwalSusut.Date))+dm.Qtemp.FieldByName('id').value;
          MemRincian['JUMLAH']:=vNilaiPerbulan;
          MemRincian['NOURUT']:=i;
        end;
      dm.Qtemp.Next; //Looping Bulan Dalam 1 Tahun
      end;
     MemRincian.Post;
     end; //Insert Ke Grid
        Gauge1.Progress := i + 1;
  end; //Stop Looping Bulan

  MemRincian.SortByFields('NOURUT');
  MemRincian.Active:=true;
  Gauge1.Progress := Gauge1.MaxValue;
  ShowMessage('Proses perhitungan selesai.');
end;

procedure TFPerhitunganAsset.btClearClick(Sender: TObject);
begin 
  MemRincian.EmptyTable;
  MemRincian.active:=true;
end;

procedure TFPerhitunganAsset.bt_TutupClick(Sender: TObject);
begin
  UpdateStatusAssetViaPost(ID_DETAIL_ASSET, edKodeAsset.text, MemKeterangan.Text, '3',nm, vFaktur_Pembelian, '0', '0', '0', vInv_Pembelian, dtTanggalAkuisisi.date, 0, vTotalTahun, vHargaSatuan );
  Close;
end;

procedure TFPerhitunganAsset.bt_ProsesClick(Sender: TObject);
begin
  if cbKelompok.ItemIndex<1 then
  begin
    ShowMessage('Silakan Pilih Kelompok Penyusutan...');
    exit;
  end;

  if cbNamaHarta.ItemIndex=0 then
  begin
    ShowMessage('Silakan Pilih Nama Harta...');
    exit;
  end;

  if edKodeKredit.Text='' then
  begin
    ShowMessage('Silakan Pilih Nama Akun Kredit Perkiraan...');
    exit;
  end;

  if edKodeDebit.Text='' then
  begin
    ShowMessage('Silakan Pilih Nama Akun Debit Perkiraan...');
    exit;
  end;
 SumRincian;
             
       
 if MemRincian.RecordCount=0 then
 begin
  ShowMessage('Tidak Dapat Diproses Dikarekan Belum Hitung Rincian Asset...');
  exit;
 end;


 //Validasi Record Grid harus sama dengan jumlah bulan
 if NoRec<> vTotalBulan then
 begin                          
  //ShowMessage('Record:'+FloatToStr(NoRec)+' dan Bulan:'+FloatToStr(vTotalBulan));
  ShowMessage('Tidak Dapat Diproses Dikarekan Masa Penyutan Tidak Balance...');
  exit;
 end;

 //Validasi Total Grid dengan Total Penyusutan Harus Sama
 if Total<> edNilaiBeli.value then
 begin
  //ShowMessage('TOTAL:'+FloatToStr(Total)+' dan Nilai:'+FloatToStr(edNilaiBeli.value));
  ShowMessage('Tidak Dapat Diproses Dikarekan Nilai Penyusutan Tidak Balance...');
  exit;
 end;


 //exit;
 //delete record kosong

 if application.MessageBox('Apa Anda Yakin Akan Menyimpan Data Ini..!!','confirm',mb_yesno or mb_iconquestion)=id_yes then
 begin 
  next_proses:=true;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' select * from tmaster_asset where '+
            ' kode_asset='+QuotedStr(edKodeAsset.Text)+' or '+
            ' kode_inv_kode_barang='+QuotedStr(edKodeAsset.Text));
    open;
  end;

  if dm.Qtemp.RecordCount<>0 then //Otorisasi Untuk Ubah Asset
  begin
    ShowMessage('Maaf, Kode Asset Anda Sudah Terdaftar, Silakan Lakukan Otorisasi Untuk Merubah Data Asset...');
    next_proses:=false;
  {off 23-05-2025  frmotorisasi.vcall:='ubah_asset';
    frmotorisasi.edit1.clear;
    frmotorisasi.edit2.clear;
    frmotorisasi.showmodal;   }
    //exit;
  end;

  //if dm.Qtemp.RecordCount=0 then
  if next_proses=true then
  begin
    with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into tmaster_asset ('+
              ' kode_asset, kode_inv_kode_barang, no_inv_beli, no_faktur_beli, kodesupp, kode_barang, nama_barang, '+
              ' tgl_beli, jumlah, satuan, hargasatuan, kode_kel_penyusutan, nama_kelompok_penyusutan, '+
              ' kode_nama_harta, nama_harta, kodekredit, kodedebit,'+
              ' id_pengajuan_asset, no_pengajuan_asset, id_detail_asset, spesifikasi_asset, '+
              ' tgl_susut, masa_bulan, masa_tahun, tambah_masa_bulan, sumber_id, persentase_garis_lurus, total_harga_beli, nilai_residu, '+
              ' nilai_penyusutan_perbulan, user_create, create_at) values ('+
              ' '+QuotedStr(vKodeAsset)+', '+
              ' '+QuotedStr(edKodeAsset.Text)+', '+
              ' '+QuotedStr(vInv_Pembelian)+', '+
              ' '+QuotedStr(vFaktur_Pembelian)+', '+
              ' '+QuotedStr(vKode_Supp)+', '+
              ' '+QuotedStr(vKode_Brg)+', '+
              ' '+QuotedStr(edNamaAsset.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggalAkuisisi.date))+', '+
              ' '+QuotedStr(FloatToStr(vJumlah))+', '+
              ' '+QuotedStr(vSatuan)+', '+
              ' '+QuotedStr(FloatToStr(vHargaSatuan))+', '+
              ' '+QuotedStr(vKodeKelPenyusutan)+', '+
              ' '+QuotedStr(cbKelompok.Text)+', '+
              ' '+QuotedStr(vKodeNamaHarta)+', '+
              ' '+QuotedStr(cbNamaHarta.Text)+', '+
              ' '+QuotedStr(edKodeKredit.Text)+', '+
              ' '+QuotedStr(edKodeDebit.Text)+', '+
              ' '+QuotedStr(ID_PENGAJUAN_ASSET)+', '+
              ' '+QuotedStr(NO_PENGAJUAN_ASSET)+', '+
              ' '+QuotedStr(ID_DETAIL_ASSET)+', '+
              ' '+QuotedStr(SPESIFIKASI_ASSET)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAwalSusut.date))+', '+
              ' '+QuotedStr(FloatToStr(vTotalBulan))+', '+
              ' '+QuotedStr(edMasaTahun.Text)+', '+
              ' '+QuotedStr(edTambahMasaBulan.Text)+', '+
              ' '+QuotedStr(IntToStr(frm_master_asset.cbSumber_Asset.ItemIndex))+', '+
              ' '+QuotedStr(edPersen.Text)+', '+
              ' '+QuotedStr(inttostr(HapusFormat(edNilaiBeli)))+', '+
              ' '+QuotedStr(inttostr(HapusFormat(edNilaiResidu)))+', '+
              ' '+QuotedStr(inttostr(HapusFormat(edNilaiHasil)))+', '+
              ' '+QuotedStr(nm)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd hh:nn:dd',now()))+' '+
              ' ) ';
    ExecSQL ;
    end;

  //looping rincian
  MemRincian.First;
  while not MemRincian.Eof do
  begin
    with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into tdetail_rincian_asset ('+
              ' kode_asset, kode_inv_kode_barang, no_inv_beli, nomor_urut, bulan_angka, '+
              ' bulan_nama, tahun, jumlah, user_create, '+
              ' create_at) values ('+
              ' '+QuotedStr(vKodeAsset)+', '+
              ' '+QuotedStr(edKodeAsset.Text)+', '+
              ' '+QuotedStr(vInv_Pembelian)+', '+
              ' '+QuotedStr(MemRincian['NOURUT'])+', '+
              ' '+QuotedStr(MemRincian['ANGKABULAN'])+', '+
              ' '+QuotedStr(MemRincian['NAMABULAN'])+', '+
              ' '+QuotedStr(MemRincian['TAHUN'])+', '+
              ' '+QuotedStr(MemRincian['JUMLAH'])+', '+
              ' '+QuotedStr(nm)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd hh:nn:dd',now()))+' '+
              ' ) ';
    ExecSQL ;
    end;
  MemRincian.Next;
  end;


  //update status pembelian
    with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Update t_purchase_invoice_det '+
              ' SET flg_crate_asset=1 '+
              ' WHERE '+
              ' trans_no='+QuotedStr(vInv_Pembelian)+' AND'+
              ' item_stock_code='+QuotedStr(vKode_Brg)+' ';
    ExecSQL ;
    end;

    //update status non pembelian
    with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Update t_non_pembelian_asset '+
              ' SET flg_crate_asset=1 '+
              ' WHERE '+
              ' "NO_INV_SUPP"='+QuotedStr(vInv_Pembelian)+' AND'+
              ' "NOASSET"='+QuotedStr(vKodeAsset)+' ';
    ExecSQL ;
    end;

    //UpdateStatusAsset(ID_PENGAJUAN_ASSET, '3', vInv_Pembelian, vFaktur_Pembelian, true);
    UpdateStatusAssetViaPost(ID_DETAIL_ASSET, edKodeAsset.text, MemKeterangan.Text, '3',nm, vFaktur_Pembelian, '0', '0', '0', vInv_Pembelian, dtTanggalAkuisisi.date, 0, vTotalTahun, vHargaSatuan );
    //UpdateStatusAssetViaPost(vid_detpengajuan,vdesc,vstatus,vuser,vlpb,vpo,vspesification,vbrand,vinvoice:string; vpurchase_date:date vqty:integer vpurchase_value:real): string;

  // off 23-05-2025  UpdateKpiUser('MENEJEMEN ASSET' ,'insert' , '1' , True, 'Membuat Asset '+FPerhitunganAsset.vKodeAsset+'');

    ShowMessage('Data Berhasil Disimpan..');
    frm_master_asset.MemMasterDaftarAsset.EmptyTable;
    frm_master_asset.MemMasterDaftarAsset.active:=true;
    close;
  end;    //end Dilakukan Insert
 end;
end;

procedure TFPerhitunganAsset.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin 
    {frm_master_asset.MemMasterDaftarAsset.EmptyTable;
    frm_master_asset.MemMasterDaftarAsset.active:=true;
    close;}
end;


procedure TFPerhitunganAsset.cbNamaHartaChange(Sender: TObject);
begin
  if cbNamaHarta.ItemIndex=0 then
  begin
    ShowMessage('Silakan Pilih Nama Harta...');
    exit;
  end;

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tmaster_harta_asset where id='+QuotedStr(IntToStr(cbNamaHarta.ItemIndex)));
      open;
    end;

    vKodeNamaHarta:=dm.Qtemp.fieldbyname('kd_nama_harta').value;
    if ((dm.Qtemp.fieldbyname('kodekredit').value<>'') or (dm.Qtemp.fieldbyname('kodekredit').value<>'0')) then //baca akun kredit
    begin
      edKodeKredit.Text:=SelectRow('Select code from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kodekredit').value)+'');
      edNamaKredit.Text:=SelectRow('Select Account_name from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kodekredit').value)+'');
    end;
    if ((dm.Qtemp.fieldbyname('kodedebit').value<>'') or (dm.Qtemp.fieldbyname('kodedebit').value<>'0')) then //baca akun debit
    begin
      edKodeDebit.Text:=SelectRow('Select code from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kodedebit').value)+'');
      edNamaDebit.Text:=SelectRow('Select Account_name from t_ak_account where code='+QuotedStr(dm.Qtemp.fieldbyname('kodedebit').value)+'');
    end;
    
end;

procedure TFPerhitunganAsset.SpeedButton1Click(Sender: TObject);
begin
  {off 23-05-2025 fdafperkiraan.vpanggil :='assetkre';
  fdafperkiraan.Show; }
  FCari_DaftarPerk.Show;
  FCari_DaftarPerk.vpanggil :='assetkr';
end;

procedure TFPerhitunganAsset.edKodeAssetChange(Sender: TObject);
begin
  vKodeAsset:=edKodeAsset.text;
end;

procedure TFPerhitunganAsset.edMasaTahunChange(Sender: TObject);
begin
    //if ( (cbKelompok.ItemIndex<>0) and (edMasaTahun.value<>0) and (edTambahMasaBulan.value<>0)) then
    if ( (cbKelompok.ItemIndex>0)) then
    begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset where id='+QuotedStr(IntToStr(cbKelompok.ItemIndex)));
      open;
    end;
    //showmessage(floattostr(edMasaTahun.value));
    //edMasa.value:=dm.Qtemp.fieldbyname('masa_tahun').value;
    edPersen.Text:=dm.Qtemp.fieldbyname('persentase_garis_lurus').value;
    edNilaiResidu.VALUE:=0;
    edNilaiHasil.value:=((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.Value));
    vNilaiPerbulan:=Round((edNilaiBeli.value-edNilaiResidu.VALUE)/((edMasaTahun.value*12)+edTambahMasaBulan.Value));
    vTotalBulan:=((StrToInt(edMasaTahun.text)*12)+StrToInt(edTambahMasaBulan.Text));
    vTotalTahun:=StrToInt(edMasaTahun.text);
    vKodeKelPenyusutan:=dm.Qtemp.fieldbyname('kode').value;
  end;
end;

procedure TFPerhitunganAsset.edBiayaAkuisisiChange(Sender: TObject);
begin
  edNilaiBeli.Value:=edBiayaAkuisisi.Value;
  edNilaiHasil.value:=0; 
  MemRincian.EmptyTable;
  MemRincian.active:=true;
end;

procedure TFPerhitunganAsset.SpeedButton2Click(Sender: TObject);
begin
  {off 23-05-2025 fdafperkiraan.vpanggil :='assetdeb';
  fdafperkiraan.Show;}
  FCari_DaftarPerk.Show;
  FCari_DaftarPerk.vpanggil :='assetdb';
end;

end.


