program Smart_BOA;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {FMainMenu},
  UDataModule in 'UDataModule.pas' {dm: TDataModule},
  UDashboard in 'UDashboard.pas' {FDashboard},
  UHomeSreen in 'UHomeSreen.pas' {FHomeSreen},
  UHomeLogin in 'UHomeLogin.pas' {FHomeLogin},
  Vcl.Themes,
  Vcl.Styles,
  UListProduk in 'UListProduk.pas' {FListProduk},
  Unew_produk in 'Unew_produk.pas' {FInput_Produk},
  UListKonversi_Produk in 'UListKonversi_Produk.pas' {FListKonvProduk},
  UNewKonv_Produk in 'UNewKonv_Produk.pas' {FNewKonv_produk},
  UList_Gudang in 'UList_Gudang.pas' {FListGudang},
  UNew_Gudang in 'UNew_Gudang.pas' {FNew_Gudang},
  UListBank_perusahaan in 'UListBank_perusahaan.pas' {FListBank},
  UNewBank in 'UNewBank.pas' {FNewBank},
  UAkun_Perkiraan_TerimaMat in 'UAkun_Perkiraan_TerimaMat.pas' {FAkun_Perkiraan_TerimaMat},
  UCari_DaftarPerk in 'UCari_DaftarPerk.pas' {FCari_DaftarPerk},
  Uupdate_faktur in 'Uupdate_faktur.pas' {Fupdate_faktur},
  UBarang_Stok in 'UBarang_Stok.pas' {FBarang_Stok},
  UNew_Barang_Stok in 'UNew_Barang_Stok.pas' {FNew_Barang_stok},
  UCari_Barang in 'UCari_Barang.pas' {FCari_Barang},
  UBonPermt_Barang in 'UBonPermt_Barang.pas' {FBonPermt_Barang},
  UNew_BonPermtBarang in 'UNew_BonPermtBarang.pas' {FNew_BonPermtBarang},
  UItem_Type in 'UItem_Type.pas' {FItem_Type},
  UNew_ItemType in 'UNew_ItemType.pas' {FNew_ItemType},
  UNew_KategoriBarang in 'UNew_KategoriBarang.pas' {FNew_KategoriBarang},
  UListBarang in 'UListBarang.pas' {FlistBarang},
  UNew_Barang in 'UNew_Barang.pas' {FNew_Barang},
  UKategori_Barang in 'UKategori_Barang.pas' {FKategori_Barang},
  UListPelanggan in 'UListPelanggan.pas' {FListPelanggan},
  UNew_Pelanggan in 'UNew_Pelanggan.pas' {FNew_Pelanggan},
  UFakturPajak in 'UFakturPajak.pas' {FFakturPajak},
  UNewFakturPajak in 'UNewFakturPajak.pas' {Finput_faktur_pajak},
  UListSupplier in 'UListSupplier.pas' {FListSupplier},
  UNew_Supplier in 'UNew_Supplier.pas' {FNew_Supplier},
  UListPerusahaan in 'UListPerusahaan.pas' {FListPerusahaan},
  UNew_Perusahaan in 'UNew_Perusahaan.pas' {FNewPerusahaan},
  UPenomoran in 'UPenomoran.pas' {FPenomoran},
  UNew_Penomoran in 'UNew_Penomoran.pas' {FNew_Penomoran},
  Udaftar_perkiraan in 'Udaftar_perkiraan.pas' {FDaftar_Perkiraan},
  UNewDaftar_perkiraan in 'UNewDaftar_perkiraan.pas' {FNewdaftar_perkiraan_bank},
  UNew_HeaderPerkiraan in 'UNew_HeaderPerkiraan.pas' {FNewHeaderPerkiraan},
  UNew_Posting in 'UNew_Posting.pas' {FNewPosting},
  UCari_Modul in 'UCari_Modul.pas' {FCari_Data_Modul},
  UNew_JenisAkun in 'UNew_JenisAkun.pas' {FNew_JenisAkun},
  UNew_KategoriAkun in 'UNew_KategoriAkun.pas' {FNew_KategoriAkun},
  UNew_Satuan in 'UNew_Satuan.pas' {FNew_Satuan},
  UKonversi_Barang in 'UKonversi_Barang.pas' {FKonversi_Barang},
  UNew_KonvBarang in 'UNew_KonvBarang.pas' {FNew_KonvBarang},
  UDept in 'UDept.pas' {FDept},
  UJabatan in 'UJabatan.pas' {FJabatan},
  UNew_Dept in 'UNew_Dept.pas' {FNew_Dept},
  UNew_Jabatan in 'UNew_Jabatan.pas' {FNew_Jabatan},
  UTransfer_Barang in 'UTransfer_Barang.pas' {FTransfer_Barang},
  UNew_TransferBarang in 'UNew_TransferBarang.pas' {FNew_TransferBarang},
  UItem_TransferBarang in 'UItem_TransferBarang.pas' {FItem_TransferBarang},
  UNew_KelompokBarang in 'UNew_KelompokBarang.pas' {FNew_KelompokBarang},
  UPenjualan in 'UPenjualan.pas' {Flist_penjualan},
  UNew_Penjualan in 'UNew_Penjualan.pas' {Finput_penjualan},
  Ubrowse_pelanggan in 'Ubrowse_pelanggan.pas' {Fbrowse_data_pelanggan},
  Ubrowse_faktur_pajak in 'Ubrowse_faktur_pajak.pas' {Fbrowse_faktur_pajak},
  UListSPmuat in 'UListSPmuat.pas' {Flist_sp_muat},
  UDaftarKlasifikasi in 'UDaftarKlasifikasi.pas' {FDaftarKlasifikasi},
  USetMasterPelanggan in 'USetMasterPelanggan.pas' {FSetMasterPelanggan},
  USetMasterWilayah in 'USetMasterWilayah.pas' {FSetMasterWilayah},
  UPO in 'UPO.pas' {FPO},
  UNew_PO in 'UNew_PO.pas' {FNew_PO},
  USearch_Supplier in 'USearch_Supplier.pas' {FSearch_Supplier},
  UKontrakKerjasama in 'UKontrakKerjasama.pas' {FKontrakkerjasama},
  UNew_KontrakKerjasama in 'UNew_KontrakKerjasama.pas' {FNewKontrak_ks},
  UPembelian in 'UPembelian.pas' {FPembelian},
  UNew_Pembelian in 'UNew_Pembelian.pas' {FNew_Pembelian},
  UPot_Pembelian in 'UPot_Pembelian.pas' {FPot_Pembelian},
  UNew_Pot_Pembelian in 'UNew_Pot_Pembelian.pas' {FNew_Pot_Pembelian},
  USPB in 'USPB.pas' {FSPB},
  UNewSPMuat in 'UNewSPMuat.pas' {Finput_sp_muat},
  UNew_Additional in 'UNew_Additional.pas' {FNew_Additional},
  UMy_Function in 'UMy_Function.pas',
  UNew_Kategori_Gudang in 'UNew_Kategori_Gudang.pas' {FNew_Kategori_Gudang},
  Udafcek_entry in 'Udafcek_entry.pas' {FDaf_EntryCek},
  Uimportnocek in 'Uimportnocek.pas' {FImportnocek},
  UListItempo in 'UListItempo.pas' {Flistitempo},
  Ulist_materialstok in 'Ulist_materialstok.pas' {Flistmaterialstok},
  UReturnPembelian in 'UReturnPembelian.pas' {FReturnPembelian},
  UNew_ReturnPembelian in 'UNew_ReturnPembelian.pas' {FNew_ReturnPemb},
  USupp_Pembelian in 'USupp_Pembelian.pas' {FSupp_Pembelian};

