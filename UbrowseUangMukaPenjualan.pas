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
  FDataPenerimaanBank.edNamaPelangganSumber.Text:=QListUangMuka.FieldValues['customer_name'];
  FDataPenerimaanBank.edJumlah.Value:=QListUangMuka.FieldValues['grand_tot'];
  FDataPenerimaanBank.edKodePelangganSumber.Text:=QListUangMuka.FieldValues['customer_code'];
  FDataPenerimaanBank.edJumlahExit(sender);
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
