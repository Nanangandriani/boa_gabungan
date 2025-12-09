unit UListKelompokKendaraan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFListKelompokKendaraan = class(TForm)
    DBGrid: TDBGridEh;
    DsKendaraan: TDataSource;
    QKendaraan: TUniQuery;
    DBGridEh1: TDBGridEh;
    DSDetail: TDataSource;
    QDetail: TUniQuery;
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FListKelompokKendaraan: TFListKelompokKendaraan;

implementation

{$R *.dfm}

uses UDataModule, UNewDeliveryOrder;

procedure TFListKelompokKendaraan.DBGridDblClick(Sender: TObject);
var recNoInv:Integer;
begin
//  if (dm.Qtemp.RecordCount>0) then
//  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.notrans,COALESCE(b.trans_no,'''') trans_no,a.order_date,a.code_cust,a.name_cust,'+
                'a.vehicle_group_sort_number,a.vehicle_group_id,c.code_item,c.name_item,c.amount ,c.code_unit from t_sales_order a '+
                'LEFT JOIN t_selling b on b.no_reference=a.notrans AND b.deleted_at is NULL '+
                'LEFT JOIN t_sales_order_det c on c.notrans=a.notrans '+
                'WHERE a.deleted_at is NULL AND a.vehicle_group_id='+QuotedStr(QKendaraan.FieldValues['vehicle_group_id']);
      Open;
    end;
    recNoInv:=0;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      if dm.Qtemp.FieldValues['trans_no']='' then recNoInv:=recNoInv+1;

      dm.Qtemp.Next;
    end;

    if recNoInv=0 then
    begin
      with FNewDeliveryOrder do
      begin
        strVehicleGroupId:=QKendaraan.FieldValues['vehicle_group_id'];
        edKelompokKendaraan.Text:=QKendaraan.FieldValues['vehicle_group_sort_number'];
        edNamaJenisKendMuatan.Text:=QKendaraan.FieldValues['type_vehicles_name'];
        edKodeJenisKendMuatan.Text:=QKendaraan.FieldValues['type_vehicles_code'];
        spKapasitas.value:=QKendaraan.FieldValues['capacity'];

        MemDataMuatan.Active:=False;
        MemDataMuatan.Active:=True;
        MemDataMuatan.EmptyTable;
        spTotalTitik.Value:=dm.Qtemp.RecordCount-1;
        dm.Qtemp.First;
        while not dm.Qtemp.Eof do
        begin
          FNewDeliveryOrder.MemDataMuatan.insert;
          FNewDeliveryOrder.MemDataMuatan['notrans']:=dm.Qtemp.FieldValues['trans_no'];
          FNewDeliveryOrder.MemDataMuatan['kode_vendor']:=dm.Qtemp.FieldValues['code_cust'];
          FNewDeliveryOrder.MemDataMuatan['name_vendor']:=dm.Qtemp.FieldValues['name_cust'];
          FNewDeliveryOrder.MemDataMuatan['no_reff']:=dm.Qtemp.FieldValues['notrans'];
          FNewDeliveryOrder.MemDataMuatan['kd_barang']:=dm.Qtemp.FieldValues['code_item'];
          FNewDeliveryOrder.MemDataMuatan['nm_barang']:=dm.Qtemp.FieldValues['name_item'];
          FNewDeliveryOrder.MemDataMuatan['jumlah']:=dm.Qtemp.FieldValues['amount'];
          FNewDeliveryOrder.MemDataMuatan['satuan']:=dm.Qtemp.FieldValues['code_unit'];
          FNewDeliveryOrder.MemDataMuatan.post;

          dm.Qtemp.Next;
        end;
      end;
    end else
    begin
      MessageDlg('Ada Sales Order Yang Belum Jadi Nota Penjualan..!!',mtInformation,[mbRetry],0);
    end;
    Close;
//  end;
end;

procedure TFListKelompokKendaraan.Refresh;
begin
  with QKendaraan do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='SELECT DISTINCT vehicle_group_id,vehicle_group_sort_number,type_vehicles_code,type_vehicles_name,capacity '+
              'FROM t_sales_order a '+
              'WHERE sent_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',FNewDeliveryOrder.dtTanggalMuatan.Date))+' AND vehicle_group_id IS NOT NULL AND '+
              'vehicle_group_id NOT IN (SELECT vehicle_group_id FROM t_delivery_order_services '+
              'WHERE vehicle_group_id IS NOT NULL ) Order By vehicle_group_sort_number ASC;';
    Open;
  end;
  QDetail.Close;
  QDetail.Open;
end;

end.
