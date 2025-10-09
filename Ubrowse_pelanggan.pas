unit Ubrowse_pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, MemTableEh, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, RzButton;

type
  TFbrowse_data_pelanggan = class(TForm)
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    DBGridCustomer: TDBGridEh;
    MemMasterDataKD_PELANGGAN: TStringField;
    MemMasterDataNM_PELANGGAN: TStringField;
    MemMasterDataKD_WILAYAH: TStringField;
    MemMasterDataWILAYAH: TStringField;
    MemMasterDataALAMAT: TStringField;
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    GBType2: TGroupBox;
    Ednamawilayah: TEdit;
    Edkodewilayah: TRzButtonEdit;
    Label24: TLabel;
    Label23: TLabel;
    MemMasterDataKD_KARES: TStringField;
    Panel2: TPanel;
    Edautocode: TEdit;
    btTampilkan: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RefreshGrid;
    procedure DBGridCustomerDblClick(Sender: TObject);
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string ;
  end;

var
  Fbrowse_data_pelanggan: TFbrowse_data_pelanggan;
  status_browse_pelanggan:Integer;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UNew_SalesOrder, UHomeLogin,
  UMasterWilayah, UDaftarKlasifikasi, UNew_MasterBiayaDO,
  UTemplate_Temp, UNewDeliveryOrder, UListItempo, USetDeliveryOrder,
  UDelivery_Order_Sumber, UDataReturPenjualan, UReturPenjualan_Sumber,
  UNew_DataPenjualan, UDataPenerimaanBank, UDataRencanaLunasPiutang,
  UDataPenagihanPiutang, UNewKontrakTagihan, UDaftarKontrak,
  UNew_DataTargetPenjualan, USuratKonfirmasiPiutang, UNew_PiutangBeramasalah,
  UBrowseNotaPenjualan, UNew_DataPenjualanPromosi;

procedure TFbrowse_data_pelanggan.RefreshGrid;
var strWhere: String;
begin
  if vcall='daftar_klasifikasi' then
  begin
    strWhere:=' and a.code_type_business='+QuotedStr(FDaftarKlasifikasi.edkd_jenis_usaha.Text)+' AND '+
              'a.code_selling_type='+QuotedStr(FDaftarKlasifikasi.edkd_type_jual_pel.Text)+' AND '+
              'a.code_type='+QuotedStr(FDaftarKlasifikasi.edkd_jenis_pel.Text);
  end else if vcall='dpp' then
  begin
    strWhere:=' and getkares.code='+QuotedStr(FDataPenagihanPiutang.strKabupatenID) ;
  end else begin
    strWhere:='';
  end;

  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' select a.customer_code, customer_name, email, address, contact_person1 as telp, '+
            ' code_region, name_region, payment_term, '+
            ' case when code_karesidenan is null then ''0'' else code_karesidenan end code_karesidenan  '+
            ' from t_customer a '+
            ' LEFT JOIN (select customer_code, address, contact_person1 '+
              ' from t_customer_address limit 1) b ON a.customer_code=b.customer_code '+
            ' LEFT JOIN (SELECT code, name, code_karesidenan from t_region_regency) getkares '+
              ' ON "left"(a.code_region,4)=getkares.code '+
            ' where deleted_at is null '+strWhere);
    if SelectRow('select value_parameter from t_parameter where key_parameter=''jns_filter_master_pelanggan'' ')= '1' then
    begin
      if ( Edkodewilayah.Text<>'' ) AND ( Edkodewilayah.Text<>'0' ) then
      begin
        sql.add(' AND code_region='+QuotedStr(Edkodewilayah.Text)+' ');
      end;
    end;
    sql.add(' ORDER BY created_at Desc ');
    open;
  end;

  Fbrowse_data_pelanggan.MemMasterData.active:=false;
  Fbrowse_data_pelanggan.MemMasterData.active:=true;
  Fbrowse_data_pelanggan.MemMasterData.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     Fbrowse_data_pelanggan.MemMasterData.insert;
     //ShowMessage(Dm.Qtemp.fieldbyname('customer_name').value);
     Fbrowse_data_pelanggan.MemMasterData['KD_PELANGGAN']:=Dm.Qtemp.fieldbyname('customer_code').value;
     Fbrowse_data_pelanggan.MemMasterData['NM_PELANGGAN']:=Dm.Qtemp.fieldbyname('customer_name').value;
     Fbrowse_data_pelanggan.MemMasterData['KD_WILAYAH']:=Dm.Qtemp.fieldbyname('code_region').value;
     Fbrowse_data_pelanggan.MemMasterData['WILAYAH']:=Dm.Qtemp.fieldbyname('name_region').value;
     Fbrowse_data_pelanggan.MemMasterData['ALAMAT']:=Dm.Qtemp.fieldbyname('address').value;
     Fbrowse_data_pelanggan.MemMasterData['KD_KARES']:=Dm.Qtemp.fieldbyname('code_karesidenan').value;
     Fbrowse_data_pelanggan.MemMasterData.post;
     Dm.Qtemp.next;
    end;
  end;
