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
    procedure FormShow(Sender: TObject);
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
  UNew_MasterBiayaDO, UNewDeliveryOrder, USetDeliveryOrder, USetMasterPelanggan,
  UDataReturPenjualan, UDataMasterAkunTrans, UDataPenerimaanBank,
  UDataPenagihanPiutang, UMovingDPP, UNew_Supplier, UDataPengeluaranKasBank,
  UBHPenjualan, URekapPenjualan, UListStockBarang, UBHReturPenjualan,
  URekapReturPenjualan, USetJenisKontrakTagihan, UNewKontrakTagihan,UDataPengajuanPengeluaranKasBank,
  UDaftarKontrak, UKartuPiutang, UBHPenerimaanKasBank, UDataKasBon,
  UDataKasKecil, UDaftarRekeningKoran, UDataBankGaransi, UDataPeLakuBiaya,
  UListOrderTelemarketing, UExportFaktur, UDaftarPiutangBermasalah,
  UAmplopPelanggan, URekapTagihanKolektor, UListPiutangBermasalah,
  URekapPenjualanPerPelanggan, UMonitoringTargetOmset, ULaporanHarianSisaNota,
  Ulog, ULaporanHarianSisaNotaPerTP, ULaporanHarianSisaNotaPerKabupaten,
  ULaporanHarianSisaNotaPiutangPerOutlet, UStockOpnameNota, UListPelanggan,
  UExportImportTargetPenjualan, UNew_Satuan, UNew_Barang, URpt_Kartu_Gudang,
  UListPenjualan, UListSales_Order, UListReturPenjualan, Udaftar_TP, UNewBank,
  URincianUmurPiutang, UKolektifPenjualan, UKolektifSuratJalan;

procedure TFMasterData.DBGridCustomerDblClick(Sender: TObject);
var 
  vid_modul: string;
begin
//  if vcall='perkiraan_supplier_return' then
//  begin
//    FNew_supplier.edKodePerkiraan_ret.Text:=MemMasterData['KD_MASTER'];
//    FNew_supplier.KodeHeaderPerkiraan_ret:=MemMasterData['KD_MASTER'];
//  end;


//Nanang
  if vcall='kolektifsuratjalan_kares' then
  begin
    FKolektifSuratJalan.strKodeKaresidenan:=MemMasterData['KD_MASTER'];
    FKolektifSuratJalan.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;

//Nanang
  if vcall='kolektifpenjualan_kares' then
  begin
    FKolektifPenjualan.strKodeKaresidenan:=MemMasterData['KD_MASTER'];
    FKolektifPenjualan.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;

//Nanang
  if vcall='salesorder_gudang' then
  begin
    FNew_SalesOrder.StrKodeGudang:=MemMasterData['KD_MASTER'];
    FNew_SalesOrder.edGudang.Text:=MemMasterData['NM_MASTER'];
  end;

  if vcall='piutangbermasalah_kar' then
  begin
    FListPiutangBermasalah.StrKaresidananID:=MemMasterData['KD_MASTER'];
    FListPiutangBermasalah.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;

//Antok
  if vcall='cash_bank_pelaku_biaya_ajuan' then //14-08-2025
  begin
    FDaftar_TP.MemTP.Edit;
    FDaftar_TP.MemTP['tp_code']:=MemMasterData['KD_MASTER'];
    FDaftar_TP.MemTP['tp_name']:=MemMasterData['NM_MASTER'];
    FDaftar_TP.MemTP.Post;
  end;
   //Antok
  if vcall='cash_bank_pelaku_biaya' then //18-08-2025
  begin
    FDaftar_TP.MemTP_Real.Edit;
    FDaftar_TP.MemTP_Real['tp_code']:=MemMasterData['KD_MASTER'];
    FDaftar_TP.MemTP_Real['tp_name']:=MemMasterData['NM_MASTER'];
    FDaftar_TP.MemTP_Real.Post;
  end;
  if vcall='perkiraan_bank' then //10-09-2025
  begin
    FNewBank.edkd_akun1.Text:=MemMasterData['KD_MASTER'];
    FNewBank.Ednm_akun1.Text:=MemMasterData['NM_MASTER'];
  end;
//  Nanang
  if vcall='do_lokasi_muat' then
  begin
    FNewDeliveryOrder.kodelokasimuat:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edLokasiMuat.Text:=MemMasterData['NM_MASTER'];
  end;
