unit UDaftarKontrak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.Samples.Gauges,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, MemDS, DBAccess, Uni;

type
  TFDaftarKontrak = class(TForm)
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    Panel2: TPanel;
    progress: TGauge;
    btTampilkan: TRzBitBtn;
    Label9: TLabel;
    Label8: TLabel;
    edNamaPelanggan: TRzButtonEdit;
    edKodePelanggan: TEdit;
    Label14: TLabel;
    Label5: TLabel;
    edNamaJenisKontrak: TRzButtonEdit;
    EdKodeJenisKontrak: TEdit;
    QKontrakTagihan: TUniQuery;
    QKontrakTagihannocontract: TStringField;
    QKontrakTagihancust_name: TStringField;
    QKontrakTagihanaddress: TMemoField;
    QKontrakTagihantype_contract_name: TStringField;
    QKontrakTagihanperiode_end: TDateField;
    DsKontrakTagihan: TDataSource;
    DBGrid: TDBGridEh;
    QKontrakTagihancust_code: TStringField;
    procedure edNamaPelangganButtonClick(Sender: TObject);
    procedure edNamaJenisKontrakButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure QKontrakTagihanaddressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure AddPenjulan;
  end;

var
  FDaftarKontrak: TFDaftarKontrak;

implementation

{$R *.dfm}

uses UMasterData, Ubrowse_pelanggan, UTemplate_Temp, UNew_Penjualan,
  UDataModule, UNew_DataPenjualan, UMy_Function;

procedure TFDaftarKontrak.btTampilkanClick(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
   with QKontrakTagihan do
   begin
       close;
       sql.Clear;
       sql.add(' select * from "sale"."t_billing_contract"   '+
               ' where deleted_at is null '+
               ' AND periode_end >= now() ');
        if Length(edNamaPelanggan.Text)<>0 then
        begin
          sql.add(' AND "cust_code"='+QuotedStr(edKodePelanggan.Text)+'');
        end;
        if Length(edNamaJenisKontrak.Text)<>0 then
        begin
          sql.add(' AND "type_contract_code"='+QuotedStr(EdKodeJenisKontrak.Text)+'');
        end;
       sql.add(' ORDER BY created_at Desc ');
       open;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFDaftarKontrak.Clear;
begin
  edKodePelanggan.Clear;
  edNamaPelanggan.Clear;
  EdKodeJenisKontrak.Clear;
  edNamaJenisKontrak.Clear;
end;

procedure TFDaftarKontrak.DBGridDblClick(Sender: TObject);
begin
  AddPenjulan;
  close;
  FTemplate_Temp.close;
end;

procedure TFDaftarKontrak.edNamaJenisKontrakButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='daf_jenis_kontrakTagihan';
  FMasterData.update_grid('code','name','description','t_type_contract_service','WHERE	deleted_at IS NULL ORDER BY code desc');
  FMasterData.Show;
end;

procedure TFDaftarKontrak.edNamaPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='daf_kontrak_jasa';
  Fbrowse_data_pelanggan.ShowModal;
end;
procedure TFDaftarKontrak.QKontrakTagihanaddressGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=Copy(QKontrakTagihanaddress.AsString,1,255);
end;

procedure TFDaftarKontrak.AddPenjulan;
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if QKontrakTagihan.RecordCount=0 then
      begin
        MessageDlg('Tidak Ditemukan Data..!!',mtInformation,[mbRetry],0);
      end else
      begin

   with Dm.Qtemp1 do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "sale"."t_billing_contract_det" a '+
                 ' WHERE "nocontract"='+QuotedSTr(QKontrakTagihan.FieldByName('nocontract').AsString)+' '+
                 ' order by cost_code Desc ';
       open;
   end;

    if Dm.Qtemp1.RecordCount=0 then
    begin
      ShowMessage('Kontrak Bermasalah, Silakan Cek Detail Kontrak..!!!');
      exit;
    end;

    if Dm.Qtemp1.RecordCount<>0 then
    begin
    FNew_Penjualan.edKode_Pelanggan.Text:=QKontrakTagihan.FieldByName('cust_code').AsString;
    FNew_Penjualan.edNama_Pelanggan.Text:=QKontrakTagihan.FieldByName('cust_name').AsString;
    FNew_Penjualan.edNoReff.Text:=QKontrakTagihan.FieldByName('nocontract').AsString;
    FNew_Penjualan.MemDetail.active:=false;
    FNew_Penjualan.MemDetail.active:=true;
    FNew_Penjualan.MemDetail.EmptyTable;
    Dm.Qtemp1.first;
    while not Dm.Qtemp1.Eof do
    begin
    with FNew_Penjualan do
    begin
      MemDetail.insert;
      MemDetail['NO_SUMBER']:=FNew_Penjualan.edNomorTrans.Text;
      MemDetail['KD_ITEM']:=Dm.Qtemp1.FieldByName('cost_code').AsString;
      MemDetail['NM_ITEM']:=Dm.Qtemp1.FieldByName('cost_name').AsString;
      MemDetail['JUMLAH']:=1;
      MemDetail['HARGA_SATUAN']:=
        SelectRow('SELECT sell from t_item where item_code='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' OR item_code2='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+'');
      MemDetail['AKUN_PERK_ITEM']:=
        SelectRow('SELECT account_code from t_item where item_code='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' OR item_code2='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' ');
      MemDetail['KD_SATUAN']:=
        SelectRow('SELECT unit from t_item where item_code='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' OR item_code2='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' ');
      MemDetail['NM_SATUAN']:=
        SelectRow('SELECT unit from t_item where item_code='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+' OR item_code2='+QuotedStr(Dm.Qtemp1.FieldByName('cost_code').AsString)+'');
      MemDetail['SUB_TOTAL']:= FNew_Penjualan.MemDetail['JUMLAH']*FNew_Penjualan.MemDetail['HARGA_SATUAN'];
      MemDetail['PPN_AKUN']:=Dm.Qtemp1.FieldByName('account_code_ppn').AsString;
      MemDetail['PPN_PERSEN']:=Dm.Qtemp1.FieldByName('ppn_percent').Value;
      MemDetail['PPN_NILAI']:=FNew_Penjualan.MemDetail['SUB_TOTAL']*(FNew_Penjualan.MemDetail['PPN_PERSEN']/100);
      MemDetail['PPH_AKUN']:=Dm.Qtemp1.FieldByName('account_code_pph').AsString;
      MemDetail['NAMA_PPH']:=Dm.Qtemp1.FieldByName('account_name_pph').AsString;
      MemDetail['PPH_PERSEN']:=Dm.Qtemp1.FieldByName('pph_percent').Value;
      MemDetail['PPH_NILAI']:='0';
      MemDetail['POTONGAN_NILAI']:='0';
      MemDetail['POTONGAN_PERSEN']:='0';
      MemDetail['MENEJ_FEE_PERSEN']:=Dm.Qtemp1.FieldByName('menj_fee').Value;
      MemDetail['MENEJ_FEE_NILAI']:='0';
      MemDetail['GRAND_TOTAL']:='0';
      MemDetail.post;
    end;
    Dm.Qtemp1.next;
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


initialization
RegisterClass(TFDaftarKontrak);

end.
