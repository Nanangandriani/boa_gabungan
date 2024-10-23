unit UDataPengeluaranKasBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, RzButton, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzBtnEdt, Vcl.ExtCtrls, MemTableEh;

type
  TFDataPengeluaranKasBank = class(TForm)
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailHutang: TMemTableEh;
    MemDetailHutangno_tagihan: TStringField;
    MemDetailHutangtgl_faktur: TDateField;
    MemDetailHutangketerangan: TStringField;
    MemDetailHutangno_faktur: TStringField;
    MemDetailHutangjum_piutang: TCurrencyField;
    MemDetailHutangjum_piutang_real: TCurrencyField;
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edNoTrans: TEdit;
    edNamaJenisTrans: TRzButtonEdit;
    edKodeJenisTrans: TEdit;
    dtTrans: TRzDateTimePicker;
    MemKeterangan: TMemo;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    edNamaMataUang: TRzButtonEdit;
    edKodeMataUang: TEdit;
    edKurs: TRzNumericEdit;
    edJumlah: TRzNumericEdit;
    edUntukPengeluaran: TMemo;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    Panel5: TPanel;
    gbDataHutang: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    edKode_supplier: TRzButtonEdit;
    edNama_Supplier: TEdit;
    gbDataBank: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbJenisBayarr: TLabel;
    lbSumberTagihann: TLabel;
    lbJenisBayar: TLabel;
    lbSumberTagihan: TLabel;
    edNamaBank: TRzButtonEdit;
    edNoRek: TEdit;
    edNMSumberHutang: TRzButtonEdit;
    edNMJenisBayar: TRzButtonEdit;
    edKodeSumberTagihan: TEdit;
    edKodeJenisBayar: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailHutang: TDataSource;
    DSDetailAkun: TDataSource;
    procedure edNamaJenisTransButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNMJenisBayarButtonClick(Sender: TObject);
    procedure edNamaMataUangButtonClick(Sender: TObject);
    procedure edKode_supplierButtonClick(Sender: TObject);
    procedure edNamaBankButtonClick(Sender: TObject);
  private
    { Private declarations }
    vtotal_debit, vtotal_kredit, vtotal_hutang : real;
  public
    { Public declarations }
    Status : Integer;
    akun_d, akun_k : String;
    additional_code1, additional_code2, additional_code3, additional_code4, additional_code5 : String;
    { Public declarations }
    procedure Clear;
    procedure RefreshGridDetailAkun;
    procedure RefreshGridDetailHutang;
    procedure VCekBalance;
  end;

var
  FDataPengeluaranKasBank: TFDataPengeluaranKasBank;

implementation

{$R *.dfm}

uses UDataModule, UCari_DaftarPerk, UMasterData, USearch_Supplier;


procedure TFDataPengeluaranKasBank.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPengeluaranKasBank.BSaveClick(Sender: TObject);
begin
    VCekBalance;
end;

procedure TFDataPengeluaranKasBank.clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailHutang.EmptyTable;
  edNoTrans.Clear;
  dtTrans.date:=now();
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKodeJenisTrans.Clear;
  edNamaJenisTrans.Clear;
  edNamaBank.Clear;
  edNoRek.Clear;
  edKode_supplier.Clear;
  edNama_supplier.Clear;
  edNoRek.Clear;
  edNamaBank.Clear;
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edUntukPengeluaran.Clear;
  edKurs.value:=0.00;
  edJumlah.value:=0.00;
  MemKeterangan.Clear;
  MemDetailAkun.Active:=true;
  MemDetailHutang.Active:=true;
end;

