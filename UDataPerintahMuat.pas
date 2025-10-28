unit UDataPerintahMuat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFDataPerintahMuat = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edKodeMuat: TEdit;
    edNama_Vendor_Kend: TRzButtonEdit;
    edKode_Vendor_Kend: TEdit;
    dtKirim: TRzDateTimePicker;
    dtMuat: TRzDateTimePicker;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    Label55: TLabel;
    Label54: TLabel;
    MemKeterangan: TMemo;
    edNoKendMuatan: TRzButtonEdit;
    Label36: TLabel;
    Label37: TLabel;
    btAddDetail: TRzBitBtn;
    MemDetail: TMemTableEh;
    MemDetailnodo: TStringField;
    MemDetailnotrans: TStringField;
    MemDetailkode_vendor: TStringField;
    MemDetailname_vendor: TStringField;
    MemDetailkd_barang: TStringField;
    MemDetailnm_barang: TStringField;
    MemDetailjumlah: TFloatField;
    MemDetailsatuan: TStringField;
    BCorrection: TRzBitBtn;
    procedure edNoKendMuatanButtonClick(Sender: TObject);
    procedure edNama_Vendor_KendButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure dtMuatChange(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBatalClick(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tot_jumlah : real;
    stat_proses : Boolean;
    strtgl, strbulan, strtahun, trans_id_link: string;
    Year, Month, Day: Word;
    Status,IntStatusKoreksi: Integer;
    procedure Clear;
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
    procedure reset_stock;
    procedure check_stock;
    procedure proses_stock;
    procedure CheckJasaTransportDefault;
  end;

var
  FDataPerintahMuat: TFDataPerintahMuat;

implementation

{$R *.dfm}

uses USearch_Supplier, UPerintahMuat_Sumber, UDataModule, UHomeLogin,
  UMy_Function, UListPerintahMuat, UDaftarKendaraan, UKoreksi;

procedure TFDataPerintahMuat.CheckJasaTransportDefault;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select supplier_code,supplier_name from t_supplier '+
              'where supplier_code=(select value_parameter from t_parameter '+
              'where key_parameter=''default_penyedia_jasa'') and deleted_at is null';
    open;
  end;
  if dm.Qtemp.RecordCount>0 then
  begin
    edKode_Vendor_Kend.Text:=dm.Qtemp.FieldValues['supplier_code'];
    edNama_Vendor_Kend.Text:=dm.Qtemp.FieldValues['supplier_name'];
  end;
  dm.Qtemp.Close;

end;

procedure TFDataPerintahMuat.proses_stock;
begin
  if FDataPerintahMuat.Status = 0  then //kondisi baru
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' update "public"."t_spm_stock_details" set '+
                ' "trans_spm_no"='+QuotedStr(edKodeMuat.Text)+' '+
                ' WHERE "trans_id"='+QuotedStr(FDataPerintahMuat.trans_id_link)+' ; ';
      ExecSQL;
    end;
  end;
end;

procedure TFDataPerintahMuat.reset_stock;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT *  '+
              ' FROM "public"."t_spm_stock_details"  a '+
              ' WHERE "trans_spm_no"=''0'' '+
              ' and "trans_id"='+QuotedStr(FDataPerintahMuat.trans_id_link)+' ' );
      open;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        //update qtyout t_item_stock_det  kembalikan stock qtyout
        with dm.Qtemp1 do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_item_stock_det" SET '+
                    ' "qtyout"=qtyout-'+(FloatToStr(Dm.Qtemp.FieldByName('qty').Value))+' '+
                    ' WHERE "stock_code"='+QuotedStr(Dm.Qtemp.FieldByName('stock_code').Value)+'; ';
          ExecSQL;
        end;
        with dm.Qtemp1 do
        begin
          close;
          sql.clear;
          sql.Text:=' delete from "public"."t_spm_stock_details" '+
                    ' WHERE "trans_id"='+QuotedStr(Dm.Qtemp.FieldByName('trans_id').Value)+' ; ';
          ExecSQL;
        end;
      Dm.Qtemp.next;
      end;
    end;
end;

procedure TFDataPerintahMuat.check_stock;
begin
  if FDataPerintahMuat.Status = 0  then //kondisi baru
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' select  case when sum(qty) is null then 0 else sum(qty) end '+
                ' total_stock from "public"."t_spm_stock_details" '+
                ' WHERE "trans_id"='+QuotedStr(FDataPerintahMuat.trans_id_link)+'; ';
      ExecSQL;
    end;
  end;

  if FDataPerintahMuat.Status = 1  then //kondisi update
  begin
    with dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.Text:=' select  case when sum(qty) is null then 0 else sum(qty) end '+
                ' total_stock from "public"."t_spm_stock_details" '+
                ' WHERE "trans_spm_no"='+QuotedStr(edKodeMuat.Text)+' ; ';
      ExecSQL;
    end;
  end;
end;

procedure TFDataPerintahMuat.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_spm" ("created_at", "created_by", '+
            ' "notrans", "loading_date", "delivery_date", "code_vendor", '+
            ' "name_vendor", "number_of_vehicles", "description", "order_no", '+
            //' "additional_code", '+
            ' "trans_day", "trans_month", "trans_year",sbu_code) '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKodeMuat.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtMuat.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtKirim.Date))+', '+
            ' '+QuotedStr(edKode_Vendor_Kend.Text)+', '+
            ' '+QuotedStr(edNama_Vendor_Kend.Text)+', '+
            ' '+QuotedStr(edNoKendMuatan.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            //' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+', '+
            ' '+QuotedStr(FHomeLogin.vKodePRSH)+'  );');
    ExecSQL;
  end;
  InsertDetail;
