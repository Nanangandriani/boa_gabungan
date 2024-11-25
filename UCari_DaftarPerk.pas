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
  U_keluarkasbank_ajuan, UDataPengajuanPengeluaranKasBank, UNewKontrakTagihan;

var RealFCari_DaftarPerk: TFCari_DaftarPerk;
function FCari_DaftarPerk: TFCari_DaftarPerk;
begin
  if RealFCari_DaftarPerk <> nil then FCari_DaftarPerk:= RealFCari_DaftarPerk
  else  Application.CreateForm(TFCari_DaftarPerk, Result);
end;

procedure TFCari_DaftarPerk.DBGridDaftar_PerkDblClick(Sender: TObject);
begin
    if (vpanggil = 'terima_bank')then
    begin
      FDataPenerimaanBank.MemDetailAkun.edit;
      FDataPenerimaanBank.MemDetailAkun['kd_akun']:=QDaftar_Perk.fieldbyname('code').AsString;
      FDataPenerimaanBank.MemDetailAkun['nm_akun']:=QDaftar_Perk.fieldbyname('account_name').AsString;
      FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
      FDataPenerimaanBank.MemDetailAkun['debit']:=0;
      FDataPenerimaanBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPenerimaanBank.MemDetailAkun['keterangan']:='-';
      FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataPenerimaanBank.MemDetailAkun.post;
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
    if (vpanggil = 'barang')then
    begin
      FNew_barang.Edkd_akun.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akun.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
      QDaftar_Perk.Close;
    end;
    if vpanggil = 'Pemb_barang' then
    begin
      FNew_barang.Edkd_akunpemb.Text:=QDaftar_Perk.fieldbyname('code').AsString;
      FNew_barang.EdNm_akunpemb.Text:=QDaftar_Perk.fieldbyname('account_name').AsString;
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
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['keterangan']:='-';
      FDataPengajuanPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=SelectRow('SELECT header_code from t_ak_account where code='+QuotedSTR(QDaftar_Perk.fieldbyname('code').AsString)+'') ;
      FDataPengajuanPengeluaranKasBank.MemDetailAkun.post;
      QDaftar_Perk.Close;
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
