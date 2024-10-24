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
    Label12: TLabel;
    Label13: TLabel;
    edNoTrans: TEdit;
    edNamaJenisTrans: TRzButtonEdit;
    edKodeJenisTrans: TEdit;
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
    edJumlah: TRzNumericEdit;
    Label19: TLabel;
    Label20: TLabel;
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
    MemDetailAkunkd_header_akun: TStringField;
    edUntukPengiriman: TMemo;
    Panel5: TPanel;
    gbDataPiutang: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
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
    edNMSumberTagihan: TRzButtonEdit;
    edNMJenisBayar: TRzButtonEdit;
    edKodeSumberTagihan: TEdit;
    edKodeJenisBayar: TEdit;
    MemDetailAkunjumlah_hasil_kurs: TCurrencyField;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure edNamaMataUangButtonClick(Sender: TObject);
    procedure edNamaJenisTransButtonClick(Sender: TObject);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNamaBankButtonClick(Sender: TObject);
    procedure edNMSumberTagihanButtonClick(Sender: TObject);
    procedure edNMJenisBayarButtonClick(Sender: TObject);
    procedure DBGridAkunColEnter(Sender: TObject);
    procedure DBGridAkunColExit(Sender: TObject);
    procedure edKursChange(Sender: TObject);
    procedure dtTransChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    vtotal_debit, vtotal_kredit, vtotal_piutang : real;
    { Private declarations }
  public
    Status : Integer;
    akun_d, akun_k, kd_ak_pelanggan, vid_modul : String;
    additional_code1, additional_code2, additional_code3, additional_code4, additional_code5 : String;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    next_proses:boolean;
    { Public declarations }
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure InsertDetailAkun;
    procedure InsertDetailPiutang;
    procedure Clear;
    procedure RefreshGridDetailAkun;
    procedure RefreshGridDetailPiutang;
    procedure VCekBalance;
    procedure HitungKurs;
  end;

var
  FDataPenerimaanBank: TFDataPenerimaanBank;

implementation

{$R *.dfm}

uses UDaftarTagihan, Ubrowse_pelanggan, UMasterData, UDataModule, UMy_Function,
  UDaftarRencanaLunasPiutang, UCari_DaftarPerk, UDaftarPenagihanPiutang,
  UListPenerimaanBank, UHomeLogin;


procedure TFDataPenerimaanBank.HitungKurs;
begin
   try
    begin
      if MemDetailAkun['kd_akun']<>'0' then
      begin
        MemDetailAkun.Edit;
        MemDetailAkun['jumlah_hasil_kurs']:=(MemDetailAkun['debit']+MemDetailAkun['kredit'])*edKurs.Value;
        MemDetailAkun.Post;
      end;
    end;
   Except;
   end;
end;

