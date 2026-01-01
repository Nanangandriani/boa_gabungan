unit UDeliveryOrder_SumberPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, RzPanel, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, MemTableDataEh, Data.DB, DataDriverEh, MemDS,
  DBAccess, Uni, MemTableEh, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, RzDTP;

type
  TFDeliveryOrder_SumberPO = class(TForm)
    Panel5: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    dtTanggal1: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    btProses: TRzBitBtn;
    ckTandai: TCheckBox;
    DBGrid_SumberOrder: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DSDO: TDataSource;
    MemDetail: TMemTableEh;
    DataSource1: TDataSource;
    Qdetail: TUniQuery;
    Qdo: TUniQuery;
    DataSetDriverDO: TDataSetDriverEh;
    MemDetailpilih: TBooleanField;
    MemDetailpo_no: TStringField;
    MemDetailpo_date: TDateField;
    MemDetailsupplier_code: TStringField;
    MemDetaildelivery_date: TDateField;
    MemDetailsupplier_name: TStringField;
    MemDetailwh_code: TStringField;
    MemDetailwh_name: TStringField;
    MemDetaildelivery2_date: TDateField;
    Qdopilih: TBooleanField;
    Qdopo_no: TStringField;
    Qdopo_date: TDateField;
    Qdosupplier_code: TStringField;
    Qdodelivery_date: TDateField;
    Qdosupplier_name: TStringField;
    Qdowh_code: TStringField;
    Qdowh_name: TStringField;
    Qdodelivery2_date: TDateField;
    procedure btTampilkanClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDeliveryOrder_SumberPO: TFDeliveryOrder_SumberPO;

implementation

{$R *.dfm}

uses UNewDeliveryOrder;


procedure TFDeliveryOrder_SumberPO.btProsesClick(Sender: TObject);
var
  rec: Integer;
begin

    rec:=0;


   FNewDeliveryOrder.MemDataMuatan.active:=false;
   FNewDeliveryOrder.MemDataMuatan.active:=true;
   FNewDeliveryOrder.MemDataMuatan.EmptyTable;
   MemDetail.First;
   while not MemDetail.Eof do
   begin

     Qdetail.First;
     while not Qdetail.Eof do
     begin
       if MemDetail['pilih']=true then
       begin
            FNewDeliveryOrder.MemDataMuatan.insert;
            FNewDeliveryOrder.MemDataMuatan['notrans']:=MemDetail['po_no'];
            FNewDeliveryOrder.MemDataMuatan['no_reff']:=MemDetail['po_no'];
            FNewDeliveryOrder.MemDataMuatan['kode_vendor']:=MemDetail['supplier_code'];
            FNewDeliveryOrder.MemDataMuatan['name_vendor']:=MemDetail['supplier_name'];
            FNewDeliveryOrder.MemDataMuatan['kd_barang']:=Qdetail.FieldByName('item_code').AsString;
            FNewDeliveryOrder.MemDataMuatan['nm_barang']:=Qdetail.FieldByName('item_name').AsString;
            FNewDeliveryOrder.MemDataMuatan['jumlah']:=Qdetail.FieldValues['qty'];
            FNewDeliveryOrder.MemDataMuatan['satuan']:=Qdetail.FieldByName('unit').AsString;
            FNewDeliveryOrder.MemDataMuatan.post;
       end;
     Qdetail.Next;
     end;

     MemDetail.Next;
   end;

   Close;
end;

procedure TFDeliveryOrder_SumberPO.btTampilkanClick(Sender: TObject);
begin
  with Qdo do
  begin
    close;
    sql.Clear;
    sql.Text:='select false as pilih,a.po_no,a.po_date,a.supplier_code,a.delivery_date,'+
              'b.supplier_name,a.wh_code,c.wh_name,a.delivery2_date from t_po a '+
              'left join t_supplier b on a.supplier_code=b.supplier_code '+
              'left join t_wh c on a.wh_code=c.wh_code '+
              'WHERE a.po_date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+' and '+
              'a.approval_status=1 and a.deleted_at is null Order by a.po_date,a.po_no ASC';
    open;
  end;
  if Qdo.RecordCount>0 then
  begin
    Qdetail.Close;
    Qdetail.Open;
    MemDetail.Close;
    MemDetail.Open;
//     MemDetail.Active:=False;
//     MemDetail.Active:=True;
//     MemDetail.EmptyTable;
//     Qdo.First;
//     while not Qdo.Eof do
//     begin
//
//        MemDetail.insert;
//        MemDetail['pilih']:=Qdo.FieldByName('pilih').AsString;
//        MemDetail['po_no']:=Qdo.FieldByName('po_no').AsString;
//        MemDetail['po_date']:=Qdo.FieldByName('po_date').AsDateTime;
//        MemDetail['supplier_code']:=Qdo.FieldByName('supplier_code').AsString;
//        MemDetail['supplier_name']:=Qdo.FieldByName('supplier_name').AsString;
//        MemDetail['delivery_date']:=Qdo.FieldValues['delivery_date'];
//        MemDetail['delivery2_date']:=Qdo.FieldByName('delivery2_date').AsString;
//        MemDetail['wh_code']:=Qdo.FieldByName('wh_code').AsString;
//        MemDetail['wh_name']:=Qdo.FieldByName('wh_name').AsString;
//        MemDetail.post;
//
//       Qdo.Next;
//     end;

//
//    MemDetail.Close;
//    MemDetail.Open;

  end else begin
    MessageDlg('Data tidak ada..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDeliveryOrder_SumberPO.FormShow(Sender: TObject);
begin
  dtTanggal1.Date:=NOW;
  MemDetail.EmptyTable;
  MemDetail.Close;
  Qdo.Close;
  Qdetail.Close;
end;

end.
