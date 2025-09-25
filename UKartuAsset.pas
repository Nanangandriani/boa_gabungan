unit UKartuAsset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, RzCmboBx, DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, RzPanel, RzButton, Mask, RzEdit, ExtCtrls;

type
  TFKartuAsset = class(TForm)
    Panel2: TPanel;
    edKodeAsset: TRzEdit;
    Panel1: TPanel;
    BCetak: TRzBitBtn;
    BBatal: TRzBitBtn;
    PNJUDUL: TRzPanel;
    frxDBDKartuAsset: TfrxDBDataset;
    Report: TfrxReport;
    dsKartuAsset: TDataSource;
    QKartuAsset: TUniQuery;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cbNamaHarta: TRzComboBox;
    cbKelompok: TRzComboBox;
    cbSumber_Asset: TRzComboBox;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    QKartuAssetkode_asset: TStringField;
    QKartuAssettgl_susut: TDateField;
    QKartuAssetkode_kel_penyusutan: TStringField;
    QKartuAssetkode_nama_harta: TStringField;
    QKartuAssetsumber_id: TIntegerField;
    QKartuAssetnama_kelompok_penyusutan: TStringField;
    QKartuAssetnama_harta: TStringField;
    QKartuAssetnamasp: TStringField;
    QKartuAssetumur: TStringField;
    QKartuAssetspesifikasi_asset: TMemoField;
    QKartuAssetjumlah: TFloatField;
    QKartuAssetsatuan: TStringField;
    QKartuAssettotal: TFloatField;
    QKartuAssetnomor_urut: TIntegerField;
    QKartuAssetbulan_nama: TStringField;
    QKartuAssettahun: TStringField;
    QKartuAssetvoucher: TStringField;
    QKartuAssetjum_perbulan: TFloatField;
    QKartuAssetnama: TStringField;
    QKartuAssettgl_beli: TDateField;
    QKartuAssetnamadebit: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKodeAssetChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKartuAsset: TFKartuAsset;

implementation

uses UMasterSetiingAsset, UMainMenu, uMy_Function, UDataModule;

{$R *.dfm}

procedure TFKartuAsset.SpeedButton1Click(Sender: TObject);
begin
  try
  FMasterSetingAsset.MemTabKategori.active:=false;
  FMasterSetingAsset.MemTabKategori.active:=true;
  FMasterSetingAsset.MemTabNamaHarta.active:=false;
  FMasterSetingAsset.MemTabNamaHarta.active:=true;
  FMasterSetingAsset.vpanggil:='kartu_asset';
  FMasterSetingAsset.PageControl1.TabIndex:= 2;
  FMasterSetingAsset.PageControl1.ActivePageIndex:=2;
  FMasterSetingAsset.TabKategori.TabVisible:=false;
  FMasterSetingAsset.TabNamaHarta.TabVisible:=false;
  FMasterSetingAsset.TabListDataAsset.TabVisible:=true;
  FMasterSetingAsset.RefreshTab;
  FMasterSetingAsset.show;
  except
  showmessage('Periksa Koneksi Anda !');
  exit;
  end;
end;

procedure TFKartuAsset.FormShow(Sender: TObject);
begin
   edKodeAsset.Clear;
   if Length(edKodeAsset.Text)=0 then
   begin
    cbSumber_Asset.Enabled:=True;
    cbKelompok.Enabled:=True;
    cbNamaHarta.Enabled:=True;
   end;
   //Load Sumber Asset
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tsumber_asset order by id');
      open;
      first;
    end;

    cbSumber_Asset.Clear;
    cbSumber_Asset.Items.add('<<Semua Sumber>>');
    while not Dm.Qtemp.eof do
    begin
      cbSumber_Asset.Items.add(Dm.Qtemp.fieldbyname('nama').AsString);
      Dm.Qtemp.Next;
    end;
    cbSumber_Asset.itemindex:=0;

   //Load Kategori Asset
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset order by id');
      open;
      first;
    end;

    cbKelompok.Clear;
    cbKelompok.Items.add('<<Semua Kelompok>>');
    while not Dm.Qtemp.eof do
    begin
      cbKelompok.Items.add(Dm.Qtemp.fieldbyname('KELOMPOK').AsString);
      Dm.Qtemp.Next;
    end;
    cbKelompok.itemindex:=0;
                            
   //Load Nama Harta Asset
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tmaster_harta_asset order by id');
      open;
      first;
    end;

    cbNamaHarta.Clear;
    cbNamaHarta.Items.add('<<Semua Nama Harta>>');
    while not Dm.Qtemp.eof do
    begin
      cbNamaHarta.Items.add(Dm.Qtemp.fieldbyname('NAMA_HARTA').AsString);
      Dm.Qtemp.Next;
    end;
    cbNamaHarta.itemindex:=0;
