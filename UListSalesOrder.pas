unit UListSalesOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.Samples.Gauges,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

type
  TFListSalesOrder = class(TForm)
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Ednamawilayah: TEdit;
    Edkodewilayah: TRzButtonEdit;
    Panel2: TPanel;
    progress: TGauge;
    Edautocode: TEdit;
    btTampilkan: TRzBitBtn;
    btGetDataProspek: TRzBitBtn;
    GBType2: TGroupBox;
    Memo1: TMemo;
    DBGridCustomer: TDBGridEh;
    MemMasterData: TMemTableEh;
    MemMasterDataWILAYAH: TStringField;
    MemMasterDataKD_PELANGGAN: TStringField;
    MemMasterDataNM_PELANGGAN: TStringField;
    MemMasterDataKD_WILAYAH: TStringField;
    dsMasterData: TDataSource;
    IdHTTP1: TIdHTTP;
    MemMasterDataNO_REFF: TStringField;
    MemMasterDataPAYMENT_TERM: TSmallintField;
    MemMasterDataKD_KARES: TStringField;
    procedure btTampilkanClick(Sender: TObject);
    procedure btGetDataProspekClick(Sender: TObject);
    procedure DBGridCustomerDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdkodewilayahButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListSalesOrder: TFListSalesOrder;

implementation

{$R *.dfm}

uses UDataModule, UNew_DataPenjualan, UTemplate_Temp, UMasterWilayah,
  UMy_Function;

procedure TFListSalesOrder.btGetDataProspekClick(Sender: TObject);
var
  max,min : Integer;
begin
  DBGridcustomer.StartLoadingStatus();
  try
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select notrans, order_date, code_cust, name_cust, code_region, '+
              ' name_region  from "public"."t_sales_order"  a  '+
              ' LEFT JOIN (select * from "public"."t_customer"  where  deleted_at '+
                ' is null order by created_at Desc) b ON a.code_cust=b.customer_code '+
              ' where  a.deleted_at is null and notrans not in (select no_reference '+
              ' from "public"."t_selling" where  deleted_at is null order by created_at Desc ) '+
              ' AND code_cust='+QuotedStr(FNew_Penjualan.edKode_Pelanggan.Text)+' '+
              ' ORDER BY a.created_at,order_date desc ');
      open;
    end;

    MemMasterData.active:=false;
    MemMasterData.active:=true;
    MemMasterData.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      max:= Dm.Qtemp.RecordCount;
      progress.Progress:=0;
      progress.MaxValue:= max;
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        MemMasterData.insert;
        MemMasterData['KD_PELANGGAN']:=Dm.Qtemp.fieldbyname('code_cust').value;
        MemMasterData['NM_PELANGGAN']:=Dm.Qtemp.fieldbyname('name_cust').value;
        MemMasterData['KD_WILAYAH']:=Dm.Qtemp.fieldbyname('code_region').value;
        MemMasterData['WILAYAH']:=Dm.Qtemp.fieldbyname('name_region').value;
        MemMasterData['NO_REFF']:=Dm.Qtemp.fieldbyname('notrans').value;
        MemMasterData.post;
        progress.Progress:= progress.Progress+1;
        Dm.Qtemp.next;
      end;
    end;
  finally
  DBGridcustomer.FinishLoadingStatus();
  end;
end;

procedure TFListSalesOrder.btTampilkanClick(Sender: TObject);
var
  max,min : Integer;
  strkodekares,strKodePelanggan,strDate: String;
begin
//  if Length(Edkodewilayah.Text)=0 then
//  begin
//    ShowMessage('Silakan Pilih Wilayah...');
//    exit
//  end;

  strDate:=QuotedStr(formatdatetime('yyyy-mm-dd',FNew_Penjualan.dtTanggal.date));


  if FNew_Penjualan.edKode_Pelanggan.Text<>'' then
  strKodePelanggan:=QuotedStr(FNew_Penjualan.edKode_Pelanggan.Text)
  else strKodePelanggan:=QuotedStr('');


  if Edkodewilayah.Text<>'' then
  strKodeKares:=QuotedStr(Edkodewilayah.Text)
  else strkodeKares:=QuotedStr('');

