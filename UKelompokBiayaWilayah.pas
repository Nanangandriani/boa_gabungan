unit UKelompokBiayaWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, MemTableDataEh, Data.DB, MemTableEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzBtnEdt, RzButton;

type
  TFKelompokBiayaWilayah = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    dtTrans: TRzDateTimePicker;
    edJumlah: TRzNumericEdit;
    cbsumberdata: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    MemKeterangan: TMemo;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailAkunjumlah_hasil_kurs: TCurrencyField;
    MemDetailAkunmodul_id: TStringField;
    DSDetailAkun: TDataSource;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    TabDetailBiaya: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    DSMemTP: TDataSource;
    MemTP: TMemTableEh;
    MemTPkd_akun: TStringField;
    MemTPnm_akun: TStringField;
    MemTPkd_tp: TStringField;
    MemTPnm_tp: TStringField;
    MemTPketerangan: TStringField;
    MemTPjumlah: TCurrencyField;
    edNoTrans: TRzButtonEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    procedure DBGridEh1Columns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNoTransButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status : Integer;
    { Public declarations }
    procedure Clear;
    procedure RefreshGrid;
  end;

var
  FKelompokBiayaWilayah: TFKelompokBiayaWilayah;

implementation

{$R *.dfm}

uses UMasterData, UDataModule;


procedure TFKelompokBiayaWilayah.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if cbsumberdata.text='PEMBELIAN' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' Select trans_no as notrans, trans_date as tanggal, '+
            ' debt_remaining as jumlah, supplier_name as keterangan, '+
            ' ''-'' as status from t_purchase_invoice a'+
            ' Left join t_supplier b on a.supplier_code=b.supplier_code '+
            ' left join t_ak_account c on a.account_code=c.code '+
            ' left join t_ak_account d on a.account_um_code=d.code '+
            ' left join t_ref_item_receive e on a.ref_code=e.ref_code '+
            ' where'+
            ' trans_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.date))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.date))+' '+
            ' order by a.trans_no, trans_date desc');
    open;
  end;
  end;
  if cbsumberdata.text='PENGELUARAN KAS DAN BANK' then
  begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT code_account as kd_akun, name_account as nm_akun, paid_amount as jumlah '+
            ' from t_cash_bank_expenditure_det '+
            ' where no_voucher='+QuotedStr(edNoTrans.Text)+' '+
            ' and position=''D'' '+
            ' ORDER BY code_account desc');
    open;
  end;
  end;

  MemDetailAkun.active:=false;
  MemDetailAkun.active:=true;
  MemDetailAkun.EmptyTable;

  if  Dm.Qtemp1.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
    Exit;
  end;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with FKelompokBiayaWilayah do
      begin
       MemDetailAkun.insert;
       MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('kd_akun').value;
       MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('nm_akun').value;
       MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('jumlah').value;
       MemDetailAkun.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFKelompokBiayaWilayah.Clear;
begin
  cbsumberdata.ItemIndex:=1;
  edNoTrans.Clear;
  dtTrans.Date:=now();
  edJumlah.Value:=0.00;
  MemKeterangan.Text:='-';
  MemDetailAkun.EmptyTable;
  MemTP.EmptyTable;
end;

procedure TFKelompokBiayaWilayah.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFKelompokBiayaWilayah.DBGridEh1Columns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='klmpk_biaya_wilayah';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFKelompokBiayaWilayah.edNoTransButtonClick(Sender: TObject);
begin
  ShowMessage('Cari Transaksi Berdasarkan Sumber');
end;

end.
