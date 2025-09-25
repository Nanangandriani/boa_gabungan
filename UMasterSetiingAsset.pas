unit UMasterSetiingAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls, RzPanel, ComCtrls,
  MemTableDataEh, Db, MemTableEh, RzButton, StdCtrls, Buttons, RzCmboBx,
  DataDriverEh, MemDS, DBAccess, Uni;

type
  TFMasterSetingAsset = class(TForm)
    PageControl1: TPageControl;
    TabKategori: TTabSheet;
    RzPanel4: TRzPanel;
    Panel4: TPanel;
    DBGridEhKategori: TDBGridEh;
    TabNamaHarta: TTabSheet;
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    DBGridEhNamaHarta: TDBGridEh;
    dsTabKategori: TDataSource;
    MemTabKategori: TMemTableEh;
    dsTabNamaHarta: TDataSource;
    MemTabNamaHarta: TMemTableEh;
    MemTabKategoriid: TSmallintField;
    MemTabKategorikode: TStringField;
    MemTabKategorikelompok: TStringField;
    MemTabKategorimasa_bulan: TStringField;
    MemTabKategorimasa_tahun: TStringField;
    MemTabKategoripersentase_garis_lurus: TCurrencyField;
    MemTabKategoripersentase_saldo_menurun: TCurrencyField;
    MemTabNamaHartaid: TStringField;
    MemTabNamaHartakd_nama_harta: TStringField;
    MemTabNamaHartanama_harta: TStringField;
    Label6: TLabel;
    edKodeKelompok: TEdit;
    edNamaKelompok: TEdit;
    edMasaBulan: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    edMasaTahun: TEdit;
    Label1: TLabel;
    btSimpanKel: TRzBitBtn;
    btBatalKel: TRzBitBtn;
    Label2: TLabel;
    edKodeHarta: TEdit;
    edNamaHarta: TEdit;
    edAkunKredit: TEdit;
    edNamaPerkKredit: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btSimpanHarta: TRzBitBtn;
    btBatalHarta: TRzBitBtn;
    SpeedButton1: TSpeedButton;
    TabListDataAsset: TTabSheet;
    RzPanel6: TRzPanel;
    Panel2: TPanel;
    btProses: TRzBitBtn;
    DBGridEh3: TDBGridEh;
    dsDaftarAsset: TDataSource;
    QDaftarAsset: TUniQuery;
    MemDaftarAsset: TMemTableEh;
    dstDaftarAsset: TDataSetDriverEh;
    Panel6: TPanel;
    btTampilkanPustJthTempo: TRzBitBtn;
    btKirimPustJthTempo: TRzBitBtn;
    ckTandai: TCheckBox;
    cbNamaHarta: TRzComboBox;
    cbKelompok: TRzComboBox;
    cbSumber_Asset: TRzComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edAkunDebit: TEdit;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    edNamaPerkDebit: TEdit;
    MemTabNamaHartakodekredit: TStringField;
    MemTabNamaHartanamakredit: TStringField;
    MemTabNamaHartakodedebit: TStringField;
    MemTabNamaHartanamadebit: TStringField;
    procedure SimpanHarta;
    procedure UpdateHarta;
    procedure SimpanKel;
    procedure UpdateKel;
    procedure RefreshTab;
    procedure PageControl1Change(Sender: TObject);
    procedure btBatalKelClick(Sender: TObject);
    procedure btSimpanKelClick(Sender: TObject);
    procedure DBGridEhKategoriDblClick(Sender: TObject);
    procedure btSimpanHartaClick(Sender: TObject);
    procedure DBGridEhNamaHartaDblClick(Sender: TObject);
    procedure btBatalHartaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btTampilkanPustJthTempoClick(Sender: TObject);
    procedure cbKelompokChange(Sender: TObject);
    procedure cbNamaHartaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btProsesClick(Sender: TObject);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure ckTandaiClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    vpanggil, kdkelompok, kdnama_harta, kodekredit, kodedebit, namakredit, namadebit : string;
  end;

var
  FMasterSetingAsset: TFMasterSetingAsset;

implementation

uses UMainMenu, //u_dafperkiraan, UJurnalMemo,
 UKartuAsset,UPerhitunganAsset, u_master_asset2, UMy_Function,UDataModule;

{$R *.dfm}
       
