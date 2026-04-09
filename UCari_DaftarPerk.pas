unit UCari_DaftarPerk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_DaftarPerk = class(TForm)
    Button1: TButton;
    DBGridDaftar_Perk: TDBGridEh;
    Edit1: TEdit;
    Label1: TLabel;
    QDaftar_Perk: TUniQuery;
    DataSource1: TDataSource;
    procedure DBGridDaftar_PerkDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

     vpanggil,nm_jenis:string;
  end;

Function FCari_DaftarPerk: TFCari_DaftarPerk;

implementation

{$R *.dfm}

uses UNew_KategoriBarang, UNew_ItemType, UNew_Barang, UNew_KelompokBarang,
  UInput_um, UNew_Penjualan, UNew_DataPenjualan, UDataModule, UNewDeliveryOrder,
  UDataMasterAkunTrans, UDataPenerimaanBank, UMy_Function,
  U_keluarkasbank_ajuan, UDataPengajuanPengeluaranKasBank, UNewKontrakTagihan,
  UDataKasBon, UDataKasKecil, UDataPengeluaranKasBank, UPerhitunganAsset,
  UNew_PO, UbrowseUangMukaDibayarkan;

var RealFCari_DaftarPerk: TFCari_DaftarPerk;
function FCari_DaftarPerk: TFCari_DaftarPerk;
begin
  if RealFCari_DaftarPerk <> nil then FCari_DaftarPerk:= RealFCari_DaftarPerk
  else  Application.CreateForm(TFCari_DaftarPerk, Result);
end;

procedure TFCari_DaftarPerk.DBGridDaftar_PerkDblClick(Sender: TObject);
var akun_uang_muka_penjualan: string;
begin
    if (vpanggil ='pph_po') then
    begin
      with FNew_PO do
      begin
        Memitempo.Edit;
        Memitempo['kd_akunpph']:=QDaftar_Perk.fieldbyname('code').AsString;
        Memitempo.Post;
      end;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'terima_bank')then
    begin
      //UANG MUKA
      akun_uang_muka_penjualan:=SelectRow('select value_parameter from t_parameter where key_parameter=''akun_uang_muka_penjualan'' and deleted_at is NULL ');

      if (QDaftar_Perk.FieldByName('code').AsString=akun_uang_muka_penjualan) AND (FDataPenerimaanBank.cbJenisTransaksi.Text='PIUTANG') then
      begin
        with FbrowseUangMukaDibayarkan.Qdetail do
        begin
          close;
          sql.clear;
          sql.text:='SELECT a.no_trans no_trans_down_payment,a.trans_date,'+
                    'a.grand_tot sisa_uang_muka,'''' customer_head_name,'''' voucher_no,b.customer_name from t_down_payment_sales a '+
                    'left join t_customer b on b.customer_code=a.customer_code '+
                    'LEFT JOIN (SELECT cbd.voucher_no,cbd.no_trans_down_payment FROM t_cash_bank_acceptance_down_payment cbd '+
                    'left join t_cash_bank_acceptance cba on cba.voucher_no=cbd.voucher_no where cba.deleted_at is null) c on c.no_trans_down_payment=a.no_trans '+
                    'WHERE a.deleted_at is NULL and c.voucher_no is NULL and a.customer_code='+QuotedStr(FDataPenerimaanBank.edKode_Pelanggan.Text);
          open;
        end;

        FbrowseUangMukaDibayarkan.vcall:='terima_bank';
        FbrowseUangMukaDibayarkan.ShowModal;
      end;


      FDataPenerimaanBank.MemDetailAkun.edit;
      FDataPenerimaanBank.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataPenerimaanBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
//      if (QDaftar_Perk.FieldByName('code').AsString='2103.01') AND (FDataPenerimaanBank.cbJenisTransaksi.Text='PIUTANG') then
//      begin
//        FDataPenerimaanBank.MemDetailAkun['kredit']:=FbrowseUangMukaDibayarkan.vuang_muka;
//      end else begin
        FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