end;

procedure TFbrowse_data_pelanggan.btTampilkanClick(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TFbrowse_data_pelanggan.DBGridCustomerDblClick(Sender: TObject);
begin
  //showmessage(vcall);
  if vcall='dpp' then
  begin
     FDataPenagihanPiutang.MemDetail.insert;
     FDataPenagihanPiutang.MemDetail['kode_pel']:=MemMasterData['KD_PELANGGAN'];
     FDataPenagihanPiutang.MemDetail['nama_pel']:=MemMasterData['NM_PELANGGAN'];
     FDataPenagihanPiutang.MemDetail['no_invoice']:='0';
     FDataPenagihanPiutang.MemDetail['no_invoice_tax']:='0';
     //FDataPenagihanPiutang.MemDetail['tgl_faktur']:='';
     //FDataPenagihanPiutang.MemDetail['tgl_tempo']:='';
     FDataPenagihanPiutang.MemDetail['jum_piutang']:='0';
     FDataPenagihanPiutang.MemDetail['tunai']:='0';
     FDataPenagihanPiutang.MemDetail['bank_resi']:='0';
     //FDataPenagihanPiutang.MemDetail['tgl_resi']:='';
     FDataPenagihanPiutang.MemDetail['resi']:='0';
     FDataPenagihanPiutang.MemDetail['nama_bank_cek']:='';
     FDataPenagihanPiutang.MemDetail['no_cek']:='';
     //FDataPenagihanPiutang.MemDetail['tgl_tempo_cek']:='';
     FDataPenagihanPiutang.MemDetail['nilai_cek']:='0';
     FDataPenagihanPiutang.MemDetail['kontra_bon']:='0';
     FDataPenagihanPiutang.MemDetail.post;
  end;
  if vcall='rencana_lunas_piutang' then
  begin
    FDataRencanaLunasPiutang.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FDataRencanaLunasPiutang.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='piutang_bermasalah' then
  begin
    FNew_PiutangBermasalah.strKodePelanggan:=MemMasterData['KD_PELANGGAN'];
    FNew_PiutangBermasalah.edPelanggan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='browse_nota_penjualan' then
  begin
    FBrowseNotaPenjualan.strKodePelanggan:=MemMasterData['KD_PELANGGAN'];
    FBrowseNotaPenjualan.edPelanggan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='terima_bank' then
  begin
    FDataPenerimaanBank.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FDataPenerimaanBank.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FDataPenerimaanBank.edUntukPengiriman.Text:=MemMasterData['NM_PELANGGAN'];

    //Ganti Akun Header bank Menjadi Akun Piutang Pelanggan
    with FDataPenerimaanBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
        if MemDetailAkun['kd_header_akun']=SelectRow('SELECT header_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])) then
        begin
        MemDetailAkun.Edit;
        MemDetailAkun['kd_akun']:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
        //MemDetailAkun['nm_akun']:=SelectRow('SELECT account_name from t_ak_account a LEFT JOIN t_customer b ON a.code=b.account_code where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
        kd_ak_pelanggan:=MemDetailAkun['kd_akun'];
        MemDetailAkun.post;
      end;
    MemDetailAkun.Next;
    end;
    end;
  end;
  if vcall='kontrak_jasa' then
  begin
    FNewKontrakTagihan.edKodePelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNewKontrakTagihan.edNamaPelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FNewKontrakTagihan.edNPWP.Text:=SelectRow('SELECT npwp from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
    FNewKontrakTagihan.MemAlamat.Text:=SelectRow('SELECT address from t_customer_address where code_details=''001'' and customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;
  if vcall='daf_kontrak_jasa' then
  begin
    FDaftarKontrak.edKodePelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FDaftarKontrak.edNamaPelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FDaftarKontrak.Parent:=FTemplate_Temp.PanelParent;
    FDaftarKontrak.Align:=Alclient;
    FDaftarKontrak.BorderStyle:=BsNone;
    FDaftarKontrak.Show;
    FTemplate_Temp.Show;
  end;
  if vcall='retur_penjualan' then
  begin
    FDataReturPenjualan.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FDataReturPenjualan.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FDataReturPenjualan.kd_kares:=MemMasterData['KD_KARES'];
    FDataReturPenjualan.edNoFaktur.Text:='';
    FDataReturPenjualan.kd_perkiraan_pel:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;
  if vcall='retur_penjualan_sumber' then
  begin
    FReturPenjualan_Sumber.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FReturPenjualan_Sumber.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FDataReturPenjualan.kd_perkiraan_pel:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;
  if vcall='delivery_order' then
  begin
    FDelivery_Order_Sumber.edKodeVendorMuatan.Text:=MemMasterData['KD_PELANGGAN'];
    FDelivery_Order_Sumber.edNamaVendorMuatan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='sumber_order' then
  begin
    FNew_SalesOrder.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNew_SalesOrder.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FNew_SalesOrder.kd_kares:=MemMasterData['KD_KARES'];
    FNew_SalesOrder.spJatuhTempo.Text:=SelectRow('SELECT payment_term from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
    FNew_SalesOrder.edNama_Sales.Text:=SelectRow('SELECT name from t_sales  WHERE	code_region='+QuotedStr(MemMasterData['KD_WILAYAH'])+' AND deleted_at IS NULL ORDER BY code desc LIMIT 1');
    FNew_SalesOrder.edKode_Sales.Text:=SelectRow('SELECT code from t_sales  WHERE	code_region='+QuotedStr(MemMasterData['KD_WILAYAH'])+' AND deleted_at IS NULL ORDER BY code desc LIMIT 1');
//    FNew_SalesOrder.Autonumber;
  end;
  if vcall='penjualan' then
  begin
    FNew_Penjualan.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNew_Penjualan.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FNew_Penjualan.kd_kares:=MemMasterData['KD_KARES'];
    FNew_Penjualan.Autonumber;
    FNew_Penjualan.spJatuhTempo.Text:=SelectRow('SELECT payment_term from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
    FNew_Penjualan.kd_perkiraan_pel:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;
  if vcall='daftar_klasifikasi' then
  begin
    FDaftarKlasifikasi.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FDaftarKlasifikasi.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FDaftarKlasifikasi.jenis_pelanggan:=SelectRow('SELECT code_type from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;
  if vcall='m_biaya_do' then
  begin
    FNew_MasterBiayaDO.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNew_MasterBiayaDO.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='targetpenjualan' then
  begin
    FNew_DataTargetPenjualan.edKodePelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNew_DataTargetPenjualan.edNamaPelanggan.Text:=MemMasterData['NM_PELANGGAN'];
  end;
  if vcall='skpiutang' then
  begin
    FSuratKonfirmasiPiutang.edNamaPelanggan.EditValue:=MemMasterData['NM_PELANGGAN'];
    FSuratKonfirmasiPiutang.StrSKPKodePelanggan:=MemMasterData['KD_PELANGGAN'];
  end;
  if vcall='penjualanpromosi' then
  begin
    FNew_DataPenjualanPromosi.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
    FNew_DataPenjualanPromosi.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
    FNew_DataPenjualanPromosi.kd_kares:=MemMasterData['KD_KARES'];
    FNew_DataPenjualanPromosi.spJatuhTempo.Text:=SelectRow('SELECT payment_term from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
    FNew_DataPenjualanPromosi.kd_perkiraan_pel:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
  end;

  Fbrowse_data_pelanggan.Close;
  Fbrowse_data_pelanggan.MemMasterData.EmptyTable;
end;

procedure TFbrowse_data_pelanggan.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='sales_order';
  FMasterWilayah.Showmodal;
end;

procedure TFbrowse_data_pelanggan.FormShow(Sender: TObject);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''jns_filter_master_pelanggan'' ')= '0' then
  begin
    pnlFilter.Visible:=false;
    RefreshGrid;
  end else
  if SelectRow('select value_parameter from t_parameter where key_parameter=''jns_filter_master_pelanggan'' ')= '1' then
  begin
    pnlFilter.Visible:=true;
    GBType1.Visible:=true;
    GBType2.Visible:=false;
  end else
  if SelectRow('select value_parameter from t_parameter where key_parameter=''jns_filter_master_pelanggan'' ')= '2' then
  begin
    pnlFilter.Visible:=true;
    GBType1.Visible:=false;
    GBType2.Visible:=true;
  end;

  if (vcall='daftar_klasifikasi') OR (vcall='dpp') then
  begin
    pnlfilter.Visible:=false;
    RefreshGrid;
  end else begin
    pnlfilter.Visible:=true;
  end;
end;



//Initialization
  //RegisterClasses([TFNewDeliveryOrder,TFTemplate_Temp,TFbrowse_data_pelanggan]);
  //RegisterClasses([TFbrowse_data_pelanggan]);

end.
