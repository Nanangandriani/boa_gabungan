unit UPerintahMuat_Sumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, MemDS, DBAccess, Uni, DataDriverEh;

type
  TFPerintahMuat_Sumber = class(TForm)
    Panel5: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    edKodeVendorMuatan: TRzButtonEdit;
    edNamaVendorMuatan: TEdit;
    dtTanggal1: TRzDateTimePicker;
    dtTanggal2: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    btProses: TRzBitBtn;
    ckTandai: TCheckBox;
    DBGrid_SumberOrder: TDBGridEh;
    DSDO: TDataSource;
    MemDetail: TMemTableEh;
    Label37: TLabel;
    Label36: TLabel;
    edNoKendMuatan: TRzButtonEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Qdetail: TUniQuery;
    Qdo: TUniQuery;
    DataSetDriverDO: TDataSetDriverEh;
    MemDetaildate_trans: TDateField;
    MemDetailnotrans: TStringField;
    MemDetailvendor_code_transport: TStringField;
    MemDetailvendor_name_transport: TStringField;
    MemDetailvehicles: TStringField;
    MemDetailpilih: TBooleanField;
    Qdodate_trans: TDateField;
    Qdonotrans: TStringField;
    Qdovendor_code_transport: TStringField;
    Qdovendor_name_transport: TStringField;
    Qdovehicles: TStringField;
    Qdopilih: TBooleanField;
    procedure btTampilkanClick(Sender: TObject);
    procedure edKodeVendorMuatanButtonClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
    procedure process_stock;
  end;

var
  FPerintahMuat_Sumber: TFPerintahMuat_Sumber;

implementation

{$R *.dfm}

uses UDataPerintahMuat, UDataModule, UListPerintahMuat, USearch_Supplier,
  UHomeLogin;

procedure TFPerintahMuat_Sumber.btProsesClick(Sender: TObject);
var
  rec: Integer;
begin
  Status:=0;
  rec:=0;
