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
    procedure edNamaBarangButtonClick(Sender: TObject);
    procedure edNamaSupplierButtonClick(Sender: TObject);
    procedure edNamaGudangButtonClick(Sender: TObject);
    procedure edSatuanButtonClick(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
    procedure AddSalesOrder;
    procedure AddPenjulan;
  end;

var
  FTambah_Barang: TFTambah_Barang;

implementation

{$R *.dfm}

uses UCari_Barang2, UMasterData, UDataModule, UNew_SalesOrder, UTemplate_Temp,
  UNew_DataPenjualan, UMy_Function;


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
          if edKodeBarang.Text=FNew_SalesOrder.MemDetail['KD_ITEM'] then
          begin
            vKodeSama:=true;
            MessageDlg('Kode Barang Sudah Di Buatkan Order..!!',mtInformation,[mbRetry],0);
            exit;
          end;
        FNew_SalesOrder.MemDetail.Next;
        end;
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

end;

procedure TFTambah_Barang.edNamaBarangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Barang';
  FMasterData.vcall:='barang_order';
  FMasterData.update_grid('item_code','item_name','unit','t_item','WHERE	deleted_at IS NULL');
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
  FMasterData.Caption:='Master Data Satuan';
  FMasterData.vcall:='satuan_order';
  FMasterData.update_grid('unit_code','unit_name','0','t_unit','');
  FMasterData.ShowModal;
end;

end.