//  proses_stock;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListPerintahMuat.Refresh;
end;

procedure TFDataPerintahMuat.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_spm" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' loading_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtMuat.Date))+','+
              ' delivery_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtKirim.Date))+','+
              ' code_vendor='+QuotedStr(edKode_Vendor_Kend.Text)+','+
              ' name_vendor='+QuotedStr(edNama_Vendor_Kend.Text)+','+
              ' number_of_vehicles='+QuotedStr(edNoKendMuatan.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where notrans='+QuotedStr(edKodeMuat.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    proses_stock;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListPerintahMuat.Refresh;
end;

procedure TFDataPerintahMuat.InsertDetail;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_spm_det"'+
            ' WHERE "notrans"='+QuotedStr(edKodeMuat.Text)+' ) a '+
            ' Order By notrans desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_spm_det" '+
            ' WHERE "notrans"='+QuotedStr(edKodeMuat.Text)+';';
  ExecSQL;
  end;
  end;

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_spm_det" ( "notrans", "notrans_do", '+
              ' "notrans_sale", "code_cust", "name_cust", "code_items", "name_item", '+
              ' "amount", "unit") '+
              ' Values( '+
              ' '+QuotedStr(edKodeMuat.Text)+', '+
              ' '+QuotedStr(MemDetail['nodo'])+', '+
              ' '+QuotedStr(MemDetail['notrans'])+', '+
              ' '+QuotedStr(MemDetail['kode_vendor'])+', '+
              ' '+QuotedStr(MemDetail['name_vendor'])+', '+
              ' '+QuotedStr(MemDetail['kd_barang'])+', '+
              ' '+QuotedStr(MemDetail['nm_barang'])+', '+
              ' '+QuotedStr(MemDetail['jumlah'])+', '+
              ' '+QuotedStr(MemDetail['satuan'])+');';
    ExecSQL;
    end;
  MemDetail.Next;
  end;
end;


procedure TFDataPerintahMuat.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataPerintahMuat.BCorrectionClick(Sender: TObject);
begin
  FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                'where link='+QuotedStr(FListPerintahMuat.Name)); //Mendapatkan nama Menu
  FKoreksi.Status:=0;
  FKoreksi.vnotransaksi:=edKodeMuat.Text; //Mendapatkan Nomor Transaksi
  FKoreksi.ShowModal;
end;

procedure TFDataPerintahMuat.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtMuat.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
  tot_jumlah:=0;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
      tot_jumlah:=tot_jumlah+MemDetail['jumlah'];
    MemDetail.Next;
  end;

  //cek balancestock
