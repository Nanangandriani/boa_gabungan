program Smart_BOA;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {FMainMenu},
  UDataModule in 'UDataModule.pas' {dm: TDataModule},
  UDashboard in 'UDashboard.pas' {FDashboard},
  UHomeSreen in 'UHomeSreen.pas' {FHomeSreen},
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
  UNew_Kategori_Gudang in 'UNew_Kategori_Gudang.pas' {FNew_Kategori_Gudang},
  Udafcek_entry in 'Udafcek_entry.pas' {FDaf_EntryCek},
  Uimportnocek in 'Uimportnocek.pas' {FImportnocek},
  Ulist_materialstok in 'Ulist_materialstok.pas' {Flistmaterialstok},
  UReturnPembelian in 'UReturnPembelian.pas' {FReturnPembelian},
  UNew_ReturnPembelian in 'UNew_ReturnPembelian.pas' {FNew_ReturnPemb},
  USupp_Pembelian in 'USupp_Pembelian.pas' {FSupp_Pembelian},
  UNew_HakAkses in 'UNew_HakAkses.pas' {FNew_Hak_Akses},
  UPeng_stok in 'UPeng_stok.pas' {FPeng_Stok},
  UNew_PengStok in 'UNew_PengStok.pas' {FNew_PengStok},
  UCari_Barang2 in 'UCari_Barang2.pas' {FCari_Barang2},
  UPercampuran_Barang in 'UPercampuran_Barang.pas' {FPerc_Barang},
  UNew_PercBarang in 'UNew_PercBarang.pas' {FNew_PercBarang},
  maenangka in 'maenangka.pas',
  UMaster_PercBarang in 'UMaster_PercBarang.pas' {FMaster_PercBarang},
  UMaster_Akun in 'UMaster_Akun.pas' {FMaster_Akun},
  UNew_Menu in 'UNew_Menu.pas' {FNew_menu},
  UMenu in 'UMenu.pas' {FMenu},
  UMaster_Menu in 'UMaster_Menu.pas' {FMaster_Menu},
  UNew_Master_Akun in 'UNew_Master_Akun.pas' {FNew_Master_Akun},
  UCari_Menu in 'UCari_Menu.pas' {FCari_Menu},
  UHasil_Percampuran_Barang in 'UHasil_Percampuran_Barang.pas' {FHasil_Perc_Barang},
  UNew_HasilPercampuranBarang in 'UNew_HasilPercampuranBarang.pas' {FNew_Hasil_Perc_Barang},
  UNew_Permintaan_Barang2 in 'UNew_Permintaan_Barang2.pas' {FNew_Permintaan_Barang2},
  UPermintaan_Barang2 in 'UPermintaan_Barang2.pas' {FPermintaan_Barang2},
  UTerima_Amplop in 'UTerima_Amplop.pas' {FTerima_Amplop},
  UNew_TerimaAmplop in 'UNew_TerimaAmplop.pas' {FNew_TerimaAmplop},
  UMaster_FormulaTest in 'UMaster_FormulaTest.pas' {FMaster_FormulaTest},
  UNew_MasterFormulaTest in 'UNew_MasterFormulaTest.pas' {FNew_MasterFormula},
  USPK_Formula in 'USPK_Formula.pas' {FSPK_Formula},
  UNew_SPKFormula in 'UNew_SPKFormula.pas' {FNew_SPKFormula},
  UNew_Pakai_Material_For in 'UNew_Pakai_Material_For.pas' {FNew_PakaiMatFor},
  UPakai_Material_For in 'UPakai_Material_For.pas' {FPakai_Material_For},
  UResult_Formula in 'UResult_Formula.pas' {FResult_Formula},
  UNew_ResultFormula in 'UNew_ResultFormula.pas' {FNew_resultFormula},
  UFor_TestBakar in 'UFor_TestBakar.pas' {FFor_Testbakar},
  UNew_ForTestBakar in 'UNew_ForTestBakar.pas' {FNew_ForTestBakar},
  UUser in 'UUser.pas' {FUser},
  UNew_User in 'UNew_User.pas' {FNew_User},
  UInput_um in 'UInput_um.pas' {FNew_UM_Pembelian},
  uLkJSON in 'uLkJSON.pas',
  uJSON in 'uJSON.pas',
  USetDeliveryOrder in 'USetDeliveryOrder.pas' {FSetDeliveryOrder},
  UUang_Muka_Pembelian in 'UUang_Muka_Pembelian.pas' {FUang_Muka_Pembelian},
  UListSPmuat in 'UListSPmuat.pas' {Flist_sp_muat},
  UListSalesOrder in 'UListSalesOrder.pas' {FListSalesOrder},
  UListSales_Order in 'UListSales_Order.pas' {FSalesOrder},
  UNew_SalesOrder in 'UNew_SalesOrder.pas' {FNew_SalesOrder},
  Ubrowse_faktur_pajak in 'Ubrowse_faktur_pajak.pas' {Fbrowse_faktur_pajak},
  UMasterData in 'UMasterData.pas' {FMasterData},
  UMasterWilayah in 'UMasterWilayah.pas' {FMasterWilayah},
  UNew_DataPenjualan in 'UNew_DataPenjualan.pas' {FNew_Penjualan},
  UListDeliveryOrder in 'UListDeliveryOrder.pas' {FListDeliveryOrder},
  UNewDeliveryOrder in 'UNewDeliveryOrder.pas' {FNewDeliveryOrder},
  UNew_MasterBiayaDO in 'UNew_MasterBiayaDO.pas' {FNew_MasterBiayaDO},
  UListMasterBiayaDO in 'UListMasterBiayaDO.pas' {FListMasterBiayaDO},
  UListKlasifikasi in 'UListKlasifikasi.pas' {FListKlasifikasi},
  UDataListParameter in 'UDataListParameter.pas' {FDataListParameter},
  USetMasterPenjulan in 'USetMasterPenjulan.pas' {FSetMasterPenjulan},
  UApproval_Trans_For_dan_Prod in 'UApproval_Trans_For_dan_Prod.pas' {FApproval_Trans_For_dan_Prod},
  UPerintahMuat_Sumber in 'UPerintahMuat_Sumber.pas' {FPerintahMuat_Sumber},
  UListPengajuanApprovePenjualan in 'UListPengajuanApprovePenjualan.pas' {FListPengajuanApprovePenjualan},
  UDataPerintahMuat in 'UDataPerintahMuat.pas' {FDataPerintahMuat},
  UListPerintahMuat in 'UListPerintahMuat.pas' {FListPerintahMuat},
  UDelivery_Order_Sumber in 'UDelivery_Order_Sumber.pas' {FDelivery_Order_Sumber},
  UListReturPenjualan in 'UListReturPenjualan.pas' {FListReturPenjualan},
  UDataReturPenjualan in 'UDataReturPenjualan.pas' {FDataReturPenjualan},
  UTambah_Barang in 'UTambah_Barang.pas' {FTambah_Barang},
  UTemplate_Temp in 'UTemplate_Temp.pas' {FTemplate_Temp},
  Ubrowse_pelanggan in 'Ubrowse_pelanggan.pas' {Fbrowse_data_pelanggan},
  UReturPenjualan_Sumber in 'UReturPenjualan_Sumber.pas' {FReturPenjualan_Sumber},
  UListPenjualan in 'UListPenjualan.pas' {FDataListPenjualan},
  UListTujualAwal in 'UListTujualAwal.pas' {FListTujualAwal},
  UNew_TujuanAwal in 'UNew_TujuanAwal.pas' {FNew_TujuanAwal},
  UItem_MasterFormula in 'UItem_MasterFormula.pas' {FItem_MasterFormula},
  UDataMasterAkunTrans in 'UDataMasterAkunTrans.pas' {FDataMasterAkunTrans},
  UDaftarTagihan in 'UDaftarTagihan.pas' {FDaftarTagihan},
  UDataPenerimaanBank in 'UDataPenerimaanBank.pas' {FDataPenerimaanBank},
  UListPenerimaanKas in 'UListPenerimaanKas.pas' {FListPenerimaanKas},
  UListMasterAkunTrans in 'UListMasterAkunTrans.pas' {FListMasterAkunTrans},
  UDataRencanaLunasPiutang in 'UDataRencanaLunasPiutang.pas' {FDataRencanaLunasPiutang},
  UDaftarRencanaLunasPiutang in 'UDaftarRencanaLunasPiutang.pas' {FDaftarRencanaLunasPiutang},
  UDataProspekPelanggan in 'UDataProspekPelanggan.pas' {FDataProspekPelanggan},
  UListKolektor in 'UListKolektor.pas' {FListKolektor},
  UDataKolektor in 'UDataKolektor.pas' {FDataKolektor},
  UMasterSales in 'UMasterSales.pas' {FMasterSales},
  UListPenagihanPiutang in 'UListPenagihanPiutang.pas' {FListPenagihanPiutang},
  UDataPenagihanPiutang in 'UDataPenagihanPiutang.pas' {FDataPenagihanPiutang},
  URincianPot_Penjualan in 'URincianPot_Penjualan.pas' {FRincianPot_Penjualan},
  UMovingDPP in 'UMovingDPP.pas' {FMovingDPP},
  UDaftarPenagihanPiutang in 'UDaftarPenagihanPiutang.pas' {FDaftarPenagihanPiutang},
  UListItempo in 'UListItempo.pas' {Flistitempo},
  u_rencana_lunas_hutang_input in 'u_rencana_lunas_hutang_input.pas' {FRencana_Lunas_Hutang},
  U_rencana_lunas_hutang_pengajuan in 'U_rencana_lunas_hutang_pengajuan.pas' {FRencana_Pengajuan_Pelunasan_Hutang},
  UListRencanaLunasPiutang in 'UListRencanaLunasPiutang.pas' {FListRencanaLunasPiutang},
  u_rencana_lunas_hutang in 'u_rencana_lunas_hutang.pas' {FList_Rencana_Lunas_Hutang},
  USearch_TerimaBarang in 'USearch_TerimaBarang.pas' {FSearch_TerimaBarang},
  UTerima_Material in 'UTerima_Material.pas' {FTerima_Material},
  UNew_TerimaMaterial in 'UNew_TerimaMaterial.pas' {FNew_TerimaMaterial},
  Usearch_MatTerima in 'Usearch_MatTerima.pas' {FSearch_Matterima},
  USearch_Po in 'USearch_Po.pas' {Fsearch_po},
  USearch_Purchase_Order in 'USearch_Purchase_Order.pas' {FUSearch_PO},
  UPengajuan_Approval_Pembelian in 'UPengajuan_Approval_Pembelian.pas' {FListPengajuanApprovePembelian},
  URpt_Jurnal_Khusus in 'URpt_Jurnal_Khusus.pas' {FRpt_Jurnal_Khusus},
  URpt_BukuHarianPembelian in 'URpt_BukuHarianPembelian.pas' {FRpt_BukuHarianPembelian},
  U_daftar_hutang in 'U_daftar_hutang.pas' {FDaftar_Hutang},
  U_daftar_Nocek in 'U_daftar_Nocek.pas' {Fdaftar_nocek},
  U_keluarkasbank_ajuan in 'U_keluarkasbank_ajuan.pas' {FKeluarKasBank_Ajuan},
  U_Data_rencana_lunas_hutang_pengajuan in 'U_Data_rencana_lunas_hutang_pengajuan.pas' {FDataRencanaLunasHutangPengajuan},
  u_daf_keluar_kas_bank in 'u_daf_keluar_kas_bank.pas' {Fdaf_pengeluaran_kas_bank},
  URpt_Buku_Besar in 'URpt_Buku_Besar.pas' {FRpt_Buku_Besar},
  URekap_Kontrakks in 'URekap_Kontrakks.pas' {FRekapKontrak},
  URekap_PO in 'URekap_PO.pas' {FRekap_PO},
  URekapSisa_PO in 'URekapSisa_PO.pas' {FRekapSisa_PO},
  UBHPenjualan in 'UBHPenjualan.pas' {FBHPenjualan},
  UNew_JenisUsaha in 'UNew_JenisUsaha.pas' {FNew_Jenis_Usaha},
  URekapPenjualan in 'URekapPenjualan.pas' {FRekapPenjualan},
  UListStockBarang in 'UListStockBarang.pas' {FListStockBarang},
  UBHReturPenjualan in 'UBHReturPenjualan.pas' {FBHReturPenjualan},
  URekapReturPenjualan in 'URekapReturPenjualan.pas' {FRekapReturPenjualan},
  UNewKontrakTagihan in 'UNewKontrakTagihan.pas' {FNewKontrakTagihan},
  USetJenisKontrakTagihan in 'USetJenisKontrakTagihan.pas' {FSetJenisKontrakTagihan},
  UListKontrakTagihan in 'UListKontrakTagihan.pas' {FListKontrakTagihan},
  Unew_spb in 'Unew_spb.pas' {FNew_SPB},
  UDaftarKontrak in 'UDaftarKontrak.pas' {FDaftarKontrak},
  UKartuPiutang in 'UKartuPiutang.pas' {FKartuPiutang},
  UBHPenerimaanKasBank in 'UBHPenerimaanKasBank.pas' {FBHPenerimaanKasBank},
  UHomeLogin in 'UHomeLogin.pas' {FHomeLogin},
  URpt_Rekap_Pembelian in 'URpt_Rekap_Pembelian.pas' {FRptRekap_Pembelian},
  URekap_TerimaDok in 'URekap_TerimaDok.pas' {FRpt_RekapTerimaDok},
  URpt_RekapMutasi in 'URpt_RekapMutasi.pas' {FRpt_RekapMutasi},
  URpt_NeracaLajur in 'URpt_NeracaLajur.pas' {FRpt_NeracaLajur},
  URpt_Neraca in 'URpt_Neraca.pas' {FRpt_Neraca},
  UMy_Function in 'UMy_Function.pas',
  UListPenerimaanBank in 'UListPenerimaanBank.pas' {FListPenerimaanBank},
  UPengajuanApproval_JurnalTrans in 'UPengajuanApproval_JurnalTrans.pas' {FPengajuan_AppJurnal_Trans},
  UDataListPelakuBiaya in 'UDataListPelakuBiaya.pas' {FDataListPelakuBiaya},
  UDataListKelompokBiaya in 'UDataListKelompokBiaya.pas' {FDataListKelompokBiaya},
  UDataKelompokBiaya in 'UDataKelompokBiaya.pas' {FDataKelompokBiaya},
  UDataKasKecil in 'UDataKasKecil.pas' {FDataKasKecil},
  UDataKasBon in 'UDataKasBon.pas' {FDataKasBon},
  UListKasKecil in 'UListKasKecil.pas' {FListKasKecil},
  UListKasBon in 'UListKasBon.pas' {FListKasBon},
  UMaster_FormulaProd in 'UMaster_FormulaProd.pas' {FMaster_FormulaProd},
  USPK_Produksi in 'USPK_Produksi.pas' {FSPK_Produksi},
  UBonPermt_Barang in 'UBonPermt_Barang.pas' {FBonPermt_Barang},
  UBon_Produksi in 'UBon_Produksi.pas' {FBon_Produksi},
  UBon_KmsnProd in 'UBon_KmsnProd.pas' {FBon_Kmsn_prod},
  UStokMat_Prod in 'UStokMat_Prod.pas' {FStokMat_Prod},
  U_List_Kasbon in 'U_List_Kasbon.pas' {FKasbon},
  UList_Pelaku_Biaya in 'UList_Pelaku_Biaya.pas' {FListPelakuBiaya},
  U_Pelaku_Biaya in 'U_Pelaku_Biaya.pas' {FPelaku_Biaya},
  UNew_Kasbon in 'UNew_Kasbon.pas' {FNew_Kasbon},
  UApproval_Keluar_Kas_Bank in 'UApproval_Keluar_Kas_Bank.pas' {FApproval_Keluar_Kas_Bank},
  URpt_BHKeluarKasdanBank in 'URpt_BHKeluarKasdanBank.pas' {FRpt_BHKeluarKasdanBank},
  UMasterWilayahAdministratif in 'UMasterWilayahAdministratif.pas' {FMasterWilayahAdministratif},
  UListOrderTelemarketing in 'UListOrderTelemarketing.pas' {FListOrderTelemarketing},
  UDaftarRekeningKoran in 'UDaftarRekeningKoran.pas' {FDaftarRekeningKoran},
  UDaftarKendaraan in 'UDaftarKendaraan.pas' {FDaftarKendaraan},
  UDataBankGaransi in 'UDataBankGaransi.pas' {FDataBankGaransi},
  UDataPeLakuBiaya in 'UDataPeLakuBiaya.pas' {FDataPeLakuBiaya},
  UDashboard2 in 'UDashboard2.pas' {FDashboard2},
  URpt_Arus_Kas in 'URpt_Arus_Kas.pas' {FRpt_arus_kas},
  UListJurnal_memorial in 'UListJurnal_memorial.pas' {Flist_jurnal_memorial},
  UNewJurnal_memorial in 'UNewJurnal_memorial.pas' {FNewJurnal_memo},
  UCari_ket_memorial in 'UCari_ket_memorial.pas' {FKet_Memorial},
  UCari_SumberMemorial in 'UCari_SumberMemorial.pas' {FCari_SumberMemorial},
  Usaldo_bank_rencana_pelunasan_hutang in 'Usaldo_bank_rencana_pelunasan_hutang.pas' {Fsaldo_bank_rencana_pelunasan_hutang},
  Udaftar_deposito in 'Udaftar_deposito.pas' {Fdaftar_deposito},
  Utrx_deposito in 'Utrx_deposito.pas' {Ftrx_deposito},
  Utrx_deposito_ajuan in 'Utrx_deposito_ajuan.pas' {Ftrx_deposito_ajuan},
  Utrx_deposito2 in 'Utrx_deposito2.pas' {Ftrx_deposito2},
  Ufoto_deposito in 'Ufoto_deposito.pas' {Form1},
  ULap_Kartu_Hutang in 'ULap_Kartu_Hutang.pas' {FLap_Kartu_Hutang},
  Ustock_opname_kas_besar in 'Ustock_opname_kas_besar.pas' {Fstock_opname_kas_besar},
  Ustock_opname_kas_kecil in 'Ustock_opname_kas_kecil.pas' {Fstock_opname_kas_kecil},
  Udata_uang_kas_kecil in 'Udata_uang_kas_kecil.pas' {Fdata_uang_cash_kecil},
  Udata_uang_kas_besar in 'Udata_uang_kas_besar.pas' {Fdata_uang_cash_besar},
  UMutasi_Bank in 'UMutasi_Bank.pas' {FMutasiBank},
  ULap_Buku_Harian_Kas in 'ULap_Buku_Harian_Kas.pas' {FLap_Buku_Harian_Kas},
  UDataPengajuanPengeluaranKasBank in 'UDataPengajuanPengeluaranKasBank.pas' {FDataPengajuanPengeluaranKasBank},
  UDataPengeluaranKasBank in 'UDataPengeluaranKasBank.pas' {FDataPengeluaranKasBank},
  ULap_Deposito in 'ULap_Deposito.pas' {Form2},
  Udaftar_deposito_ajuan in 'Udaftar_deposito_ajuan.pas' {Fdaftar_deposito_ajuan},
  udafajuankeluarkasbank in 'udafajuankeluarkasbank.pas' {Fdafajuankeluarkasbank},
  ULap_Ikhtisar_Biaya_KasKecil_BOP in 'ULap_Ikhtisar_Biaya_KasKecil_BOP.pas' {FLap_Ikhtisar_Biaya_KasKecil_BOP},
  ULap_Ikhtisar_Biaya_KasKecil_ADM in 'ULap_Ikhtisar_Biaya_KasKecil_ADM.pas' {FLap_Ikhtisar_Biaya_KasKecil_ADM},
  URekap_Ikhtisar_Kas_Kecil in 'URekap_Ikhtisar_Kas_Kecil.pas' {FRekap_Ikhtisar_Kas_Kecil},
  Upengajuan_deposito in 'Upengajuan_deposito.pas' {Fpengajuan_deposito},
  ULap_Buku_Harian_Kas_Kecil in 'ULap_Buku_Harian_Kas_Kecil.pas' {FLap_Buku_Harian_Kas_Kecil},
  USearch_MaterialRetur in 'USearch_MaterialRetur.pas' {FSearch_MaterialRetur},
  URpt_Kartu_Gudang in 'URpt_Kartu_Gudang.pas' {FRpt_Kartu_Gudang},
  URpt_Lr in 'URpt_Lr.pas' {FRpt_Lr},
  browse_akun_kredit in 'browse_akun_kredit.pas' {Fbrowse_akun_kredit},
  UPengajuanAsset in 'UPengajuanAsset.pas' {FPengajuanAsset},
  UDetailPengajuanAsset in 'UDetailPengajuanAsset.pas' {FDetailPengajuanAsset},
  UMasterDataAsset in 'UMasterDataAsset.pas' {FMasterDataAsset},
  u_master_asset in 'u_master_asset.pas' {FMasterAsset},
  u_master_asset2 in 'u_master_asset2.pas' {frm_master_asset},
  Ututup_buku_akunting in 'Ututup_buku_akunting.pas' {Form3},
  URpt_Tutup_Buku in 'URpt_Tutup_Buku.pas' {FRpt_Tutup_Buku},
  UMasterSetiingAsset in 'UMasterSetiingAsset.pas' {FMasterSetingAsset},
  UPerhitunganAsset in 'UPerhitunganAsset.pas' {FPerhitunganAsset},
  UDepresiasi in 'UDepresiasi.pas' {FDepresiasi},
  UStockOpnameNota in 'UStockOpnameNota.pas' {FStockOpnameNota},
  URekapTagihanKolektor in 'URekapTagihanKolektor.pas' {FRekapTagihanKolektor},
  URekapPenjualanPerPelanggan in 'URekapPenjualanPerPelanggan.pas' {FRekapPenjualanPerPelanggan},
  Ulog in 'Ulog.pas' {FLog},
  UDaftarPiutangBermasalah in 'UDaftarPiutangBermasalah.pas' {FDaftarPiutangBermasalah},
  URekapUmurPiutang in 'URekapUmurPiutang.pas' {FRekapUmurPiutang},
  URekapSaldoPiutangPerKaresidenan in 'URekapSaldoPiutangPerKaresidenan.pas' {FRekapSaldoPiutangPerKaresidenan},
  UListKoreksi in 'UListKoreksi.pas' {FListKoreksi},
  UKoreksi in 'UKoreksi.pas' {FKoreksi},
  UListTargetPenjualan in 'UListTargetPenjualan.pas' {FListTargetPenjualan},
  UNew_DataTargetPenjualan in 'UNew_DataTargetPenjualan.pas' {FNew_DataTargetPenjualan},
  UPenyesuaianFaktur in 'UPenyesuaianFaktur.pas' {FPenyesuaianFaktur},
  U_rekap_ppn_masukan in 'U_rekap_ppn_masukan.pas' {Frekap_ppn_masukan},
  U_cetak_rekap_hutang in 'U_cetak_rekap_hutang.pas' {F_cetak_rekap_hutang};

