unit UbrowseListPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, RzLabel,
  Vcl.ExtCtrls, RzPanel, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB,
  MemDS, DBAccess, Uni, RzButton;

type
  TFbrowseListPenjualan = class(TForm)
    DBGridEh1: TDBGridEh;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    dtTanggal: TRzDateTimePicker;
    DSPenjualan: TDataSource;
    QPenjualan: TUniQuery;
    btnLihat: TRzButton;
    QPenjualanpilih: TBooleanField;
    QPenjualantrans_no: TMemoField;
    QPenjualanname_cust: TMemoField;
    QPenjualancustomer_name_pkp: TMemoField;
    QPenjualanno_reference: TMemoField;
    QPenjualankaresidenan: TMemoField;
    QPenjualantp: TMemoField;
    QPenjualankabupaten: TMemoField;
    QPenjualankecamatan: TMemoField;
    QPenjualangrand_tot: TFloatField;
    DBGridEh2: TDBGridEh;
    DSPenjualanDet: TDataSource;
    QPenjualanDet: TUniQuery;
    QPenjualanDettrans_no: TStringField;
    QPenjualanDetcode_item: TStringField;
    QPenjualanDetname_item: TStringField;
    QPenjualanDetamount: TFloatField;
    QPenjualanDetcode_unit: TStringField;
    QPenjualanDetname_unit: TStringField;
    btProses: TRzBitBtn;
    QPenjualancode_cust: TMemoField;
    procedure btnLihatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vStatusTrans: String;
  end;

var
  FbrowseListPenjualan: TFbrowseListPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UDataPenerimaanBank, UNewDeliveryOrder;

procedure TFbrowseListPenjualan.btnLihatClick(Sender: TObject);
begin
  with QPenjualan do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT false as pilih,trans_no,code_cust,name_cust,customer_name_pkp,no_reference,karesidenan,tp,'+
              'kabupaten,kecamatan,grand_tot from get_selling(False) WHERE deleted_at is NULL '+
              'and trans_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal.Date))+'  ';
    open;
  end;
  QPenjualanDet.Close;
  QPenjualanDet.Open;

end;

procedure TFbrowseListPenjualan.btProsesClick(Sender: TObject);
var
  ListTransNo,LastVendor: String;
  IntTitik:Integer;
begin
  ListTransNo := '';
  QPenjualan.DisableControls;
  try
    QPenjualan.First;
    while not QPenjualan.Eof do
    begin
      if QPenjualanPILIH.AsBoolean then
      begin
        if ListTransNo <> '' then ListTransNo := ListTransNo + ',';
        ListTransNo := ListTransNo + QuotedStr(QPenjualan.FieldByName('trans_no').AsString);
      end;
      QPenjualan.Next;
    end;
  finally
    QPenjualan.EnableControls;
  end;
  if ListTransNo = '' then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end;
  with dm.Qtemp3 do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT a.trans_no, b.code_cust, b.name_cust, b.no_reference, ' +
                'a.code_item, a.name_item, a.amount, a.code_unit ' +
                'FROM t_selling_det a ' +
                'LEFT JOIN get_selling(False) b ON b.trans_no = a.trans_no ' +
                'WHERE a.trans_no IN (' + ListTransNo + ') ' +
                'AND b.deleted_at IS NULL';
    Open;
  end;
  if not dm.Qtemp3.IsEmpty then
  begin
    FNewDeliveryOrder.MemDataMuatan.Close;
    FNewDeliveryOrder.MemDataMuatan.Open;
    FNewDeliveryOrder.MemDataMuatan.EmptyTable;
    dm.Qtemp3.First;
    FNewDeliveryOrder.MemDataMuatan.DisableControls;
    try
      IntTitik:=0;
      LastVendor := '';
      while not dm.Qtemp3.Eof do
      begin
        if dm.Qtemp3.FieldValues['code_cust'] <> LastVendor then
        begin
          Inc(IntTitik);
          LastVendor := dm.Qtemp3.FieldValues['code_cust'];
        end;
        FNewDeliveryOrder.MemDataMuatan.Append;
        FNewDeliveryOrder.MemDataMuatan['notrans']     := dm.Qtemp3['trans_no'];
        FNewDeliveryOrder.MemDataMuatan['kode_vendor'] := dm.Qtemp3['code_cust'];
        FNewDeliveryOrder.MemDataMuatan['name_vendor'] := dm.Qtemp3['name_cust'];
        FNewDeliveryOrder.MemDataMuatan['no_reff']     := dm.Qtemp3['no_reference'];
        FNewDeliveryOrder.MemDataMuatan['kd_barang']   := dm.Qtemp3['code_item'];
        FNewDeliveryOrder.MemDataMuatan['nm_barang']   := dm.Qtemp3['name_item'];
        FNewDeliveryOrder.MemDataMuatan['jumlah']      := dm.Qtemp3['amount'];
        FNewDeliveryOrder.MemDataMuatan['satuan']      := dm.Qtemp3['code_unit'];
        FNewDeliveryOrder.MemDataMuatan.Post;
        dm.Qtemp3.Next;
      end;
    finally
      if FNewDeliveryOrder.chktambahpool.Checked then
        FNewDeliveryOrder.spTotalTitik.Value := IntTitik
      else
      begin
        if IntTitik > 0 then
          FNewDeliveryOrder.spTotalTitik.Value := IntTitik - 1
        else
          FNewDeliveryOrder.spTotalTitik.Value := 0;
      end;
      FNewDeliveryOrder.MemDataMuatan.EnableControls;
    end;
  end;

  QPenjualan.Close;
  QPenjualanDet.Close;
  dm.Qtemp3.Close;
  Self.Close;
end;

procedure TFbrowseListPenjualan.FormShow(Sender: TObject);
begin
  dtTanggal.Date:=NOW();
  QPenjualan.Close;
  QPenjualanDet.Close;
end;

end.