//      end;

      FDataPenerimaanBank.MemDetailAkun['debit']:=0;
      FDataPenerimaanBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPenerimaanBank.MemDetailAkun['keterangan']:='-';
      FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataPenerimaanBank.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'kas_kecil')then
    begin
      FDataKasKecil.MemDetailAkun.edit;
      FDataKasKecil.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataKasKecil.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataKasKecil.MemDetailAkun['kredit']:=0;
      FDataKasKecil.MemDetailAkun['debit']:=0;
      FDataKasKecil.MemDetailAkun['kd_group_biaya']:=SelectRow('SELECT cost_st_id from t_ak_account where code='+QuotedStr(QDaftar_Perk.fieldbyname('code').AsString)+'');
      FDataKasKecil.MemDetailAkun['nm_group_biaya']:=SelectRow('SELECT cost_type from t_ak_type_cost a left join t_ak_account b on a.id=b.cost_st_id where code='+QuotedStr(QDaftar_Perk.fieldbyname('code').AsString)+'');
      FDataKasKecil.MemDetailAkun['keterangan']:='-';
      FDataKasKecil.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataKasKecil.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'kas_bon')then
    begin
      FDataKasBon.MemDetailAkun.edit;
      FDataKasBon.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataKasBon.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataKasBon.MemDetailAkun['kredit']:=0;
      FDataKasBon.MemDetailAkun['debit']:=0;
      FDataKasBon.MemDetailAkun['kd_group_biaya']:=SelectRow('SELECT cost_st_id from t_ak_account where code='+QuotedStr(QDaftar_Perk.fieldbyname('code').AsString)+'');
      FDataKasBon.MemDetailAkun['nm_group_biaya']:=SelectRow('SELECT cost_type from t_ak_type_cost a left join t_ak_account b on a.id=b.cost_st_id where code='+QuotedStr(QDaftar_Perk.fieldbyname('code').AsString)+'');
      FDataKasBon.MemDetailAkun['keterangan']:='-';
      FDataKasBon.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataKasBon.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'do_ppn')then
    begin
      //FNewDeliveryOrder.edKodeAkunPPN.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      //FNewDeliveryOrder.edNamaAkunPPN.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewDeliveryOrder.MemDataBiaya.edit;
      FNewDeliveryOrder.MemDataBiaya['akun_ppn']:=QDaftar_Perk.fieldbyname('code').AsString;
      FNewDeliveryOrder.MemDataBiaya['nama_ppn']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewDeliveryOrder.MemDataBiaya['persen_ppn']:='0';
      FNewDeliveryOrder.MemDataBiaya['ppn']:=0;
      FNewDeliveryOrder.MemDataBiaya.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'do_pph')then
    begin
      //FNewDeliveryOrder.edKodeAkunPPH.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      //FNewDeliveryOrder.edNamaAkunPPH.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewDeliveryOrder.MemDataBiaya.edit;
      FNewDeliveryOrder.MemDataBiaya['akun_pph']:=QDaftar_Perk.fieldbyname('code').AsString;
      FNewDeliveryOrder.MemDataBiaya['nama_pph']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewDeliveryOrder.MemDataBiaya['persen_pph']:='0';
      FNewDeliveryOrder.MemDataBiaya['pph']:=0;
      FNewDeliveryOrder.MemDataBiaya.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'penjualan')then
    begin
      FNew_Penjualan.MemDetail.Edit;
      FNew_Penjualan.MemDetail['PPH_AKUN']:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_Penjualan.MemDetail['NAMA_PPH']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNew_Penjualan.MemDetail['PPH_PERSEN']:='0';
      FNew_Penjualan.MemDetail['PPH_NILAI']:='0';
      FNew_Penjualan.MemDetail.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'kontrak_jasa_ppn')then
    begin
      FNewKontrakTagihan.MemDataBiaya.Edit;
      FNewKontrakTagihan.MemDataBiaya['akun_ppn']:=QDaftar_Perk.fieldbyname('code').AsString;
      FNewKontrakTagihan.MemDataBiaya['nama_ppn']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewKontrakTagihan.MemDataBiaya['persen_ppn']:=0;
      FNewKontrakTagihan.MemDataBiaya.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'kontrak_jasa_pph')then
    begin
      FNewKontrakTagihan.MemDataBiaya.Edit;
      FNewKontrakTagihan.MemDataBiaya['akun_pph']:=QDaftar_Perk.fieldbyname('code').AsString;
      FNewKontrakTagihan.MemDataBiaya['nama_pph']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNewKontrakTagihan.MemDataBiaya['persen_pph']:=0;
      FNewKontrakTagihan.MemDataBiaya.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'kategorimaterial')then
    begin
      FNew_KategoriBarang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_KategoriBarang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;

    if (vpanggil = 'itemtype')then
    begin
      FNew_Itemtype.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_Itemtype.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'itemtype2')then
    begin
   //   FNew_Itemtype.Edkd_akun2.Text:=QDaftar_Perk.fieldbyname('code').AsString;
   //   FNew_Itemtype.EdNm_akun2.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