//  if Length(Edkodewilayah.Text)<>0 then
//  begin
    DBGridcustomer.StartLoadingStatus();
    try
  //btGetDataProspekClick(Sender);
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:='select * from get_sales_order_not_in_selling('+strDate+','+strKodeKares+','+strKodePelanggan+')';
        open;
      end;

      MemMasterData.active:=false;
      MemMasterData.active:=true;
      MemMasterData.EmptyTable;
//       Showmessage(Dm.Qtemp.fieldbyname('code_cust').value) ;
      if  Dm.Qtemp.RecordCount=0 then
      begin
        Showmessage('Maaf, Data Tidak Ditemukan..');
      end else
      begin
        max:= Dm.Qtemp.RecordCount;
        progress.Progress:=0;
        progress.MaxValue:= max;
        Dm.Qtemp.first;
        while not Dm.Qtemp.Eof do
        begin
          MemMasterData.insert;
          MemMasterData['KD_PELANGGAN']:=Dm.Qtemp.fieldbyname('code_cust').value;
          MemMasterData['NM_PELANGGAN']:=Dm.Qtemp.fieldbyname('name_cust').value;
          MemMasterData['KD_WILAYAH']:=Dm.Qtemp.fieldbyname('code_region').value;
          MemMasterData['WILAYAH']:=Dm.Qtemp.fieldbyname('name_region').value;
          MemMasterData['NO_REFF']:=Dm.Qtemp.fieldbyname('notrans').value;
          MemMasterData['PAYMENT_TERM']:=Dm.Qtemp.fieldbyname('payment_term').value;
          MemMasterData['KD_KARES']:=Dm.Qtemp.fieldbyname('code_karesidenan').value;
          MemMasterData.post;
          progress.Progress:= progress.Progress+1;
          Dm.Qtemp.next;
        end;
      end;
    finally
    DBGridcustomer.FinishLoadingStatus();
  end;
//  end;
end;

