unit UDelivery_Order_Sumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP,
  RzButton, RzRadChk, RzDBChk, MemTableDataEh, Data.DB, MemTableEh;

type
  TFDelivery_Order_Sumber = class(TForm)
    Panel5: TPanel;
    DBGrid_SumberOrder: TDBGridEh;
    Label38: TLabel;
    edKodeVendorMuatan: TRzButtonEdit;
    edNamaVendorMuatan: TEdit;
    Label39: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal1: TRzDateTimePicker;
    Label1: TLabel;
    dtTanggal2: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    dsDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailnotrans: TStringField;
    MemDetailkode_vendor: TStringField;
    MemDetailname_vendor: TStringField;
    MemDetailno_reff: TStringField;
    MemDetailpilih: TBooleanField;
    btProses: TRzBitBtn;
    ckTandai: TCheckBox;
    MemDetailkd_barang: TStringField;
    MemDetailnm_barang: TStringField;
    MemDetailjumlah: TFloatField;
    MemDetailsatuan: TStringField;
    procedure edKodeVendorMuatanButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
  end;

var
  FDelivery_Order_Sumber: TFDelivery_Order_Sumber;

implementation

{$R *.dfm}

uses UNewDeliveryOrder, Ubrowse_pelanggan, USearch_Supplier, UDataModule;

