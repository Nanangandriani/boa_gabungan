unit UKolektifPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, RzCmboBx, RzButton, Vcl.ExtCtrls,
  RzPanel, RzLabel, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFKolektifPenjualan = class(TForm)
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzPanel1: TRzPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dtTanggalAwal: TRzDateTimePicker;
    dtTanggalAkhir: TRzDateTimePicker;
    Report: TfrxReport;
    frxDBDPenjualan: TfrxDBDataset;
    QPenjualan: TUniQuery;
    DSBuktiTerima: TDataSource;
    edKaresidenan: TRzButtonEdit;
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodeKaresidenan:String;
  end;

var
  FKolektifPenjualan: TFKolektifPenjualan;

implementation

{$R *.dfm}

uses UCari_Modul, UDataModule, UMy_Function, UMasterData;

procedure TFKolektifPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFKolektifPenjualan.BPrintClick(Sender: TObject);
var terbilang,KodeKaresidenan:String;
begin
  if edKaresidenan.Text<>'' then
  begin
    KodeKaresidenan:= ' AND a.code_karesidenan='+QuotedStr(strKodeKaresidenan)+' ';
  end else begin
    KodeKaresidenan:='';
  end;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * from t_selling WHERE word_amount IS NULL';
    open;
  end;
  terbilang:='';
  if dm.Qtemp.RecordCount>0 then
  begin
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      terbilang:= UraikanAngka(floattostr(dm.Qtemp.FieldByName('grand_tot').AsFloat));
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:=' UPDATE t_selling'+
                  ' SET word_amount='+QuotedStr(terbilang)+' '+
                  ' WHERE "trans_no"='+QuotedStr(dm.Qtemp.FieldValues['trans_no'])+';';
        ExecSQL;
      end;
      dm.Qtemp.Next;
    end;
  end;

  with QPenjualan do
  begin
    close;
    sql.Clear;
    sql.Text:='select a."trans_no", "no_inv_tax", "trans_date",a.po_order, '+
              'a.tot_before_piece tot_before_piece_master,a.sub_total sub_total_master,'+
              'a.tot_piece_value tot_piece_value_master,a.ppn_value ppn_value_master,'+
              'a.grand_tot grand_tot_master,a.pembulatan_value pembulatan_value_master,a.word_amount, '+
              'a."code_cust", a."name_cust",  d."address",COALESCE(a.no_npwp,'') no_npwp, '+
              'b."code_item", b."name_item",  b."amount", b."code_unit", b."name_unit", '+
              'a."no_reference", "unit_price",  b."sub_total", b."ppn_account", b."ppn_percent", '+
              'b."ppn_value", b."pph_account",  b."pph_name", b."pph_percent", b."pph_value", '+
              'b."tot_piece_value",  b."tot_piece_percent", b."grand_tot",   '+
              'case when "piece_first" is null then 0 else "piece_first" end "piece_first",  '+
              'case when "piece_second" is null then 0 else "piece_second" end "piece_second",  '+
              'case when "piece_third" is null then 0 else "piece_third" end "piece_third",  '+
              'case when "piece_fourth" is null then 0 else "piece_fourth" end "piece_fourth",  '+
              'a.customer_name_pkp,a.deleted_at '+
              ',(select DISTINCT * from get_user_signature(2)) signature_name, '+
              '(SELECT company_name FROM t_company) company_name,va_name,company_code_bank,number_va,bank_name '+
              'from "public".get_selling(FALSE) a  '+
              'LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no  '+
              'LEFT JOIN "public"."t_selling_piece" c ON b.trans_no=c.trans_no and b.code_item=c.code_item  '+
              'LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address" where "code_details"='001') d on a.code_cust=d.customer_code   '+
              'LEFT JOIN t_item f ON f.item_code=b.code_item  '+
              'where  a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd'),dtTanggalAwal.Date)+' AND '+QuotedStr(FormatDateTime('yyyy-mm-dd'),dtTanggalAkhir.Date)+ KodeKaresidenan+'   order by f.group_id,b.code_item ASC';
    Open;
  end;

end;

procedure TFKolektifPenjualan.FormShow(Sender: TObject);
begin
  edKaresidenan.Text:='';
  dtTanggalAwal.Date:=NOW();
  dtTanggalAkhir.Date:=NOW();
end;

end.