//    if (vpanggil = 'barang')then
//    begin
//      FNew_barang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
//      FNew_barang.KodeHeaderPerkiraan:=QDaftar_Perk.fieldbyname('code').AsString;
//      FNew_barang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
//      QDaftar_Perk.Close;
//    end;
//    if vpanggil = 'Pemb_barang' then
//    begin
//      FNew_barang.Edkd_akunpemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
//      FNew_barang.EdNm_akunpemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
//      QDaftar_Perk.Close;
//    end;
    if (vpanggil = 'barang')then
    begin
      FNew_barang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.KodeHeaderPerkiraan:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'Pemb_barang' then
    begin
      FNew_barang.Edkd_akunpemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunpemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FNew_barang.KodeHeaderPerkiraan2:=QDaftar_Perk.fieldbyname('code').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'RTPemb_barang' then
    begin
      FNew_barang.Edkd_akunRt_pemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunRt_pemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'PotPemb_barang' then
    begin
      FNew_barang.Edkd_akunPot_pemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunPot_pemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'Penj_barang' then
    begin
      FNew_barang.Edkd_akunPenj.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunPenj.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'RtPenj_barang' then
    begin
      FNew_barang.Edkd_akunRt_Penj.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunRt_Penj.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'groupmaterial')then
    begin
      FNew_KelompokBarang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_KelompokBarang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'um')then
    begin
      FNew_UM_Pembelian.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_UM_Pembelian.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil = 'ajuankeluarkasbank')then
    begin
      FKeluarKasBank_Ajuan.txtkdakunkredit.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FKeluarKasBank_Ajuan.txtnmakunkredit.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if (vpanggil ='pengajuankeluarkasbank')then
    begin
      FDataPengajuanPengeluaranKasBank.MemDetailAkun.edit;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kredit']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['debit']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['keterangan']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;

    if (vpanggil ='pengajuankeluarkasbank_show_header')then
    begin
      FDataPengajuanPengeluaranKasBank.MemDetailAkun.edit;
      //FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=QDaftar_Perk.fieldbyname('header_code').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      //FDataPengajuanPengeluaranKasBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('header_name').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kredit']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['debit']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['keterangan']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_akun']:=SelectRow('SELECT code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      //FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_akun']:=SelectRow('SELECT code from t_ak_account where code='+QuotedSTR(FDataPengajuanPengeluaranKasBank.ak_account.Text)+'') ;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;


    if (vpanggil ='keluar_kasbank_show_header')then
    begin
      FDataPengeluaranKasBank.MemDetailAkun.edit;
      //FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=QDaftar_Perk.fieldbyname('header_code').AsString;
      FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      //FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('header_name').AsString;
      FDataPengeluaranKasBank.MemDetailAkun['kredit']:=0;
      FDataPengeluaranKasBank.MemDetailAkun['debit']:=0;
      FDataPengeluaranKasBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPengeluaranKasBank.MemDetailAkun['keterangan']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=SelectRow('SELECT code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      //FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=SelectRow('SELECT code from t_ak_account where code='+QuotedSTR(FDataPengajuanPengeluaranKasBank.ak_account.Text)+'') ;
      FDataPengeluaranKasBank.MemDetailAkun.post;
      QDaftar_Perk.Close;
    end;
    if vpanggil='assetkr' then
    begin
      FPerhitunganAsset.edKodeKredit.text:=QDaftar_Perk.fieldbyname('code').AsString;
      FPerhitunganAsset.edNamaKredit.text:=QDaftar_Perk.fieldbyname('account_name').AsString;
    end;
    if vpanggil='assetdb' then
    begin
      FPerhitunganAsset.edKodeDebit.text:=QDaftar_Perk.fieldbyname('code').AsString;
      FPerhitunganAsset.edNamaDebit.text:=QDaftar_Perk.fieldbyname('account_name').AsString;
    end;
    close;
end;

procedure TFCari_DaftarPerk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFCari_DaftarPerk.FormCreate(Sender: TObject);
begin
  RealFCari_DaftarPerk:=self;
end;

procedure TFCari_DaftarPerk.FormDestroy(Sender: TObject);
begin
  RealFCari_DaftarPerk:=nil;
end;

procedure TFCari_DaftarPerk.FormShow(Sender: TObject);
begin
   if QDaftar_Perk.Active=false then
      QDaftar_Perk.Active:=true;

end;

end.
