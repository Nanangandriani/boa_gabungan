unit UReturPenjualan_Sumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, DataDriverEh, MemDS, DBAccess, Uni;

type
  TFReturPenjualan_Sumber = class(TForm)
    Panel5: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    dtTanggal1: TRzDateTimePicker;
    dtTanggal2: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    btProses: TRzBitBtn;
    ckTandai: TCheckBox;
    DBGrid_SumberOrder: TDBGridEh;
    dsDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailno_trans: TStringField;
    MemDetaildate_trans: TDateField;
    MemDetailcode_cust: TStringField;
    MemDetailname_cust: TStringField;
    MemDetailcode_source: TStringField;
    MemDetailname_source: TStringField;
    MemDetailno_reference: TStringField;
    MemDetailpilih: TBooleanField;
    MemDetailno_faktur: TStringField;
    edNoFaktur: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBGridBarang: TDBGridEh;
    MemBarang: TMemTableEh;
    QBarang: TUniQuery;
    dsBarang: TDataSource;
    DataSetDriverEh1: TDataSetDriverEh;
    MemBarangid: TGuidField;
    MemBarangtrans_no: TStringField;
    MemBarangcode_item: TStringField;
    MemBarangname_item: TStringField;
    MemBarangcode_unit: TStringField;
    MemBarangpilih: TBooleanField;
    QBarangid: TGuidField;
    QBarangtrans_no: TStringField;
    QBarangcode_item: TStringField;
    QBarangname_item: TStringField;
    QBarangcode_unit: TStringField;
    QBarangpilih: TBooleanField;
    QSatuan: TUniQuery;
    DSsatuan: TDataSource;
    MemDetailgrand_tot: TCurrencyField;
    MemDetailgrand_tot_returns: TCurrencyField;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure btProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_SumberOrderDblClick(Sender: TObject);
  private
    Status:Integer;
    { Private declarations }
  public
    { Public declarations }
    vcall,trans_no: String;
    procedure RefreshGrid;
    procedure RefreshGridBarang;
    procedure Clear;
  end;

var
  FReturPenjualan_Sumber: TFReturPenjualan_Sumber;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UDataModule, UDataReturPenjualan, UMy_Function;

