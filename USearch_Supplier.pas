unit USearch_Supplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_Supplier = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    QSupplier: TUniQuery;
    DsSupplier: TDataSource;
    QSuppliersupplier_code: TStringField;
    QSuppliersupplier_name: TStringField;
    QSupplieraddress: TStringField;
    QSuppliertelp: TStringField;
    QSuppliersupplier1_name: TStringField;
    QSuppliernpwp: TStringField;
    QSuppliercontact_person: TStringField;
    QSupplierpph: TStringField;
    QSupplierid: TGuidField;
    QSuppliercreated_at: TDateTimeField;
    QSuppliercreated_by: TStringField;
    QSupplierupdated_at: TDateTimeField;
    QSupplierupdated_by: TStringField;
    QSupplierdeleted_at: TDateTimeField;
    QSupplierdeleted_by: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall : string;
  end;

var
  FSearch_Supplier: TFSearch_Supplier;

implementation

{$R *.dfm}

uses UNew_KontrakKerjasama, Unew_spb, UNew_PO, UInput_um, UNewDeliveryOrder,
  UDelivery_Order_Sumber, UDataPerintahMuat, UPerintahMuat_Sumber;

procedure TFSearch_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
    //showmessage('0');
    {with Fnew_spb do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;}
    if vcall='perintah_muat_sumber' then
    begin
      FPerintahMuat_Sumber.edKodeVendorMuatan.Text:=QSupplier['supplier_code'];
      FPerintahMuat_Sumber.edNamaVendorMuatan.Text:=QSupplier['supplier_name'];
    end;
    if vcall='perintah_muat' then
    begin
      FDataPerintahMuat.edKode_Vendor_Kend.Text:=QSupplier['supplier_code'];
      FDataPerintahMuat.edNama_Vendor_Kend.Text:=QSupplier['supplier_name'];
    end;
    if vcall='delivery_order' then
    begin
      FDelivery_Order_Sumber.edKodeVendorMuatan.Text:=QSupplier['supplier_code'];
      FDelivery_Order_Sumber.edNamaVendorMuatan.Text:=QSupplier['supplier_name'];
    end;
    if vcall='delivery_order_kend' then
    begin
      FNewDeliveryOrder.edKodeVendorTransMuatan.Text:=QSupplier['supplier_code'];
      FNewDeliveryOrder.edNamaVendorTransMuatan.Text:=QSupplier['supplier_name'];
    end;
    if vcall='delivery_order_reimburst' then
    begin
       FNewDeliveryOrder.MemDataBiaya.insert;
       FNewDeliveryOrder.MemDataBiaya['kd_biaya']:=QSupplier['supplier_code'];
       FNewDeliveryOrder.MemDataBiaya['nm_biaya']:=QSupplier['supplier_name'];
       FNewDeliveryOrder.MemDataBiaya['dpp']:='0';
       FNewDeliveryOrder.MemDataBiaya['ppn']:='0';
       FNewDeliveryOrder.MemDataBiaya['akun_ppn']:='0';
       FNewDeliveryOrder.MemDataBiaya['nama_ppn']:='-';
       FNewDeliveryOrder.MemDataBiaya['persen_ppn']:='0';
       FNewDeliveryOrder.MemDataBiaya['pph']:='0';
       FNewDeliveryOrder.MemDataBiaya['akun_pph']:='0';
       FNewDeliveryOrder.MemDataBiaya['nama_pph']:='-';
       FNewDeliveryOrder.MemDataBiaya['persen_pph']:='0';
       FNewDeliveryOrder.MemDataBiaya['total']:='0';
       FNewDeliveryOrder.MemDataBiaya['keterangan']:='0';
       FNewDeliveryOrder.MemDataBiaya['no_invoice']:='0';
       FNewDeliveryOrder.MemDataBiaya['tgl_invoice']:=NOW();
       FNewDeliveryOrder.MemDataBiaya['pph']:='0';
       FNewDeliveryOrder.MemDataBiaya['total']:='0';
       FNewDeliveryOrder.MemDataBiaya.post;
    end;

    with FNew_PO do
    begin
      EdKd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;
    with FNewKontrak_ks do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;

    {with FNew_do do
    begin
      Edkd_supp_Angkutan.Text:=QSupplier['supplier_code'];
      ednm_supp_Angkutan.Text:=QSupplier['supplier_name'];
    end;}
    with FNew_UM_Pembelian do
    begin
      Edkd_supp.Text:=QSupplier['supplier_code'];
      ednm_supp.Text:=QSupplier['supplier_name'];
    end;

    close;
end;

procedure TFSearch_Supplier.FormShow(Sender: TObject);
begin
   DBGridEh1.SearchPanel.SearchingText:='';
end;

end.