//  ULaporanHarianSisaNota in 'ULaporanHarianSisaNota.pas' {FLaporanHarianSisaNota},
//  ULaporanHarianSisaNotaPerKabupaten in 'ULaporanHarianSisaNotaPerKabupaten.pas' {FLaporanHarianSisaNotaPerKabupaten},
//  ULaporanHarianSisaNotaPerTP - Copy in 'ULaporanHarianSisaNotaPerTP - Copy.pas' {FLaporanHarianSisaNotaPerTP};

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
  Application.CreateForm(TFUser, FUser);
  Application.CreateForm(TFNew_User, FNew_User);
  Application.CreateForm(TFListKolektor, FListKolektor);
  Application.CreateForm(TFDataKolektor, FDataKolektor);
  Application.CreateForm(TFMasterSales, FMasterSales);
  Application.CreateForm(TFListPenagihanPiutang, FListPenagihanPiutang);
  Application.CreateForm(TFDataPenagihanPiutang, FDataPenagihanPiutang);
  Application.CreateForm(TFRincianPot_Penjualan, FRincianPot_Penjualan);
  Application.CreateForm(TFMovingDPP, FMovingDPP);
  Application.CreateForm(TFDaftarPenagihanPiutang, FDaftarPenagihanPiutang);
  Application.CreateForm(TFDelivery_Order_Sumber, FDelivery_Order_Sumber);
  Application.CreateForm(TFSetDeliveryOrder, FSetDeliveryOrder);
  Application.CreateForm(TFListPerintahMuat, FListPerintahMuat);
  Application.CreateForm(TFListSalesOrder, FListSalesOrder);
  Application.CreateForm(TFSalesOrder, FSalesOrder);
  Application.CreateForm(TFNew_SalesOrder, FNew_SalesOrder);
  Application.CreateForm(TFbrowse_data_pelanggan, Fbrowse_data_pelanggan);
  Application.CreateForm(TFbrowse_faktur_pajak, Fbrowse_faktur_pajak);
  Application.CreateForm(TFMasterData, FMasterData);
  Application.CreateForm(TFMasterWilayah, FMasterWilayah);
  Application.CreateForm(TFNew_Penjualan, FNew_Penjualan);
  Application.CreateForm(TFListDeliveryOrder, FListDeliveryOrder);
  Application.CreateForm(TFNewDeliveryOrder, FNewDeliveryOrder);
  Application.CreateForm(TFNew_MasterBiayaDO, FNew_MasterBiayaDO);
  Application.CreateForm(TFListMasterBiayaDO, FListMasterBiayaDO);
  Application.CreateForm(TFListKlasifikasi, FListKlasifikasi);
  Application.CreateForm(TFDataListParameter, FDataListParameter);
  Application.CreateForm(TFSetMasterPenjulan, FSetMasterPenjulan);
  Application.CreateForm(TFApproval_Trans_For_dan_Prod, FApproval_Trans_For_dan_Prod);
  Application.CreateForm(TFDataPerintahMuat, FDataPerintahMuat);
  Application.CreateForm(TFPerintahMuat_Sumber, FPerintahMuat_Sumber);
  Application.CreateForm(TFListPengajuanApprovePenjualan, FListPengajuanApprovePenjualan);
  Application.CreateForm(TFDataPerintahMuat, FDataPerintahMuat);
  Application.CreateForm(TFDelivery_Order_Sumber, FDelivery_Order_Sumber);
  Application.CreateForm(TFListReturPenjualan, FListReturPenjualan);
  Application.CreateForm(TFDataReturPenjualan, FDataReturPenjualan);
  Application.CreateForm(TFListTargetPenjualan, FListTargetPenjualan);
  Application.CreateForm(TFNew_DataTargetPenjualan, FNew_DataTargetPenjualan);
  Application.CreateForm(TFPenyesuaianFaktur, FPenyesuaianFaktur);
  //  Application.CreateForm(TFTambah_Barang, FTambah_Barang);
  Application.CreateForm(TFTemplate_Temp, FTemplate_Temp);
  Application.CreateForm(TFReturPenjualan_Sumber, FReturPenjualan_Sumber);
  Application.CreateForm(TFDataListPenjualan, FDataListPenjualan);
  Application.CreateForm(TFListTujualAwal, FListTujualAwal);
  Application.CreateForm(TFNew_TujuanAwal, FNew_TujuanAwal);
  Application.CreateForm(TFItem_MasterFormula, FItem_MasterFormula);
  Application.CreateForm(TFDataMasterAkunTrans, FDataMasterAkunTrans);
  Application.CreateForm(TFDaftarTagihan, FDaftarTagihan);
  Application.CreateForm(TFDataPenerimaanBank, FDataPenerimaanBank);
  Application.CreateForm(TFListRencanaLunasPiutang, FListRencanaLunasPiutang);
  Application.CreateForm(TFListPenerimaanKas, FListPenerimaanKas);
  Application.CreateForm(TFListMasterAkunTrans, FListMasterAkunTrans);
  Application.CreateForm(TFDataRencanaLunasPiutang, FDataRencanaLunasPiutang);
  Application.CreateForm(TFDaftarRencanaLunasPiutang, FDaftarRencanaLunasPiutang);
  Application.CreateForm(TFListKolektor, FListKolektor);
  Application.CreateForm(TFDataProspekPelanggan, FDataProspekPelanggan);
  Application.CreateForm(TFDataKolektor, FDataKolektor);
  Application.CreateForm(TFMasterSales, FMasterSales);
  Application.CreateForm(TFListPenagihanPiutang, FListPenagihanPiutang);
  Application.CreateForm(TFDataPenagihanPiutang, FDataPenagihanPiutang);
  Application.CreateForm(TFRincianPot_Penjualan, FRincianPot_Penjualan);
  Application.CreateForm(TFMovingDPP, FMovingDPP);
  Application.CreateForm(TFDaftarPenagihanPiutang, FDaftarPenagihanPiutang);
  Application.CreateForm(TFInput_Produk, FInput_Produk);
  Application.CreateForm(TFInput_Produk, FInput_Produk);
  Application.CreateForm(TFNewKonv_produk, FNewKonv_produk);
  Application.CreateForm(TFListGudang, FListGudang);
  Application.CreateForm(TFNew_Gudang, FNew_Gudang);
  Application.CreateForm(TFListBank, FListBank);
  Application.CreateForm(TFNewBank, FNewBank);
  Application.CreateForm(TFAkun_Perkiraan_TerimaMat, FAkun_Perkiraan_TerimaMat);
  Application.CreateForm(TFNew_Additional, FNew_Additional);
  Application.CreateForm(TFNew_Kategori_Gudang, FNew_Kategori_Gudang);
  Application.CreateForm(TFImportnocek, FImportnocek);
  Application.CreateForm(TFlistmaterialstok, Flistmaterialstok);
  Application.CreateForm(TFReturnPembelian, FReturnPembelian);
  Application.CreateForm(TFNew_ReturnPemb, FNew_ReturnPemb);
  Application.CreateForm(TFSupp_Pembelian, FSupp_Pembelian);
  Application.CreateForm(TFMaster_PercBarang, FMaster_PercBarang);
  Application.CreateForm(TFDaftar_Hutang, FDaftar_Hutang);
  Application.CreateForm(TFdaftar_nocek, Fdaftar_nocek);
  Application.CreateForm(TFdafajuankeluarkasbank, Fdafajuankeluarkasbank);
  Application.CreateForm(TFKeluarKasBank_Ajuan, FKeluarKasBank_Ajuan);
  Application.CreateForm(TFDataRencanaLunasHutangPengajuan, FDataRencanaLunasHutangPengajuan);
  Application.CreateForm(TFdaf_pengeluaran_kas_bank, Fdaf_pengeluaran_kas_bank);
  Application.CreateForm(TFDataPengajuanPengeluaranKasBank, FDataPengajuanPengeluaranKasBank);
  Application.CreateForm(TFDataPengeluaranKasBank, FDataPengeluaranKasBank);
  Application.CreateForm(TFDaftarKontrak, FDaftarKontrak);
  Application.CreateForm(TFHomeLogin, FHomeLogin);
  Application.CreateForm(TFListPenerimaanBank, FListPenerimaanBank);
  Application.CreateForm(TFKasbon, FKasbon);
  Application.CreateForm(TFListPelakuBiaya, FListPelakuBiaya);
  Application.CreateForm(TFPelaku_Biaya, FPelaku_Biaya);
  Application.CreateForm(TFNew_Kasbon, FNew_Kasbon);
  Application.CreateForm(TFDataListPelakuBiaya, FDataListPelakuBiaya);
  Application.CreateForm(TFDataPeLakuBiaya, FDataPeLakuBiaya);
  Application.CreateForm(TFDataKelompokBiaya, FDataKelompokBiaya);
  Application.CreateForm(TFDataListKelompokBiaya, FDataListKelompokBiaya);
  Application.CreateForm(TFDataKasBon, FDataKasBon);
  Application.CreateForm(TFListKasBon, FListKasBon);
  Application.CreateForm(TFListKasKecil, FListKasKecil);
  Application.CreateForm(TFDataKasKecil, FDataKasKecil);
  Application.CreateForm(TFDataListPelakuBiaya, FDataListPelakuBiaya);
  Application.CreateForm(TFDataPeLakuBiaya, FDataPeLakuBiaya);
  Application.CreateForm(TFDataListKelompokBiaya, FDataListKelompokBiaya);
  Application.CreateForm(TFDataKelompokBiaya, FDataKelompokBiaya);
  Application.CreateForm(TFDataKasKecil, FDataKasKecil);
  Application.CreateForm(TFDataKasBon, FDataKasBon);
  Application.CreateForm(TFListKasKecil, FListKasKecil);
  Application.CreateForm(TFListKasBon, FListKasBon);
  Application.CreateForm(TFListOrderTelemarketing, FListOrderTelemarketing);
  Application.CreateForm(TFMasterWilayahAdministratif, FMasterWilayahAdministratif);
  Application.CreateForm(TFDaftarKendaraan, FDaftarKendaraan);
  Application.CreateForm(TFDataBankGaransi, FDataBankGaransi);
  Application.CreateForm(TFDataPeLakuBiaya, FDataPeLakuBiaya);
  Application.CreateForm(TFDashboard2, FDashboard2);
  Application.CreateForm(TFDetailPengajuanAsset, FDetailPengajuanAsset);
  Application.CreateForm(TFMasterAsset, FMasterAsset);
  Application.CreateForm(Tfrm_master_asset, frm_master_asset);
  Application.CreateForm(TFPengajuanAsset, FPengajuanAsset);
  Application.CreateForm(TFDetailPengajuanAsset, FDetailPengajuanAsset);
  Application.CreateForm(TFMasterAsset, FMasterAsset);
  Application.CreateForm(TFMasterDataAsset, FMasterDataAsset);
  Application.CreateForm(Tfrm_master_asset, frm_master_asset);
  Application.CreateForm(TFMasterAsset, FMasterAsset);
  Application.CreateForm(Tfrm_master_asset, frm_master_asset);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFRpt_Tutup_Buku, FRpt_Tutup_Buku);
  Application.CreateForm(TFMasterSetingAsset, FMasterSetingAsset);
  Application.CreateForm(TFPerhitunganAsset, FPerhitunganAsset);
  Application.CreateForm(TFListKoreksi, FListKoreksi);
  Application.CreateForm(TFKoreksi, FKoreksi);
  //  Application.CreateForm(TFRpt_arus_kas, FRpt_arus_kas);
  Application.CreateForm(TFMasterWilayahAdministratif, FMasterWilayahAdministratif);
