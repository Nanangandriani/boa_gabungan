unit UbrowseUangMukaPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzPanel, RzButton,
  Vcl.StdCtrls, RzLabel, Vcl.ComCtrls, RzDTP;

type
  TFbrowseUangMukaPenjualan = class(TForm)
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    DSListUangMuka: TDataSource;
    QListUangMuka: TUniQuery;
    DTTanggal1: TRzDateTimePicker;
    DTTanggal2: TRzDateTimePicker;
    RzLabel1: TRzLabel;
    RzLabel3: TRzLabel;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
  end;

var
  FbrowseUangMukaPenjualan: TFbrowseUangMukaPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UDataPenerimaanBank;

procedure TFbrowseUangMukaPenjualan.Refresh;
begin
  with QListUangMuka do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT a.*,b.customer_name FROM t_down_payment_sales a '+
              'LEFT JOIN get_customer() b on b.customer_code=a.customer_code '+
              'WHERE a.deleted_at is NULL AND '+
              'a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',DTTanggal1.Date)) +'AND '+
              ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',DTTanggal2.Date)) +' '+
              'AND NOT (a.no_trans::text IN ( SELECT no_trans_down_payment FROM t_cash_bank_acceptance_down_payment))';
    Open;
  end;
end;

procedure TFbrowseUangMukaPenjualan.RzBitBtn1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFbrowseUangMukaPenjualan.DBGridEh1DblClick(Sender: TObject);
begin
  FDataPenerimaanBank.edNoRefSumberPenerimaan.Text:=QListUangMuka.FieldValues['no_trans'];
  FDataPenerimaanBank.edKodePelangganSumber.Text:=QListUangMuka.FieldValues['customer_code'];
  FDataPenerimaanBank.edNamaPelangganSumber.Text:=QListUangMuka.FieldValues['customer_name'];
  FDataPenerimaanBank.edJumlah.Value:=QListUangMuka.FieldValues['grand_tot'];
  FDataPenerimaanBank.edJumlahExit(sender);

  if FDataPenerimaanBank.edKodePelangganSumber.Text<>'' then
  begin
    FDataPenerimaanBank.RefreshGridDetailAkun;
//    ShowMessage('11');
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.header_code_uang_muka,a.account_code_uang_muka,b.account_name FROM t_customer a '+
                'LEFT JOIN t_ak_account_sub b ON b.account_code2=a.account_code_uang_muka '+
                'WHERE a.customer_code='+QuotedStr(FDataPenerimaanBank.edKodePelangganSumber.Text)+' AND a.deleted_at is NULL';
      Open;
    end;

    if dm.Qtemp2.RecordCount>0 then
    begin
      FDataPenerimaanBank.MemDetailAkun.insert;
      FDataPenerimaanBank.MemDetailAkun['kd_akun']:=dm.Qtemp2.FieldValues['account_code_uang_muka'];
      FDataPenerimaanBank.MemDetailAkun['kd_header_akun']:=dm.Qtemp2.FieldValues['header_code_uang_muka'];
      FDataPenerimaanBank.MemDetailAkun['nm_akun']:=Dm.Qtemp2.fieldbyname('account_name').value;
      FDataPenerimaanBank.MemDetailAkun['kredit']:=QListUangMuka.FieldValues['grand_tot'];
      FDataPenerimaanBank.MemDetailAkun['jumlah_hasil_kurs']:=0;
      FDataPenerimaanBank.MemDetailAkun['keterangan']:='-';
      FDataPenerimaanBank.MemDetailAkun['debit']:=0;
      FDataPenerimaanBank.MemDetailAkun.Post;
    end;

    with FDataPenerimaanBank.MemDetailAkun do
    begin
      DisableControls;
      try
        SortOrder := 'debit DESC';
        Refresh;
      finally
        EnableControls;
      end;
    end;

    FDataPenerimaanBank.edUntukPengiriman.Text:=FDataPenerimaanBank.edUntukPengiriman.Text+' '+QListUangMuka.FieldValues['customer_name'];

  end;
  Close;
end;

procedure TFbrowseUangMukaPenjualan.FormShow(Sender: TObject);
begin
  DTTanggal1.Date:=NOW();
  DTTanggal2.Date:=NOW();
  Refresh;
end;

initialization
  RegisterClass(TFbrowseUangMukaPenjualan);

end.