procedure TFDataPenerimaanBank.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "cash_banks"."t_cash_bank_acceptance" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' ,'+
              ' date_trans='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' period_date1='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+','+
              ' period_date2='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+','+
              ' code_type_trans='+QuotedStr(edKodeJenisTrans.Text)+','+
              ' name_type_trans='+QuotedStr(edNamaJenisTrans.Text)+','+
              ' account_number_bank='+QuotedStr(edNoRek.Text)+','+
              ' account_name_bank='+QuotedStr(edNamaBank.Text)+','+
              ' code_currency='+QuotedStr(edKodeMataUang.Text)+','+
              ' name_currency='+QuotedStr(edNamaMataUang.Text)+','+
              ' kurs='+QuotedStr(FloatToStr(edKurs.value))+','+
              ' paid_amount='+QuotedStr(FloatToStr(edKurs.value))+','+
              ' for_acceptance='+QuotedStr(edUntukPengiriman.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+', '+
              ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
              ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+', '+
              ' payment_code='+QuotedStr(edKodeSumberTagihan.Text)+','+
              ' payment_name='+QuotedStr(edNMSumberTagihan.Text)+', '+
              ' bill_code='+QuotedStr(edKodeJenisBayar.Text)+','+
              ' bill_name='+QuotedStr(edNMJenisBayar.Text)+', '+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where voucher_no='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    if MemDetailAkun.RecordCount<>0 then
    begin
      InsertDetailAkun;
    end;

    if MemDetailPiutang.RecordCount<>0 then
    begin
      InsertDetailPiutang;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    FListPenerimaanBank.Refresh;
end;

procedure TFDataPenerimaanBank.InsertDetailAkun;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "cash_banks"."t_cash_bank_acceptance_det"'+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
            ' Order By voucher_no desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "cash_banks"."t_cash_bank_acceptance_det" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;
  end;

  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Add(' INSERT INTO "cash_banks"."t_cash_bank_acceptance_det" ("voucher_no", '+
            ' "code_account", "name_account", "position", "paid_amount", "amount_rate_results", "description", '+
            ' "code_account_header") '+
            ' Values( '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(MemDetailAkun['kd_akun'])+', '+
            ' '+QuotedStr(MemDetailAkun['nm_akun'])+', ');
            if MemDetailAkun['debit']<>0 then
            begin
              sql.Add(' '+QuotedStr('D')+', ');
              sql.Add(' '+QuotedStr(FloatToStr(MemDetailAkun['debit']))+', ');
            end;
            if MemDetailAkun['kredit']<>0 then
            begin
              sql.Add(' '+QuotedStr('K')+', ');
              sql.Add(' '+QuotedStr(FloatToStr(MemDetailAkun['kredit']))+', ');
            end;
    sql.Add(' '+QuotedStr(FloatToStr(MemDetailAkun['jumlah_hasil_kurs']))+', '+
            ' '+QuotedStr(MemDetailAkun['keterangan'])+', '+
            ' '+QuotedStr(MemDetailAkun['kd_header_akun'])+'  );');
    ExecSQL;
    end;
  MemDetailAkun.Next;
  end;
end;

procedure TFDataPenerimaanBank.InsertDetailPiutang;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "cash_banks"."t_cash_bank_acceptance_receivable" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
            ' Order By voucher_no desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "cash_banks"."t_cash_bank_acceptance_receivable" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;
  end;

  MemDetailPiutang.First;
  while not MemDetailPiutang.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Add(' INSERT INTO "cash_banks"."t_cash_bank_acceptance_receivable" ("voucher_no", '+
            ' "no_invoice", "no_invoice_tax", "code_cust", "name_cust", "date_trans", "date_invoice_tax", '+
            ' "code_type_trans", "name_type_trans", "account_number_bank", "account_name_bank", '+
            ' "paid_amount", "description", "account_acc") '+
            ' Values( '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(MemDetailPiutang['no_tagihan'])+', '+
            ' '+QuotedStr(MemDetailPiutang['no_faktur'])+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailPiutang['tgl_faktur']))+', '+
            ' '+QuotedStr(edKodeJenisTrans.Text)+', '+
            ' '+QuotedStr(edNamaJenisTrans.Text)+', '+
            ' '+QuotedStr(edNoRek.Text)+', '+
            ' '+QuotedStr(edNamaBank.Text)+', '+
            ' '+QuotedStr(FloatToStr(MemDetailPiutang['jum_piutang']))+', '+
            ' '+QuotedStr(MemDetailPiutang['keterangan'])+', '+
            ' '+QuotedStr(kd_ak_pelanggan)+') ');
    ExecSQL;
    end;
  MemDetailPiutang.Next;
  end;
end;