//  check_stock;
//  if tot_jumlah<>dm.Qtemp1.FieldByName('total_stock').Value then
//  begin
//    ShowMessage('Maaf, Stock Barang Dengan Jumlah(Qty) Penjualan Tidak Balance !!!');
//    ShowMessage(FloatToStr(tot_jumlah)+'ASA'+FloatToStr(dm.Qtemp1.FieldByName('total_stock').Value));
//    stat_proses:=false;
//    Exit;
//  end;
  //ShowMessage(IntToStr(FDataPerintahMuat.Status));
  if stat_proses=true then
  begin
    if not dm.Koneksi.InTransaction then
     dm.Koneksi.StartTransaction;
    try
    if edKodeMuat.Text='' then
    begin
      MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
      edKodeMuat.SetFocus;
    end
    else if edKode_Vendor_Kend.Text='' then
    begin
      MessageDlg('Data Jasa Transport Wajib Diisi..!!',mtInformation,[mbRetry],0);
      edKode_Vendor_Kend.SetFocus;
    end
    else if edNoKendMuatan.Text='' then
    begin
      MessageDlg('Nomor Kendaraan Wajib Diisi..!!',mtInformation,[mbRetry],0);
      edNoKendMuatan.SetFocus;
    end
    else if MemDetail.RecordCount=0 then
    begin
      MessageDlg('Pastikan Detail Muatan Sudah Lengkap..!!',mtInformation,[mbRetry],0);
      edKodeMuat.SetFocus;
    end
    else if FDataPerintahMuat.Status = 0 then
    begin
      FDataPerintahMuat.Autonumber;
    //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edKodeMuat.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
    end
    else if FDataPerintahMuat.Status = 1 then
    begin
    if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
      Update;
      Dm.Koneksi.Commit;
    end;
    end;
    Except on E :Exception do
      begin
        begin
          MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
          Dm.koneksi.Rollback ;
        end;
      end;
    end;
  end;
end;

procedure TFDataPerintahMuat.btAddDetailClick(Sender: TObject);
begin
  FPerintahMuat_Sumber.Clear;
  FPerintahMuat_Sumber.ShowModal;
end;

procedure TFDataPerintahMuat.Clear;
begin
  edKodeMuat.Clear;
  dtMuat.Date:=now();
  dtKirim.Date:=now();
  edKode_Vendor_Kend.Clear;
  edNama_Vendor_Kend.Clear;
  edNoKendMuatan.Clear;
  MemKeterangan.Clear;
  MemDetail.active:=false;
  MemDetail.active:=true;
  MemDetail.EmptyTable;
end;

procedure TFDataPerintahMuat.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if edNama_Vendor_Kend.Text='' then
  begin
    MessageDlg('Jasa Transport Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if edNoKendMuatan.Text='' then
  begin
    MessageDlg('Nomor Kendaraan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edNoKendMuatan.SetFocus;
  end else
  begin
    FPerintahMuat_Sumber.Clear;
    FPerintahMuat_Sumber.edKodeVendorMuatan.Text:=FDataPerintahMuat.edKode_Vendor_Kend.Text;
    FPerintahMuat_Sumber.edNamaVendorMuatan.Text:=FDataPerintahMuat.edNama_Vendor_Kend.Text;
    FPerintahMuat_Sumber.edNoKendMuatan.Text:=FDataPerintahMuat.edNoKendMuatan.Text;
    FPerintahMuat_Sumber.edKodeVendorMuatan.ReadOnly:=True;
    FPerintahMuat_Sumber.edNamaVendorMuatan.ReadOnly:=True;
    FPerintahMuat_Sumber.edNoKendMuatan.ReadOnly:=True;
    FPerintahMuat_Sumber.ShowModal;
  end;
end;

procedure TFDataPerintahMuat.dtMuatChange(Sender: TObject);
begin
  if FDataPerintahMuat.Status=0 then
  begin
    Autonumber;
  end;
end;

procedure TFDataPerintahMuat.edNama_Vendor_KendButtonClick(Sender: TObject);
begin
  FSearch_Supplier.Caption:='Master Data Supplier Kendaraan';
  FSearch_Supplier.vcall:='perintah_muat';
  FSearch_Supplier.QSupplier.Close;
  FSearch_Supplier.QSupplier.Open;
  FSearch_Supplier.ShowModal;
end;

procedure TFDataPerintahMuat.edNoKendMuatanButtonClick(Sender: TObject);
begin
  //ShowMessage('Master Kendaraan Ready Dimana ??');
  FDaftarKendaraan.vcall:='perintah_muat';
  FDaftarKendaraan.GetDataVehicleDO;
  FDaftarKendaraan.show;

//  FDaftarKendaraan.GetDataViaAPI;
end;

procedure TFDataPerintahMuat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Hapus stock booking jika batal simpan
  reset_stock;
end;

procedure TFDataPerintahMuat.FormShow(Sender: TObject);
begin
  if (Status=1) AND (IntStatusKoreksi=2) then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=False;
  end else if Status=0 then
  begin
    BSave.Enabled:=True;
    BCorrection.Visible:=False;
  end else begin
    BSave.Enabled:=False;
    BCorrection.Visible:=True;
    BCorrection.Enabled:=True;
  end;
end;

procedure TFDataPerintahMuat.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListPerintahMuat.Name)+'');
   strday2:=dtMuat.Date;
   edKodeMuat.Text:=getNourut(strday2,'public.t_spm','0');
end;

end.
