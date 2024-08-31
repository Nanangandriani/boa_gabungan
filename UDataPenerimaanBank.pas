unit UDataPenerimaanBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFDataPenerimaanBank = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edNoTrans: TEdit;
    edNamaJenisTrans: TRzButtonEdit;
    edKodeJenisTrans: TEdit;
    edNamaBank: TEdit;
    dtTrans: TRzDateTimePicker;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    DSDetailAkun: TDataSource;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edNoRek: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    MemKeterangan: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    edNamaMataUang: TRzButtonEdit;
    edKodeMataUang: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    edKurs: TRzNumericEdit;
    Label17: TLabel;
    Label18: TLabel;
    edUntukPengiriman: TEdit;
    edJumlah: TRzNumericEdit;
    Label19: TLabel;
    Label20: TLabel;
    gbDataPiutang: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailPiutang: TDataSource;
    MemDetailPiutang: TMemTableEh;
    MemDetailPiutangno_tagihan: TStringField;
    MemDetailPiutangtgl_faktur: TDateField;
    MemDetailPiutangketerangan: TStringField;
    MemDetailPiutangno_faktur: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangjum_piutang_real: TCurrencyField;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure edNamaMataUangButtonClick(Sender: TObject);
    procedure edNamaJenisTransButtonClick(Sender: TObject);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status : Integer;
    akun_d, akun_k : String;
    { Public declarations }
    procedure Clear;
    procedure RefreshGridDetailAkun;
    procedure RefreshGridDetailPiutang;
  end;

var
  FDataPenerimaanBank: TFDataPenerimaanBank;

implementation

{$R *.dfm}

uses UDaftarTagihan, Ubrowse_pelanggan, UMasterData, UDataModule, UMy_Function;


procedure TFDataPenerimaanBank.RefreshGridDetailPiutang;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "no_voucher", "no_invoice", "no_invoice_tax", "code_cust", '+
            ' "name_cust", "date_trans", "code_type_trans", "name_type_trans", '+
            ' "account_number_bank", "account_name_bank", "paid_amount", "description", "account_acc" '+
            ' from "cash_banks"."t_bank_acceptance_invoice" '+
            ' WHERE "no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
            '  Order BY no_invoice_tax asc');
    open;
  end;
  MemDetailPiutang.active:=false;
  MemDetailPiutang.active:=true;
  MemDetailPiutang.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
        FDataPenerimaanBank.MemDetailPiutang.insert;
        FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']:=Dm.Qtemp1.fieldbyname('date_trans').value;
        FDataPenerimaanBank.MemDetailPiutang['no_faktur']:=Dm.Qtemp1.fieldbyname('no_invoice_tax').value;
        FDataPenerimaanBank.MemDetailPiutang['no_tagihan']:=Dm.Qtemp1.fieldbyname('no_invoice').value;
        FDataPenerimaanBank.MemDetailPiutang['jum_piutang']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPenerimaanBank.MemDetailPiutang['keterangan']:=Dm.Qtemp1.fieldbyname('description').value;
        FDataPenerimaanBank.MemDetailPiutang.post;
       Dm.Qtemp1.next;
      end;
    FDataPenerimaanBank.MemDetailPiutang.SortByFields('no_faktur asc');
  end;
end;