//  if not dm.Koneksi.InTransaction then
//   dm.Koneksi.StartTransaction;
//  try
  if edKodeVendorMuatan.Text='' then
  begin
    MessageDlg('Data Vendor Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeVendorMuatan.SetFocus;
  end
  else if Status = 0 then
  begin
     //cek ada yang di tandai tidak
     FDataPerintahMuat.MemDetail.active:=false;
     FDataPerintahMuat.MemDetail.active:=true;
     FDataPerintahMuat.MemDetail.EmptyTable;
     MemDetail.First;
     while not MemDetail.Eof do
     begin
//       if MemDetail['pilih']=true then
//       begin
//
//          Qdetail.First;
//          while not Qdetail.Eof do
//          begin
//            rec:=rec+1;
//            with Dm.Qtemp do // Cek apa Penjualan Sudah Tag Stock Atau Belum
//            begin
//              close;
//              sql.clear;
//              sql.add(' select a.*, item_stock_code  from "public"."t_selling_stock_details" a '+
//                      ' LEFT JOIN "public"."t_item_stock_det" b ON a.stock_code=b.stock_code  '+
//                      ' where "trans_no"='+QuotedStr(MemDetail['no_reff'])+' and '+
//                      ' "item_code"='+QuotedStr(MemDetail['kd_barang'])+'  ');
//                open;
//            end;
//
//            if Dm.Qtemp.RecordCount=0 then
//            begin
//              FDataPerintahMuat.stat_proses:=false;
//              exit;
//            end;
//            Qdetail.Next;
//          end;
//       end;
//     MemDetail.Next;
//     end;
//
//     if rec=0 then
//     begin
//       ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
//       exit;
//     end;

//     if (Dm.Qtemp.RecordCount=0) or (FDataPerintahMuat.stat_proses=false) then
//     // Cek apa Penjualan Sudah Tag Stock Atau Belum
//     begin
//       ShowMessage('Data Penjualan '+MemDetail['no_reff']+'-'+MemDetail['kd_barang']+' ' +#13#10+
//                   'Belum Melakukan Pendataan Stock... !!!');
//       FDataPerintahMuat.stat_proses:=false;
//       exit;
//     end;

     //data di tandai kirm ke do
//     if rec>0 then
//     begin


       Qdetail.First;
       while not Qdetail.Eof do
       begin
         if MemDetail['pilih']=true then
         begin
              FDataPerintahMuat.MemDetail.insert;
              FDataPerintahMuat.MemDetail['nodo']:=MemDetail['notrans'];
              FDataPerintahMuat.MemDetail['kode_vendor']:=MemDetail['vendor_code_transport'];
              FDataPerintahMuat.MemDetail['name_vendor']:=MemDetail['vendor_name_transport'];
              FDataPerintahMuat.MemDetail['notrans']:=Qdetail.FieldByName('notrans_load').AsString;
              FDataPerintahMuat.MemDetail['kd_barang']:=Qdetail.FieldByName('item_code').AsString;
              FDataPerintahMuat.MemDetail['nm_barang']:=Qdetail.FieldByName('item_name').AsString;
              FDataPerintahMuat.MemDetail['jumlah']:=Qdetail.FieldValues['amount'];
              FDataPerintahMuat.MemDetail['satuan']:=Qdetail.FieldByName('unit').AsString;
              FDataPerintahMuat.MemDetail.post;
              process_stock;
         end;
       Qdetail.Next;
       end;
//       FDataPerintahMuat.edKode_Vendor_Kend.Text:=edKodeVendorMuatan.Text;
//       FDataPerintahMuat.edNama_Vendor_Kend.Text:=edNamaVendorMuatan.Text;
//       Dm.Koneksi.Commit;
       MemDetail.Next;
     end;
  end;
//  Except on E :Exception do
//    begin
//      begin
//        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
//        Dm.koneksi.Rollback ;
//      end;
//    end;
//  end;
  Close;
end;

procedure TFPerintahMuat_Sumber.process_stock;
begin
  with Dm.Qtemp do // Cek apa Penjualan Sudah Tag Stock Atau Belum
  begin
    close;
    sql.clear;
    sql.add(' select a.*, item_stock_code  from "public"."t_selling_stock_details" a '+
            ' LEFT JOIN "public"."t_item_stock_det" b ON a.stock_code=b.stock_code  '+
            ' where "trans_no"='+QuotedStr(Qdetail.FieldByName('notrans_load').AsString)+' and '+
            ' "item_code"='+QuotedStr(Qdetail.FieldByName('item_code').AsString)+'  ');
      open;
  end;

  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Data Penjualan Anda Belum Melakukan Pendataan Stock... !!!');
    FDataPerintahMuat.stat_proses:=false;
    exit;
  end;
  //update qty_booking t_item_stock_det

  if Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
                  ' "qtyout"=qtyout+'+(FloatToStr(Dm.Qtemp.FieldByName('qty').Value))+' '+
                  ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp.FieldByName('stock_code').Value)+'; ';
        ExecSQL;
      end;

      with dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.Text:=' INSERT INTO "public"."t_spm_stock_details" '+
                  ' ("created_at", "created_by", "trans_sell_no", "trans_id", "item_code", '+
                  ' "stock_code", "qty", "unit", "wh_code", "supp_code", '+
                  ' "trans_spm_no", "item_stock_code") '+
                  ' Values( '+
                  ' NOW(), '+
                  ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('trans_no').AsString)+', '+
                  ' '+QuotedStr(FDataPerintahMuat.trans_id_link)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('item_code').AsString)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('stock_code').AsString)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('qty').value)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('unit').AsString)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('wh_code').AsString)+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('supp_code').AsString)+', '+
                  ' '+QuotedStr('0')+', '+
                  ' '+QuotedStr(Dm.Qtemp.FieldByName('item_stock_code').AsString)+');';
        ExecSQL;
      end;
     Dm.Qtemp.next;
    end;
  end;
end;

procedure TFPerintahMuat_Sumber.Clear;
begin
  edKodeVendorMuatan.Clear;
  edNamaVendorMuatan.Clear;
  dtTanggal1.Date:=now();
  dtTanggal2.Date:=now();
  MemDetail.EmptyTable;
end;

procedure TFPerintahMuat_Sumber.edKodeVendorMuatanButtonClick(Sender: TObject);
begin
  FSearch_Supplier.Caption:='Master Data Supplier';
  FSearch_Supplier.vcall:='perintah_muat_sumber';
  FSearch_Supplier.QSupplier.Close;
  FSearch_Supplier.QSupplier.Open;
  FSearch_Supplier.ShowModal;
end;