procedure TFReturPenjualan_Sumber.RefreshGridBarang;
begin
  with QBarang do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,a.trans_no,a.code_item,a.name_item,a.code_unit,false pilih, a.amount-COALESCE((SELECT SUM(aa.amount) FROM t_sales_returns_det aa '+
              'LEFT JOIN  t_sales_returns bb on aa.no_trans_sale=bb.trans_no '+
              'where bb.no_inv_tax=b.no_inv_tax and bb.deleted_at is NULL '+
              'and aa.code_item=a.code_item GROUP BY aa.code_item),0) sisa_amount, '+
              'a.sub_total, a.ppn_percent, a.ppn_value, a.pph_account, a.pph_name, '+
              'a.pph_percent, a.pph_value, a.tot_piece_value, a.tot_piece_percent, '+
              'a.grand_tot, a.ppn_account, a.account_code,a.amount '+
              'from t_selling_det a '+
              'left join t_selling b on b.trans_no=a.trans_no  and  b.deleted_at is NULL '+
              'where b.no_inv_tax ='+QuotedStr(edNoFaktur.Text)+' and a.deleted_at is NULL';
    open;
  end;
  MemBarang.Close;
  MemBarang.Open;
end;

procedure TFReturPenjualan_Sumber.Clear;
begin
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  dtTanggal1.Date:=Now();
  dtTanggal2.Date:=Now();
  ckTandai.Checked:=true;
  MemDetail.EmptyTable;
end;

procedure TFReturPenjualan_Sumber.DBGrid_SumberOrderDblClick(Sender: TObject);
begin
  if vcall='getfaktur' then
  begin
//    with dm.Qtemp do
//    begin
//      close;
//      sql.Clear;
//      sql.Text:='select sisa_piutang from get_piutang_invoice(NOW()::date) where trans_no='+QuotedStr(MemDetail['no_trans']);
//      Open;
//    end;
//
//    if dm.Qtemp.FieldValues['sisa_piutang']<=0 then
//    begin
//      MessageDlg('Sisa Piutang sudah 0',mtInformation,[mbRetry],0);
//    end else
//    begin
      FDataReturPenjualan.edNoFaktur.Text:=MemDetail['no_faktur'];
      FDataReturPenjualan.StrNoINV:=MemDetail['no_trans'];
      FDataReturPenjualan.StrTglFaktur:=formatdatetime('yyyy-mm-dd',MemDetail['date_trans']) ;
//    end;
//    FDataReturPenjualan.grand_tot_selling:=MemDetail['grand_tot'];
//    FDataReturPenjualan.grand_tot_returns:=MemDetail['grand_tot_returns'];
  end;
  CLose;
end;

procedure TFReturPenjualan_Sumber.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' select DISTINCT *,COALESCE((SELECT SUM(grand_tot) grand_tot FROM t_sales_returns where no_inv= aa.trans_no AND deleted_at is NULL group by no_inv),0) grand_tot_returns  from ('+
            ' select trans_no, no_inv_tax, trans_date, code_cust, name_cust, code_source, '+
            ' name_source, no_reference,grand_tot from  get_selling(NULL) '+
            ' where deleted_at is null order by created_at Desc) aa ');
    sql.add(' Where trans_date between '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' AND  no_inv_tax<>'''' ');
    if Length(edKode_Pelanggan.Text)<>0 then
    begin
      sql.add(' AND code_cust='+QuotedStr(edKode_Pelanggan.Text)+' ');
    end;
    if Length(edNoFaktur.Text)<>0 then
    begin
      sql.add(' AND no_inv_tax='+QuotedStr(edNoFaktur.Text)+' ');
    end;
    sql.add(' ORDER BY aa.trans_no desc');
    open;
  end;

  FReturPenjualan_Sumber.MemDetail.active:=false;
  FReturPenjualan_Sumber.MemDetail.active:=true;
  FReturPenjualan_Sumber.MemDetail.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    FReturPenjualan_Sumber.MemDetail.active:=false;
    FReturPenjualan_Sumber.MemDetail.active:=true;
    FReturPenjualan_Sumber.MemDetail.EmptyTable;
    ShowMessage('Tidak Ditemukan Data...!!!')
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FReturPenjualan_Sumber.MemDetail.insert;
     FReturPenjualan_Sumber.MemDetail['no_trans']:=Dm.Qtemp.fieldbyname('trans_no').value;
     FReturPenjualan_Sumber.MemDetail['no_faktur']:=Dm.Qtemp.fieldbyname('no_inv_tax').value;
     FReturPenjualan_Sumber.MemDetail['date_trans']:=Dm.Qtemp.fieldbyname('trans_date').value;
     FReturPenjualan_Sumber.MemDetail['code_cust']:=Dm.Qtemp.fieldbyname('code_cust').value;
     FReturPenjualan_Sumber.MemDetail['name_cust']:=Dm.Qtemp.fieldbyname('name_cust').value;
     FReturPenjualan_Sumber.MemDetail['code_source']:=Dm.Qtemp.fieldbyname('code_source').value;
     FReturPenjualan_Sumber.MemDetail['name_source']:=Dm.Qtemp.fieldbyname('name_source').value;
     FReturPenjualan_Sumber.MemDetail['no_reference']:=Dm.Qtemp.fieldbyname('no_reference').value;
     FReturPenjualan_Sumber.MemDetail['grand_tot']:=Dm.Qtemp.fieldbyname('grand_tot').value;
     FReturPenjualan_Sumber.MemDetail['grand_tot_returns']:=Dm.Qtemp.fieldbyname('grand_tot_returns').value;
     FReturPenjualan_Sumber.MemDetail['pilih']:=ckTandai.Checked;
     FReturPenjualan_Sumber.MemDetail.post;
     Dm.Qtemp.next;
    end;
  end;
end;

procedure TFReturPenjualan_Sumber.btProsesClick(Sender: TObject);
var
  rec,IntRecItem: Integer;
begin
  Status:=0;
  rec:=0;
  IntRecItem:=0;
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edKode_Pelanggan.Text='' then
  begin
    MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKode_Pelanggan.SetFocus;
  end
  else
  begin
    //cek ada yang di tandai tidak
    //ShowMessage(MemDetail['pilih']);
    QBarang.First;
    while not QBarang.Eof do
    begin
      if QBarangpilih.Value=True then
      begin
        rec:=rec+1;
      end;
      QBarang.Next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
      exit;
    end;

    //data di tandai kirm ke do
    if rec>0 then
    begin
//      FDataReturPenjualan.MemDetail.active:=false;
//      FDataReturPenjualan.MemDetail.active:=true;
//      FDataReturPenjualan.MemDetail.EmptyTable;

      QBarang.First;
      while not QBarang.Eof do
      begin
        if QBarangpilih.Value=true then
        begin
          with Dm.Qtemp do //Cari Penjualan
          begin
            close;
            sql.clear;
            sql.add('SELECT zz.* from ( SELECT a.trans_no, a.code_item, a.name_item, '+
                    'a.amount, a.amount-COALESCE((SELECT SUM(aa.amount) FROM t_sales_returns_det aa '+
                    'LEFT JOIN  t_sales_returns bb on bb.trans_no=aa.trans_no '+
                    'where bb.no_inv_tax='+QuotedStr(edNoFaktur.Text)+' and bb.deleted_at is NULL '+
                    'and aa.code_item=a.code_item GROUP BY aa.code_item),0) sisa_amount, a.code_unit,  a.name_unit, '+
                    'a.no_reference, a.unit_price, '+
                    'a.sub_total, a.ppn_percent, a.ppn_value, a.pph_account, a.pph_name, '+
                    'a.pph_percent, a.pph_value, a.tot_piece_value, a.tot_piece_percent, '+
                    'a.grand_tot, a.ppn_account, a.account_code  FROM  t_selling_det a  '+
                    'WHERE a.deleted_at IS NULL AND a.trans_no='+QuotedStr(QBarangtrans_no.Value)+' and '+
                    'a.code_item='+QuotedStr(QBarangcode_item.Value)+' ) zz '+
                    'WHERE zz.sisa_amount>0 Order By zz.trans_no, zz.code_item desc');
            open;
          end;
          if  Dm.Qtemp.RecordCount<>0 then
          begin
            IntRecItem:=IntRecItem+1;
            Dm.Qtemp.first;
            FDataReturPenjualan.MemDetail.active:=false;
            FDataReturPenjualan.MemDetail.active:=true;
            while not Dm.Qtemp.Eof do
            begin
              FDataReturPenjualan.MemDetail.insert;
              FDataReturPenjualan.MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
              FDataReturPenjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
              FDataReturPenjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;
              FDataReturPenjualan.MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('sisa_amount').AsFloat;
              FDataReturPenjualan.MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount').AsFloat;
              FDataReturPenjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('sub_total').AsFloat/Dm.Qtemp.FieldByName('amount').AsFloat;
              FDataReturPenjualan.MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('sub_total').AsFloat/Dm.Qtemp.FieldByName('amount').AsFloat;
              FDataReturPenjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
              FDataReturPenjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
              //            FDataReturPenjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('sub_total').AsFloat;
              FDataReturPenjualan.MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
              FDataReturPenjualan.MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
              //            FDataReturPenjualan.MemDetail['PPN_NILAI']:=ROUND(Dm.Qtemp.fieldbyname('ppn_value').value);
              FDataReturPenjualan.MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
              FDataReturPenjualan.MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
              FDataReturPenjualan.MemDetail['PPH_PERSEN']:=ROUND(Dm.Qtemp.fieldbyname('pph_percent').value);
              FDataReturPenjualan.MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
              //            FDataReturPenjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
              FDataReturPenjualan.MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
              FDataReturPenjualan.MemDetail.post;
              FDataReturPenjualan.HitungGrid;
              Dm.Qtemp.next;
            end;
          end;
        end;
        QBarang.Next;
      end;
      if IntRecItem=0 then
      begin
        MessageDlg('Tidak ada Barang yang dapat diretur..!!',mtInformation,[mbRetry],0);
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
  FDataReturPenjualan.edKode_Pelanggan.Text:=FReturPenjualan_Sumber.edKode_Pelanggan.Text;
  FDataReturPenjualan.edNama_Pelanggan.Text:=FReturPenjualan_Sumber.edNama_Pelanggan.Text;
  Close;
end;

procedure TFReturPenjualan_Sumber.btTampilkanClick(Sender: TObject);
begin
  Status:=0;
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
  if edKode_Pelanggan.Text='' then
  begin
    //MessageDlg('Data Vendor Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKode_Pelanggan.SetFocus;
  end
  else if vcall = 'getfaktur' then
  begin
    FReturPenjualan_Sumber.RefreshGrid;
  end
  else if vcall = 'getbarang' then
  begin
    FReturPenjualan_Sumber.RefreshGridBarang;
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

procedure TFReturPenjualan_Sumber.edKode_PelangganButtonClick(
  Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='retur_penjualan_sumber';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFReturPenjualan_Sumber.FormShow(Sender: TObject);
begin
  if vcall='getfaktur' then
  begin
    btProses.Visible:=False;
    ckTandai.Visible:=False;
    DBGrid_SumberOrder.Columns[8].Visible:=False;
  end else
  begin
    btProses.Visible:=True;
    ckTandai.Visible:=True;
    DBGrid_SumberOrder.Columns[8].Visible:=True;
  end;

end;

end.
