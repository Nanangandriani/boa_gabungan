unit UCetakKolektifPenerimaanBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, RzCmboBx,
  Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls, RzDTP, RzButton, frxClass, frxDBSet,
  Data.DB, MemDS, DBAccess, Uni, RzRadChk;

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
    RzLabel5: TRzLabel;
    cbTransaksi: TRzComboBox;
    Report2: TfrxReport;
    rbCetakA5: TRzRadioButton;
    rbCetakF4: TRzRadioButton;
    procedure BBatalClick(Sender: TObject);
    procedure cbBankChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure cbTransaksiChange(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dtTanggalAwalChange(Sender: TObject);
    procedure dtTanggalAkhirChange(Sender: TObject);
    procedure rbCetakA5Click(Sender: TObject);
    procedure rbCetakF4Click(Sender: TObject);
    procedure Report2GetValue(const VarName: string; var Value: Variant);
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
var terbilang,strTransaksi,strNoRekening: String;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * from t_cash_bank_acceptance WHERE word_amount IS NULL';
    open;
  end;
  terbilang:='';
  if dm.Qtemp.RecordCount>0 then
  begin
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      terbilang:= ConvKeHuruf(floattostr(dm.Qtemp.FieldByName('paid_amount').AsFloat))+' Rupiah';
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:=' UPDATE t_cash_bank_acceptance'+
                  ' SET word_amount='+QuotedStr(terbilang)+' '+
                  ' WHERE "voucher_no"='+QuotedStr(dm.Qtemp.FieldValues['voucher_no'])+';';
        ExecSQL;
      end;
      dm.Qtemp.Next;
    end;
  end;

  if cbTransaksi.Text='' then
  begin
    MessageDlg('Transaksi Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if (cbTransaksi.ItemIndex=0) AND (cbNoRek.Text='') then
  begin
    MessageDlg('No Rekening Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin

    if cbTransaksi.Text='SEMUA' then
    begin
      strTransaksi:='';
    end else begin
      strTransaksi:=' AND dd.name_module='+QuotedStr(cbTransaksi.Text)+' ';
    end;

    if cbTransaksi.ItemIndex=0 then
    begin
      strNoRekening:='AND a.account_number_bank='+QuotedStr(cbNoRek.Text)+' ';
    end else begin
      strNoRekening:='';
    end;
    with QBuktiTerima do
    begin
      close;
      sql.clear;
      sql.Text:='SELECT Upper(coalesce(c.customer_name_pkp,a.name_cust)) name_cust,a.*, "code_account_header",b.name_account  "account_name", b.paid_amount, "desc_akun" from '+
              '( select "voucher_no", "trans_date", "code_cust", "name_cust", "account_number_bank",  "account_name_bank", '+
              '"for_acceptance", "description", "module_id",word_amount,code_type_trans,paid_amount tot_paid_amount  from "public"."t_cash_bank_acceptance"  a   WHERE deleted_at is null) a '+
              'LEFT JOIN (SELECT  "voucher_no", "code_account", aa.name_account, "position",  "paid_amount", "description" as desc_akun, '+
              'COALESCE(bb.account_code,aa.code_account) code_account_header, bb.account_name ,  "amount_rate_results" '+
              'from "public"."t_cash_bank_acceptance_det" aa  LEFT JOIN t_ak_account_sub bb ON bb.account_code2=aa."code_account" '+
              'LEFT JOIN t_ak_account cc ON cc.code=aa."code_account") b ON a."voucher_no"=b."voucher_no"  '+
              'left join t_master_trans_account dd on dd.code_trans=a.code_type_trans '+
              'LEFT JOIN t_cash_bank_acceptance_customer c on c.trans_no=a.voucher_no AND c.customer_code=a.code_cust AND c.deleted_at is NULL '+
              'LEFT JOIN t_cash_bank_acceptance_down_payment d ON d.voucher_no=a.voucher_no '+
              'where  "position"=''K'' '+strTransaksi+' '+
              'AND (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAwal.Date))+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAkhir.Date))+') '+strNoRekening+
              'order by voucher_no ASC, account_name=''Piutang Barang Dagang'' ASC';
      open;
    end;

    if QBuktiTerima.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end;

    if QBuktiTerima.RecordCount<>0 then
    begin
      QBuktiTerimaDet.Close;
      QBuktiTerimaDet.Open;

      cLocation := ExtractFilePath(Application.ExeName);

      //ShowMessage(cLocation);
      if rbCetakA5.Checked=True then
      begin
        Report.LoadFromFile(cLocation +'report/rpt_buktipenerimaan_kolektif'+ '.fr3');
        Report.ShowReport();
      end else
      begin
        Report2.LoadFromFile(cLocation +'report/rpt_buktipenerimaan_kolektif_F4'+ '.fr3');
        Report2.ShowReport();
      end;
      //Report.DesignReport();

    end;
  end;
end;

procedure TFCetakKolektifPenerimaanBank.cbBankChange(Sender: TObject);
begin
  if cbBank.Text<>'' then
  RefreshRekening;
end;

procedure TFCetakKolektifPenerimaanBank.cbTransaksiChange(Sender: TObject);
begin
  if cbTransaksi.ItemIndex=0 then
  begin
    cbBank.Enabled:=True;
    cbNoRek.Enabled:=True;
  end else begin
    cbBank.Enabled:=False;
    cbNoRek.Enabled:=False;
    cbBank.ItemIndex:=-1;
    cbNoRek.Clear;
  end;

end;

procedure TFCetakKolektifPenerimaanBank.dtTanggalAkhirChange(Sender: TObject);
begin
  if dtTanggalAkhir.Date<dtTanggalAwal.Date then dtTanggalAwal.Date:=dtTanggalAkhir.Date;
end;

procedure TFCetakKolektifPenerimaanBank.dtTanggalAwalChange(Sender: TObject);
begin
  if dtTanggalAwal.Date>dtTanggalAkhir.Date then dtTanggalAkhir.Date:=dtTanggalAwal.Date;
end;

procedure TFCetakKolektifPenerimaanBank.FormShow(Sender: TObject);
begin
  with dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add('SELECT * from "public"."t_ak_module" where id IN (''3'',''4'')  ORDER BY id asc');
    open;
    first;
  end;

  cbTransaksi.Items.Clear;
  while not dm.Qtemp3.eof do
  begin
   cbTransaksi.Items.add(dm.Qtemp3.fieldbyname('module_name').asstring);
   dm.Qtemp3.next;
  end;
  cbTransaksi.ItemIndex:=-1;

  dtTanggalAwal.Date:=NOW();
  dtTanggalAkhir.Date:=NOW();
  cbNoRek.Text:='';
  RefreshBank;
  cbBank.ItemIndex:=-1;
  cbBank.Enabled:=False;
  cbNoRek.Enabled:=False;
  rbCetakF4.Checked:=True;
  rbCetakA5.Checked:=False;
end;

procedure TFCetakKolektifPenerimaanBank.rbCetakA5Click(Sender: TObject);
begin
  rbCetakF4.Checked:=False;
end;

procedure TFCetakKolektifPenerimaanBank.rbCetakF4Click(Sender: TObject);
begin
  rbCetakA5.Checked:=False;
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
  cbBank.ItemIndex:=-1;
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

procedure TFCetakKolektifPenerimaanBank.Report2GetValue(const VarName: string;
  var Value: Variant);
var
  MemoObj: TfrxComponent;
begin
  // Standard practice: Only run logic if the report is looking for a specific variable
 { if QBuktiTerimaDet.RecordCount = 2 then
  begin
      TfrxMemoView(Report2.FindObject('Memo45')).Visible := True;
  end else begin
      TfrxMemoView(Report2.FindObject('Memo45')).Visible := False;
  end; }

  if CompareText(VarName, 'nama_pt') = 0 then
  Value := FHomeLogin.vKodePRSH;
  if CompareText(VarName, 'kota_tanggal') = 0 then
  Value := FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',QBuktiTerima.FieldValues['trans_date']);
end;

procedure TFCetakKolektifPenerimaanBank.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'nama_pt') = 0 then
  Value := FHomeLogin.vKodePRSH;
  if CompareText(VarName, 'kota_tanggal') = 0 then
  Value := FHomeLogin.vKotaPRSH+', '+formatdatetime('dd mmmm yyyy',QBuktiTerima.FieldValues['trans_date']);
end;

procedure TFCetakKolektifPenerimaanBank.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