procedure TFDataPenerimaanBank.RefreshGridDetailAkun;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ( SELECT "code_module", "code_trans", "code_account",  '+
            ' "name_account",  "position", "account_number_bank"  '+
            ' FROM  "public"."t_master_trans_account_det") a  '+
            ' WHERE code_trans='+QuotedStr(edKodeJenisTrans.Text)+'  '+
            ' AND account_number_bank='+QuotedStr(edNoRek.Text)+' '+
            ' Order By "code_account", "name_account" desc');
    open;
  end;
  MemDetailAkun.active:=false;
  MemDetailAkun.active:=true;
  MemDetailAkun.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT a."no_voucher", "account_number_bank", "code_account", '+
                ' "name_account", "position", b."paid_amount", b."description" from ( '+
                ' SELECT "no_voucher", "date_trans", "period_date1", "period_date2", '+
                ' "code_type_trans", "name_type_trans", "account_number_bank", '+
                ' "account_name_bank", "code_currency", "name_currency", "kurs", '+
                ' "paid_amount", "for_acceptance", "description", "code_cust", "name_cust" '+
                ' from "cash_banks"."t_bank_acceptance") a '+
                ' LEFT JOIN (SELECT "no_voucher", "code_account", "name_account", '+
                ' "position", "paid_amount", "description" from "cash_banks"."t_bank_acceptance_det") b '+
                ' ON a."no_voucher"=b."no_voucher" '+
                ' WHERE a."no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
                ' AND a."no_voucher"='+QuotedStr(Dm.Qtemp1.fieldbyname('code_account').value)+''+
                ' ORDER BY "position" desc ');
        open;
      end;

      //ShowMessage(Dm.Qtemp1.fieldbyname('position').Value);
      if  Dm.Qtemp.RecordCount=0 then
      begin
       FDataPenerimaanBank.MemDetailAkun.insert;
       FDataPenerimaanBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPenerimaanBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPenerimaanBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=0;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPenerimaanBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
          FDataPenerimaanBank.MemDetailAkun['debit']:=0;
        end;
       FDataPenerimaanBank.MemDetailAkun['keterangan']:='-';
       FDataPenerimaanBank.MemDetailAkun.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FDataPenerimaanBank.MemDetailAkun.insert;
       FDataPenerimaanBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPenerimaanBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPenerimaanBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPenerimaanBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=0;
        end;
       FDataPenerimaanBank.MemDetailAkun['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
       FDataPenerimaanBank.MemDetailAkun.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFDataPenerimaanBank.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPenerimaanBank.BSaveClick(Sender: TObject);
begin
  ShowMessage('Buat Validasi Jumlah Debit Kredit Balance');
  ShowMessage('Buat Validasi Jumlah Akun Kredit dengan Total Faktur Balance');
  ShowMessage('Save/update');
  //t_bank_acceptance
  //t_bank_acceptance_det
  //t_bank_acceptance_invoice

end;

procedure TFDataPenerimaanBank.Clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailPiutang.EmptyTable;
  edNoTrans.Clear;
  dtTrans.date:=now();
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKodeJenisTrans.Clear;
  edNamaJenisTrans.Clear;
  edNamaBank.Clear;
  edNoRek.Clear;
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edKurs.value:=0.00;
  edJumlah.value:=0.00;
  MemKeterangan.Clear;
  MemDetailAkun.Active:=true;
  MemDetailPiutang.Active:=true;

end;

procedure TFDataPenerimaanBank.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_terima_bank'' ')= '0' then
  begin
    FDaftarTagihan.vcall:='terima_bank';
    FDaftarTagihan.kd_outlet:=edKode_Pelanggan.Text;
    FDaftarTagihan.RefreshGrid;
    FDaftarTagihan.show;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_terima_bank'' ')= '1' then
  begin
    ShowMessage('Tampil Rencana');
  end;
end;

procedure TFDataPenerimaanBank.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='terima_bank';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataPenerimaanBank.edNamaJenisTransButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Transaksi';
  FMasterData.vcall:='m_jns_transaksi';
  FMasterData.update_grid('code_trans','name_trans','CONCAT(description,'' '',account_number_bank) ','t_master_trans_account','WHERE	deleted_at IS NULL ORDER BY name_trans desc');
  FMasterData.ShowModal;
  RefreshGridDetailAkun;
end;

procedure TFDataPenerimaanBank.edNamaMataUangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Mata Uang';
  FMasterData.vcall:='m_mata_uang';
  FMasterData.update_grid('currency_code','currency_name','country','"t_currency"','WHERE	status=''t'' ORDER BY currency_name desc');
  FMasterData.ShowModal;
end;

procedure TFDataPenerimaanBank.FormShow(Sender: TObject);
begin
  gbDataPiutang.Visible:=false;
  TabDetailFaktur.TabVisible:=false;
  Panel1.Height:=230;
end;

end.