procedure TFMasterSetingAsset.SimpanHarta;
begin
 with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into tmaster_harta_asset ('+
              ' kd_nama_harta, nama_harta, kodekredit, kodedebit ) values ('+
              ' '+QuotedStr(edKodeHarta.text)+', '+
              ' '+QuotedStr(edNamaHarta.Text)+', '+
              ' '+QuotedStr(edAkunKredit.Text)+', '+
              ' '+QuotedStr(edAkunDebit.Text)+' '+
              ' ) ';
    ExecSQL ;
 end;
    ShowMessage('Data Berhasil Disimpan..');
end;


procedure TFMasterSetingAsset.UpdateHarta;
begin
 with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Update tmaster_harta_asset '+
              ' Set '+
              ' nama_harta='+QuotedStr(edNamaHarta.Text)+', '+
              ' kodekredit='+QuotedStr(edAkunKredit.Text)+', '+
              ' kodedebit='+QuotedStr(edAkunDebit.Text)+' '+
              ' where kd_nama_harta='+QuotedStr(edKodeHarta.text)+'';
    ExecSQL ;
 end;
    ShowMessage('Data Berhasil Diubah..');
end;

procedure TFMasterSetingAsset.SimpanKel;
begin
 with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Insert Into tkelompok_asset ('+
              ' kode, kelompok, masa_bulan, masa_tahun, '+
              ' persentase_garis_lurus, persentase_saldo_menurun) values ('+
              ' '+QuotedStr(edKodeKelompok.text)+', '+
              ' '+QuotedStr(edNamaKelompok.Text)+', '+
              ' '+QuotedStr(edMasaBulan.Text)+', '+  
              ' '+QuotedStr(edMasaTahun.Text)+', '+
              ' '+QuotedStr('0')+', '+
              ' '+QuotedStr('0')+' '+
              ' ) ';
    ExecSQL ;
 end;
    ShowMessage('Data Berhasil Disimpan..');
end;


procedure TFMasterSetingAsset.UpdateKel;
begin
 with dm.Qtemp2 do
    begin
    Close;
    sql.Clear;
    sql.Text:=' Update tkelompok_asset '+
              ' Set kelompok='+QuotedStr(edNamaKelompok.text)+', '+
              ' masa_bulan='+QuotedStr(edMasaBulan.Text)+', '+
              ' masa_tahun='+QuotedStr(edMasaTahun.Text)+', '+
              ' persentase_garis_lurus='+QuotedStr('0')+', '+
              ' persentase_saldo_menurun='+QuotedStr('0')+' '+
              ' Where kode='+QuotedStr(edKodeKelompok.text)+' ';
    ExecSQL ;
 end;
    ShowMessage('Data Berhasil Diubah..');
end;

procedure TFMasterSetingAsset.RefreshTab;
begin
if PageControl1.ActivePageIndex=0 then
begin
vpanggil:='SettingMaster';
edKodeKelompok.Clear;
edNamaKelompok.Clear;
edMasaBulan.Clear;
edMasaTahun.Clear;
edKodeKelompok.ReadOnly:=false;
ckTandai.visible:=false;

  with dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' SELECT * FROM tkelompok_asset ORDER BY id DESC ');
     open;
    end;

  if dm.Qtemp.RecordCount=0 then
  begin
   ShowMessage('Tidak Ditemukan Data');
   exit;
  end;

  if dm.Qtemp.RecordCount<>0 then
  begin
  MemTabKategori.EmptyTable;
  MemTabKategori.active:=true;

  dm.Qtemp.first;
  while not dm.Qtemp.Eof do
    begin
     with FMasterSetingAsset do
     begin
      MemTabKategori.insert;
      MemTabKategori['ID']:=dm.Qtemp.fieldbyname('ID').value;
      MemTabKategori['KODE']:=dm.Qtemp.fieldbyname('KODE').value;
      MemTabKategori['KELOMPOK']:=dm.Qtemp.fieldbyname('KELOMPOK').value;
      MemTabKategori['MASA_BULAN']:=dm.Qtemp.fieldbyname('MASA_BULAN').value;
      MemTabKategori['MASA_TAHUN']:=dm.Qtemp.fieldbyname('MASA_TAHUN').value;
      MemTabKategori['PERSENTASE_GARIS_LURUS']:=dm.Qtemp.fieldbyname('PERSENTASE_GARIS_LURUS').value;
      MemTabKategori['PERSENTASE_SALDO_MENURUN']:=dm.Qtemp.fieldbyname('PERSENTASE_SALDO_MENURUN').value;
      MemTabKategori.Post;
     end;
     //showmessage(dm.Qtemp.fieldbyname('STAT_ORDER').AsString);
    dm.Qtemp.Next;
  end;
    MemTabKategori.active:=false;
    MemTabKategori.active:=true;
  end;
end;

//

if PageControl1.ActivePageIndex=1 then
begin
vpanggil:='SettingMaster';
edKodeHarta.Clear;
edNamaHarta.Clear;
edAkunKredit.Clear;
edNamaPerkKredit.Clear;
edAkunDebit.Clear;
edNamaPerkDebit.Clear;
edKodeHarta.ReadOnly:=false; 
ckTandai.visible:=false;

with dm.Qtemp2 do
    begin
     close;
     sql.clear;
     sql.add(' SELECT a.*, '+
             ' case when KRE.account_name is null then ''0'' else '+
             ' KRE.account_name end NAMAKREDIT, '+
             ' case when DEB.account_name is null then ''0'' else '+
             ' DEB.account_name end NAMADEBIT '+
             ' FROM tmaster_harta_asset a '+
             ' LEFT JOIN t_ak_account_subKRE ON a.KODEKREDIT=KRE.account_code2 '+
             ' LEFT JOIN t_ak_account_subDEB ON a.KODEDEBIT=DEB.account_code2 '+
             ' ORDER BY id DESC ');
     open;
    end;

  if dm.Qtemp2.RecordCount=0 then
  begin
   ShowMessage('Tidak Ditemukan Data');
   exit;
  end;

  if dm.Qtemp2.RecordCount<>0 then
  begin
  MemTabNamaHarta.EmptyTable;
  MemTabNamaHarta.active:=true;

  dm.Qtemp2.first;
  while not dm.Qtemp2.Eof do
    begin
     with fMasterSetingAsset do
     begin
      MemTabNamaHarta.insert;
      MemTabNamaHarta['ID']:=dm.Qtemp2.fieldbyname('ID').value;
      MemTabNamaHarta['KD_NAMA_HARTA']:=dm.Qtemp2.fieldbyname('KD_NAMA_HARTA').value;
      MemTabNamaHarta['NAMA_HARTA']:=dm.Qtemp2.fieldbyname('NAMA_HARTA').value;
      MemTabNamaHarta['KODEKREDIT']:=dm.Qtemp2.fieldbyname('KODEKREDIT').value;
      MemTabNamaHarta['NAMAKREDIT']:=dm.Qtemp2.fieldbyname('NAMAKREDIT').value;
      MemTabNamaHarta['KODEDEBIT']:=dm.Qtemp2.fieldbyname('KODEDEBIT').value;
      MemTabNamaHarta['NAMADEBIT']:=dm.Qtemp2.fieldbyname('NAMADEBIT').value;
      MemTabNamaHarta.Post;
     end;
     //showmessage(dm.Qtemp.fieldbyname('STAT_ORDER').AsString);
    dm.Qtemp2.Next;
  end;
    MemTabNamaHarta.active:=false;
    MemTabNamaHarta.active:=true;
  end;
end;


if PageControl1.ActivePageIndex=2 then  //Data Master Asset
begin
//vpanggil:='list_asset';
   //Load Sumber Asset  
   ckTandai.visible:=false;
   with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tsumber_asset order by id');
      open;
      first;
    end;

    cbSumber_Asset.Clear;
    cbSumber_Asset.Items.add('<<Semua Sumber>>');
    while not dm.Qtemp.eof do
    begin
      cbSumber_Asset.Items.add(dm.Qtemp.fieldbyname('nama').AsString);
      dm.Qtemp.Next;
    end;
    cbSumber_Asset.itemindex:=0;

   //Load Kategori Asset
   with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset order by id');
      open;
      first;
    end;

    cbKelompok.Clear;
    cbKelompok.Items.add('<<Semua Kelompok>>');
    while not dm.Qtemp.eof do
    begin
      cbKelompok.Items.add(dm.Qtemp.fieldbyname('KELOMPOK').AsString);
      dm.Qtemp.Next;
    end;
    cbKelompok.itemindex:=0;
                            
   //Load Nama Harta Asset
   with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tmaster_harta_asset order by id');
      open;
      first;
    end;

    cbNamaHarta.Clear;
    cbNamaHarta.Items.add('<<Semua Nama Harta>>');
    while not dm.Qtemp.eof do
    begin
      cbNamaHarta.Items.add(dm.Qtemp.fieldbyname('NAMA_HARTA').AsString);
      dm.Qtemp.Next;
    end;
    cbNamaHarta.itemindex:=0;

  if (vpanggil='list_asset') or (vpanggil='kartu_asset') or (vpanggil='daftar_asset') then   //Tampil
  begin
    DBGridEh3.Columns[0].Visible:=True; //KODE_ASSET
    DBGridEh3.Columns[1].Visible:=True; //TANGGAL
    DBGridEh3.Columns[2].Visible:=True; //NAMA KELOMPOK
    DBGridEh3.Columns[3].Visible:=True; //NAMA HARTA
    DBGridEh3.Columns[4].Visible:=False; //NAMA AKUN
    DBGridEh3.Columns[5].Visible:=True; //UMUR
    DBGridEh3.Columns[6].Visible:=True; //JUMLAH
    DBGridEh3.Columns[7].Visible:=True; //SATUAN
    DBGridEh3.Columns[8].Visible:=True; //TOTAL
    DBGridEh3.Columns[9].Visible:=False; //NILAI SUSUt
    DBGridEh3.Columns[10].Visible:=True; //SPESIFIKASI
    DBGridEh3.Columns[11].Visible:=False; //PILIH
    Panel6.Visible:=true;       
    Panel2.Visible:=false;
    ckTandai.visible:=false;
    Label9.visible:=true;
    Label10.visible:=true;
    cbSumber_Asset.visible:=true;
    cbKelompok.visible:=true;
  end;
  if vpanggil='list_memorial_asset' then   //Tampil
  begin
    DBGridEh3.Columns[0].Visible:=True; //KODE_ASSET
    DBGridEh3.Columns[1].Visible:=True; //TANGGAL
    DBGridEh3.Columns[2].Visible:=True; //NAMA KELOMPOK
    DBGridEh3.Columns[3].Visible:=True; //NAMA HARTA
    DBGridEh3.Columns[4].Visible:=False; //NAMA AKUN
    DBGridEh3.Columns[5].Visible:=False; //UMUR
    DBGridEh3.Columns[6].Visible:=True; //JUMLAH
    DBGridEh3.Columns[7].Visible:=True; //SATUAN
    DBGridEh3.Columns[8].Visible:=False; //TOTAL
    DBGridEh3.Columns[9].Visible:=True; //NILAI SUSUt
    DBGridEh3.Columns[10].Visible:=False; //SPESIFIKASI
    DBGridEh3.Columns[11].Visible:=True; //PILIH
    Panel6.Visible:=true;
    Panel2.Visible:=true;  
    ckTandai.visible:=true;   
    Label9.visible:=false;
    Label10.visible:=false;
    cbSumber_Asset.visible:=false;
    cbKelompok.visible:=false;
  end;
end;

//
end;

procedure TFMasterSetingAsset.PageControl1Change(Sender: TObject);
begin
  RefreshTab;
end;

procedure TFMasterSetingAsset.btBatalKelClick(Sender: TObject);
begin
RefreshTab;
end;

procedure TFMasterSetingAsset.btSimpanKelClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
   close;
   sql.clear;
   sql.add(' SELECT * FROM tkelompok_asset '+
           ' where kode='+QuotedStr(edKodeKelompok.text)+' '+
           ' ORDER BY id DESC ');
   open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin
    SimpanKel;
  end;

  if dm.Qtemp.RecordCount=1 then
  begin
    UpdateKel;
  end;   
  RefreshTab;
end;

procedure TFMasterSetingAsset.DBGridEhKategoriDblClick(Sender: TObject);
begin 
 with FMasterSetingAsset do
 begin
   edKodeKelompok.Text:=MemTabKategori['kode'];
   edNamaKelompok.Text:=MemTabKategori['kelompok'];
   edMasaBulan.Text:=MemTabKategori['masa_bulan'];
   edMasaTahun.Text:=MemTabKategori['masa_tahun'];
   edKodeKelompok.ReadOnly:=true;
 end;
end;

procedure TFMasterSetingAsset.btSimpanHartaClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
   close;
   sql.clear;
   sql.add(' SELECT * FROM tmaster_harta_asset '+
           ' where kd_nama_harta='+QuotedStr(edKodeHarta.text)+' '+
           ' ORDER BY id DESC ');
   open;
  end;

  if dm.Qtemp.RecordCount=0 then
  begin
    SimpanHarta;
  end;

  if dm.Qtemp.RecordCount=1 then
  begin
    UpdateHarta;
  end; 
  RefreshTab;
end;

procedure TFMasterSetingAsset.DBGridEhNamaHartaDblClick(Sender: TObject);
begin
 with FMasterSetingAsset do
 begin
   edKodeHarta.Text:=MemTabNamaHarta['KD_NAMA_HARTA'];
   edNamaHarta.Text:=MemTabNamaHarta['NAMA_HARTA'];
   edAkunKredit.Text:=MemTabNamaHarta['KODEKREDIT'];
   edNamaPerkKredit.Text:=MemTabNamaHarta['NAMAKREDIT'];
   edAkunDebit.Text:=MemTabNamaHarta['KODEDEBIT'];
   edNamaPerkDebit.Text:=MemTabNamaHarta['NAMADEBIT'];
   edKodeHarta.ReadOnly:=true;
 end;
end;

procedure TFMasterSetingAsset.btBatalHartaClick(Sender: TObject);
begin
  RefreshTab;
end;

procedure TFMasterSetingAsset.SpeedButton1Click(Sender: TObject);
begin
{off 23-05-2025  fdafperkiraan.vpanggil :='settingassetkre';
  fdafperkiraan.Show;    }
end;

procedure TFMasterSetingAsset.btTampilkanPustJthTempoClick(
  Sender: TObject);
  var
  query, status_id, kelompok, nama_harta:string;
begin
  //showmessage(vpanggil);
  if cbSumber_Asset.ItemIndex=0 then
  begin
    status_id:='';
  end
   else
    status_id:=' Where sumber_id='+QuotedStr(IntToStr(cbSumber_Asset.ItemIndex))+' ';

  if (cbSumber_Asset.ItemIndex=0) and (cbKelompok.ItemIndex=0) then
  begin
    kelompok:='';
  end
   else
  if (cbSumber_Asset.ItemIndex=0) and (cbKelompok.ItemIndex<>0) then
  begin
    kelompok:=' Where kode_kel_penyusutan='+QuotedStr(kdkelompok)+' ';
  end
   else
  if (cbSumber_Asset.ItemIndex<>0) and (cbKelompok.ItemIndex<>0) then
  begin
    kelompok:=' and kode_kel_penyusutan='+QuotedStr(kdkelompok)+' ';
  end;

  if (cbNamaHarta.ItemIndex=0) and (cbSumber_Asset.ItemIndex=0) and (cbKelompok.ItemIndex=0) then
  begin
    nama_harta:='';
  end
   else
  if  (cbNamaHarta.ItemIndex<>0) and (cbSumber_Asset.ItemIndex<>0) and (cbKelompok.ItemIndex<>0) then
  begin
    nama_harta:=' and kode_nama_harta='+QuotedStr(kdnama_harta)+' ';
  end
   else
  if  (cbNamaHarta.ItemIndex<>0) and (cbSumber_Asset.ItemIndex=0) and (cbKelompok.ItemIndex<>0) then
  begin
    nama_harta:=' and kode_nama_harta='+QuotedStr(kdnama_harta)+' ';
  end
   else   
  if  (cbNamaHarta.ItemIndex<>0) and (cbSumber_Asset.ItemIndex<>0) and (cbKelompok.ItemIndex=0) then
  begin
    nama_harta:=' and kode_nama_harta='+QuotedStr(kdnama_harta)+' ';
  end
   else
  if  (cbNamaHarta.ItemIndex<>0) and (cbSumber_Asset.ItemIndex=0) and (cbKelompok.ItemIndex=0) then
  begin
    nama_harta:=' WHERE kode_nama_harta='+QuotedStr(kdnama_harta)+' ';
  end;

  {if cbNamaHarta.ItemIndex=0 then
  begin
    nama_harta:='';
  end
   else
    nama_harta:=' Where kode_nama_harta='+QuotedStr(kdnama_harta)+' '; }

  ///

  if (vpanggil='list_asset') or (vpanggil='kartu_asset')  or (vpanggil='daftar_asset')then //Cari Data
  begin
  query:=' Select * from ( '+
         ' SELECT a.kode_asset, a.tgl_susut,kode_kel_penyusutan,	kode_nama_harta, sumber_id, nama_kelompok_penyusutan, nama_harta, '+
         ' kre.account_name as namakredit,  deb.account_name as namadebit, concat(masa_bulan, '' BULAN'') as umur,'+
          'spesifikasi_asset, a.jumlah, '+
         ' satuan, total_harga_beli as total, rin.jumlah as jumlahperbulan FROM tmaster_asset a '+
         ' LEFT JOIN t_ak_account_sub kre ON a.kodekredit=kre.account_code2 '+
         ' LEFT JOIN t_ak_account_sub deb ON a.kodedebit=deb.account_code2  '+
         ' LEFT JOIN tdetail_rincian_asset rin  on a.kode_asset=rin.kode_asset'+
         ' GROUP BY a.kode_asset, a.tgl_susut,kode_kel_penyusutan,	kode_nama_harta, sumber_id,'+
         ' nama_kelompok_penyusutan, nama_harta,  kre.account_name,deb.account_name,masa_bulan, '+
         ' spesifikasi_asset, a.jumlah,  satuan, total_harga_beli, rin.jumlah)a '+
         ' '+status_id+' '+kelompok+' '+nama_harta+' '+
         ' Order By tgl_susut asc';
  end;

  if vpanggil='list_memorial_asset' then //Cari Data
  begin
  query:=' Select * from ( '+
         ' SELECT a.kode_asset, a.tgl_susut,kode_kel_penyusutan,	kode_nama_harta, sumber_id, nama_kelompok_penyusutan, nama_harta, '+
         ' kre.account_name as namakredit,  deb.account_name as namadebit, concat(masa_bulan, '' BULAN'') as umur, spesifikasi_asset, a.jumlah, '+
         ' satuan, total_harga_beli as total, rin.jumlah as jumlahperbulan FROM tmaster_asset a '+
         ' LEFT JOIN t_ak_account_sub kre ON a.kodekredit=kre.account_code2 '+
         ' LEFT JOIN t_ak_account_sub deb ON a.kodedebit=deb.account_code2  '+
         ' LEFT JOIN tdetail_rincian_asset rin  on a.kode_asset=rin.kode_asset '+
     //off 23-05-2025    ' where bulan_angka='+QuotedStr(formatdatetime('m',FJurnalMemo.DateTimePicker1.date))+' '+
     //off 23-05-2025     ' and tahun='+QuotedStr(formatdatetime('yyyy',FJurnalMemo.DateTimePicker1.date))+'  '+
         ' and (voucher is null or voucher=''0'') )a '+
         ' '+status_id+' '+kelompok+' '+nama_harta+' '+
         ' Order By a.tgl_susut asc';
  end;

  //showmessage(query);
  
  if (cbNamaHarta.ItemIndex = 0) and (vpanggil='list_memorial_asset') then
  begin
    ShowMessage('Silakan Pilih Kelompok Asset');
    exit;  
  end;

  with QDaftarAsset do
  begin
   close;
   sql.clear;
   sql.add(query);
   Open;
  end;

  if QDaftarAsset.RecordCount=0 then
  begin
   ShowMessage('Data Tidak Ditemukan');
   MemDaftarAsset.EmptyTable;
   exit;
  end;

  
  if QDaftarAsset.RecordCount<>0 then
  begin
  MemDaftarAsset.EmptyTable;
  MemDaftarAsset.active:=true;

  QDaftarAsset.first;
    while not QDaftarAsset.Eof do
    begin
     with FMasterSetingAsset do
     begin
        MemDaftarAsset.insert;
        MemDaftarAsset['KODE_ASSET']:=QDaftarAsset.fieldbyname('KODE_ASSET').value;
        MemDaftarAsset['TANGGAL']:=QDaftarAsset.fieldbyname('tgl_susut').value;
        MemDaftarAsset['NAMA_KELOMPOK']:=QDaftarAsset.fieldbyname('nama_kelompok_penyusutan').value;
        MemDaftarAsset['NAMA_HARTA']:=QDaftarAsset.fieldbyname('nama_harta').value;
        MemDaftarAsset['NAMASP']:=QDaftarAsset.fieldbyname('NAMAKREDIT').value;
        MemDaftarAsset['UMUR']:=QDaftarAsset.fieldbyname('UMUR').value;
        MemDaftarAsset['SPESIFIKASI_ASSET']:=QDaftarAsset.fieldbyname('SPESIFIKASI_ASSET').value;
        MemDaftarAsset['JUMLAH']:=QDaftarAsset.fieldbyname('JUMLAH').value;
        MemDaftarAsset['SATUAN']:=QDaftarAsset.fieldbyname('SATUAN').value;
        MemDaftarAsset['TOTAL']:=QDaftarAsset.fieldbyname('TOTAL').value;
        MemDaftarAsset['NILAI_SUSUT']:=QDaftarAsset.fieldbyname('jumlahperbulan').value;
        MemDaftarAsset['STAT_APPRV']:=ckTandai.Checked;
        MemDaftarAsset.post;
     end;
    QDaftarAsset.next;
    end;
    MemDaftarAsset.active:=false;
    MemDaftarAsset.active:=true;
  end;

end;

procedure TFMasterSetingAsset.cbKelompokChange(Sender: TObject);
begin
  if cbKelompok.ItemIndex<>0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset where id='+QuotedStr(IntToStr(cbKelompok.ItemIndex)));
      open;
    end;
    kdkelompok:=dm.Qtemp.fieldbyname('kode').value;
  end;
end;

procedure TFMasterSetingAsset.cbNamaHartaChange(Sender: TObject);
begin
  if cbNamaHarta.ItemIndex<>0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tmaster_harta_asset where id='+QuotedStr(IntToStr(cbNamaHarta.ItemIndex)));
      open;
    end;
    kdnama_harta:=dm.Qtemp.fieldbyname('kd_nama_harta').value;
    kodekredit:=dm.Qtemp.fieldbyname('kodekredit').value;
    namakredit:=SelectRow('Select account_name from t_ak_account_sub where account_code='+QuotedStr(kodekredit)+'');
    kodedebit:=dm.Qtemp.fieldbyname('kodedebit').value;
    namadebit:=SelectRow('Select account_name from t_ak_account_sub where account_code='+QuotedStr(kodedebit)+'');
  end;
end;

procedure TFMasterSetingAsset.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin 
   MemDaftarAsset.EmptyTable;
end;

procedure TFMasterSetingAsset.btProsesClick(Sender: TObject);
var           
  query: String;
  total_asset: real;
begin
  //ShowMessage(stat);
  if vpanggil='list_memorial_asset' then
  begin
     with dm.Qtemp2 do
     begin
        Close;
        sql.Clear;
        sql.Text:=' Delete FROM tdetail_rincian_asset_temp where '+
                  ' pic = '+QuotedStr(nm);
        ExecSQL ;
     end;

  total_asset:=0;
  MemDaftarAsset.First;
  while not MemDaftarAsset.Eof do
   begin
     if MemDaftarAsset['STAT_APPRV']=true then
     begin
     with dm.Qtemp2 do
     begin
        Close;
        sql.Clear;
        sql.Text:=' Insert Into tdetail_rincian_asset_temp ('+
                  ' voucher, kode_asset, jumlah, pic, create_at '+
                  ' ) values ('+
             //off 23-05-2025     ' '+QuotedStr(FJurnalMemo.txtbk.text)+', '+
                  ' '+QuotedStr(MemDaftarAsset['KODE_ASSET'])+', '+
                  ' '+QuotedStr(MemDaftarAsset['NILAI_SUSUT'])+', '+
                  ' '+QuotedStr(nm)+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd hh:nn:dd',now()))+')';
        ExecSQL ;
     end;     
     total_asset:=total_asset+MemDaftarAsset['NILAI_SUSUT'];
     end;
     MemDaftarAsset.Next;
   end;
   //cek master asset ambil akun
   //insert akun untuk memorial
    with dm.Qtemp2 do
    begin
     close;
     sql.clear;
   // off 23-05-2025  sql.add('delete from tmemotmp where voucher='+QuotedStr(fjurnalmemo.txtbk.Text)+'');
     Execute;
    end;

    {if not (FJurnalMemo.qmemo.state in[dsedit,dsinsert]) then //kredit
    FJurnalMemo.qmemo.edit;
    FJurnalMemo.qmemovoucher.AsString:=fjurnalmemo.txtbk.Text;
    FJurnalMemo.qmemousername.AsString:=fmainmenu.Username;
    FJurnalMemo.qmemokredit.AsFloat:=total_asset;
    FJurnalMemo.qmemodebit.AsFloat:=0;
    FJurnalMemo.qmemoaccount.AsString:=kodekredit;
    FJurnalMemo.qmemonm_account.AsString:=SelectRow('Select account_code2 from t_ak_account_subwhere account_code2='+QuotedStr(kodekredit)+'');

    if not (FJurnalMemo.qmemo.state in[dsedit,dsinsert]) then //debit
    FJurnalMemo.qmemo.Insert;
    FJurnalMemo.qmemovoucher.AsString:=fjurnalmemo.txtbk.Text;
    FJurnalMemo.qmemousername.AsString:=fmainmenu.Username;
    FJurnalMemo.qmemokredit.AsFloat:=0;
    FJurnalMemo.qmemodebit.AsFloat:=total_asset;
    FJurnalMemo.qmemoaccount.AsString:=kodedebit;
    FJurnalMemo.qmemonm_account.AsString:=SelectRow('Select account_code2 from t_ak_account_subwhere account_code2='+QuotedStr(kodedebit)+'');
    }
    
         with dm.Qtemp2 do
         begin
           close;
           sql.clear;
           sql.add('insert into tmemotmp(voucher,account,nm_account,debit,kredit,username)');
           sql.add('values( '+
         //off 23-05-2025          ' '+QuotedStr(fjurnalmemo.txtbk.Text)+', '+
                   ' '+QuotedStr(kodekredit)+', '+
                   ' '+QuotedStr(namakredit)+', '+
                   ' '+QuotedStr(inttostr(0))+', '+
                   ' '+QuotedStr(FloatToStr(total_asset))+', '+
                   ' '+QuotedStr(nm)+')');
           Execute;
         end;
         with dm.Qtemp2 do
         begin
           close;
           sql.clear;
           sql.add('insert into tmemotmp(voucher,account,nm_account,debit,kredit,username)');
           sql.add('values( '+
         //off 23-05-2025          ' '+QuotedStr(fjurnalmemo.txtbk.Text)+', '+
                   ' '+QuotedStr(kodedebit)+', '+
                   ' '+QuotedStr(namadebit)+', '+
                   ' '+QuotedStr(FloatToStr(total_asset))+', '+
                   ' '+QuotedStr(inttostr(0))+', '+
                   ' '+QuotedStr(nm)+')');
           Execute;
         end;


    {off 23-05-2025    with FJurnalMemo.qmemo do
       begin
        close;
        sql.clear;
        sql.add('select * from tmemotmp where voucher='+QuotedStr(fjurnalmemo.txtbk.Text)+'');
        open;                      }
       end;
       FMasterSetingAsset.close;

  //ShowMessage(FloatToStr(FJurnalMemo.jum_memorial)+'VV'+FloatToStr(total_asset));
  {if FJurnalMemo.jum_memorial<>total_asset then
  begin
  ShowMessage('Maaf, Jumlah Jurnal Dengan Total Penyusutan Tidak Balance...');
  with dm.Qtemp3 do
     begin
        Close;
        sql.Clear;
        sql.Text:=' Delete FROM tdetail_rincian_asset_temp where '+
                  ' pic = '+QuotedStr(FMainMenu.Username);
        ExecSQL ;
     end;
  end;   
  if FJurnalMemo.jum_memorial=total_asset then
  begin
  FMasterSetingAsset.close;
  end;}
  //end; //end list_memorial_asset