//  Nanang
  if vcall='do_lokasi_bongkar' then
  begin
    FNewDeliveryOrder.kodelokasibongkar:=MemMasterData['KD_MASTER'];
    FNewDeliveryOrder.edLokasiBongkar.Text:=MemMasterData['NM_MASTER'];
  end;
  //rudy
  if vcall='satuan_coretax' then
  begin
    FNew_Satuan.edKdSatCoretax.Text:=MemMasterData['KD_MASTER'];
    FNew_Satuan.edNmSatCoretax.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='brg_coretax' then
  begin
    FNew_Barang.edKdBrgCoretax.Text:=MemMasterData['KD_MASTER'];
    FNew_Barang.edNmBrgCoretax.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='kartu_gudang' then
  begin
    FRpt_Kartu_Gudang.vgroup_id:=MemMasterData['KD_MASTER'];
    FRpt_Kartu_Gudang.cxkategori_barang.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Mas Anto
  if vcall='perkiraan_supplier_return' then
  begin
    FNew_supplier.edKodePerkiraan_ret.Text:=MemMasterData['KD_MASTER'];
    FNew_supplier.KodeHeaderPerkiraan_ret:=MemMasterData['KD_MASTER'];
  end;
  //Nanang
  if vcall='companycode_pelanggan' then
  begin
    FNew_Pelanggan.edCompanyCode.Text:=MemMasterData['KD_MASTER'];
  end;
  if vcall='kode_trans_export_faktur' then
  begin
    FExportFaktur.kode_jenis_transaksi:=MemMasterData['KD_MASTER'];
    FExportFaktur.edJenisTransaksi.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='exportfaktur' then
  begin
    FExportFaktur.strKodeKaresidenan:=MemMasterData['KD_MASTER'];
    FExportFaktur.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='rincianumurpiutangkares' then
  begin
    FRincianUmurPiutang.strKodeKaresidenan:=MemMasterData['KD_MASTER'];
    FRincianUmurPiutang.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //ShowMessage(vcall);
  if vcall='m_bank_garansi' then
  begin
    FDataBankGaransi.MemMaster.edit;
    FDataBankGaransi.MemMaster['kode_bank']:=MemMasterData['KD_MASTER'];
    FDataBankGaransi.MemMaster['nama_bank']:=MemMasterData['NM_MASTER'];
    FDataBankGaransi.MemMaster.post;
  end;
  if vcall='kategori_bank_garansi' then
  begin
    FDataBankGaransi.MemMaster.edit;
    FDataBankGaransi.MemMaster['kode_kategori']:=MemMasterData['KD_MASTER'];
    FDataBankGaransi.MemMaster['nama_kategori']:=MemMasterData['NM_MASTER'];
    FDataBankGaransi.MemMaster.post;
  end;
  if vcall='m_supplier' then
  begin
    FListStockBarang.edKodeSupplier.Text:=MemMasterData['KD_MASTER'];
    FListStockBarang.edNamaSupplier.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_gudang' then
  begin
    FListStockBarang.edKodeGudang.Text:=MemMasterData['KD_MASTER'];
    FListStockBarang.edNamaGudang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='kartupiutang_kares' then
  begin
    FKartuPiutang.vkd_kares:=MemMasterData['KD_MASTER'];
    FKartuPiutang.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FKartuPiutang.vkd_kab:='';
    FKartuPiutang.vkd_tp:='';
    FKartuPiutang.edTP.EditValue:='';
    FKartuPiutang.edKabupaten.EditValue:='';
    FKartuPiutang.strKodePelanggan:='';
    FKartuPiutang.edNama_Pelanggan.EditValue:='';
  end;
  if vcall='kartupiutang_tp' then
  begin
    FKartuPiutang.vkd_tp:=MemMasterData['KD_MASTER'];
    FKartuPiutang.edTP.EditValue:=MemMasterData['NM_MASTER'];
    FKartuPiutang.vkd_kares:='';
    FKartuPiutang.edKaresidenan.EditValue:='';
    FKartuPiutang.vkd_kab:='';
    FKartuPiutang.edKabupaten.EditValue:='';
    FKartuPiutang.strKodePelanggan:='';
    FKartuPiutang.edNama_Pelanggan.EditValue:='';
  end;
  if vcall='kartupiutang_kab' then
  begin
    FKartuPiutang.vkd_kab:=MemMasterData['KD_MASTER'];
    FKartuPiutang.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
    FKartuPiutang.strKodePelanggan:='';
    FKartuPiutang.edNama_Pelanggan.EditValue:='';
  end;
  if vcall='piutangbermasalah_kab' then
  begin
    FListPiutangBermasalah.StrKabupatenID:=MemMasterData['KD_MASTER'];
    FListPiutangBermasalah.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='bhpenerimaankas_bank_kab' then
  begin
    FBHPenerimaanKasBank.vkd_kab:=MemMasterData['KD_MASTER'];
    FBHPenerimaanKasBank.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='rekening_koran' then
  begin
    FDaftarRekeningKoran.edRekeningBank.EditValue:=MemMasterData['KD_MASTER'];
    FDaftarRekeningKoran.edNamaBank.EditValue:=MemMasterData['NM_MASTER'];
    FDaftarRekeningKoran.vRekeningBank:=MemMasterData['KD_MASTER'];
    FDaftarRekeningKoran.vNamaBank:=MemMasterData['NM_MASTER'];
  end;
  if vcall='bhpenerimaankas_bank_kares' then
  begin
    FBHPenerimaanKasBank.vkd_kares:=MemMasterData['KD_MASTER'];
    FBHPenerimaanKasBank.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FBHPenerimaanKasBank.vkd_kab:='';
    FBHPenerimaanKasBank.edKabupaten.EditValue:='';
  end;
  if vcall='bhpenjualan_kab' then
  begin
    FBHPenjualan.vkd_kab:=MemMasterData['KD_MASTER'];
    FBHPenjualan.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='bhpenjualan_kares' then
  begin
    FBHPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FBHPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FBHPenjualan.vkd_kab:='';
    FBHPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='rekappenjualan_kab' then
  begin
    FRekapPenjualan.vkd_kab:=MemMasterData['KD_MASTER'];
    FRekapPenjualan.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='bhreturpenjualan_kab' then
  begin
    FBHReturPenjualan.vkd_kab:=MemMasterData['KD_MASTER'];
    FBHReturPenjualan.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='bhreturpenjualan_kares' then
  begin
    FBHReturPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FBHReturPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FBHReturPenjualan.vkd_kab:='';
    FBHReturPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='rekappenjualan_kab' then
  begin
    FRekapPenjualan.vkd_kab:=MemMasterData['KD_MASTER'];
    FRekapPenjualan.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='rekappenjualan_kares' then
  begin
    FRekapPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FRekapPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FRekapPenjualan.vkd_kab:='';
    FRekapPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='listpenjualan_kares' then
  begin
    FDataListPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FDataListPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
