unit UbrowseListReturPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, RzLabel, RzButton;

type
  TFbrowseListReturPenjualan = class(TForm)
    DBGridEh1: TDBGridEh;
    DSRetur: TDataSource;
    QListRetur: TUniQuery;
    PanelFilter: TRzPanel;
    RzLabel1: TRzLabel;
    dtTgl1: TRzDateTimePicker;
    dtTgl2: TRzDateTimePicker;
    RzLabel2: TRzLabel;
    btTampilkan: TRzBitBtn;
    procedure btTampilkanClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }

    procedure RefreshGridDet;
  public
    { Public declarations }
    vcall:string;
  end;

var
  FbrowseListReturPenjualan: TFbrowseListReturPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UDataReturPenjualanCoretax, UMy_Function;

procedure TFbrowseListReturPenjualan.btTampilkanClick(Sender: TObject);
begin
  with QListRetur do
  begin
    Close;
    Sql.Clear;
    Sql.Text:= 'SELECT a.* from t_sales_returns a '+
                          'LEFT JOIN t_sales_returns_coretax b on b.no_retur=a.trans_no AND b.deleted_at is NULL '+
                          'WHERE (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl1.Date))+' AND '+
                          ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTgl2.Date))+') AND b.trans_no is null and a.deleted_at is null';
    Open;
  end;
end;

procedure TFbrowseListReturPenjualan.DBGridEh1DblClick(Sender: TObject);
begin
  if vcall='returpenjualancoretax' then
  begin
    with FDataReturPenjualanCoretax do
    begin
    edNoRetur.Text:=QListRetur.FieldByName('trans_no').AsString;
      if QListRetur.FieldByName('return_type').AsInteger=1 then rgJenisRetur.ItemIndex:=1
      else rgJenisRetur.ItemIndex:=0;

//      edNoTrans.Text:=QListRetur.FieldByName('trans_no').AsString;
//      dtTanggal.Date:=QListRetur.FieldByName('trans_date').AsDateTime;
      edKode_Pelanggan.Text:=QListRetur.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text:=QListRetur.FieldByName('name_cust').AsString;
      kd_perkiraan_pel:=QListRetur.FieldByName('account_code').AsString;
      edKodeJenis.Text:=QListRetur.FieldByName('code_type_return').AsString;
      edNamaJenis.Text:=QListRetur.FieldByName('name_type_return').AsString;
      MemKeterangan.Text:=QListRetur.FieldByName('description').AsString;
      order_no:=QListRetur.FieldByName('order_no').AsString;
      edNoFaktur.Text:=QListRetur.FieldByName('no_inv_tax').AsString;

      if QListRetur.FieldValues['subtotal_gross']<>NULL then
      edTotHarga.Value:= QListRetur.FieldValues['subtotal_gross'] else edTotHarga.Value:=0;
      if QListRetur.FieldValues['piece_value']<>NULL then
      edPotongan.Value:= QListRetur.FieldValues['piece_value'] else edPotongan.Value:=0;
      if QListRetur.FieldValues['sub_total']<>NULL then
      edDPP.Value:=QListRetur.FieldValues['sub_total'] else edDPP.Value:=0;
      if QListRetur.FieldValues['dpp_nilai_lain']<>NULL then
      edDPPNilaiLain.Value:=QListRetur.FieldValues['dpp_nilai_lain'] else edDPPNilaiLain.Value:=0 ;
      if QListRetur.FieldValues['ppn_value']<>NULL then
      edTotPPN.Value:=QListRetur.FieldValues['ppn_value'] else edTotPPN.Value:=0;
      if QListRetur.FieldValues['grand_tot']<>NULL then
      edGrandTot.Value:=QListRetur.FieldValues['grand_tot'] else edGrandTot.Value:=0;
      StrNoINV:=QListRetur.FieldValues['no_inv'];
      IntStatusKoreksi:=QListRetur.FieldValues['status_correction'];
      if QListRetur.FieldValues['no_reference']<>NULL then
      edNoRef.Text:= QListRetur.FieldValues['no_reference'] else edNoRef.Text:='';

      if (Dm.Qtemp.FindField('deleted_at') <> nil) and (not Dm.Qtemp.FieldByName('deleted_at').IsNull) then
      begin
        isCancel := 1;
      end else begin
        isCancel := 0;
      end;

      FbrowseListReturPenjualan.RefreshGridDet;

    end;
  end;
  Close;
end;


procedure TFbrowseListReturPenjualan.RefreshGridDet;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "trans_no", "code_item", "name_item", "amount", "amount_sale", "code_unit", '+
            ' "name_unit", "unit_price", "unit_price_sale",subtotal_gross,piece_value, "sub_total", "ppn_account", "ppn_percent", '+
            ' "ppn_value", "pph_account", "pph_value", "pph_name", "pph_percent", "grand_tot", "account_code",no_inv,no_inv_tax '+
            ' FROM  "public"."t_sales_returns_det") a '+
            ' WHERE trans_no='+QuotedStr(QListRetur.FieldValues['trans_no'])+' '+
            ' Order By trans_no, code_item desc');
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;

  with FDataReturPenjualanCoretax do
  begin
    MemDetail.active:=false;
    MemDetail.active:=true;
    MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      MemDetail.active:=false;
      MemDetail.active:=true;
      MemDetail.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
       MemDetail.insert;
       MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
       MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
       MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;

       MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('no_inv').AsString;
       MemDetail['NO_FAKTUR']:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;

       MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('amount').AsFloat;
       MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount_sale').AsFloat;
       MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
       MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('unit_price_sale').AsFloat;
       MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
       MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
       MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('sub_total').AsFloat;
       MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
       MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
       MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
       MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
       MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
       MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
       MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
       MemDetail['SUBTOTAL_GROSS']:=Dm.Qtemp.fieldbyname('subtotal_gross').value;
       MemDetail['POTONGAN']:=Dm.Qtemp.fieldbyname('piece_value').value;
       MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
       MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
       MemDetail.post;
//       FDataReturPenjualan.HitungGrid;
       Dm.Qtemp.next;
      end;
    end;
  end;
end;

end.