end;

procedure TFMasterSetingAsset.DBGridEh3DblClick(Sender: TObject);
begin
  if (vpanggil='kartu_asset') then //Cari Data
  begin
    with FKartuAsset do
    begin
      edKodeAsset.text:=MemDaftarAsset['KODE_ASSET'];
      cbSumber_Asset.itemindex:=FMasterSetingAsset.cbSumber_Asset.ItemIndex;
      cbKelompok.itemindex:=FMasterSetingAsset.cbKelompok.ItemIndex;
      cbNamaHarta.itemindex:=FMasterSetingAsset.cbNamaHarta.ItemIndex;

      cbSumber_Asset.Enabled:=False;
      cbKelompok.Enabled:=False;
      cbNamaHarta.Enabled:=False;   
    end;
    FMasterSetingAsset.close;
  end;
  ////
  if (vpanggil='daftar_asset') then //Cari Data
  begin         
   with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset order by kode');
      open;
      first;
    end;
    
  with dm.Qtemp2 do
  begin
    close;
    sql.clear;
    sql.add(' select * from tmaster_asset where '+
            ' kode_asset='+QuotedStr(MemDaftarAsset['KODE_ASSET'])+' or '+
            ' kode_inv_kode_barang='+QuotedStr(MemDaftarAsset['KODE_ASSET']));
    open;
  end;


  with FPerhitunganAsset do
  begin
    cbKelompok.Clear;
    cbKelompok.Items.add('');
    while not dm.Qtemp.eof do
    begin
      cbKelompok.Items.add(dm.Qtemp.fieldbyname('kelompok').AsString);
      dm.Qtemp.Next;
    end;
      vKodeAsset:=dm.Qtemp2.fieldbyname('kode_asset').AsString;
      edKodeAsset.Text:=dm.Qtemp2.fieldbyname('kode_inv_kode_barang').AsString;
      vInv_Pembelian:=dm.Qtemp2.fieldbyname('no_inv_beli').AsString;
      vFaktur_Pembelian:=dm.Qtemp2.fieldbyname('no_faktur_beli').AsString;
      vKode_Supp:=dm.Qtemp2.fieldbyname('kodesupp').AsString;
      vKode_Brg:=dm.Qtemp2.fieldbyname('kode_barang').AsString;
      edNamaAsset.Text:=dm.Qtemp2.fieldbyname('nama_barang').AsString;
      dtTanggalAkuisisi.date:=dm.Qtemp2.fieldbyname('tgl_beli').AsDateTime;
      vJumlah:=dm.Qtemp2.fieldbyname('jumlah').value;
      vSatuan:=dm.Qtemp2.fieldbyname('satuan').AsString;
      edJumlahItem.value:=dm.Qtemp2.fieldbyname('jumlah').value;
      edSatuan.text:=dm.Qtemp2.fieldbyname('satuan').AsString;
      vHargaSatuan:=dm.Qtemp2.fieldbyname('hargasatuan').value;
      edBiayaAkuisisi.value:=dm.Qtemp2.fieldbyname('total_harga_beli').value;
      vKodeKelPenyusutan:=dm.Qtemp2.fieldbyname('kode_kel_penyusutan').AsString;
      cbKelompok.ItemIndex:=StrToInt(SelectRow('select id from tkelompok_asset where kode='+QuotedSTR(vKodeKelPenyusutan)+''));
      //cbKelompok.ItemIndex:=1;
      //cbKelompok.Text:=dm.Qtemp2.fieldbyname('nama_kelompok_penyusutan').AsString;
      vKodeNamaHarta:=dm.Qtemp2.fieldbyname('kode_nama_harta').AsString;
      cbNamaHarta.Text:=dm.Qtemp2.fieldbyname('nama_harta').AsString;
      edKodeKredit.Text:=dm.Qtemp2.fieldbyname('kodekredit').AsString;
      edNamaKredit.Text:=(SelectRow('select account_name from t_ak_account_sub where account_code2='+QuotedSTR(edKodeKredit.Text)+''));
      edKodeDebit.Text:=dm.Qtemp2.fieldbyname('kodedebit').AsString;
      edNamaDebit.Text:=(SelectRow('select account_name from t_ak_account_sub where account_code2='+QuotedSTR(edKodeDebit.Text)+''));
      ID_PENGAJUAN_ASSET:=dm.Qtemp2.fieldbyname('id_pengajuan_asset').AsString;
      NO_PENGAJUAN_ASSET:=dm.Qtemp2.fieldbyname('no_pengajuan_asset').AsString;
      ID_DETAIL_ASSET:=dm.Qtemp2.fieldbyname('id_detail_asset').AsString;
      SPESIFIKASI_ASSET:=dm.Qtemp2.fieldbyname('spesifikasi_asset').AsString;
      MemKeterangan.Text:=dm.Qtemp2.fieldbyname('spesifikasi_asset').AsString;
      dtAwalSusut.date:=dm.Qtemp2.fieldbyname('tgl_susut').AsDateTime;
      vTotalBulan:=dm.Qtemp2.fieldbyname('masa_bulan').value;
      edMasaTahun.Text:=dm.Qtemp2.fieldbyname('masa_tahun').AsString;
      edTambahMasaBulan.Text:=dm.Qtemp2.fieldbyname('tambah_masa_bulan').AsString;
      frm_master_asset.cbSumber_Asset.ItemIndex:=dm.Qtemp2.fieldbyname('sumber_id').AsInteger;
      edPersen.Text:=dm.Qtemp2.fieldbyname('persentase_garis_lurus').AsString;
      edNilaiBeli.value:=dm.Qtemp2.fieldbyname('total_harga_beli').value;
      edNilaiResidu.value:=dm.Qtemp2.fieldbyname('nilai_residu').value;
      edNilaiHasil.value:=dm.Qtemp2.fieldbyname('nilai_penyusutan_perbulan').value;
      vNilaiPerbulan:=dm.Qtemp2.fieldbyname('nilai_penyusutan_perbulan').value;

      //ShowMessage('OO '+InttoSTR(cbKelompok.ItemIndex));
    edBiayaAkuisisi.Enabled:=true;
    edJumlahItem.Enabled:=true;

    
    //Grid
    MemRincian.EmptyTable;
    MemRincian.active:=true;
    //btHitungClick(Sender);

      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' select * from tdetail_rincian_asset where '+
                ' (kode_asset='+QuotedStr(MemDaftarAsset['KODE_ASSET'])+'  or  '+
                ' kode_inv_kode_barang='+QuotedStr(MemDaftarAsset['KODE_ASSET'])+' ) order by nomor_urut desc');
        open;
        first;
      end;

      while not dm.Qtemp.eof do
      begin    
          MemRincian.insert;
          MemRincian['ANGKABULAN']:=dm.Qtemp.fieldbyname('bulan_angka').value;
          MemRincian['NAMABULAN']:=dm.Qtemp.fieldbyname('bulan_nama').value;
          MemRincian['TAHUN']:=dm.Qtemp.fieldbyname('tahun').value;
          MemRincian['JUMLAH']:=dm.Qtemp.fieldbyname('jumlah').value;
          MemRincian['NOURUT']:=dm.Qtemp.fieldbyname('nomor_urut').value;
          MemRincian.Post;
      dm.Qtemp.Next;
      end;
     //end; //Insert Ke Grid


    
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select * from tdetail_rincian_asset where VOUCHER<>''0'' and '+
              ' (kode_asset='+QuotedStr(MemDaftarAsset['KODE_ASSET'])+' or '+
              ' kode_inv_kode_barang='+QuotedStr(MemDaftarAsset['KODE_ASSET'])+')' );
      open;
    end;
    if dm.Qtemp.RecordCount<>0 then
    begin
      Showmessage('Asset Ini Sudah Melalui Tahap Penyusutan, Anda Hanya Dapat Melihat Detail Tanpa Menyimpan Perubahan...');
      bt_Proses.Enabled:=false;
    end;

    if dm.Qtemp.RecordCount=0 then
    begin
      bt_Proses.Enabled:=true;
    end;
    //
    if cbSumber_Asset.ItemIndex=1 then
    begin
      edMasaTahun.readOnly:=true;
      edTambahMasaBulan.readOnly:=true;
    end;
    
    if cbSumber_Asset.ItemIndex=0 then
    begin
      edMasaTahun.readOnly:=false;
      edTambahMasaBulan.readOnly:=false;
    end;

 end;
    FPerhitunganAsset.show;
    FMasterSetingAsset.close;
  end;
end;

procedure TFMasterSetingAsset.ckTandaiClick(Sender: TObject);
begin
  btTampilkanPustJthTempoClick(Sender);
end;

procedure TFMasterSetingAsset.SpeedButton2Click(Sender: TObject);
begin
  {//off 23-05-2025 fdafperkiraan.vpanggil :='settingassetdeb';
  fdafperkiraan.Show;                }
end;

initialization
  RegisterClass(TFMasterSetingAsset);
end.