//    FRekapPenjualan.vkd_kab:='';
//    FRekapPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='listreturpenjualan_kares' then
  begin
    FListReturPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FListReturPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
//    FRekapPenjualan.vkd_kab:='';
//    FRekapPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='listsalesorder_kares' then
  begin
    FSalesOrder.vkd_kares:=MemMasterData['KD_MASTER'];
    FSalesOrder.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
//    FRekapPenjualan.vkd_kab:='';
//    FRekapPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='rekap_ret_penjualan_kab' then
  begin
    FRekapReturPenjualan.vkd_kab:=MemMasterData['KD_MASTER'];
    FRekapReturPenjualan.edKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  if vcall='rekap_ret_penjualan_kares' then
  begin
    FRekapReturPenjualan.vkd_kares:=MemMasterData['KD_MASTER'];
    FRekapReturPenjualan.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
    FRekapReturPenjualan.vkd_kab:='';
    FRekapReturPenjualan.edKabupaten.EditValue:='';
  end;
  if vcall='m_kolektor_moving' then
  begin
    FMovingDPP.edKodeKolektor.Text:=MemMasterData['KD_MASTER'];
    FMovingDPP.edNamaKolektor.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_kolektor' then
  begin
    FDataPenagihanPiutang.edKodeKolektor.Text:=MemMasterData['KD_MASTER'];
    FDataPenagihanPiutang.edNamaKolektor.Text:=MemMasterData['NM_MASTER'];
  end;         
  if vcall='sumber_terima' then
  begin
    FDataPenerimaanBank.edKodeSumberTagihan.Text:=MemMasterData['KD_MASTER'];
    FDataPenerimaanBank.edNMSumberTagihan.Text:=MemMasterData['NM_MASTER'];
  end;               
  if vcall='jenis_terima' then
  begin
    FDataPenerimaanBank.edKodeJenisBayar.Text:=MemMasterData['KD_MASTER'];
    FDataPenerimaanBank.edNMJenisBayar.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_jns_transaksi' then
  begin
    with FDataPenerimaanBank do
    begin
      edKode_Pelanggan.Clear;
      edNama_Pelanggan.Clear;
      edNoRek.Clear;
      edNamaBank.Clear;
      edKodeSumberTagihan.Clear;
      edNMSumberTagihan.Clear;
      edKodeJenisBayar.Clear;
      edNMJenisBayar.Clear;
      MemDetailAkun.EmptyTable;
      MemDetailPiutang.EmptyTable;
      Clear;
      edKodeJenisTrans.Text:=MemMasterData['KD_MASTER'];
      edNamaJenisTrans.Text:=MemMasterData['NM_MASTER'];
      additional_code1:=SelectRow('select initial_code from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER']));
      additional_code2:='0';
      additional_code3:='0';
      additional_code4:='0';
      additional_code5:='0';
    end;
    vid_modul:=SelectRow('select code_module from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
    if vid_modul='3' then // Bank
    begin
      FDataPenerimaanBank.gbDataBank.Visible:=True;
    end;
    if vid_modul='4' then // Kas
    begin
      FDataPenerimaanBank.gbDataBank.Visible:=False;
    end;


    if SelectRow('select value_parameter from t_parameter where key_parameter='+QuotedStr('sumber_terima_bank')+' ')= '0' then
    begin
      with FDataPenerimaanBank do
      begin
        //ShowMessage('0');
        //edKodeSumberTagihan.Visible:=true;
        //edKodeJenisBayar.Visible:=true;
        lbSumberTagihan.Visible:=true;
        lbSumberTagihann.Visible:=true;
        lbJenisBayar.Visible:=true;
        lbJenisBayarr.Visible:=true;
        edNMSumberTagihan.Visible:=true;
        edNMJenisBayar.Visible:=true;
      end;
    end;
    if SelectRow('select value_parameter from t_parameter where key_parameter='+QuotedStr('sumber_terima_bank')+' ')= '1' then
    begin
      with FDataPenerimaanBank do
      begin
        //ShowMessage('1');
        //edKodeSumberTagihan.Visible:=false;
        //edKodeJenisBayar.Visible:=false;
        lbSumberTagihan.Visible:=false;
        lbSumberTagihann.Visible:=false;
        lbJenisBayar.Visible:=false;
        lbJenisBayarr.Visible:=false;
        edNMSumberTagihan.Visible:=false;
        edNMJenisBayar.Visible:=false;
      end;
    end;

    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ')= '0' then
    begin
      with FDataPenerimaanBank do
      begin
        Panel5.Visible:=true;
        gbDataPiutang.Visible:=false;
        TabDetailFaktur.TabVisible:=false;
      end;
    end;
    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ')= '1' then
    begin
      with FDataPenerimaanBank do
      begin
        Panel5.Visible:=true;
        gbDataPiutang.Visible:=true;
        TabDetailFaktur.TabVisible:=true;
      end;

      if (FDataPenerimaanBank.gbDataPiutang.Visible=false) and (FDataPenerimaanBank.gbDataBank.Visible=false) then
        FDataPenerimaanBank.Panel5.Visible:=false
      else
        FDataPenerimaanBank.Panel5.Visible:=true;
    end;
  end;
  if vcall='kaskecil_group_biaya' then
  begin
    FDataKasKecil.MemDetailAkun.edit;
    FDataKasKecil.MemDetailAkun['kd_group_biaya']:=MemMasterData['KD_MASTER'];
    FDataKasKecil.MemDetailAkun['nm_group_biaya']:=MemMasterData['NM_MASTER'];
    FDataKasKecil.MemDetailAkun.post;
  end;
  if vcall='kaskecil_pelaku_biaya' then
  begin
    FDataKasKecil.edKodeKepada.Text:=MemMasterData['KD_MASTER'];
    FDataKasKecil.edNamaKepada.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_sumber_kas' then
  begin
    FDataKasKecil.edKodeSumberKas.Text:=MemMasterData['KD_MASTER'];
    FDataKasKecil.edNamaSumberKas.Text:=MemMasterData['NM_MASTER'];
    FDataKasKecil.stat_bon:=StrToInt(SelectRow('select stat_receipt from t_petty_cash_source where code='+QuotedStr(MemMasterData['KD_MASTER'])+' '));
  end;
  if vcall='data_kasbon' then
  begin
    FDataKasKecil.edNomorKasBon.Text:=MemMasterData['KD_MASTER'];
  end;
  if vcall='kasbon_group_biaya' then
  begin
    FDataKasBon.MemDetailAkun.edit;
    FDataKasBon.MemDetailAkun['kd_group_biaya']:=MemMasterData['KD_MASTER'];
    FDataKasBon.MemDetailAkun['nm_group_biaya']:=MemMasterData['NM_MASTER'];
    FDataKasBon.MemDetailAkun.post;
  end;
  if vcall='kasbon_pelaku_biaya' then
  begin
    FDataKasBon.edKodeKepada.Text:=MemMasterData['KD_MASTER'];
    FDataKasBon.edNamaKepada.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_mata_uang' then
  begin
    FDataPenerimaanBank.edKodeMataUang.Text:=MemMasterData['KD_MASTER'];
    FDataPenerimaanBank.edNamaMataUang.Text:=MemMasterData['NM_MASTER'];
    FDataPenerimaanBank.edKurs.Value:=StrToFloat(SelectRow('select default_kurs from t_currency where currency_code='+QuotedStr(MemMasterData['KD_MASTER'])+' '));
  end;
  if vcall='m_bank' then
  begin
    FDataMasterAkunTrans.edNorekening.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaBank.Text:=MemMasterData['NM_MASTER'];
    //Insert Default Akun
    FDataMasterAkunTrans.MemDetail.EmptyTable;
    FDataMasterAkunTrans.MemDetail.Insert;
    FDataMasterAkunTrans.MemDetail['kd_akun']:=SelectRow('SELECT account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
    FDataMasterAkunTrans.MemDetail['nm_akun']:=SelectRow('SELECT account_name from t_ak_account a LEFT JOIN t_bank b ON a.code=b.account_no where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
    FDataMasterAkunTrans.MemDetail.post;
  end;
  if vcall='terima_bank' then
  begin
    FDataPenerimaanBank.edNorek.Text:=MemMasterData['KD_MASTER'];
    FDataPenerimaanBank.edNamaBank.Text:=MemMasterData['NM_MASTER'];
    //Ganti Akun Header bank Menjadi Akun No Rekening
    with FDataPenerimaanBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
        if MemDetailAkun['kd_header_akun']=SelectRow('SELECT header_account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kd_akun']:=SelectRow('SELECT account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun['nm_akun']:=SelectRow('SELECT account_name from t_ak_account a LEFT JOIN t_bank b ON a.code=b.account_no where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun.post;
        end;
        MemDetailAkun.Next;
      end;
    end;
  end;
  if vcall='KL_kasbank_bank_ajuan' then
  begin
    FDataPengajuanPengeluaranKasBank.edNorek.Text:=MemMasterData['KD_MASTER'];
    FDataPengajuanPengeluaranKasBank.edNamaBank.Text:=MemMasterData['NM_MASTER'];
    //Ganti Akun Header bank Menjadi Akun No Rekening
    with FDataPengajuanPengeluaranKasBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
        if MemDetailAkun['kd_header_akun']=SelectRow('SELECT header_account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kd_akun']:=SelectRow('SELECT account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun['nm_akun']:=SelectRow('SELECT account_name from t_ak_account a LEFT JOIN t_bank b ON a.code=b.account_no where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun.post;
        end;
        MemDetailAkun.Next;
      end;
    end;
  end;
  if vcall='KL_kasbank_bank' then
  begin
    FDataPengeluaranKasBank.edNorek.Text:=MemMasterData['KD_MASTER'];
    FDataPengeluaranKasBank.edNamaBank.Text:=MemMasterData['NM_MASTER'];
    //Ganti Akun Header bank Menjadi Akun No Rekening
    with FDataPengeluaranKasBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
        if MemDetailAkun['kd_header_akun']=SelectRow('SELECT header_account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kd_akun']:=SelectRow('SELECT account_no from t_bank where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun['nm_akun']:=SelectRow('SELECT account_name from t_ak_account a LEFT JOIN t_bank b ON a.code=b.account_no where rekening_no='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
          MemDetailAkun.post;
        end;
        MemDetailAkun.Next;
      end;
    end;
  end;
  if vcall='setting_penjualan_tax' then
  begin
    FDataMasterAkunTrans.edAkunJenisTax.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaJenisTax.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_ppn_jual' then
  begin
    FDataMasterAkunTrans.edAkunPPNJual.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaPPNJual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_pph_jual' then
  begin
    FDataMasterAkunTrans.edAkunPPHJual.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaPPHJual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_trans_jual' then
  begin
    FDataMasterAkunTrans.edAkunPiutang.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaPiutang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_lain_trans_jual' then
  begin
    FDataMasterAkunTrans.edAkunPiutangLainLain.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaPiutangLain.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_uang_muka_jual' then
  begin
    FDataMasterAkunTrans.edAkunUangMukaPenjualan.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaAkunUangMukaPenjualan.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_trans_returjual' then
  begin
    FDataMasterAkunTrans.edAkunReturJual.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaAkunReturJual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='m_akuntrans_bank' then
  begin
      FDataMasterAkunTrans.MemDetail.Edit;
      FDataMasterAkunTrans.MemDetail['kd_akun']:=MemMasterData['KD_MASTER'];
      FDataMasterAkunTrans.MemDetail['nm_akun']:=MemMasterData['NM_MASTER'];
      FDataMasterAkunTrans.MemDetail.post;
  end;
  if vcall='m_akuntrans_jual' then
  begin
      FDataMasterAkunTrans.MemDetailPenjualan.Edit;
      FDataMasterAkunTrans.MemDetailPenjualan['kd_akun']:=MemMasterData['KD_MASTER'];
      FDataMasterAkunTrans.MemDetailPenjualan['nm_akun']:=MemMasterData['NM_MASTER'];
      FDataMasterAkunTrans.MemDetailPenjualan.post;
  end;
  if vcall='m_akuntrans_kas' then
  begin
      FDataMasterAkunTrans.MemDetailKas.Edit;
      FDataMasterAkunTrans.MemDetailKas['kd_akun']:=MemMasterData['KD_MASTER'];
      FDataMasterAkunTrans.MemDetailKas['nm_akun']:=MemMasterData['NM_MASTER'];
      FDataMasterAkunTrans.MemDetailKas.post;
  end;

  if vcall='m_akuntrans_retur_jual' then
  begin
      FDataMasterAkunTrans.MemDetailReturJual.Edit;
      FDataMasterAkunTrans.MemDetailReturJual['kd_akun']:=MemMasterData['KD_MASTER'];
      FDataMasterAkunTrans.MemDetailReturJual['nm_akun']:=MemMasterData['NM_MASTER'];
      FDataMasterAkunTrans.MemDetailReturJual.post;
  end;


  if vcall='set_ak_trans_beli' then
  begin
    FDataMasterAkunTrans.edAkunHutang.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaHutang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='set_ak_lain_trans_beli' then
  begin
    FDataMasterAkunTrans.edAkunUangMukaHutang.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaUangMukaHutang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='trans_bank' then
  begin
    FDataMasterAkunTrans.Clear;
    FDataMasterAkunTrans.edKodeModul.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaModul.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='trans_kas' then
  begin
    FDataMasterAkunTrans.Clear;
    FDataMasterAkunTrans.edKodeModulKas.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaModulKas.Text:=MemMasterData['NM_MASTER'];
    FDataMasterAkunTrans.MemDetailKas.EmptyTable;
    FDataMasterAkunTrans.MemDetailKas.EmptyTable;
  end;
  if vcall='trans_beli' then
  begin
    FDataMasterAkunTrans.Clear;
    FDataMasterAkunTrans.edKodeModulBeli.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaModulBeli.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='trans_jual' then
  begin
    FDataMasterAkunTrans.Clear;
    FDataMasterAkunTrans.edKodeModulJual.Text:=MemMasterData['KD_MASTER'];
    FDataMasterAkunTrans.edNamaModulJual.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jenis_retur' then
  begin
    FDataReturPenjualan.edKodeJenis.Text:=MemMasterData['KD_MASTER'];
    FDataReturPenjualan.edNamaJenis.Text:=MemMasterData['NM_MASTER'];
  end;
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
  if vcall='master_jenis_kontrakTagihan' then
  begin
    FNewKontrakTagihan.EdKodeJenisKontrak.Text:=MemMasterData['KD_MASTER'];
    FNewKontrakTagihan.edNamaJenisKontrak.Text:=MemMasterData['NM_MASTER'];
    FNewKontrakTagihan.RefreshGrid;
  end;
  if vcall='daf_jenis_kontrakTagihan' then
  begin
    FDaftarKontrak.EdKodeJenisKontrak.Text:=MemMasterData['KD_MASTER'];
    FDaftarKontrak.edNamaJenisKontrak.Text:=MemMasterData['NM_MASTER'];
    FDaftarKontrak.Parent:=FTemplate_Temp.PanelParent;
    FDaftarKontrak.Align:=Alclient;
    FDaftarKontrak.BorderStyle:=BsNone;
    FDaftarKontrak.Show;
    FTemplate_Temp.Show;
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
  if vcall='setmaster_jenis_kontrakTagihan' then
  begin
    with FSetJenisKontrakTagihan do
    begin
      Clear;

      if MemMasterData.RecordCount<>0 then
      begin
        with Dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.add(' SELECT * from ('+
                  ' SELECT "code", "name", "description" from "t_type_contract_service"  '+
                  ' WHERE	deleted_at IS NULL ORDER BY code desc ) a '+
                  ' WHERE "code"='+QuotedStr(MemMasterData['KD_MASTER'])+' '+
                  ' Order By code, name desc');
          open;
        end;

        edKode.Text:=Dm.Qtemp.FieldByName('code').Value;
        edNama.Text:=Dm.Qtemp.FieldByName('name').Value;
        edKet.Text:=Dm.Qtemp.FieldByName('description').Value;
        FSetJenisKontrakTagihan.RefreshGrid;
        FSetJenisKontrakTagihan.Status:=1;
      end;

      if MemMasterData.RecordCount=0 then
      begin
        FSetJenisKontrakTagihan.Status:=0;
      end;
    end;
    FSetJenisKontrakTagihan.show;
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
    FNewDeliveryOrder.edKodeKabupaten.Text:='';
    FNewDeliveryOrder.edNamaKabupaten.Text:='';
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
  if vcall='piutangbermasalah_kec' then
  begin
    FListPiutangBermasalah.StrKecamatanID:=MemMasterData['KD_MASTER'];
    FListPiutangBermasalah.edKecamatan.EditValue:=MemMasterData['NM_MASTER'];
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
//  if vcall='barang_order' then
//  begin
//    FTambah_Barang.edKodeBarang.Text:=MemMasterData['KD_MASTER'];
//    FTambah_Barang.edNamaBarang.Text:=MemMasterData['NM_MASTER'];
//    FTambah_Barang.edKodeSatuan.Text:=MemMasterData['KETERANGAN'];
//    FTambah_Barang.edSatuan.Text:=SelectRow('SELECT unit_name from t_unit where unit_code='+QuotedStr(MemMasterData['KETERANGAN'])+' ');
//    FTambah_Barang.Parent:=FTemplate_Temp.PanelParent;
//    FTambah_Barang.Align:=Alclient;
//    FTambah_Barang.BorderStyle:=BsNone;
//    FTambah_Barang.Show;
//    FTemplate_Temp.Show;
//  end;
  if vcall='barang_order' then
  begin
    FTambah_Barang.edKodeBarang.Text:=MemMasterData['KD_MASTER'];
    FTambah_Barang.edNamaBarang.Text:=MemMasterData['NM_MASTER'];
    FTambah_Barang.edKodeSatuan.Text:=MemMasterData['KETERANGAN'];
    FTambah_Barang.edSatuan.Text:=SelectRow('SELECT unit_name from t_unit where unit_code='+QuotedStr(MemMasterData['KETERANGAN'])+' ');
//    FTambah_Barang.Parent:=FTemplate_Temp.PanelParent;
//    FTambah_Barang.Align:=Alclient;
//    FTambah_Barang.BorderStyle:=BsNone;
    //FTemplate_Temp.Height:=FTambah_Barang.Height+50;
    //FTemplate_Temp.Width:=FTambah_Barang.Width+50;
//    FTambah_Barang.Show;
//    FTemplate_Temp.Show;
  end;


  if vcall='jasa_jns_kontrak' then
  begin
     FSetJenisKontrakTagihan.MemJenis.insert;
     FSetJenisKontrakTagihan.MemJenis['kode']:=MemMasterData['KD_MASTER'];
     FSetJenisKontrakTagihan.MemJenis['nama']:=MemMasterData['NM_MASTER'];
     FSetJenisKontrakTagihan.MemJenis['keterangan']:='-';
     FSetJenisKontrakTagihan.MemJenis.post;
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
    FNew_Penjualan.edNama_Trans.Text:=MemMasterData['NM_MASTER'];
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
  if vcall='set_areatp' then
  begin
    FSetMasterWilayah.edKDArea_setTP.Text:=MemMasterData['KD_MASTER'];
    FSetMasterWilayah.edArea_setTP.Text:=MemMasterData['NM_MASTER'];
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
  if vcall='ak_piutang_pel' then
  begin
    FNew_Pelanggan.edAkunPiutang.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.KodeHeaderPiutang:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNamaPiutang.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='ak_piutang_lain_pel' then
  begin
    FNew_Pelanggan.edAkunPiutangLainLain.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.KodeHeaderPiutangLain:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNamaPiutangLain.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='ak_uang_muka_pel' then
  begin
    FNew_Pelanggan.edAkunUangMuka.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.KodeHeaderUangMuka:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNamaAkunUangMuka.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='jenis_pel_pajak' then
  begin
    FNew_Pelanggan.edKd_Jenis_Pajak.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNm_Jenis_Pajak.Text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='negara_pel_pajak' then
  begin
    FNew_Pelanggan.edKd_Negara.Text:=MemMasterData['KD_MASTER'];
    FNew_Pelanggan.edNm_Negara.Text:=MemMasterData['NM_MASTER'];
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
  if vcall='perkiraan_supplier' then
  begin
    FNew_supplier.edKodePerkiraan.Text:=MemMasterData['KD_MASTER'];
    FNew_supplier.KodeHeaderPerkiraan:=MemMasterData['KD_MASTER'];
  end;
  if vcall='perkiraan_supplier_um' then
  begin
    FNew_supplier.edKodePerkiraan_um.Text:=MemMasterData['KD_MASTER'];
    FNew_supplier.KodeHeaderPerkiraan_um:=MemMasterData['KD_MASTER'];
  end;
  if vcall='pelaku_biaya' then
  begin
    FDataPeLakuBiaya.kd_Karesidenan.text:=MemMasterData['KD_MASTER'];
    FDataPeLakuBiaya.edKaresidenan.text:=MemMasterData['NM_MASTER'];
  end;
  if vcall='klkas_mata_uang' then
  begin
    FDataPengeluaranKasBank.edKodeMataUang.Text:=MemMasterData['KD_MASTER'];
    FDataPengeluaranKasBank.edNamaMataUang.Text:=MemMasterData['NM_MASTER'];
    FDataPengeluaranKasBank.edKurs.Value:=StrToFloat(SelectRow('select default_kurs from t_currency where currency_code='+QuotedStr(MemMasterData['KD_MASTER'])+' '));
  end;
  if vcall='klkas_mata_uang_pengajuan' then
  begin
    FDataPengajuanPengeluaranKasBank.edKodeMataUang.Text:=MemMasterData['KD_MASTER'];
    FDataPengajuanPengeluaranKasBank.edNamaMataUang.Text:=MemMasterData['NM_MASTER'];
    FDataPengajuanPengeluaranKasBank.edKurs.Value:=StrToFloat(SelectRow('select default_kurs from t_currency where currency_code='+QuotedStr(MemMasterData['KD_MASTER'])+' '));
  end;
  if vcall='KL_kasbank_jns_transaksi_ajuan' then //Pengajuan pengeluaran kas
  begin
    with FDataPengajuanPengeluaranKasBank do
    begin
      edKode_Supplier.Clear;
      edNama_supplier.Clear;
      edNoRek.Clear;
      edNamaBank.Clear;
      edKodeSumberPengeluaran.Clear;
      edNMSumberHutang.Clear;
      edKodeJenisBayar.Clear;
      edNMJenisBayar.Clear;
      MemDetailAkun.EmptyTable;
      MemDetailHutang.EmptyTable;
      Clear;
      edKodeJenisTrans.Text:=MemMasterData['KD_MASTER'];
      edNamaJenisTrans.Text:=MemMasterData['NM_MASTER'];
      additional_code1:=SelectRow('select initial_code from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER']));
      additional_code2:='0';
      additional_code3:='0';
      additional_code4:='0';
      additional_code5:='0';
    end;
    vid_modul:=SelectRow('select code_module from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ');
    if vid_modul='5' then // Bank
    begin
      FDataPengajuanPengeluaranKasBank.gbDataBank.Visible:=True;
    end;
    if vid_modul='6' then // Kas
    begin
      //FDataPengajuanPengeluaranKasBank.gbDataBank.Visible:=True;
      FDataPengajuanPengeluaranKasBank.gbDataBank.Visible:=False;
    end;

    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ')= '0' then
    begin
      with FDataPengajuanPengeluaranKasBank do
      begin
        Panel5.Visible:=true;
        gbDataHutang.Visible:=false;
        TabDetailFaktur.TabVisible:=false;
        //Panel1.Height:=230;
        //Panel1.Height:=340;
        //lbSumberTagihan.Visible:=false;
        //lbSumberTagihann.Visible:=false;
        lbSumberTagihan.Visible:=true;
        lbSumberTagihann.Visible:=true;
        lbJenisBayar.Visible:=false;
        lbJenisBayarr.Visible:=false;
        //edKodeSumberPengeluaran.Visible:=false;
        edKodeSumberPengeluaran.Visible:=true;
        edNMSumberHutang.Visible:=true;
        edKodeJenisBayar.Visible:=false;
        edNMJenisBayar.Visible:=false;
        edKodeSumberPengeluaran.Clear;
        edNMSumberHutang.Clear;
        edKodeJenisBayar.Clear;
        edNMJenisBayar.Clear;
      end;
    end;
    if SelectRow('select status_bill from t_master_trans_account where code_trans='+QuotedStr(MemMasterData['KD_MASTER'])+' ')= '1' then
    begin
      with FDataPengajuanPengeluaranKasBank do
      begin
        Panel5.Visible:=true;
        gbDataHutang.Visible:=true;
        TabDetailFaktur.TabVisible:=true;
        //Panel1.Height:=340;
        lbSumberTagihan.Visible:=true;
        lbSumberTagihann.Visible:=true;
        //lbJenisBayar.Visible:=true;
        //lbJenisBayarr.Visible:=true;
        lbJenisBayar.Visible:=false;
        lbJenisBayarr.Visible:=false;
        //edKodeSumberPengeluaran.Visible:=false;
        edKodeSumberPengeluaran.Visible:=true;
        edNMSumberHutang.Visible:=true;
        edKodeJenisBayar.Visible:=false;
        //edNMJenisBayar.Visible:=true;
        edNMJenisBayar.Visible:=false;
        edKodeSumberPengeluaran.Clear;
        edNMSumberHutang.Clear;
        edKodeJenisBayar.Clear;
        edNMJenisBayar.Clear;
      end;

      //if (FDataPengajuanPengeluaranKasBank.gbDataHutang.Visible=false) and (FDataPengajuanPengeluaranKasBank.gbDataBank.Visible=false) then
        //FDataPengajuanPengeluaranKasBank.Panel5.Visible:=false
      //else
        //FDataPengajuanPengeluaranKasBank.Panel5.Visible:=true;
    end;
  end; //Pengajuan pengeluaran kas
  //Nanang
  if vcall='exportimporttargetpenjualankares' then
  begin
    FExportImportTargetPenjualan.strKodeKaresidenan:=MemMasterData['KD_MASTER'];
    FExportImportTargetPenjualan.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='listpelanggankaresidenan' then
  begin
    FListPelanggan.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FListPelanggan.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='listpelanggankabupaten' then
  begin
    FListPelanggan.strKabupatenID:=MemMasterData['KD_MASTER'];
    FListPelanggan.cbKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='amploppelanggankaresidenan' then
  begin
    FAmplopPelanggan.StrKaresidananID:=MemMasterData['KD_MASTER'];
    FAmplopPelanggan.EdKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='m_kares_telemarketing' then
  begin
    FListOrderTelemarketing.edKodeKaresidenan.Text:=MemMasterData['KD_MASTER'];
    FListOrderTelemarketing.EdKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekaptagihankolektor_wilayah' then
  begin
    FRekapTagihanKolektor.strWilayahID:=MemMasterData['KD_MASTER'];
    FRekapTagihanKolektor.edWilayah.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekaptagihankolektor_area' then
  begin
    FRekapTagihanKolektor.strAreaID:=MemMasterData['KD_MASTER'];
    FRekapTagihanKolektor.edArea.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekaptagihankolektor_kares' then
  begin
    FRekapTagihanKolektor.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FRekapTagihanKolektor.edKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekappenjualanpercustomerkares' then
  begin
    FRekapPenjualanPerPelanggan.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FRekapPenjualanPerPelanggan.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekappenjualanpercustomerkab' then
  begin
    FRekapPenjualanPerPelanggan.strKabupatenID:=MemMasterData['KD_MASTER'];
    FRekapPenjualanPerPelanggan.cbKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekappenjualanpercustomerkec' then
  begin
    FRekapPenjualanPerPelanggan.strKecamatanID:=MemMasterData['KD_MASTER'];
    FRekapPenjualanPerPelanggan.cbKecamatan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekappenjualanpercustomerkelompokbarang' then
  begin
    FRekapPenjualanPerPelanggan.strKelompokID:=MemMasterData['KD_MASTER'];
    FRekapPenjualanPerPelanggan.cbKelompok.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='rekapmonitoringtargetkares' then
  begin
    FMonitoringTargetOmset.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FMonitoringTargetOmset.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekapmonitoringtargetkab' then
  begin
    FMonitoringTargetOmset.strKabupatenID:=MemMasterData['KD_MASTER'];
    FMonitoringTargetOmset.cbKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekapmonitoringtargetkec' then
  begin
    FMonitoringTargetOmset.strKecamatanID:=MemMasterData['KD_MASTER'];
    FMonitoringTargetOmset.cbKecamatan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='rekapmonitoringtargetkelompokbarang' then
  begin
    FMonitoringTargetOmset.strKelompokID:=MemMasterData['KD_MASTER'];
    FMonitoringTargetOmset.cbKelompok.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='laporanhariansisanotakares' then
  begin
    FLaporanHarianSisaNota.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FLaporanHarianSisaNota.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='laporanhariansisanotakab' then
  begin
    FLaporanHarianSisaNota.strKabupatenID:=MemMasterData['KD_MASTER'];
    FLaporanHarianSisaNota.cbKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='laporanhariansisanotakec' then
  begin
    FLaporanHarianSisaNota.strKecamatanID:=MemMasterData['KD_MASTER'];
    FLaporanHarianSisaNota.cbKecamatan.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='laporanhariansisanotapertpkares' then
  begin
    FLaporanHarianSisaNotaPerTP.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;

   //Nanang
  if vcall='laporanhariansisanotaperkabkares' then
  begin
    FLaporanHarianSisaNotaPerKabupaten.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FLaporanHarianSisaNotaPerKabupaten.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='laporanhariansisanotaperkabkab' then
  begin
//    FLaporanHarianSisaNotaPerKabupaten.strKabupatenID:=MemMasterData['KD_MASTER'];
    FLaporanHarianSisaNotaPerKabupaten.cbKabupaten.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='laporanhariansisanotapiutangperoutletkares' then
  begin
    FLaporanHarianSisaNotaPiutangPerOutlet.cbKaresidenan.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='stockopnamenota' then
  begin
    FStockOpnameNota.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;

  //Nanang
  if vcall='dppkares' then
  begin
    FDataPenagihanPiutang.strKaresidenanID:=MemMasterData['KD_MASTER'];
    FDataPenagihanPiutang.edKaresidenan.Text:=MemMasterData['NM_MASTER'];
  end;
  //Nanang
  if vcall='dppkab' then
  begin
    FDataPenagihanPiutang.strKabupatenID:=MemMasterData['KD_MASTER'];
    FDataPenagihanPiutang.edKabupaten.Text:=MemMasterData['NM_MASTER'];
  end;

   //Nanang
  if vcall='loguser' then
  begin
    FLog.edUser.EditValue:=MemMasterData['NM_MASTER'];
  end;

  //ShowMessage(FTambah_Barang.edKodeBarang.Text);
  FMasterData.Close;
  FMasterData.MemMasterData.EmptyTable;
end;

procedure TFMasterData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MemMasterData.EmptyTable;
end;

procedure TFMasterData.FormShow(Sender: TObject);
begin
  DBGridCustomer.SearchPanel.SearchingText:='';
  //Nanang
  if (FMasterData.vcall='do_lokasi_muat') OR (FMasterData.vcall='do_lokasi_bongkar') then
  begin
    DBGridCustomer.Columns[0].Visible:=False;
    DBGridCustomer.Columns[2].Visible:=False;
  end else begin
    DBGridCustomer.Columns[0].Visible:=True;
    DBGridCustomer.Columns[2].Visible:=True;
  end;

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
    FMasterData.MemMasterData.SortByFields('KD_MASTER asc');
  end;


end;

initialization
  RegisterClass(TFMasterData);


end.