procedure TFDataPengeluaranKasBank.DBGridAkunColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='keluar_kasbank';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFDataPengeluaranKasBank.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  {if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_keluar_bank'' ')= '0' then
  begin
    if (edKodeSumberHutang.Text='0') OR (Length(edKodeSumberHutang.Text)=0) then
    begin
      ShowMessage('Silkan Pilih Sumber Hutang...!!!');
      Exit;
    end;
    if edKodeSumberHutang.Text='1' then
    begin
      FDaftarHutang.vcall:='keluar_kasbank';
      FDaftarHutang.kd_outlet:=edKode_Pelanggan.Text;
      FDaftarHutang.RefreshGrid;
      FDaftarHutang.show;
    end;
    if edKodeSumberPelunasan.Text='2' then
    begin
    FDaftarPelunasanHutang.vcall:='PelunasanHutang';
    FDaftarPelunasanHutang.kd_supp:=edKode_supplier.Text;
    FDaftarPelunasanHutang.tglPelunasan:=dtPeriode1.Date;
    FDaftarPelunasanHutang.edKode_supplier.Text:=edKode_supplier.Text;
    FDaftarPelunasanHutang.edNama_supplier.Text:=edNama_supplier.Text;
    FDaftarPelunasanHutang.dtPeriode1.Date:=dtPeriode1.Date;
    FDaftarPelunasanHutang.RefreshGrid;
    FDaftarPelunasanHutang.show;
    end;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_keluar_kas_bank'' ')= '1' then
  begin
      FDaftarRencanaLunasHutang.vcall:='rencana_lunas_piutang';
      FDaftarRencanaLunasHutang.kd_outlet:=edKode_Pelanggan.Text;
      FDaftarRencanaLunasHutang.periode1:=dtPeriode1.Date;
      FDaftarRencanaLunasHutang.periode2:=dtPeriode2.Date;
      FDaftarRencanaLunasHutang.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
      FDaftarRencanaLunasHutang.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
      FDaftarRencanaLunasHutang.dtPeriode1.Date:=dtPeriode1.Date;
      FDaftarRencanaLunasHutang.dtPeriode2.Date:=dtPeriode2.Date;
      FDaftarRencanaLunasHutang.RefreshGrid;
      FDaftarRencanaLunasHutang.show;
  end; }

end;