//  Application.CreateForm(TFMasterWilayahAdministratif, FMasterWilayahAdministratif);
//  Application.CreateForm(TFsaldo_bank_rencana_pelunasan_hutang, Fsaldo_bank_rencana_pelunasan_hutang);
//  Application.CreateForm(TFsaldo_bank_rencana_pelunasan_hutang, Fsaldo_bank_rencana_pelunasan_hutang);
  Application.CreateForm(TFdafajuankeluarkasbank, Fdafajuankeluarkasbank);
//  Application.CreateForm(TFdafajuankeluarkasbank, Fdafajuankeluarkasbank);
//  Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_BOP, FLap_Ikhtisar_Biaya_KasKecil_BOP);
//  Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_ADM, FLap_Ikhtisar_Biaya_KasKecil_ADM);
//  Application.CreateForm(TFRekap_Ikhtisar_Kas_Kecil, FRekap_Ikhtisar_Kas_Kecil);
//  Application.CreateForm(TFpengajuan_deposito, Fpengajuan_deposito);
//  Application.CreateForm(TFLap_Buku_Harian_Kas_Kecil, FLap_Buku_Harian_Kas_Kecil);
//  Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_BOP, FLap_Ikhtisar_Biaya_KasKecil_BOP);
//  Application.CreateForm(TFLap_Ikhtisar_Biaya_KasKecil_ADM, FLap_Ikhtisar_Biaya_KasKecil_ADM);
//  Application.CreateForm(TFRekap_Ikhtisar_Kas_Kecil, FRekap_Ikhtisar_Kas_Kecil);
//  Application.CreateForm(TFsaldo_bank_rencana_pelunasan_hutang, Fsaldo_bank_rencana_pelunasan_hutang);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFdafajuankeluarkasbank, Fdafajuankeluarkasbank);
//  Application.CreateForm(TFLap_Buku_Harian_Kas, FLap_Buku_Harian_Kas);
  Application.CreateForm(TFDataPengajuanPengeluaranKasBank, FDataPengajuanPengeluaranKasBank);
  Application.CreateForm(TFDataPengeluaranKasBank, FDataPengeluaranKasBank);