// UMy_Function in 'UMy_Function.pas';

{$R *.res}

begin
FHomeSreen :=TFHomeSreen.Create(Application);
FHomeSreen.Show;
FHomeSreen.Update;

while FHomeSreen.Timer1.Enabled do
  Application.ProcessMessages;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFHomeLogin, FHomeLogin);
  Application.CreateForm(TFHomeSreen, FHomeSreen);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFListProduk, FListProduk);
  Application.CreateForm(TFInput_Produk, FInput_Produk);
  Application.CreateForm(TFListKonvProduk, FListKonvProduk);
  Application.CreateForm(TFNewKonv_produk, FNewKonv_produk);
  Application.CreateForm(TFListGudang, FListGudang);
  Application.CreateForm(TFNew_Gudang, FNew_Gudang);
  Application.CreateForm(TFListBank, FListBank);
  Application.CreateForm(TFNewBank, FNewBank);
  Application.CreateForm(TFAkun_Perkiraan_TerimaMat, FAkun_Perkiraan_TerimaMat);
  Application.CreateForm(TFPO, FPO);
  Application.CreateForm(TFNew_Additional, FNew_Additional);
  Application.CreateForm(TFNew_Kategori_Gudang, FNew_Kategori_Gudang);
  Application.CreateForm(TFImportnocek, FImportnocek);
  Application.CreateForm(TFlistitempo, Flistitempo);
  Application.CreateForm(TFlistmaterialstok, Flistmaterialstok);
  Application.CreateForm(TFReturnPembelian, FReturnPembelian);
  Application.CreateForm(TFNew_ReturnPemb, FNew_ReturnPemb);
  Application.CreateForm(TFSupp_Pembelian, FSupp_Pembelian);
  //Application.CreateForm(TFDaf_EntryCek, FDaf_EntryCek);
  Application.CreateForm(TFNew_PO, FNew_PO);
  Application.CreateForm(TFSPB, FSPB);
  Application.CreateForm(TFSearch_Supplier, FSearch_Supplier);
  Application.CreateForm(TFKontrakkerjasama, FKontrakkerjasama);
  Application.CreateForm(TFNewKontrak_ks, FNewKontrak_ks);
  Application.CreateForm(TFPembelian, FPembelian);
  Application.CreateForm(TFNew_Pembelian, FNew_Pembelian);
  Application.CreateForm(TFPot_Pembelian, FPot_Pembelian);
  Application.CreateForm(TFNew_Pot_Pembelian, FNew_Pot_Pembelian);
  Application.CreateForm(TFSPB, FSPB);
  Application.CreateForm(TFupdate_faktur, Fupdate_faktur);
  Application.CreateForm(TFListPelanggan, FListPelanggan);
  Application.CreateForm(TFNew_Pelanggan, FNew_Pelanggan);
  Application.CreateForm(TFFakturPajak, FFakturPajak);
  Application.CreateForm(TFinput_faktur_pajak, Finput_faktur_pajak);
  Application.CreateForm(TFListPerusahaan, FListPerusahaan);
  Application.CreateForm(TFNewPerusahaan, FNewPerusahaan);
  Application.CreateForm(TFDept, FDept);
  Application.CreateForm(TFJabatan, FJabatan);
  Application.CreateForm(TFNew_Dept, FNew_Dept);
  Application.CreateForm(TFNew_Jabatan, FNew_Jabatan);
  Application.CreateForm(TFNew_KelompokBarang, FNew_KelompokBarang);
  Application.CreateForm(TFbrowse_data_pelanggan, Fbrowse_data_pelanggan);
  Application.CreateForm(TFbrowse_faktur_pajak, Fbrowse_faktur_pajak);
  Application.CreateForm(TFDaftarKlasifikasi, FDaftarKlasifikasi);
  Application.CreateForm(TFSetMasterPelanggan, FSetMasterPelanggan);
  Application.CreateForm(TFSetMasterWilayah, FSetMasterWilayah);
  FHomeSreen.Hide;
  FHomeSreen.Free;
  Application.Run;
end.
