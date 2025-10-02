unit u_master_asset2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Db, MemDS, DBAccess, Uni, DataDriverEh, MemTableEh,
  RzButton, ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzPanel,
  StdCtrls, ComCtrls,  System.Actions ,RzCmboBx, cxClasses;

type
  Tfrm_master_asset = class(TForm)
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    btTampilkan: TRzBitBtn;
    DBGridEhOrderTele: TDBGridEh;
    dsOrderTele: TDataSource;
    MemMasterDaftarAsset: TMemTableEh;
    Label1: TLabel;
    DateTimePicker3: TDateTimePicker;
    bt_Proses: TRzBitBtn;
    bt_Tutup: TRzBitBtn;
    btDaftarAsser: TRzBitBtn;
    Label7: TLabel;
    cbSumber_Asset: TRzComboBox;
    procedure btTampilkanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_ProsesClick(Sender: TObject);
    procedure bt_TutupClick(Sender: TObject);
    procedure btDaftarAsserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_master_asset: Tfrm_master_asset;

implementation

uses UMainMenu, UMy_Function,//, u_daf_barang, u_update_target, //USparePartPOAdd,USparePartPO,
     UPerhitunganAsset, UInputAssetNonPembelian,UMasterSetiingAsset,
  UDataModule;

{$R *.dfm}

