unit UMasterData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls, MemTableDataEh, Data.DB, MemTableEh;

type
  TFMasterData = class(TForm)
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    MemMasterDataKD_MASTER: TStringField;
    MemMasterDataNM_MASTER: TStringField;
    MemMasterDataKETERANGAN: TStringField;
    DBGridCustomer: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridCustomerDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
    procedure update_grid(fld_kd,fld_name,fld_ket,tbl_name,vwhere:string);
  end;

var
  FMasterData: TFMasterData;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UNew_Pelanggan, UMasterWilayah, USetMasterWilayah,
  UMasterWilayahAdministratif, UNew_SalesOrder, UTambah_Barang, UMy_Function,
  UTemplate_Temp, UNew_DataPenjualan, UDaftarKlasifikasi, UNew_TujuanAwal,
  UNew_MasterBiayaDO, UNewDeliveryOrder, USetDeliveryOrder, USetMasterPelanggan;

procedure TFMasterData.DBGridCustomerDblClick(Sender: TObject);
begin
  //ShowMessage(vcall);
  if vcall='m_klasifikasi' then
  begin
    FDaftarKlasifikasi.MemKlasifikasi.Edit;
    FDaftarKlasifikasi.MemKlasifikasi['kd_barang']:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.MemKlasifikasi['nm_barang']:=MemMasterData['NM_MASTER'];
    FDaftarKlasifikasi.MemKlasifikasi['kd_satuan']:=MemMasterData['KETERANGAN'];
    FDaftarKlasifikasi.MemKlasifikasi['nm_satuan']:=MemMasterData['KETERANGAN'];
    FDaftarKlasifikasi.MemKlasifikasi['harga_satuan']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['batas1']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['batas2']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['disc']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['disc1']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['disc2']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['disc3']:='0';
    FDaftarKlasifikasi.MemKlasifikasi['disc4']:='0';
    FDaftarKlasifikasi.MemKlasifikasi.post;
  end;
  if vcall='link_vendor' then
  begin
    FSetDeliveryOrder.edLinkVendor.Text:=SelectRow('SELECT link_form from t_module_link where name_link='+QuotedStr(MemMasterData['NM_MASTER'])+' ');
    FSetDeliveryOrder.edNamaLinkVendor.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='link_vendor_sumber' then
  begin
    FSetDeliveryOrder.edLinkSumber.Text:=SelectRow('SELECT link_form from t_module_link where name_link='+QuotedStr(MemMasterData['NM_MASTER'])+' ');
    FSetDeliveryOrder.edNamaLinkSumber.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='do_jenis_kend' then
  begin
    FNewDeliveryOrder.edKodeJenisKendMuatan.Text:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edNamaJenisKendMuatan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='do_jenis' then
  begin
    FNewDeliveryOrder.edKodeJenisMuatan.Text:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edNamaJenisMuatan.Text:=MemMasterData['NM_MASTER'];
    FNewDeliveryOrder.vFormSumber01:=SelectRow('SELECT form_target_vendor from t_type_delivery_order where code='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
    FNewDeliveryOrder.vFormSumber02:=SelectRow('SELECT form_target_source from t_type_delivery_order where code='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
  end;
  if vcall='do_master_jenis' then
  begin
    with FSetDeliveryOrder do
    begin
      Clear;
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ('+
                ' SELECT "code", "name", "description", "form_target_vendor", '+
                ' "form_target_source" from "t_type_delivery_order"  '+
                ' WHERE	deleted_at IS NULL ORDER BY code desc ) a '+
                ' WHERE "code"='+QuotedStr(MemMasterData['KD_MASTER'])+' '+
                ' Order By code, name desc');
        open;
      end;
      edKode.Text:=Dm.Qtemp.FieldByName('code').Value;
      edNama.Text:=Dm.Qtemp.FieldByName('name').Value;
      edKet.Text:=Dm.Qtemp.FieldByName('description').Value;
      edLinkVendor.Text:=Dm.Qtemp.FieldByName('form_target_vendor').Value;
      edLinkSumber.Text:=Dm.Qtemp.FieldByName('form_target_source').Value;
      edNamaLinkVendor.Text:=SelectRow('SELECT name_link from t_module_link where link_form='+QuotedStr(Dm.Qtemp.FieldByName('form_target_vendor').Value)+' ');
      edNAMALinkSumber.Text:=SelectRow('SELECT name_link from t_module_link where link_form='+QuotedStr(Dm.Qtemp.FieldByName('form_target_source').Value)+' ');
    end;
    FSetDeliveryOrder.RefreshGrid;
    FSetDeliveryOrder.Status:=1;
    FSetDeliveryOrder.show;
  end;
  if vcall='do_lokasi_awal' then
  begin
    FNewDeliveryOrder.edKodeLokasi.Text:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edNamaLokasi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='do_lokasi_awal_prov' then
  begin
    FNewDeliveryOrder.edKodeProvinsi.Text:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edNamaProvinsi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='do_lokasi_awal_kab' then
  begin
    FNewDeliveryOrder.edKodeKabupaten.Text:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edNamaKabupaten.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_usaha_pelanggan_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_jenis_usaha.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_jenis_usaha.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_pelanggan_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_jenis_pel.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_jenis_pel.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='kategori_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_kategori.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_kategori.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='type_hitung_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_type_hitung.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_type_hitung.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_jual_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_jenis_jual.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_jenis_jual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='type_jual_klasifikasi' then
  begin
    FDaftarKlasifikasi.edkd_type_jual.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_type_jual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='type_jual_klasifikasi_pel' then
  begin
    FDaftarKlasifikasi.edkd_type_jual_pel.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_type_jual_pel.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_jual_klasifikasi_pel' then
  begin
    FDaftarKlasifikasi.edkd_jenis_jual_pel.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_jenis_jual_pel.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='kategori_klasifikasi_pel' then
  begin
    FDaftarKlasifikasi.edkd_kategori_pel.Text:=MemMasterData['KD_MASTER'];
    FDaftarKlasifikasi.ednm_kategori_pel.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_biaya_do_lokasi' then
  begin
    FNew_MasterBiayaDO.edKodeLokasi.Text:=MemMasterData['KD_MASTER'];
    FNew_MasterBiayaDO.edNamaLokasi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_biaya_do_lokasi_prov' then
  begin
    FNew_MasterBiayaDO.edKodeProvinsi.Text:=MemMasterData['KD_MASTER'];
    FNew_MasterBiayaDO.edNamaProvinsi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_biaya_do_lokasi_kab' then
  begin
    FNew_MasterBiayaDO.edKodeKabupaten.Text:=MemMasterData['KD_MASTER'];
    FNew_MasterBiayaDO.edNamaKabupaten.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_biaya_do_lokasi_kec' then
  begin
    FNew_MasterBiayaDO.edKodeKecamatan.Text:=MemMasterData['KD_MASTER'];
    FNew_MasterBiayaDO.edNamaKecamatan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_tujuan_awal_prov' then
  begin
    FNew_TujuanAwal.edKodeProvinsi.Text:=MemMasterData['KD_MASTER'];
    FNew_TujuanAwal.edNamaProvinsi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_tujuan_awal_kab' then
  begin
    FNew_TujuanAwal.edKodeKabupaten.Text:=MemMasterData['KD_MASTER'];
    FNew_TujuanAwal.edNamaKabupaten.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_tujuan_awal_kec' then
  begin
    FNew_TujuanAwal.edKodeKecamatan.Text:=MemMasterData['KD_MASTER'];
    FNew_TujuanAwal.edNamaKecamatan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='barang_order' then
  begin
    FTambah_Barang.edKodeBarang.Text:=MemMasterData['KD_MASTER'];
    FTambah_Barang.edNamaBarang.Text:=MemMasterData['NM_MASTER'];
    FTambah_Barang.edKodeSatuan.Text:=MemMasterData['KETERANGAN'];
    FTambah_Barang.edSatuan.Text:=SelectRow('SELECT unit_name from t_unit where unit_code='+QuotedStr(MemMasterData['KETERANGAN'])+' ');
    FTambah_Barang.Parent:=FTemplate_Temp.PanelParent;
    FTambah_Barang.Align:=Alclient;
    FTambah_Barang.BorderStyle:=BsNone;
    //FTemplate_Temp.Height:=FTambah_Barang.Height+50;
    //FTemplate_Temp.Width:=FTambah_Barang.Width+50;
    FTambah_Barang.Show;
    FTemplate_Temp.Show;
  end;
  if vcall='satuan_order' then
  begin
    FTambah_Barang.edKodeSatuan.Text:=MemMasterData['KD_MASTER'];
    FTambah_Barang.edSatuan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_sales' then
  begin
    FNew_SalesOrder.edKode_Sales.Text:=MemMasterData['KD_MASTER'];
    FNew_SalesOrder.edNama_Sales.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='supplier_order' then
  begin
    FTambah_Barang.edKodeSupplier.Text:=MemMasterData['KD_MASTER'];
    FTambah_Barang.edNamaSupplier.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='gudang_order' then
  begin
    FTambah_Barang.edKodeGudang.Text:=MemMasterData['KD_MASTER'];
    FTambah_Barang.edNamaGudang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='sumber_order' then
  begin
    FNew_SalesOrder.edKodeSumber.Text:=MemMasterData['KD_MASTER'];
    FNew_SalesOrder.edNamaSumber.Text:=MemMasterData['NM_MASTER'];
    FNew_SalesOrder.vFormSumber:=SelectRow('SELECT form_target from t_order_source where code='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
  end;
  if vcall='penjualan' then
  begin
    FNew_Penjualan.edKodeSumber.Text:=MemMasterData['KD_MASTER'];
    FNew_Penjualan.edNamaSumber.Text:=MemMasterData['NM_MASTER'];
    FNew_Penjualan.vFormSumber:=SelectRow('SELECT form_target from t_selling_source where code='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
  end;
  if vcall='kode_trans_penjualan' then
  begin
    FNew_Penjualan.edKode_Trans.Text:=MemMasterData['KD_MASTER'];
  end;
  if vcall='m_provinsi' then
  begin
    FMasterWilayahAdministratif.edKodeProvinsi.Text:=MemMasterData['KD_MASTER'];
    FMasterWilayahAdministratif.edNamaProvinsi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_kabupaten' then
  begin
    FMasterWilayahAdministratif.edKodeKabupaten.Text:=MemMasterData['KD_MASTER'];
    FMasterWilayahAdministratif.edNamaKabupaten.Text:=MemMasterData['NM_MASTER'];
    FMasterWilayahAdministratif.RefreshGrid;
  end;
  if vcall='m_kares' then
  begin
    FMasterWilayah.edKode_kares.Text:=MemMasterData['KD_MASTER'];
    FMasterWilayah.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
    FMasterWilayah.RefreshGrid;
  end;
  if vcall='set_areakares' then
  begin
    FSetMasterWilayah.edKDArea_setkares.Text:=MemMasterData['KD_MASTER'];
    FSetMasterWilayah.edArea_setkares.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_wilayah' then
  begin
    FMasterWilayah.edKode_wil.Text:=MemMasterData['KD_MASTER'];
    FMasterWilayah.edWilayah.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_area' then
  begin
    FMasterWilayah.edKode_area.Text:=MemMasterData['KD_MASTER'];
    FMasterWilayah.edArea.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_wilayaharea' then
  begin
    FSetMasterWilayah.edKDWilayah_setarea.Text:=MemMasterData['KD_MASTER'];
    FSetMasterWilayah.edWilayah_setarea.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='master_jns_usaha_pelanggan' then
  begin
    FSetMasterPelanggan.edKode_JenisUsaha.Text:=MemMasterData['KD_MASTER'];
    FSetMasterPelanggan.edJenisUsaha.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='kantor_pusat' then
  begin
    FNew_Pelanggan.edKodeKantorPusat.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNamaKantorPusat.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_usaha_pelanggan' then
  begin
    FNew_Pelanggan.edKode_JenisUsaha.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edJenisUsaha.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jns_pelanggan' then
  begin
    FNew_Pelanggan.edKode_jnispel.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edJenisPelanggan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='type_pelanggan' then
  begin
    FNew_Pelanggan.edKode_typejual.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edTypePenjualan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='gol_pelanggan' then
  begin
    FNew_Pelanggan.edKode_gol.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edGolonganPelanggan.Text:=MemMasterData['NM_MASTER'];
  end;

  //ShowMessage(FTambah_Barang.edKodeBarang.Text);
  FMasterData.Close;
  FMasterData.MemMasterData.EmptyTable;
end;

procedure TFMasterData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MemMasterData.EmptyTable;
end;

procedure TFMasterData.update_grid(fld_kd,fld_name,fld_ket,tbl_name,vwhere:string);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT '+fld_kd+' AS kd_master, '+fld_name+' AS nm_master, '+
            ' '+fld_ket+' AS keterangan '+
            ' from '+tbl_name+' '+
            ' '+vwhere+' ');
    open;
  end;

    FMasterData.MemMasterData.active:=false;
    FMasterData.MemMasterData.active:=true;
    FMasterData.MemMasterData.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FMasterData.MemMasterData.insert;
     FMasterData.MemMasterData['KD_MASTER']:=Dm.Qtemp.fieldbyname('kd_master').value;
     FMasterData.MemMasterData['NM_MASTER']:=Dm.Qtemp.fieldbyname('nm_master').value;
     FMasterData.MemMasterData['KETERANGAN']:=Dm.Qtemp.fieldbyname('keterangan').value;
     FMasterData.MemMasterData.post;
     Dm.Qtemp.next;
    end;
    end;


end;

initialization
  RegisterClass(TFMasterData);


end.
