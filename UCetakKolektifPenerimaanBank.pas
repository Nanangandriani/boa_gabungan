unit UCetakKolektifPenerimaanBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, RzCmboBx,
  Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, RzDTP, RzButton, frxClass, frxDBSet,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFCetakKolektifPenerimaanBank = class(TForm)
    RzPanel1: TRzPanel;
    cbBank: TRzComboBox;
    cbNoRek: TRzComboBox;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    dtTanggalAwal: TRzDateTimePicker;
    RzLabel4: TRzLabel;
    dtTanggalAkhir: TRzDateTimePicker;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Report: TfrxReport;
    frxDBDatasetBuktiTerima: TfrxDBDataset;
    frxDBDatasetBuktiTerimaDet: TfrxDBDataset;
    QBuktiTerima: TUniQuery;
    QBuktiTerimaDet: TUniQuery;
    DSBuktiTerima: TDataSource;
    procedure BBatalClick(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshBank;
    procedure RefreshRekening;
  end;

var
  FCetakKolektifPenerimaanBank: TFCetakKolektifPenerimaanBank;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin;

procedure TFCetakKolektifPenerimaanBank.BPrintClick(Sender: TObject);
begin
  with QBuktiTerima do
  begin
    close;
    sql.clear;
    sql.add('SELECT a.*, "code_account_header",b.name_account  "account_name", "paid_amount", "desc_akun" from '+
          '( select "voucher_no", "trans_date", "code_cust", "name_cust", "account_number_bank",  "account_name_bank", '+
          '"for_acceptance", "description", "module_id"  from "public"."t_cash_bank_acceptance"  a   WHERE deleted_at is null) a  '+
          'LEFT JOIN (SELECT  "voucher_no", "code_account", aa.name_account, "position",  "paid_amount", "description" as desc_akun, '+
          'COALESCE(bb.account_code,aa.code_account) code_account_header, bb.account_name ,  "amount_rate_results" '+
          'from "public"."t_cash_bank_acceptance_det" aa  LEFT JOIN t_ak_account_sub bb ON bb.account_code2=aa."code_account" '+
          'LEFT JOIN t_ak_account cc ON cc.code=aa."code_account") b ON a."voucher_no"=b."voucher_no"  where  "position"=''K'' '+
          'order by position asc');
    open;
  end;

  if QBuktiTerima.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

 if QBuktiTerima.RecordCount<>0 then
 begin
   // Dapetin Grand Total
//  with dm.Qtemp do
//  begin
//    close;
//    sql.clear;
//    sql.add(' select * '+
//           ' from "public"."t_cash_bank_acceptance" a '+
//           ' where a.deleted_at is null and '+
//           ' a.voucher_no='+QuotedStr(QPenerimaanBank.FieldByName('voucher_no').AsString)+' ');
//    open;
//  end;
  //
  //Bikin Detail vbuktipenerimaan
  with QBuktiTerimaDet do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * FROM "public"."vbuktipenerimaan" ');
    open;
  end;

   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_buktipenerimaan'+ '.fr3');
   SetMemo(Report,'nama_pt',FHomeLogin.vKodePRSH);
   SetMemo(Report,'kota_tanggal',FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',NOW()));
   SetMemo(Report,'terbilang',UraikanAngka(floattostr(dm.Qtemp.FieldByName('paid_amount').AsFloat)));

   //Report.DesignReport();
   Report.ShowReport();
 end;
end;

procedure TFCetakKolektifPenerimaanBank.cbBankChange(Sender: TObject);
begin
  if cbBank.Text<>'' then
  RefreshRekening;
end;

procedure TFCetakKolektifPenerimaanBank.FormShow(Sender: TObject);
begin
  dtTanggalAwal.Date:=NOW();
  dtTanggalAkhir.Date:=NOW();
  RefreshBank;
end;

procedure TFCetakKolektifPenerimaanBank.RefreshBank;
begin
  cbBank.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT DISTINCT bank_name FROM t_bank where deleted_at is NULL order by bank_name ASC';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbBank.Items.Add(Dm.Qtemp['bank_name']);
    Dm.Qtemp.Next;
  end;
  cbBank.ItemIndex:=0;
end;

procedure TFCetakKolektifPenerimaanBank.RefreshRekening;
begin
  cbNoRek.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT DISTINCT rekening_no FROM t_bank WHERE bank_name='+QuotedStr(cbBank.Text)+' AND deleted_at is NULL';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbNoRek.Items.Add(Dm.Qtemp['rekening_no']);
    Dm.Qtemp.Next;
  end;
  cbNoRek.ItemIndex:=0;
end;

procedure TFCetakKolektifPenerimaanBank.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