//  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFpengajuan_deposito, Fpengajuan_deposito);
//  Application.CreateForm(TFLap_Buku_Harian_Kas, FLap_Buku_Harian_Kas);
//  Application.CreateForm(TFMasterWilayahAdministratif, FMasterWilayahAdministratif);
//  Application.CreateForm(TFListOrderTelemarketing, FListOrderTelemarketing);
  Application.CreateForm(TFListOrderTelemarketing, FListOrderTelemarketing);
  Application.CreateForm(TFMasterWilayahAdministratif, FMasterWilayahAdministratif);
//  Application.CreateForm(TFLap_Buku_Harian_Kas_Kecil, FLap_Buku_Harian_Kas_Kecil);
//  Application.CreateForm(TFLap_Buku_Harian_Kas, FLap_Buku_Harian_Kas);
//  Application.CreateForm(TFRpt_BHKeluarKasdanBank, FRpt_BHKeluarKasdanBank);
  Application.CreateForm(TFupdate_faktur, Fupdate_faktur);
  Application.CreateForm(TFListPelanggan, FListPelanggan);
  Application.CreateForm(TFNew_Pelanggan, FNew_Pelanggan);
  Application.CreateForm(TFFakturPajak, FFakturPajak);
  Application.CreateForm(TFinput_faktur_pajak, Finput_faktur_pajak);
  Application.CreateForm(TFJabatan, FJabatan);
  Application.CreateForm(TFNew_KelompokBarang, FNew_KelompokBarang);
  Application.CreateForm(TFbrowse_faktur_pajak, Fbrowse_faktur_pajak);
  Application.CreateForm(TFDaftarKlasifikasi, FDaftarKlasifikasi);
  Application.CreateForm(TFSetMasterPelanggan, FSetMasterPelanggan);
  Application.CreateForm(TFSetMasterWilayah, FSetMasterWilayah);
  Application.CreateForm(TFRencana_Lunas_Hutang, FRencana_Lunas_Hutang);
  Application.CreateForm(TFRencana_Pengajuan_Pelunasan_Hutang, FRencana_Pengajuan_Pelunasan_Hutang);
  Application.CreateForm(TFListRencanaLunasPiutang, FListRencanaLunasPiutang);
  Application.CreateForm(TFTerima_Material, FTerima_Material);
  Application.CreateForm(TFNew_TerimaMaterial, FNew_TerimaMaterial);
  Application.CreateForm(TFSearch_Matterima, FSearch_Matterima);
  Application.CreateForm(TFNew_Jenis_Usaha, FNew_Jenis_Usaha);
  Application.CreateForm(TFListStockBarang, FListStockBarang);
  Application.CreateForm(TFNewKontrakTagihan, FNewKontrakTagihan);
  Application.CreateForm(TFSetJenisKontrakTagihan, FSetJenisKontrakTagihan);
  Application.CreateForm(TFListKontrakTagihan, FListKontrakTagihan);
  FHomeSreen.Hide;
  FHomeSreen.Free;
  Application.Run;
end.