procedure TFPerintahMuat_Sumber.RefreshGrid;
begin
  //ShowMessage('Tampil data');

  with Qdo do
  begin
    close;
    sql.clear;
//    sql.add(' select *  from ( SELECT date_trans, a."notrans", "vendor_code_transport", '+
//            ' "vendor_name_transport", "notrans_load", "code_vendor_load", "name_vendor_load", '+
//            ' "no_ref_load", "item_code", "item_name", "source_load", "amount", "unit",vehicles  '+
//            ' from "public"."t_delivery_order" a '+
//            ' LEFT JOIN (SELECT a.*, vendor_code as vendor_code_transport, vendor_name '+
//            ' as vendor_name_transport,vehicles from "public"."t_delivery_order_load" a '+
//            ' LEFT JOIN "public"."t_delivery_order_services" b ON a.notrans=b.notrans '+
//            ' )b ON  a.notrans=b.notrans where deleted_at  is null) deo  '+
//            ' where notrans not in (SELECT notrans from "public"."t_spm" a  '+
//            'where a.deleted_at  is null) ');
    sql.Add('SELECT DISTINCT *,false as pilih from ( SELECT date_trans, a."notrans", "vendor_code_transport",  '+
            '"vendor_name_transport",    vehicles  from "public"."t_delivery_order" a  '+
            'LEFT JOIN (SELECT a.*, vendor_code as vendor_code_transport, vendor_name  as vendor_name_transport,'+
            'vehicles from "public"."t_delivery_order_load" a  '+
            'LEFT JOIN "public"."t_delivery_order_services" b ON a.notrans=b.notrans  )b '+
            'ON  a.notrans=b.notrans where deleted_at  is null) deo   where notrans not in '+
            '(SELECT notrans from "public"."t_spm" a  where a.deleted_at  is null) ');
    sql.add(' AND date_trans between '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
    if Length(edKodeVendorMuatan.Text)<>0 then
    begin
      sql.add(' AND vendor_code_transport='+QuotedStr(edKodeVendorMuatan.Text)+' ');
    end;
    if Length(edNoKendMuatan.Text)<>0 then
    begin
      sql.add(' AND vehicles='+QuotedStr(edNoKendMuatan.Text)+' ');
    end;
    sql.add(' ORDER BY deo.notrans, deo.vendor_code_transport desc ');
    open;
  end;
  if  Qdo.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Data...!!!')
  end;
  MemDetail.Close;
  MemDetail.Open;
  Qdetail.Close;
  Qdetail.Open;
//  FPerintahMuat_Sumber.MemDetail.EmptyTable;

//  if  Dm.Qtemp.RecordCount<>0 then
//  begin
//    Dm.Qtemp.first;
//    while not Dm.Qtemp.Eof do
//    begin
//      FPerintahMuat_Sumber.MemDetail.insert;
//      FPerintahMuat_Sumber.MemDetail['notrans']:=Dm.Qtemp.fieldbyname('notrans').value;
//      FPerintahMuat_Sumber.MemDetail['kode_vendor']:=Dm.Qtemp.fieldbyname('vendor_code_transport').value;
//      FPerintahMuat_Sumber.MemDetail['name_vendor']:=Dm.Qtemp.fieldbyname('vendor_name_transport').value;
//      FPerintahMuat_Sumber.MemDetail['no_reff']:=Dm.Qtemp.fieldbyname('notrans_load').value;
//      FPerintahMuat_Sumber.MemDetail['kd_barang']:=Dm.Qtemp.fieldbyname('item_code').value;
//      FPerintahMuat_Sumber.MemDetail['nm_barang']:=Dm.Qtemp.fieldbyname('item_name').value;
//      FPerintahMuat_Sumber.MemDetail['jumlah']:=Dm.Qtemp.fieldbyname('amount').value;
//      FPerintahMuat_Sumber.MemDetail['satuan']:=Dm.Qtemp.fieldbyname('unit').value;
//      FPerintahMuat_Sumber.MemDetail['pilih']:=ckTandai.Checked;
//      FPerintahMuat_Sumber.MemDetail.post;
//      Dm.Qtemp.next;
//    end;
//  end;
end;


procedure TFPerintahMuat_Sumber.btTampilkanClick(Sender: TObject);
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
    FPerintahMuat_Sumber.RefreshGrid;
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


end.