procedure Tfrm_master_asset.btTampilkanClick(Sender: TObject);
begin       
  MemMasterDaftarAsset.EmptyTable;
  if cbSumber_Asset.ItemIndex=0 then
  begin
    ShowMessage('Silakan Pilih Sumber Asset..');
    exit;
  end;
  
  if cbSumber_Asset.ItemIndex=1 then
  begin
    with Dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' select CONCAT(a.trans_no,''-'',a.item_stock_code) AS KODE_ASSET ,a.trans_date,a.supplier_code,'+
     '  c.supplier_name,a.trans_no,a.faktur_no,a.item_stock_code kode,b.item_name,a.qty, '+
     ' a.unit, a.price, subtotal, a.notes KETBARANG,  a.id_pengajuan_asset,'+
     ' a.no_pengajuan_asset,a.id_detail_asset,a.spesifikasi_asset from (select a.*,b.supplier_code,b.trans_date,'+
     ' b.faktur_no,B.purchase_type'+
     ' from t_purchase_invoice_det a INNER JOIN t_purchase_invoice b on a.trans_no=b.trans_no) a  '+
     ' LEFT JOIN t_item_stock b ON a.item_stock_code=b.item_stock_code  LEFT JOIN t_supplier C on '+
     ' a.supplier_code=c.supplier_code where a.trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker3.date))+'  '+
     ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker3.date))+' '+
     ' and a.purchase_type=''AKTIVA'' and a.flg_crate_asset isnull');
             //' and flg_crate_asset=0  GROUP BY a.""NO_INV_SUPP"", a.kode ');
     open;
    end;
   end;
  
  if cbSumber_Asset.ItemIndex=2 then
  begin
    with Dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' select CONCAT(a."NOASSET") AS KODE_ASSET ,"TGLTRANS", a."KODESUP",  '+
             ' c.supplier_name AS NASUP ,a."NO_INV_SUPP" as NOINV ,a."NO_INV_SUPP", '+
             ' a."NOASSET" as KODE,"KETERANGAN" AS NAMA_BARANG,a."JUMLAH","SATUAN", a."HARGASATUAN", '+
             ' "TOTALHARGA", "KETERANGAN" AS KETBARANG,  ''0'' as id_pengajuan_asset, '+
             ' ''0'' as no_pengajuan_asset,''0'' as id_detail_asset, '+
             ' "KETERANGAN" as spesifikasi_asset from t_non_pembelian_asset a  '+
             ' LEFT JOIN t_supplier C on a."KODESUP"=c.supplier_code '+
             ' where a."TGLTRANS" between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker3.date))+'  '+
             ' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker3.date))+' '+
             ' and flg_crate_asset=0  '+
             ' GROUP BY a."NOASSET" ,a."TGLTRANS", a."KODESUP",c."supplier_name",a."NO_INV_SUPP",a."NO_INV_SUPP",a."KETERANGAN",a."JUMLAH", "SATUAN", a."HARGASATUAN",  "TOTALHARGA" ');
     open;
    end;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
   ShowMessage('Tidak Ditemukan Data');
   exit;
  end;

  if Dm.Qtemp.RecordCount<>0 then
  begin
  MemMasterDaftarAsset.EmptyTable;
  MemMasterDaftarAsset.active:=true;
 // showmessage('test');
  Dm.Qtemp.first;
  while not Dm.Qtemp.Eof do
    begin
   //  with frm_master_asset do
     //begin
      MemMasterDaftarAsset.insert;
   //   showmessage('test2');
      MemMasterDaftarAsset['KODE_ASSET']:=Dm.Qtemp.fieldbyname('KODE_ASSET').value;
      MemMasterDaftarAsset['TGLTRANS']:=Dm.Qtemp.fieldbyname('trans_date').value;
      MemMasterDaftarAsset['KODESUP']:=Dm.Qtemp.fieldbyname('supplier_code').value;
      MemMasterDaftarAsset['NASUP']:=Dm.Qtemp.fieldbyname('supplier_name').value;
      MemMasterDaftarAsset['NO_INV_SUPP']:=Dm.Qtemp.fieldbyname('faktur_no').value;
      MemMasterDaftarAsset['NOINV']:=Dm.Qtemp.fieldbyname('trans_no').value;
      MemMasterDaftarAsset['KODE']:=Dm.Qtemp.fieldbyname('KODE').value;
      MemMasterDaftarAsset['NAMA_BARANG']:=Dm.Qtemp.fieldbyname('item_name').value;
      MemMasterDaftarAsset['JUMLAH']:=Dm.Qtemp.fieldbyname('qty').value;
      MemMasterDaftarAsset['SATUAN']:=Dm.Qtemp.fieldbyname('unit').value;
      MemMasterDaftarAsset['HARGASATUAN']:=Dm.Qtemp.fieldbyname('price').value;
      MemMasterDaftarAsset['HARGATOTAL']:=Dm.Qtemp.fieldbyname('subtotal').value;
      MemMasterDaftarAsset['KETBARANG']:=Dm.Qtemp.fieldbyname('KETBARANG').value;
      MemMasterDaftarAsset['ID_PENGAJUAN_ASSET']:=Dm.Qtemp.fieldbyname('id_pengajuan_asset').value;
      MemMasterDaftarAsset['NO_PENGAJUAN_ASSET']:=Dm.Qtemp.fieldbyname('no_pengajuan_asset').value;
      MemMasterDaftarAsset['ID_DETAIL_ASSET']:=Dm.Qtemp.fieldbyname('id_detail_asset').value;
      MemMasterDaftarAsset['SPESIFIKASI_ASSET']:=Dm.Qtemp.fieldbyname('spesifikasi_asset').value;
      MemMasterDaftarAsset['APRV_ASSET']:=0;
      MemMasterDaftarAsset.Post;
    // end;
     //showmessage(Dm.Qtemp.fieldbyname('STAT_ORDER').AsString);
    Dm.Qtemp.Next;
  end;
 //   MemMasterDaftarAsset.active:=false;
   // MemMasterDaftarAsset.active:=true;
  end;
end;

procedure Tfrm_master_asset.FormShow(Sender: TObject);
begin
  MemMasterDaftarAsset.EmptyTable;
  DateTimePicker3.date:=now;
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tsumber_asset order by id');
      open;
      first;
    end;

    cbSumber_Asset.Clear;
    cbSumber_Asset.Items.add('');
    while not Dm.Qtemp.eof do
    begin
      cbSumber_Asset.Items.add(Dm.Qtemp.fieldbyname('nama').AsString);
      Dm.Qtemp.Next;
    end;
    cbSumber_Asset.itemindex:=0;