procedure TFListSalesOrder.DBGridCustomerDblClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    with Dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.add(' select notrans, code_item, name_item, amount, code_unit, name_unit, '+
              ' sell as selling_price,b.group_id from "public"."t_sales_order_det" a '+
              ' LEFT JOIN (select * from "public"."t_item"  where  deleted_at is null '+
              ' order by created_at Desc) b ON a.code_item=b.item_code '+
              ' where a.notrans='+QuotedStr(MemMasterData['NO_REFF'])+' and '+
              ' a.deleted_at is null order by a.created_at Desc');
      open;
    end;

    FNew_Penjualan.MemDetail.active:=false;
    FNew_Penjualan.MemDetail.active:=true;
    FNew_Penjualan.MemDetail.EmptyTable;

    if  Dm.Qtemp2.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Detail Tidak Ditemukan, Silakan Periksa Kembali Data..');
    end;

    if  Dm.Qtemp2.RecordCount<>0 then
    begin
      FNew_Penjualan.edNoReff.Text:=MemMasterData['NO_REFF'];
      FNew_Penjualan.edNama_Pelanggan.Text:=MemMasterData['NM_PELANGGAN'];
      FNew_Penjualan.edKode_Pelanggan.Text:=MemMasterData['KD_PELANGGAN'];
      FNew_Penjualan.kd_perkiraan_pel:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(MemMasterData['KD_PELANGGAN'])+' ');
      FNew_Penjualan.spJatuhTempo.Text:=MemMasterData['PAYMENT_TERM'];
      FNew_Penjualan.kd_kares:=MemMasterData['KD_KARES'];
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        FNew_Penjualan.MemDetail.active:=false;
        FNew_Penjualan.MemDetail.active:=true;
        FNew_Penjualan.MemDetail.insert;
        FNew_Penjualan.MemDetail['NO_SUMBER']:=FNew_Penjualan.edNomorTrans.Text;
        FNew_Penjualan.MemDetail['KD_ITEM']:=Dm.Qtemp2.FieldByName('code_item').AsString;
        FNew_Penjualan.MemDetail['NM_ITEM']:=Dm.Qtemp2.FieldByName('name_item').AsString;
        FNew_Penjualan.MemDetail['JUMLAH']:=Dm.Qtemp2.FieldByName('amount').AsFloat;
        FNew_Penjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp2.FieldByName('selling_price').AsFloat;
        FNew_Penjualan.MemDetail['JUMLAH_HARGA']:=Dm.Qtemp2.FieldByName('selling_price').AsFloat*Dm.Qtemp2.FieldByName('amount').AsFloat;
        FNew_Penjualan.MemDetail['AKUN_PERK_ITEM']:=SelectRow('SELECT account_code from t_item where item_code='+QuotedStr(Dm.Qtemp2.FieldByName('code_item').AsString)+' ');
        FNew_Penjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp2.FieldByName('code_unit').AsString;
        FNew_Penjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp2.FieldByName('name_unit').AsString;
        FNew_Penjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp2.FieldByName('amount').AsFloat*Dm.Qtemp2.FieldByName('selling_price').AsFloat;
        FNew_Penjualan.MemDetail['PPN_AKUN']:=SelectRow('select value_parameter from t_parameter where key_parameter=''akun_pajak_jual''');
        FNew_Penjualan.MemDetail['PPN_PERSEN']:=SelectRow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual''');
        FNew_Penjualan.MemDetail['PPN_NILAI']:=FNew_Penjualan.MemDetail['SUB_TOTAL']*(FNew_Penjualan.MemDetail['PPN_PERSEN']/100);
        FNew_Penjualan.MemDetail['PPH_AKUN']:='0';
        FNew_Penjualan.MemDetail['NAMA_PPH']:='0';
        FNew_Penjualan.MemDetail['PPH_PERSEN']:='0';
        FNew_Penjualan.MemDetail['PPH_NILAI']:='0';
        FNew_Penjualan.MemDetail['POTONGAN_NILAI']:='0';
        FNew_Penjualan.MemDetail['POTONGAN_PERSEN']:='0';
        FNew_Penjualan.MemDetail['MENEJ_FEE_PERSEN']:='0';
        FNew_Penjualan.MemDetail['MENEJ_FEE_NILAI']:='0';
        FNew_Penjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp2.FieldByName('amount').AsFloat*Dm.Qtemp2.FieldByName('selling_price').AsFloat;
        FNew_Penjualan.MemDetail['GROUP_ID']:=Dm.Qtemp2.FieldByName('group_id').AsString;
        FNew_Penjualan.MemDetail.post;
//        FNew_Penjualan.HitungGrid;
        Dm.Qtemp.next;
      end;
      FNew_Penjualan.HitungDetail;
    end;
    Except on E :Exception do
    begin
      begin
      MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
      Dm.koneksi.Rollback ;
      end;
    end;
  end;
  Close;
//  FTemplate_Temp.close;
end;

procedure TFListSalesOrder.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_salesorder';
  FMasterWilayah.Showmodal;
end;

procedure TFListSalesOrder.FormShow(Sender: TObject);
begin
  if Length(FNew_Penjualan.edNama_Pelanggan.Text)=0 then
  begin
    pnlFilter.Visible:=true;
    btTampilkanClick(sender);
  end;
  if Length(FNew_Penjualan.edNama_Pelanggan.Text)<>0 then
  begin
    pnlFilter.Visible:=false;
    GBType1.Visible:=true;
    GBType2.Visible:=false;
    btTampilkanClick(sender);
//    btGetDataProspekClick(Sender);
  end;
end;
initialization
RegisterClass(TFListSalesOrder);

end.