procedure TFDataPenerimaanBank.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "cash_banks"."t_cash_bank_acceptance" ("created_at", "created_by", '+
            ' "voucher_no", "date_trans", "period_date1", "period_date2", "code_type_trans", '+
            ' "name_type_trans", "account_number_bank", "account_name_bank", "code_currency", '+
            ' "name_currency", "kurs", "paid_amount", "for_acceptance", "description", '+
            ' "code_cust", "name_cust", "payment_code", "payment_name", "bill_code", "bill_name", '+
            //' "additional_code", '+
            ' "order_no", "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+', '+
            ' '+QuotedStr(edKodeJenisTrans.Text)+', '+
            ' '+QuotedStr(edNamaJenisTrans.Text)+', '+
            ' '+QuotedStr(edNoRek.Text)+', '+
            ' '+QuotedStr(edNamaBank.Text)+', '+
            ' '+QuotedStr(edKodeMataUang.Text)+', '+
            ' '+QuotedStr(edNamaMataUang.Text)+', '+
            ' '+QuotedStr(FloatToStr(edKurs.value))+', '+
            ' '+QuotedStr(FloatToStr(edJumlah.value))+', '+
            ' '+QuotedStr(edUntukPengiriman.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(edKodeSumberTagihan.Text)+', '+
            ' '+QuotedStr(edNMSumberTagihan.Text)+', '+
            ' '+QuotedStr(edKodeJenisBayar.Text)+', '+
            ' '+QuotedStr(edNMJenisBayar.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            //' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  if MemDetailAkun.RecordCount<>0 then
  begin
    InsertDetailAkun;
  end;

  if MemDetailPiutang.RecordCount<>0 then
  begin
    InsertDetailPiutang;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListPenerimaanBank.Refresh;
end;

procedure TFDataPenerimaanBank.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListPenerimaanBank.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'cash_banks.t_cash_bank_acceptance','0');
end;

procedure TFDataPenerimaanBank.RefreshGridDetailPiutang;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "voucher_no", "no_invoice", "no_invoice_tax", "code_cust", '+
            ' "name_cust", "date_trans", "code_type_trans", "name_type_trans", '+
            ' "account_number_bank", "account_name_bank", "paid_amount", "description", "account_acc" '+
            ' from "cash_banks"."t_cash_bank_acceptance_receivable" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' '+
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
        sql.add(' SELECT a."voucher_no", "account_number_bank", "code_account", '+
                ' "name_account", "position", b."paid_amount", b."description" from ( '+
                ' SELECT "voucher_no", "date_trans", "period_date1", "period_date2", '+
                ' "code_type_trans", "name_type_trans", "account_number_bank", '+
                ' "account_name_bank", "code_currency", "name_currency", "kurs", '+
                ' "paid_amount", "for_acceptance", "description", "code_cust", "name_cust" '+
                ' from "cash_banks"."t_cash_bank_acceptance") a '+
                ' LEFT JOIN (SELECT "voucher_no", "code_account", "name_account", '+
                ' "position", "paid_amount", "description" from "cash_banks"."t_cash_bank_acceptance_det") b '+
                ' ON a."voucher_no"=b."voucher_no" '+
                ' WHERE a."voucher_no"='+QuotedStr(edNoTrans.Text)+' '+
                ' AND a."voucher_no"='+QuotedStr(Dm.Qtemp1.fieldbyname('code_account').value)+''+
                ' ORDER BY "position" desc ');
        open;
      end;

      //ShowMessage(Dm.Qtemp1.fieldbyname('position').Value);
      if  Dm.Qtemp.RecordCount=0 then
      begin
       FDataPenerimaanBank.MemDetailAkun.insert;
       FDataPenerimaanBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPenerimaanBank.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').value;
        if Dm.Qtemp1.fieldbyname('position').Value='D' then
        begin
          FDataPenerimaanBank.akun_d:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=edJumlah.Value;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=0;
        end;
        if Dm.Qtemp1.fieldbyname('position').Value='K' then
        begin
          FDataPenerimaanBank.akun_k:=Dm.Qtemp1.fieldbyname('code_account').value;
          FDataPenerimaanBank.MemDetailAkun['kredit']:=edJumlah.Value;
          FDataPenerimaanBank.MemDetailAkun['debit']:=0;
        end;
       FDataPenerimaanBank.MemDetailAkun['keterangan']:='-';
       FDataPenerimaanBank.MemDetailAkun.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FDataPenerimaanBank.MemDetailAkun.insert;
       FDataPenerimaanBank.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
       FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account').value;
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
var
  Year, Month, Day: Word;
begin
  //Rferesh hasil Kurs
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    HitungKurs;
    MemDetailAkun.Next;
  end;

  VCekBalance;
  //t_cash_bank_acceptance
  //t_cash_bank_acceptance_det
  //t_cash_bank_acceptance_invoice
  DecodeDate(dtTrans.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
      //ShowMessage(IntToStr(Status));
    if next_proses=true then
    begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeJenisTrans.Text='' then
      begin
        MessageDlg('Pastikan Jenis Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edKodeJenisTrans.SetFocus;
      end
      else if edNoTrans.Text='' then
      begin
        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if edKodeMataUang.Text='' then
      begin
        MessageDlg('Data Mata Uang Tidak Lengkap..!!',mtInformation,[mbRetry],0);
        edKodeMataUang.SetFocus;
      end
      else if (vid_modul='3')and (Length(edNoRek.Text)=0) then
      begin
        MessageDlg('Pastikan Data Bank Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoRek.SetFocus;
      end
      else if MemDetailAkun.RecordCount=0 then
      begin
        MessageDlg('Pastikan Akun Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if (MemDetailPiutang.RecordCount=0) and (Length(edKode_Pelanggan.Text)<>0) then
      begin
        MessageDlg('Pastikan Detail Piutang Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if FDataPenerimaanBank.Status = 0 then
      begin
      FDataPenerimaanBank.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Order No. '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataPenerimaanBank.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
        Dm.Koneksi.Commit;
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
end;

procedure TFDataPenerimaanBank.VCekBalance;
begin
  //Cek Balance Debit Kredit
  next_proses:=true;
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
    ShowMessage('Nominal Penerimaan Tidak Balance, Pastikan Debit Kredit Anda Sudah Benar...!!!');
    next_proses:=false;
    exit;
  end;

  if vtotal_debit <> edJumlah.Value then
  begin
    ShowMessage('Nominal Penerimaan Tidak Balance, Pastikan Debit Kredit Dengan Total Penerimaan Anda Sudah Benar...!!!');
    next_proses:=false;
    exit;
  end;


  //Cek Piutang Dengan Pernerimaan Balance
  if MemDetailPiutang.RecordCount<>0 then
  begin
    vtotal_piutang:=0;
    MemDetailPiutang.First;
    while not MemDetailPiutang.Eof do
    begin
      vtotal_piutang:=vtotal_piutang+MemDetailPiutang['jum_piutang'];
      MemDetailPiutang.Next;
    end;

    if vtotal_kredit <> vtotal_piutang then
    begin
      ShowMessage('Nominal Penerimaan Tidak Balance, Pastikan Debit Kredit Dengan Total Piutang Anda Sudah Benar...!!!');
      next_proses:=false;
      exit;
    end;
  end;


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
  edNoRek.Clear;
  edNamaBank.Clear;
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edUntukPengiriman.Clear;
  edKurs.value:=0.00;
  edJumlah.value:=0.00;
  MemKeterangan.Clear;
  MemDetailAkun.Active:=true;
  MemDetailPiutang.Active:=true;
  edKodeSumberTagihan.Clear;
  edNMSumberTagihan.Clear;
  edKodeJenisBayar.Clear;
  edNMJenisBayar.Clear;

end;

procedure TFDataPenerimaanBank.DBGridAkunColEnter(Sender: TObject);
begin
  HitungKurs;
end;

procedure TFDataPenerimaanBank.DBGridAkunColExit(Sender: TObject);
begin
  HitungKurs;
end;

procedure TFDataPenerimaanBank.DBGridAkunColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='terima_bank';
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

procedure TFDataPenerimaanBank.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if (edKode_Pelanggan.Text='0') OR (Length(edKode_Pelanggan.Text)=0) then
  begin
   ShowMessage('Silkan Pilih Pelanggan...!!!');
   Exit;
  end;

  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_terima_bank'' ')= '0' then
  begin
    if (edKodeSumberTagihan.Text='0') OR (Length(edKodeSumberTagihan.Text)=0) then
    begin
      ShowMessage('Silkan Pilih Sumber Tagihan...!!!');
      Exit;
    end;
    if edKodeSumberTagihan.Text='1' then
    begin
      FDaftarTagihan.vcall:='terima_bank';
      FDaftarTagihan.kd_outlet:=edKode_Pelanggan.Text;
      FDaftarTagihan.RefreshGrid;
      FDaftarTagihan.show;
    end;
    if edKodeSumberTagihan.Text='2' then
    begin
    FDaftarPenagihanPiutang.vcall:='PenagihanPiutang';
    FDaftarPenagihanPiutang.kd_outlet:=edKode_Pelanggan.Text;
    FDaftarPenagihanPiutang.tglTagih:=dtPeriode1.Date;
    FDaftarPenagihanPiutang.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
    FDaftarPenagihanPiutang.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
    FDaftarPenagihanPiutang.dtTagih.Date:=dtPeriode1.Date;
    FDaftarPenagihanPiutang.RefreshGrid;
    FDaftarPenagihanPiutang.show;
    end;
  end;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''sumber_terima_bank'' ')= '1' then
  begin
    FDaftarRencanaLunasPiutang.vcall:='rencana_lunas_piutang';
    FDaftarRencanaLunasPiutang.kd_outlet:=edKode_Pelanggan.Text;
    FDaftarRencanaLunasPiutang.periode1:=dtPeriode1.Date;
    FDaftarRencanaLunasPiutang.periode2:=dtPeriode2.Date;
    FDaftarRencanaLunasPiutang.edKode_Pelanggan.Text:=edKode_Pelanggan.Text;
    FDaftarRencanaLunasPiutang.edNama_Pelanggan.Text:=edNama_Pelanggan.Text;
    FDaftarRencanaLunasPiutang.dtPeriode1.Date:=dtPeriode1.Date;
    FDaftarRencanaLunasPiutang.dtPeriode2.Date:=dtPeriode2.Date;
    FDaftarRencanaLunasPiutang.RefreshGrid;
    FDaftarRencanaLunasPiutang.show;
  end;
end;

procedure TFDataPenerimaanBank.dtTransChange(Sender: TObject);
begin
  FDataPenerimaanBank.Autonumber;
end;

procedure TFDataPenerimaanBank.edNMJenisBayarButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
  FMasterData.Caption:='Master Jenis Pembayaran';
  FMasterData.vcall:='jenis_terima';
  FMasterData.update_grid('code','name','description','"cash_banks"."t_payment_source"','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  //Autocode;
  end;
end;

procedure TFDataPenerimaanBank.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='terima_bank';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataPenerimaanBank.edKursChange(Sender: TObject);
begin
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    HitungKurs;
    MemDetailAkun.Next;
  end;
end;

procedure TFDataPenerimaanBank.edNamaBankButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='terima_bank';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  //Autocode;
  end;
end;

procedure TFDataPenerimaanBank.edNamaJenisTransButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Transaksi';
  FMasterData.vcall:='m_jns_transaksi';
  FMasterData.update_grid('code_trans','CONCAT(name_module,'+QuotedStr(' - ')+',name_trans)','description','t_master_trans_account','WHERE code_module IN (''3'',''4'') and deleted_at IS NULL ORDER BY name_trans desc');
  FMasterData.ShowModal;
  FDataPenerimaanBank.RzPageControl1.ActivePage:=FDataPenerimaanBank.TabDetailAkun;
  RefreshGridDetailAkun;
  vid_modul:=SelectRow('select code_module from t_master_trans_account where code_trans='+QuotedStr(edKodeJenisTrans.Text)+' ');

end;

procedure TFDataPenerimaanBank.edNamaMataUangButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Mata Uang';
  FMasterData.vcall:='m_mata_uang';
  FMasterData.update_grid('currency_code','currency_name','country','"t_currency"','WHERE	status=''t'' ORDER BY currency_name desc');
  FMasterData.ShowModal;
end;

procedure TFDataPenerimaanBank.edNMSumberTagihanButtonClick(Sender: TObject);
begin
  if Length(edKodeJenisTrans.Text)=0 then
  begin
    ShowMessage('Silakan Pilih Modul');
  end;

  if Length(edKodeJenisTrans.Text)<>0 then
  begin
  FMasterData.Caption:='Master Sumber Tagihan';
  FMasterData.vcall:='sumber_terima';
  FMasterData.update_grid('code','name','description','"cash_banks"."t_bill_source"','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
  //Autocode;
  end;
end;

procedure TFDataPenerimaanBank.FormShow(Sender: TObject);
begin
  Panel5.Visible:=false;
  gbDataPiutang.Visible:=false;
  TabDetailFaktur.TabVisible:=false;
end;

end.