procedure TFDelivery_Order_Sumber.RefreshGrid;
begin
  if FNewDeliveryOrder.vFormSumber01=Fbrowse_data_pelanggan.Name then
  begin
    //Data Penjualan
    FNewDeliveryOrder.sumber_do:=0;
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select *  from ('+
              ' SELECT date_trans, "code_cust", "name_cust", a."no_trans", '+
              ' b."no_reference", "code_item", "name_item", "amount", "code_unit" '+
              ' from "sale"."t_selling" a LEFT JOIN "sale"."t_selling_det" b ON '+
              ' a.no_trans=b.no_trans where a.deleted_at  is null) jual '+
              ' where no_trans not in (SELECT notrans_load from "sale"."t_delivery_order" a '+
              ' LEFT JOIN "sale"."t_delivery_order_load" b ON a.notrans=b.notrans '+
              ' where a.deleted_at  is null) ');
      sql.add(' AND date_trans between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
      if Length(edKodeVendorMuatan.Text)<>0 then
      begin
        sql.add(' AND code_cust='+QuotedStr(edKodeVendorMuatan.Text)+' ');
      end;
      sql.add(' ORDER BY jual.no_trans,jual.code_item desc');

      {sql.add(' select  a."no_trans", "no_reference", "code_cust", "name_cust", '+
              ' total_detail as ket_barang  from "sale"."t_selling" a '+
              ' LEFT JOIN (WITH total_per_code_unit AS (SELECT no_trans, code_unit, '+
              ' SUM(amount) AS total_code_unit FROM "sale"."t_selling_det" '+
              ' GROUP BY no_trans,code_unit ), total_combined AS ( SELECT no_trans, '+
              ' STRING_AGG(total_code_unit || '+QuotedSTR(' ')+' || code_unit, '+QuotedSTR(', ')+') AS total_detail '+
              ' FROM total_per_code_unit GROUP BY no_trans ) SELECT no_trans, '+
              ' total_detail FROM total_combined) b ON a.no_trans=b.no_trans '+
              ' where code_cust='+QuotedStr(edKodeVendorMuatan.Text)+' and date_trans between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' and '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' and '+
              ' deleted_at is null order by created_at Desc');}
      open;
    end;
  end;
  if FNewDeliveryOrder.vFormSumber01=FSearch_Supplier.Name then
  begin
    //Data Pembelian
    FNewDeliveryOrder.sumber_do:=1;
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select *  from (SELECT po_date, a.supplier_code  as "code_cust", '+
              ' supplier_name as "name_cust", a."po_no" as "no_trans", '+
              ' "contract_no" as "no_reference", item_stock_code as "code_item", '+
              ' item_name as "name_item", qty as "amount",unit as "code_unit" '+
              ' from "purchase"."t_po" a '+
              ' left JOIN purchase.t_podetail b ON a.po_no=b.po_no '+
              ' LEFT join t_supplier c on a.supplier_code=c.supplier_code '+
              ' where a.deleted_at  is null) beli '+
               ' where no_trans not in (SELECT notrans_load from "sale"."t_delivery_order" a '+
               ' LEFT JOIN "sale"."t_delivery_order_load" b ON a.notrans=b.notrans '+
               ' where a.deleted_at  is null)  ');
      sql.add(' AND po_date between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
      if Length(edKodeVendorMuatan.Text)<>0 then
      begin
        sql.add(' AND code_cust='+QuotedStr(edKodeVendorMuatan.Text)+' ');
      end;
      sql.add(' ORDER BY beli.no_trans,beli.code_item desc ');

      {sql.add(' select  a."po_no" as no_trans, "contract_no" as no_reference, '+
              ' a.supplier_code as code_cust, supplier_name as name_cust, total_detail as ket_barang  '+
              ' from "purchase"."t_po" a  '+
              ' LEFT JOIN (WITH total_per_code_unit AS (SELECT po_no, unit,  '+
              ' SUM(qty) AS total_code_unit FROM purchase.t_podetail  GROUP BY po_no,unit ), '+
              ' total_combined AS ( SELECT po_no,  '+
              ' STRING_AGG(total_code_unit || '+QuotedSTR(' ')+' || unit, '+QuotedSTR(', ')+') AS '+
              ' total_detail  FROM total_per_code_unit GROUP BY po_no ) SELECT po_no,  '+
              ' total_detail FROM total_combined) b ON a.po_no=b.po_no '+
              ' LEFT join t_supplier c on a.supplier_code=c.supplier_code '+
              ' where a.supplier_code='+QuotedStr(edKodeVendorMuatan.Text)+' and '+
              ' po_date between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' and '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' and '+
              ' deleted_at is null order by created_at Desc');}
      open;
    end;
  end;

    FDelivery_Order_Sumber.MemDetail.active:=false;
    FDelivery_Order_Sumber.MemDetail.active:=true;
    FDelivery_Order_Sumber.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDelivery_Order_Sumber.MemDetail.active:=false;
      FDelivery_Order_Sumber.MemDetail.active:=true;
      FDelivery_Order_Sumber.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...!!!')
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDelivery_Order_Sumber.MemDetail.insert;
     FDelivery_Order_Sumber.MemDetail['notrans']:=Dm.Qtemp.fieldbyname('no_trans').value;
     FDelivery_Order_Sumber.MemDetail['kode_vendor']:=Dm.Qtemp.fieldbyname('code_cust').value;
     FDelivery_Order_Sumber.MemDetail['name_vendor']:=Dm.Qtemp.fieldbyname('name_cust').value;
     FDelivery_Order_Sumber.MemDetail['no_reff']:=Dm.Qtemp.fieldbyname('no_reference').value;
     FDelivery_Order_Sumber.MemDetail['kd_barang']:=Dm.Qtemp.fieldbyname('code_item').value;
     FDelivery_Order_Sumber.MemDetail['nm_barang']:=Dm.Qtemp.fieldbyname('name_item').value;
     FDelivery_Order_Sumber.MemDetail['jumlah']:=Dm.Qtemp.fieldbyname('amount').value;
     FDelivery_Order_Sumber.MemDetail['satuan']:=Dm.Qtemp.fieldbyname('code_unit').value;
     FDelivery_Order_Sumber.MemDetail['pilih']:=ckTandai.Checked;
     FDelivery_Order_Sumber.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDelivery_Order_Sumber.btProsesClick(Sender: TObject);
var
  rec: Integer;
begin
  Status:=0;
  rec:=0;
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeVendorMuatan.Text='' then
      begin
        MessageDlg('Data Vendor Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeVendorMuatan.SetFocus;
      end
      else if Status = 0 then
      begin
         //cek ada yang di tandai tidak
         MemDetail.First;
         while not MemDetail.Eof do
         begin
           if MemDetail['pilih']=true then
           begin
            rec:=rec+1;
           end;
         MemDetail.Next;
         end;

         if rec=0 then
         begin
           ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
           exit;
         end;

         //data di tandai kirm ke do
         if rec>0 then
         begin
           FNewDeliveryOrder.MemDataMuatan.active:=false;
           FNewDeliveryOrder.MemDataMuatan.active:=true;
           FNewDeliveryOrder.MemDataMuatan.EmptyTable;

           MemDetail.First;
           while not MemDetail.Eof do
           begin
             if MemDetail['pilih']=true then
             begin
                  FNewDeliveryOrder.MemDataMuatan.insert;
                  FNewDeliveryOrder.MemDataMuatan['notrans']:=MemDetail['notrans'];
                  FNewDeliveryOrder.MemDataMuatan['kode_vendor']:=MemDetail['kode_vendor'];
                  FNewDeliveryOrder.MemDataMuatan['name_vendor']:=MemDetail['name_vendor'];
                  FNewDeliveryOrder.MemDataMuatan['no_reff']:=MemDetail['no_reff'];
                  FNewDeliveryOrder.MemDataMuatan['ket_barang']:=MemDetail['ket_barang'];
                  FNewDeliveryOrder.MemDataMuatan['ket_muatan']:=MemDetail['ket_muatan'];
                  FNewDeliveryOrder.MemDataMuatan.post;
             end;
           MemDetail.Next;
           end;
         end;
      end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
      Close;
end;

procedure TFDelivery_Order_Sumber.btTampilkanClick(Sender: TObject);
begin
  Status:=0;
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeVendorMuatan.Text='' then
      begin
        MessageDlg('Data Vendor Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeVendorMuatan.SetFocus;
      end
      else if Status = 0 then
      begin
        FDelivery_Order_Sumber.RefreshGrid;
      end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFDelivery_Order_Sumber.edKodeVendorMuatanButtonClick(
  Sender: TObject);
begin
  if FNewDeliveryOrder.vFormSumber01=Fbrowse_data_pelanggan.Name then
  begin
    Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
    Fbrowse_data_pelanggan.vcall:='delivery_order';
    Fbrowse_data_pelanggan.ShowModal;
  end;
  if FNewDeliveryOrder.vFormSumber01=FSearch_Supplier.Name then
  begin
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='delivery_order';
    FSearch_Supplier.QSupplier.Close;
    FSearch_Supplier.QSupplier.Open;
    FSearch_Supplier.ShowModal;
  end;
end;

procedure TFDelivery_Order_Sumber.FormShow(Sender: TObject);
begin
  edKodeVendorMuatan.Clear;
  edNamaVendorMuatan.Clear;
  dtTanggal1.Date:=Now();
  dtTanggal2.Date:=Now();
  ckTandai.Checked:=true;
end;

end.