end;

procedure TFKartuAsset.edKodeAssetChange(Sender: TObject);
begin
   if Length(edKodeAsset.Text)=0 then
   begin
    cbSumber_Asset.Enabled:=True;
    cbKelompok.Enabled:=True;
    cbNamaHarta.Enabled:=True;
   end;
end;

procedure TFKartuAsset.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFKartuAsset.BCetakClick(Sender: TObject);
var
 kode_asset : string;
begin
   if  Length(edKodeAsset.Text)=0 then
    kode_asset:=''
     else
    kode_asset:=' Where kode_asset='+QuotedStr(edKodeAsset.Text)+' ';


   
   if  Length(edKodeAsset.Text)<>0 then //Cari Asset Ada Atau Tidak
   begin
   with Dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add(' Select * from (  '+
             ' SELECT a.kode_asset, a.tgl_beli, rin.tgl_susut,kode_kel_penyusutan,kode_nama_harta, '+
             ' sumber_id, sa.nama, nama_kelompok_penyusutan, nama_harta,  '+
             ' kre.namasp as namakredit,  deb.namasp as namadebit, concat(masa_bulan, '' Bulan'') as umur, '+
             ' spesifikasi_asset, a.jumlah,  satuan, total_harga_beli as total, '+
             ' nomor_urut, bulan_nama, tahun, voucher, case when (voucher=''0'') or (voucher is null) then 0 else rin.jumlah end jum_perbulan '+
             ' FROM `tmaster_asset` a  '+
             ' LEFT JOIN tdata31 kre ON a.kodekredit=kre.kode31 '+
             ' LEFT JOIN tdata31 deb ON a.kodedebit=deb.kode31  '+
             ' LEFT JOIN tdetail_rincian_asset rin  on a.kode_asset=rin.kode_asset '+
             ' LEFT JOIN tsumber_asset sa ON a.sumber_id=sa.id )a '+
             ' '+kode_asset+' '+
             ' 	ORDER BY a.kode_asset,nomor_urut asc ');
     open;
   end;

   IF Dm.Qtemp.RecordCount=0 then
   begin
     ShowMessage('Data Asset Tidak Ditemukan...');
     exit;
   end;

   end; //End Cari Asset Ada Atau Tidak


   with QKartuAsset do
   begin
     close;
     sql.clear;
     sql.add(' Select * from (  '+
             ' SELECT a.kode_asset, a.tgl_beli, rin.tgl_susut,kode_kel_penyusutan,kode_nama_harta, '+
             ' sumber_id, sa.nama, nama_kelompok_penyusutan, nama_harta,  '+
             ' kre.namasp as namakredit,  deb.namasp as namadebit, concat(masa_bulan, '' Bulan'') as umur, '+
             ' spesifikasi_asset, a.jumlah,  satuan, total_harga_beli as total, '+
             ' nomor_urut, bulan_nama, tahun, voucher, case when (voucher=''0'') or (voucher is null) then 0 else rin.jumlah end jum_perbulan '+
             ' FROM `tmaster_asset` a  '+
             ' LEFT JOIN tdata31 kre ON a.kodekredit=kre.kode31 '+
             ' LEFT JOIN tdata31 deb ON a.kodedebit=deb.kode31  '+
             ' LEFT JOIN tdetail_rincian_asset rin  on a.kode_asset=rin.kode_asset '+
             ' LEFT JOIN tsumber_asset sa ON a.sumber_id=sa.id )a '+
             ' '+kode_asset+' '+
             ' 	ORDER BY a.kode_asset,nomor_urut asc ');
     open;
   end;

    if (QKartuAsset.RecordCount=0)then
    begin
      MessageDlg('Maaf, Tidak ada data',mtInformation,[MBOK],0);
      Exit;
    end;

    if (QKartuAsset.RecordCount<>0)then
    begin
    Report.LoadFromFile(cLocation +'Report/rpt_KartuAsset'+ '.fr3');
    //SetMemo(Report,'nama_PT',fmainmenu.vnamapershfull);       off ds 23-05-2025
    SetMemo(Report,'JUDUL','KARTU ASSET');
    //SetMemo(Report,'MemDibuat','( '+fmainmenu.nm_pimpinan+' )');
    //SetMemo(Report,'Memo12','DATA HISTORY INVOICE');
    //SetMemo(Report,'MemPeriode',FormatDateTime('dd mmmm yyyy',DateTimePicker1.date)+' s/d '+FormatDateTime('dd mmmm yyyy',DateTimePicker2.date));
    //Report.DesignReport();
    Report.ShowReport();
    end;
end;

end.
