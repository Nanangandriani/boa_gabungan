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
    procedure edNoKendMuatanButtonClick(Sender: TObject);
    procedure edNama_Vendor_KendButtonClick(Sender: TObject);
    procedure btAddDetailClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure dtMuatChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    Status: Integer;
    procedure Clear;
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
  end;

var
  FDataPerintahMuat: TFDataPerintahMuat;

implementation

{$R *.dfm}

uses USearch_Supplier, UPerintahMuat_Sumber, UDataModule, UHomeLogin,
  UMy_Function, UListPerintahMuat;

procedure TFDataPerintahMuat.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "sale"."t_spm" ("created_at", "created_by", '+
            ' "notrans", "loading_date", "delivery_date", "code_vendor", '+
            ' "name_vendor", "number_of_vehicles", "description", "order_no", '+
            //' "additional_code", '+
            ' "trans_day", "trans_month", "trans_year") '+
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
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  InsertDetail;
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
      sql.add(' UPDATE "sale"."t_spm" SET '+
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
            ' SELECT * from "sale"."t_spm_det"'+
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
  sql.Text:=' DELETE FROM  "sale"."t_spm_det" '+
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
    sql.Text:=' INSERT INTO "sale"."t_spm_det" ( "notrans", "notrans_do", '+
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


procedure TFDataPerintahMuat.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(dtMuat.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
      //ShowMessage(IntToStr(FDataPerintahMuat.Status));
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
        MessageDlg('Data Jasa Transport Tidak Lengkap..!!',mtInformation,[mbRetry],0);
        edKode_Vendor_Kend.SetFocus;
      end
      else if edKode_Vendor_Kend.Text='' then
      begin
        MessageDlg('Data Jasa Transport Tidak Lengkap..!!',mtInformation,[mbRetry],0);
        edKode_Vendor_Kend.SetFocus;
      end
      else if edNoKendMuatan.Text='' then
      begin
        MessageDlg('Nomor Kendaraan Tidak Lengkap..!!',mtInformation,[mbRetry],0);
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
  MemDetail.EmptyTable;
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
  ShowMessage('Master Kendaraan Ready Dimana ??');
end;

procedure TFDataPerintahMuat.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListPerintahMuat.Name)+'');
   strday2:=dtMuat.Date;
   edKodeMuat.Text:=getNourut(strday2,'sale.t_spm','0');
end;

end.
