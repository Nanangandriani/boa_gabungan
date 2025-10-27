unit UTambah_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFTambah_Barang = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edkode: TEdit;
    edNamaBarang: TRzButtonEdit;
    edKodeBarang: TEdit;
    edKodeSatuan: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    btAdd: TRzBitBtn;
    edJumlah: TRzNumericEdit;
    edKodeSupplier: TEdit;
    edNamaSupplier: TRzButtonEdit;
    edKodeGudang: TEdit;
    edNamaGudang: TRzButtonEdit;
    edSatuan: TRzButtonEdit;
    LabelValue: TLabel;
    LabelValue2: TLabel;
    edValue: TRzNumericEdit;
    edcategory_id: TEdit;
    procedure edNamaBarangButtonClick(Sender: TObject);
    procedure edNamaSupplierButtonClick(Sender: TObject);
    procedure edNamaGudangButtonClick(Sender: TObject);
    procedure edSatuanButtonClick(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
    procedure AddSalesOrder;
    procedure AddPenjulan;
    procedure AddTargetPenjualan;
    procedure AddPenjulanPromosi;
    procedure AddReturPenjualan;
    procedure AddKlasifikasi;
  end;
  function FTambah_Barang: TFTambah_Barang;

//var
//  FTambah_Barang: TFTambah_Barang;

implementation

{$R *.dfm}

uses UCari_Barang2, UMasterData, UDataModule, UNew_SalesOrder, UTemplate_Temp,
  UNew_DataPenjualan, UMy_Function, UDataReturPenjualan,
  UNew_DataTargetPenjualan, UNew_DataPenjualanPromosi, UDaftarKlasifikasi;

var
tambahbarang : TFTambah_Barang;

function FTambah_Barang: TFTambah_Barang;
begin
  if tambahbarang <> nil then
    FTambah_Barang:= tambahbarang
  else
    Application.CreateForm(TFTambah_Barang, Result);
end;

procedure TFTambah_Barang.AddKlasifikasi;
var
  vKodeSama: Boolean;
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  vKodeSama:=false;
  if edKodeBarang.Text='' then
  begin
    MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    FDaftarKlasifikasi.MemKlasifikasi.active:=false;
    FDaftarKlasifikasi.MemKlasifikasi.active:=true;
//    if FDaftarKlasifikasi.MemKlasifikasi.RecordCount<>0 then
//    begin
//      FDaftarKlasifikasi.MemKlasifikasi.First;
//      while not FDaftarKlasifikasi.MemKlasifikasi.Eof do
//      begin
//        if (edKodeBarang.Text=FDaftarKlasifikasi.MemKlasifikasi['kd_barang']) AND (edKodeSatuan.Text=FDaftarKlasifikasi.MemKlasifikasi['kd_satuan']) then
//        begin
//          vKodeSama:=true;
//          MessageDlg('Kode Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
//          exit;
//        end;
//        FDaftarKlasifikasi.MemKlasifikasi.Next;
//      end;
//    end;

    if vKodeSama=false then
    begin
      FDaftarKlasifikasi.MemKlasifikasi.Insert;
      FDaftarKlasifikasi.MemKlasifikasi['kd_barang']:=edKodeBarang.Text;
      FDaftarKlasifikasi.MemKlasifikasi['nm_barang']:=edNamaBarang.Text;
      FDaftarKlasifikasi.MemKlasifikasi['kd_satuan']:=edKodeSatuan.Text;;
      FDaftarKlasifikasi.MemKlasifikasi['nm_satuan']:=edSatuan.Text;
      FDaftarKlasifikasi.MemKlasifikasi['harga_satuan']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['batas1']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['batas2']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['disc']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['disc1']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['disc2']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['disc3']:='0';
      FDaftarKlasifikasi.MemKlasifikasi['disc4']:='0';
      FDaftarKlasifikasi.MemKlasifikasi.post;
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

procedure TFTambah_Barang.AddTargetPenjualan;
var
  vKodeSama: Boolean;
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  vKodeSama:=false;
  if edKodeBarang.Text='' then
  begin
    MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if edJumlah.Value=0 then
  begin
    MessageDlg('Jumlah Mininal Order 1 (Satu)..!!',mtInformation,[mbRetry],0);
  end else if edValue.Value=0 then
  begin
    MessageDlg('Value Tidak Boleh 0 ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    FNew_DataTargetPenjualan.MemDetail.active:=false;
    FNew_DataTargetPenjualan.MemDetail.active:=true;
    if FNew_DataTargetPenjualan.MemDetail.RecordCount<>0 then
    begin
    FNew_DataTargetPenjualan.MemDetail.First;
    while not FNew_DataTargetPenjualan.MemDetail.Eof do
    begin
      if edKodeBarang.Text=FNew_DataTargetPenjualan.MemDetail['item_code'] then
      begin
        vKodeSama:=true;
        MessageDlg('Kode Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
        exit;
      end;
    FNew_DataTargetPenjualan.MemDetail.Next;
    end;
    end;

    if vKodeSama=false then
    begin
       FNew_DataTargetPenjualan.MemDetail.active:=false;
       FNew_DataTargetPenjualan.MemDetail.active:=true;
       FNew_DataTargetPenjualan.MemDetail.insert;
       FNew_DataTargetPenjualan.MemDetail['item_code']:=edKodeBarang.Text;
       FNew_DataTargetPenjualan.MemDetail['item_name']:=edNamaBarang.Text;
       FNew_DataTargetPenjualan.MemDetail['qty']:=edJumlah.Value;
       FNew_DataTargetPenjualan.MemDetail['value']:=edValue.Text;
       FNew_DataTargetPenjualan.MemDetail.post;
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

procedure TFTambah_Barang.AddReturPenjualan;
var
  vKodeSama: Boolean;
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  vKodeSama:=false;
  if edKodeBarang.Text='' then
  begin
    MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeBarang.SetFocus;
  end
  else if edJumlah.Value=0 then
  begin
    MessageDlg('Jumlah Mininal Order 1 (Satu)..!!',mtInformation,[mbRetry],0);
    edJumlah.SetFocus;
  end else
  begin
    vKodeSama:=false;
    FDataReturPenjualan.MemDetail.active:=false;
    FDataReturPenjualan.MemDetail.active:=true;
    if FDataReturPenjualan.MemDetail.RecordCount<>0 then
    begin
      FDataReturPenjualan.MemDetail.First;
      while not FDataReturPenjualan.MemDetail.Eof do
      begin
        if (edKodeBarang.Text=FDataReturPenjualan.MemDetail['KD_ITEM']) AND (edKodeSatuan.Text=FDataReturPenjualan.MemDetail['KD_SATUAN']) then
        begin
          vKodeSama:=true;
          MessageDlg('Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
          exit;
        end;
        FDataReturPenjualan.MemDetail.Next;
      end;
    end;
    if vKodeSama=False then
    begin
      with Dm.Qtemp do //Cari Penjualan
      begin
        close;
        sql.clear;
        sql.add('SELECT zz.* from ( SELECT a.trans_no, a.code_item, a.name_item, '+
                'a.amount, a.amount-COALESCE((SELECT SUM(aa.amount) FROM t_sales_returns_det aa '+
                'LEFT JOIN  t_sales_returns bb on bb.trans_no=aa.trans_no '+
                'where bb.no_inv_tax='+QuotedStr(FDataReturPenjualan.edNoFaktur.Text)+' and bb.deleted_at is NULL '+
                'and aa.code_item=a.code_item GROUP BY aa.code_item),0) sisa_amount, a.code_unit,  a.name_unit, '+
                'a.no_reference, a.unit_price, '+
                'a.sub_total, a.ppn_percent, a.ppn_value, a.pph_account, a.pph_name, '+
                'a.pph_percent, a.pph_value, a.tot_piece_value, a.tot_piece_percent, '+
                'a.grand_tot, a.ppn_account, a.account_code  FROM  t_selling_det a  '+
                'WHERE a.deleted_at IS NULL AND a.trans_no='+QuotedStr(FDataReturPenjualan.StrNoINV)+' and '+
                'a.code_item='+QuotedStr(edKodeBarang.Text)+' ) zz ');
        open;
      end;
      if  Dm.Qtemp.RecordCount<>0 then
      begin
        FDataReturPenjualan.MemDetail.active:=false;
        FDataReturPenjualan.MemDetail.active:=true;
        FDataReturPenjualan.MemDetail.insert;
        FDataReturPenjualan.MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
        FDataReturPenjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
        FDataReturPenjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;
        FDataReturPenjualan.MemDetail['JUMLAH']:= 1;
        FDataReturPenjualan.MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount').AsFloat;
        FDataReturPenjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('sub_total').AsFloat/Dm.Qtemp.FieldByName('amount').AsFloat;
        FDataReturPenjualan.MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('sub_total').AsFloat/Dm.Qtemp.FieldByName('amount').AsFloat;
        FDataReturPenjualan.MemDetail['KD_SATUAN']:=edKodeSatuan.Text;
        FDataReturPenjualan.MemDetail['NM_SATUAN']:=edSatuan.Text;
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
      end;
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

procedure TFTambah_Barang.AddPenjulanPromosi;
var
  vKodeSama: Boolean;
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  vKodeSama:=false;
  if edKodeBarang.Text='' then
  begin
    MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeBarang.SetFocus;
  end
  else if edJumlah.Value=0 then
  begin
    MessageDlg('Jumlah Mininal Order 1 (Satu)..!!',mtInformation,[mbRetry],0);
    edJumlah.SetFocus;
  end else
  begin
    vKodeSama:=false;
    FNew_DataPenjualanPromosi.MemDetail.active:=false;
    FNew_DataPenjualanPromosi.MemDetail.active:=true;
    if FNew_DataPenjualanPromosi.MemDetail.RecordCount<>0 then
    begin
      FNew_DataPenjualanPromosi.MemDetail.First;
      while not FNew_DataPenjualanPromosi.MemDetail.Eof do
      begin
        if (edKodeBarang.Text=FNew_DataPenjualanPromosi.MemDetail['KD_ITEM']) AND (edKodeSatuan.Text=FNew_DataPenjualanPromosi.MemDetail['KD_SATUAN']) then
        begin
          vKodeSama:=true;
          MessageDlg('Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
          exit;
        end;
        FNew_DataPenjualanPromosi.MemDetail.Next;
      end;
    end;

    if vKodeSama=false then
    begin
       FNew_DataPenjualanPromosi.MemDetail.active:=false;
       FNew_DataPenjualanPromosi.MemDetail.active:=true;
       FNew_DataPenjualanPromosi.MemDetail.insert;
       FNew_DataPenjualanPromosi.MemDetail['NO_SUMBER']:=FNew_DataPenjualanPromosi.edNomorTrans.Text;
       FNew_DataPenjualanPromosi.MemDetail['KD_ITEM']:=edKodeBarang.Text;
       FNew_DataPenjualanPromosi.MemDetail['NM_ITEM']:=edNamaBarang.Text;
       FNew_DataPenjualanPromosi.MemDetail['JUMLAH']:=edJumlah.Value;
//       FNew_DataPenjualanPromosi.MemDetail['HARGA_SATUAN']:=SelectRow('SELECT sell from t_item where item_code='+QuotedStr(edKodeBarang.Text)+' ');
       FNew_DataPenjualanPromosi.MemDetail['HARGA_SATUAN']:=0;
       FNew_DataPenjualanPromosi.MemDetail['AKUN_PERK_ITEM']:=SelectRow('SELECT account_code from t_item where item_code='+QuotedStr(edKodeBarang.Text)+' ');
       FNew_DataPenjualanPromosi.MemDetail['KD_SATUAN']:=edKodeSatuan.Text;
       FNew_DataPenjualanPromosi.MemDetail['NM_SATUAN']:=edSatuan.Text;
       FNew_DataPenjualanPromosi.MemDetail['SUB_TOTAL']:= FNew_DataPenjualanPromosi.MemDetail['JUMLAH']*FNew_Penjualan.MemDetail['HARGA_SATUAN'];
       FNew_DataPenjualanPromosi.MemDetail['PPN_AKUN']:='';
       FNew_DataPenjualanPromosi.MemDetail['SUB_TOTAL']:=0;
       FNew_DataPenjualanPromosi.MemDetail['PPN_PERSEN']:=SelectRow('select value_parameter from t_parameter where key_parameter=''persen_pajak_jual_promosi''');
       FNew_DataPenjualanPromosi.MemDetail['PPN_NILAI']:=0;
       FNew_DataPenjualanPromosi.MemDetail['PPH_AKUN']:='';
       FNew_DataPenjualanPromosi.MemDetail['NAMA_PPH']:='';
       FNew_DataPenjualanPromosi.MemDetail['PPH_PERSEN']:=SelectRow('select value_parameter from t_parameter where key_parameter=''persen_pajak_pph_jual_promosi''');
       FNew_DataPenjualanPromosi.MemDetail['PPH_NILAI']:='0';
       FNew_DataPenjualanPromosi.MemDetail['POTONGAN_NILAI']:='0';
       FNew_DataPenjualanPromosi.MemDetail['POTONGAN_PERSEN']:='0';
       FNew_DataPenjualanPromosi.MemDetail['MENEJ_FEE_PERSEN']:='0';
       FNew_DataPenjualanPromosi.MemDetail['MENEJ_FEE_NILAI']:='0';
       FNew_DataPenjualanPromosi.MemDetail['GRAND_TOTAL']:='0';
       FNew_DataPenjualanPromosi.MemDetail.post;
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


procedure TFTambah_Barang.AddSalesOrder;
var
  vKodeSama: Boolean;
  TotQty: Integer;
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      vKodeSama:=false;
      if edKodeBarang.Text='' then
      begin
        MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeBarang.SetFocus;
      end
      {if edKodeSupplier.Text='' then
      begin
        MessageDlg('Supplier Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSupplier.SetFocus;
      end else
      {else if edKodeGudang.Text='' then
      begin
        MessageDlg('Gudang Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeGudang.SetFocus;
      end}
      else if edKodeSatuan.Text='' then
      begin
        MessageDlg('Satuan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSatuan.SetFocus;
      end
      else if edJumlah.Value=0 then
      begin
        MessageDlg('Jumlah Mininal Order 1 (Satu)..!!',mtInformation,[mbRetry],0);
        edJumlah.SetFocus;
      end else
      begin
        vKodeSama:=false;
        if FNew_SalesOrder.MemDetail.RecordCount<>0 then
        begin
        FNew_SalesOrder.MemDetail.First;
        while not FNew_SalesOrder.MemDetail.Eof do
        begin
          if (edKodeBarang.Text=FNew_SalesOrder.MemDetail['KD_ITEM']) AND (edKodeSatuan.Text=FNew_SalesOrder.MemDetail['KD_SATUAN']) then
          begin
            vKodeSama:=true;
            MessageDlg('Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
            exit;
          end;
        FNew_SalesOrder.MemDetail.Next;
        end;
        end;

        with dm.Qtemp do
        begin
          Close;
          Sql.Clear;
          Sql.Text:='SELECT a.group_id,b.group_name FROM t_item a '+
                    'left join t_item_group b on b.group_id=a.group_id '+
                    'where a.item_code='+QuotedStr(edKodeBarang.Text);
          Open;
        end;

        if vKodeSama=false then
        begin
         FNew_SalesOrder.MemDetail.active:=false;
         FNew_SalesOrder.MemDetail.active:=true;
         FNew_SalesOrder.MemDetail.insert;
         FNew_SalesOrder.MemDetail['KD_ITEM']:=edKodeBarang.Text;
         FNew_SalesOrder.MemDetail['NM_ITEM']:=edNamaBarang.Text;
         FNew_SalesOrder.MemDetail['JUMLAH']:=edJumlah.Value;
         FNew_SalesOrder.MemDetail['KD_SATUAN']:=edKodeSatuan.Text;
         FNew_SalesOrder.MemDetail['NM_ SATUAN']:=edSatuan.Text;
         FNew_SalesOrder.MemDetail['KD_GUDANG']:=edKodeGudang.Text;
         FNew_SalesOrder.MemDetail['NM_GUDANG']:=edNamaGudang.Text;
         FNew_SalesOrder.MemDetail['KD_SUPPLIER']:=edKodeSupplier.Text;
         FNew_SalesOrder.MemDetail['NM_SUPPLIER']:=edNamaSupplier.Text;
         FNew_SalesOrder.MemDetail['CATEGORY_ID']:=dm.Qtemp.FieldValues['group_id'];
         FNew_SalesOrder.MemDetail['CATEGORY_NAME']:=dm.Qtemp.FieldValues['group_name'];
         FNew_SalesOrder.MemDetail.post;

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

procedure TFTambah_Barang.AddPenjulan;
var
  vKodeSama: Boolean;
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      vKodeSama:=false;
      if edKodeBarang.Text='' then
      begin
        MessageDlg('Barang Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeBarang.SetFocus;
      end
      else if edJumlah.Value=0 then
      begin
        MessageDlg('Jumlah Mininal Order 1 (Satu)..!!',mtInformation,[mbRetry],0);
        edJumlah.SetFocus;
      end else
      begin
        vKodeSama:=false;
        FNew_Penjualan.MemDetail.active:=false;
        FNew_Penjualan.MemDetail.active:=true;
        if FNew_Penjualan.MemDetail.RecordCount<>0 then
        begin
        FNew_Penjualan.MemDetail.First;
        while not FNew_Penjualan.MemDetail.Eof do
        begin
          if edKodeBarang.Text=FNew_Penjualan.MemDetail['KD_ITEM'] then
          begin
            vKodeSama:=true;
            MessageDlg('Kode Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
            exit;
          end;
        FNew_Penjualan.MemDetail.Next;
        end;
        end;

        if vKodeSama=false then
        begin
           FNew_Penjualan.MemDetail.active:=false;
           FNew_Penjualan.MemDetail.active:=true;
           FNew_Penjualan.MemDetail.insert;
           FNew_Penjualan.MemDetail['NO_SUMBER']:=FNew_Penjualan.edNomorTrans.Text;
           FNew_Penjualan.MemDetail['KD_ITEM']:=edKodeBarang.Text;
           FNew_Penjualan.MemDetail['NM_ITEM']:=edNamaBarang.Text;
           FNew_Penjualan.MemDetail['JUMLAH']:=edJumlah.Value;
           FNew_Penjualan.MemDetail['HARGA_SATUAN']:=SelectRow('SELECT sell from t_item where item_code='+QuotedStr(edKodeBarang.Text)+' ');
           FNew_Penjualan.MemDetail['AKUN_PERK_ITEM']:=SelectRow('SELECT account_code from t_item where item_code='+QuotedStr(edKodeBarang.Text)+' ');
           FNew_Penjualan.MemDetail['KD_SATUAN']:=edKodeSatuan.Text;
           FNew_Penjualan.MemDetail['NM_SATUAN']:=edSatuan.Text;
           FNew_Penjualan.MemDetail['SUB_TOTAL']:= FNew_Penjualan.MemDetail['JUMLAH']*FNew_Penjualan.MemDetail['HARGA_SATUAN'];
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
           FNew_Penjualan.MemDetail['GRAND_TOTAL']:='0';
           FNew_Penjualan.MemDetail.post;
           FNew_Penjualan.HitungDetail;
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



procedure TFTambah_Barang.clear;
begin
    edKodeBarang.Clear;
    edNamaBarang.Clear;
    edKodeSupplier.Clear;
    edNamaSupplier.Clear;
    edKodeGudang.Clear;
    edNamaGudang.Clear;
    edKodeSatuan.Clear;
    edSatuan.Clear;
    edJumlah.Value:=0;
end;

procedure TFTambah_Barang.BBatalClick(Sender: TObject);
begin
  Close;
  FTemplate_Temp.close;
end;

procedure TFTambah_Barang.btAddClick(Sender: TObject);
begin
  if vStatusTrans='salesorder' then
  begin
    AddSalesOrder;
  end;
  if vStatusTrans='penjualan' then
  begin
    AddPenjulan;
  end;
  if vStatusTrans='targetpenjualan' then
  begin
    AddTargetPenjualan;
  end;
  if vStatusTrans='penjualanpromosi' then
  begin
    AddPenjulanPromosi;
    Close;
  end;
  if vStatusTrans='returpenjualan' then
  begin
    AddReturPenjualan;
    Close;
  end;
  if vStatusTrans='klasifikasi' then
  begin
    AddKlasifikasi;
    Close;
  end;
end;

procedure TFTambah_Barang.edNamaBarangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Barang';
  FMasterData.vcall:='barang_order';
  if vStatusTrans='klasifikasi' then
  begin
    FMasterData.update_grid('item_code','item_name','unit','t_item','WHERE group_id='+QuotedStr(FDaftarKlasifikasi.edkd_kategori.Text)+' AND	deleted_at IS NULL');
  end else if vStatusTrans='targetpenjualan' then
  begin
    FMasterData.update_grid('item_code','item_name','unit','t_item a LEFT JOIN t_item_group b on b.group_id=a.group_id','WHERE b.group_name='+QuotedStr(FNew_DataTargetPenjualan.cbKelompokBarang.Text)+' AND	a.deleted_at IS NULL');
  end else if vStatusTrans='returpenjualan' then
  begin
    FMasterData.update_grid('code_item','item_name','code_unit','t_selling_det a LEFT JOIN t_item b on  b.item_code=a.code_item','WHERE a.trans_no='+QuotedStr(FDataReturPenjualan.StrNoINV)+' AND	a.deleted_at IS NULL');
  end else
  begin
    FMasterData.update_grid('item_code','item_name','unit','t_item a LEFT JOIN t_item_category b on b.category_id=a.category_id ','WHERE	a.deleted_at IS NULL AND b.type_id=1');
  end;
  FMasterData.ShowModal;
end;

procedure TFTambah_Barang.edNamaGudangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Gudang';
  FMasterData.vcall:='gudang_order';
  FMasterData.update_grid('wh_code','wh_name','category','t_wh','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFTambah_Barang.edNamaSupplierButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Supplier';
  FMasterData.vcall:='supplier_order';
  FMasterData.update_grid('supplier_code','supplier_name','address','t_supplier','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFTambah_Barang.edSatuanButtonClick(Sender: TObject);
begin
  if edKodeBarang.Text<>'' then
  begin
    FMasterData.Caption:='Master Data Satuan';
    FMasterData.vcall:='satuan_order';
    FMasterData.update_grid('unit_code','unit_name','0','get_unit('+QuotedStr(edKodeBarang.Text)+')','');
    FMasterData.ShowModal;
  end else begin
    MessageDlg('Barang wajib diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFTambah_Barang.FormCreate(Sender: TObject);
begin
  tambahbarang:=Self;
end;

procedure TFTambah_Barang.FormDestroy(Sender: TObject);
begin
  tambahbarang:=nil;
end;

procedure TFTambah_Barang.FormShow(Sender: TObject);
begin
  clear;
  if vStatusTrans='targetpenjualan' then
  begin
    LabelValue.Visible:=True;
    LabelValue2.Visible:=True;
    edValue.Visible:=True;
    FTambah_Barang.Height:=231;
  end else if vStatusTrans='klasifikasi' then
  begin
    LabelValue.Visible:=False;
    LabelValue2.Visible:=False;
    edValue.Visible:=False;

    Label8.Visible:=False;
    Label9.Visible:=False;
    edJumlah.Visible:=False;

    FTambah_Barang.Height:=159;
  end else
  begin
    LabelValue.Visible:=False;
    LabelValue2.Visible:=False;
    edValue.Visible:=False;

    Label8.Visible:=True;
    Label9.Visible:=True;
    edJumlah.Visible:=True;

    FTambah_Barang.Height:=187;
  end;
end;

end.
