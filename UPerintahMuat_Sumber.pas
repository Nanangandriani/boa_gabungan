unit UPerintahMuat_Sumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

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
    dsDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailnotrans: TStringField;
    MemDetailkode_vendor: TStringField;
    MemDetailname_vendor: TStringField;
    MemDetailno_reff: TStringField;
    MemDetailkd_barang: TStringField;
    MemDetailnm_barang: TStringField;
    MemDetailjumlah: TFloatField;
    MemDetailsatuan: TStringField;
    MemDetailpilih: TBooleanField;
    procedure btTampilkanClick(Sender: TObject);
    procedure edKodeVendorMuatanButtonClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FPerintahMuat_Sumber: TFPerintahMuat_Sumber;

implementation

{$R *.dfm}

uses UDataPerintahMuat, UDataModule, UListPerintahMuat, USearch_Supplier;

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

    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select *  from ( SELECT date_trans, a."notrans", "vendor_code_transport", '+
              ' "vendor_name_transport", "notrans_load", "code_vendor_load", "name_vendor_load", '+
              ' "no_ref_load", "item_code", "item_name", "source_load", "amount", "unit"  '+
              ' from "public"."t_delivery_order" a '+
              ' LEFT JOIN (SELECT a.*, vendor_code as vendor_code_transport, vendor_name '+
              ' as vendor_name_transport from "public"."t_delivery_order_load" a '+
              ' LEFT JOIN "public"."t_delivery_order_services" b ON a.notrans=b.notrans '+
              ' )b ON  a.notrans=b.notrans where deleted_at  is null) deo  '+
              ' where notrans not in (SELECT notrans from "public"."t_spm" a  where a.deleted_at  is null) ');
      sql.add(' AND date_trans between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
      if Length(edKodeVendorMuatan.Text)<>0 then
      begin
        sql.add(' AND vendor_code_transport='+QuotedStr(edKodeVendorMuatan.Text)+' ');
      end;
      sql.add(' ORDER BY deo.notrans, deo.vendor_code_transport desc ');
      open;
    end;

    FPerintahMuat_Sumber.MemDetail.active:=false;
    FPerintahMuat_Sumber.MemDetail.active:=true;
    FPerintahMuat_Sumber.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FPerintahMuat_Sumber.MemDetail.active:=false;
      FPerintahMuat_Sumber.MemDetail.active:=true;
      FPerintahMuat_Sumber.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...!!!')
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FPerintahMuat_Sumber.MemDetail.insert;
     FPerintahMuat_Sumber.MemDetail['notrans']:=Dm.Qtemp.fieldbyname('notrans').value;
     FPerintahMuat_Sumber.MemDetail['kode_vendor']:=Dm.Qtemp.fieldbyname('vendor_code_transport').value;
     FPerintahMuat_Sumber.MemDetail['name_vendor']:=Dm.Qtemp.fieldbyname('vendor_name_transport').value;
     FPerintahMuat_Sumber.MemDetail['no_reff']:=Dm.Qtemp.fieldbyname('notrans_load').value;
     FPerintahMuat_Sumber.MemDetail['kd_barang']:=Dm.Qtemp.fieldbyname('item_code').value;
     FPerintahMuat_Sumber.MemDetail['nm_barang']:=Dm.Qtemp.fieldbyname('item_name').value;
     FPerintahMuat_Sumber.MemDetail['jumlah']:=Dm.Qtemp.fieldbyname('amount').value;
     FPerintahMuat_Sumber.MemDetail['satuan']:=Dm.Qtemp.fieldbyname('unit').value;
     FPerintahMuat_Sumber.MemDetail['pilih']:=ckTandai.Checked;
     FPerintahMuat_Sumber.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFPerintahMuat_Sumber.btProsesClick(Sender: TObject);
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
           FDataPerintahMuat.MemDetail.active:=false;
           FDataPerintahMuat.MemDetail.active:=true;
           FDataPerintahMuat.MemDetail.EmptyTable;

           MemDetail.First;
           while not MemDetail.Eof do
           begin
             if MemDetail['pilih']=true then
             begin
                  FDataPerintahMuat.MemDetail.insert;
                  FDataPerintahMuat.MemDetail['nodo']:=MemDetail['notrans'];
                  FDataPerintahMuat.MemDetail['kode_vendor']:=MemDetail['kode_vendor'];
                  FDataPerintahMuat.MemDetail['name_vendor']:=MemDetail['name_vendor'];
                  FDataPerintahMuat.MemDetail['notrans']:=MemDetail['no_reff'];
                  FDataPerintahMuat.MemDetail['kd_barang']:=MemDetail['kd_barang'];
                  FDataPerintahMuat.MemDetail['nm_barang']:=MemDetail['nm_barang'];
                  FDataPerintahMuat.MemDetail['jumlah']:=MemDetail['jumlah'];
                  FDataPerintahMuat.MemDetail['satuan']:=MemDetail['satuan'];
                  FDataPerintahMuat.MemDetail.post;
             end;
           MemDetail.Next;
           end;
           FDataPerintahMuat.edKode_Vendor_Kend.Text:=edKodeVendorMuatan.Text;
           FDataPerintahMuat.edNama_Vendor_Kend.Text:=edNamaVendorMuatan.Text;
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