procedure TFDataPengeluaranKasBank.edKode_supplierButtonClick(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
      QSupplier.Close;
      QSupplier.Open;
  end;
  FSearch_Supplier.Caption:='Master Data Supplier';
  FSearch_Supplier.vcall:='keluar_kas_bank';
  FSearch_Supplier.ShowModal;
end;

procedure TFDataPengeluaranKasBank.edNamaBankButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='KL_kasbank_jns_transaksi';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  end;
end;

procedure TFDataPengeluaranKasBank.edNamaJenisTransButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Transaksi';
  FMasterData.vcall:='KL_kasbank_jns_transaksi';
  FMasterData.update_grid('code_trans','CONCAT(name_module,'+QuotedStr(' - ')+',name_trans)','description','t_master_trans_account','WHERE code_module IN (''5'',''6'') and deleted_at IS NULL ORDER BY name_trans desc');
  FMasterData.ShowModal;
  FDataPengeluaranKasBank.RzPageControl1.ActivePage:=FDataPengeluaranKasBank.TabDetailAkun;
  RefreshGridDetailAkun;
end;

procedure TFDataPengeluaranKasBank.edNamaMataUangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Mata Uang';
  FMasterData.vcall:='klkas_mata_uang';
  FMasterData.update_grid('currency_code','currency_name','country','"t_currency"','WHERE	status=''t'' ORDER BY currency_name desc');
  FMasterData.ShowModal;
end;

procedure TFDataPengeluaranKasBank.edNMJenisBayarButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
    FMasterData.Caption:='Master Jenis Pembayaran';
    FMasterData.vcall:='jenis_pengeluaran';
    FMasterData.update_grid('code','name','description','"cash_banks"."t_payment_source"','WHERE	deleted_at IS NULL ORDER BY id desc');
    FMasterData.ShowModal;
    //Autocode;
  end;
end;

procedure TFDataPengeluaranKasBank.RefreshGridDetailAkun;
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
          sql.add('SELECT a."no_voucher", "account_number_bank", "code_account", '+
                  ' "name_account", "position", b."paid_amount", b."description" from '+
                  '(SELECT "voucher_no" as no_voucher, trans_date as "date_trans", periode1 as "period_date1", '+
                  ' periode2 as "period_date2", trans_type_code as"code_type_trans",trans_type_name  as "name_type_trans",'+
                  ' bank_number_account as "account_number_bank", bank_name_account as "account_name_bank", currency, "kurs",'+
                  ' "amount", "to_", "remark", customer_code as  "code_cust",customer_name as "name_cust"  from "cash_banks"."t_cash_bank_expenditure") a '+
                  'LEFT JOIN '+
                  '(SELECT no_voucher, "code_account", "name_account", "position", "paid_amount", "description" from "cash_banks"."t_cash_bank_expenditure_det") b  ON a."no_voucher"=b."no_voucher" '+
                  'WHERE a."no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
                  'AND a."no_voucher"='+QuotedStr(Dm.Qtemp1.fieldbyname('code_account').value)+''+
                  'ORDER BY "position" desc ');
          open;
        end;

      //ShowMessage(Dm.Qtemp1.fieldbyname('position').Value);
      if  Dm.Qtemp.RecordCount=0 then
      begin
        FDataPengeluaranKasBank.MemDetailAkun.insert;
        FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
        FDataPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
        FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPengeluaranKasBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=edJumlah.Value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPengeluaranKasBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=edJumlah.Value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=0;
        end;
       FDataPengeluaranKasBank.MemDetailAkun['keterangan']:='-';
       FDataPengeluaranKasBank.MemDetailAkun.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FDataPengeluaranKasBank.MemDetailAkun.insert;
       FDataPengeluaranKasBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPengeluaranKasBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPengeluaranKasBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPengeluaranKasBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPengeluaranKasBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPengeluaranKasBank.MemDetailAkun['kredit']:=Dm.Qtemp.fieldbyname('paid_amount').value;
          FDataPengeluaranKasBank.MemDetailAkun['debit']:=0;
        end;
       FDataPengeluaranKasBank.MemDetailAkun['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
       FDataPengeluaranKasBank.MemDetailAkun.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFDataPengeluaranKasBank.RefreshGridDetailHutang;
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
            ' from "cash_banks"."t_cash_bank_acceptance_receivable" '+
            ' WHERE "no_voucher"='+QuotedStr(edNoTrans.Text)+' '+
            ' Order BY no_invoice_tax asc');
    open;
  end;
  MemDetailHutang.active:=false;
  MemDetailHutang.active:=true;
  MemDetailHutang.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
        FDataPengeluaranKasBank.MemDetailHutang.insert;
        FDataPengeluaranKasBank.MemDetailHutang['tgl_faktur']:=Dm.Qtemp1.fieldbyname('date_trans').value;
        FDataPengeluaranKasBank.MemDetailHutang['no_faktur']:=Dm.Qtemp1.fieldbyname('no_invoice_tax').value;
        FDataPengeluaranKasBank.MemDetailHutang['no_tagihan']:=Dm.Qtemp1.fieldbyname('no_invoice').value;
        FDataPengeluaranKasBank.MemDetailHutang['jum_piutang']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPengeluaranKasBank.MemDetailHutang['jum_piutang_real']:=Dm.Qtemp1.fieldbyname('paid_amount').value;
        FDataPengeluaranKasBank.MemDetailHutang['keterangan']:=Dm.Qtemp1.fieldbyname('description').value;
        FDataPengeluaranKasBank.MemDetailHutang.post;
       Dm.Qtemp1.next;
      end;
    FDataPengeluaranKasBank.MemDetailHutang.SortByFields('no_faktur asc');
  end;
end;

procedure TFDataPengeluaranKasBank. VCekBalance;
begin
    //Cek Balance Debit Kredit
  vtotal_debit:=0;
  vtotal_kredit:=0;
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    vtotal_debit:=vtotal_debit+MemDetailAkun['debit'];
    vtotal_kredit:=vtotal_kredit+MemDetailAkun['kredit'];
    MemDetailAkun.Next;
  end;

  if vtotal_debit <> vtotal_kredit then
  begin
    ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Anda Sudah Benar...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;

  if vtotal_debit <> edJumlah.Value then
  begin
    ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Dengan Total Penerimaan Anda Sudah Benar...!!!');
    //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
    exit;
  end;


  //Cek Hutang Dengan Pengeluaran Balance
  if MemDetailHutang.RecordCount<>0 then
  begin
    vtotal_Hutang:=0;
    MemDetailHutang.First;
    while not MemDetailHutang.Eof do
    begin
      vtotal_hutang:=vtotal_hutang+MemDetailHutang['jum_hutang'];
      MemDetailHutang.Next;
    end;

    if vtotal_kredit <> vtotal_hutang then
    begin
      ShowMessage('Nominal Pengeluaran Tidak Balance, Pastikan Debit Kredit Dengan Total Hutang Anda Sudah Benar...!!!');
      //ShowMessage(FloatToStr(Grand_Tot)+'0'+FloatToStr(edTotalBiaya.Value));
      exit;
    end;
  end;
end;

end.