end;

procedure Tfrm_master_asset.bt_ProsesClick(Sender: TObject);
begin
 with FPerhitunganAsset do
 begin
   vKodeAsset:=MemMasterDaftarAsset['KODE_ASSET'];//kode Untuk penomoran penyusutan
   edKodeAsset.text:=MemMasterDaftarAsset['KODE_ASSET'];
   edNamaAsset.text:=MemMasterDaftarAsset['NAMA_BARANG'];
   dtTanggalAkuisisi.date:=MemMasterDaftarAsset['TGLTRANS'];
   edBiayaAkuisisi.value:=MemMasterDaftarAsset['HARGATOTAL']*1;
   MemKeterangan.Text:=MemMasterDaftarAsset['SPESIFIKASI_ASSET']; 
   edJumlahItem.Text:=MemMasterDaftarAsset['JUMLAH'];
   vJumlah:=MemMasterDaftarAsset['JUMLAH'];
   vHargaSatuan:=MemMasterDaftarAsset['HARGASATUAN'];
   vSatuan:=MemMasterDaftarAsset['SATUAN'];
   edSatuan.text:=MemMasterDaftarAsset['SATUAN'];
   vInv_Pembelian:=MemMasterDaftarAsset['NOINV'];
   vFaktur_Pembelian:=MemMasterDaftarAsset['NO_INV_SUPP'];
   vKode_Supp:=MemMasterDaftarAsset['KODESUP'];
   vKode_Brg:=MemMasterDaftarAsset['KODE'];
   ID_PENGAJUAN_ASSET:=MemMasterDaftarAsset['ID_PENGAJUAN_ASSET'];         
   NO_PENGAJUAN_ASSET:=MemMasterDaftarAsset['NO_PENGAJUAN_ASSET'];
   ID_DETAIL_ASSET:=MemMasterDaftarAsset['ID_DETAIL_ASSET'];
   SPESIFIKASI_ASSET:=MemMasterDaftarAsset['SPESIFIKASI_ASSET'];
   //GroupPenyusutan
   dtAwalSusut.date:=MemMasterDaftarAsset['TGLTRANS'];
   edNilaiBeli.value:=MemMasterDaftarAsset['HARGATOTAL']*1;
   with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select * from tkelompok_asset order by kode');
      open;
      first;
    end;
    cbKelompok.Clear;
    cbKelompok.Items.add('');
    while not Dm.Qtemp.eof do
    begin
      cbKelompok.Items.add(Dm.Qtemp.fieldbyname('kelompok').AsString);
      Dm.Qtemp.Next;
    end;
    cbKelompok.itemindex:=0;
    edMasaTahun.VALUE:=0;
    edTambahMasaBulan.VALUE:=0;
    edPersen.Text:='';
    edKodeKredit.Text:='';
    edNamaKredit.Text:='';
    edKodeDebit.Text:='';
    edNamaDebit.Text:='';
    edNilaiResidu.VALUE:=0;
    edNilaiHasil.value:=0; 
    edBiayaAkuisisi.Enabled:=false;
    edJumlahItem.Enabled:=false;

    MemRincian.EmptyTable;
    MemRincian.active:=true;

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
end;

procedure Tfrm_master_asset.bt_TutupClick(Sender: TObject);
begin
 close;
end;

procedure Tfrm_master_asset.btDaftarAsserClick(Sender: TObject);
begin
  try
  FMasterSetingAsset.MemTabKategori.active:=false;
  FMasterSetingAsset.MemTabKategori.active:=true;
  FMasterSetingAsset.MemTabNamaHarta.active:=false;
  FMasterSetingAsset.MemTabNamaHarta.active:=true;
  FMasterSetingAsset.vpanggil:='daftar_asset';
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
initialization
  RegisterClass(Tfrm_master_asset);

end.

