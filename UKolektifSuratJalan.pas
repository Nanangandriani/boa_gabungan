unit UKolektifSuratJalan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP,
  RzButton, Vcl.ExtCtrls, RzPanel, RzLabel, RzRadChk;

type
  TFKolektifSuratJalan = class(TForm)
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzPanel1: TRzPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dtTanggalAwal: TRzDateTimePicker;
    dtTanggalAkhir: TRzDateTimePicker;
    edKaresidenan: TRzButtonEdit;
    Report: TfrxReport;
    frxDBDSuratJalan: TfrxDBDataset;
    QSuratJalan: TUniQuery;
    DSBuktiTerima: TDataSource;
    RbAlamat1: TRzRadioButton;
    RbAlamat2: TRzRadioButton;
    procedure BBatalClick(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure RbAlamat1Click(Sender: TObject);
    procedure RbAlamat2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodeKaresidenan:String;
  end;

var
  FKolektifSuratJalan: TFKolektifSuratJalan;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function;

procedure TFKolektifSuratJalan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFKolektifSuratJalan.BPrintClick(Sender: TObject);
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
    sql.Text:='SELECT a.* from t_selling_det a '+
              'left join t_selling b on b.trans_no=a.trans_no '+
              'left join t_item c on c.item_code=a.code_item '+
              'WHERE a.word_amount_qty IS NULL and '+
              'b.trans_no is NOT NULL Order by c.group_id asc';
    open;
  end;
  terbilang:='';
  if dm.Qtemp.RecordCount>0 then
  begin
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      terbilang:= ConvKeHuruf(FloatToStr(dm.Qtemp.FieldByName('amount').AsFloat));
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:=' UPDATE t_selling_det'+
                  ' SET word_amount_qty='+QuotedStr(terbilang)+' '+
                  ' WHERE "id"='+QuotedStr(dm.Qtemp.FieldValues['id'])+';';
        ExecSQL;
      end;
      dm.Qtemp.Next;
    end;
  end;

  with QSuratJalan do
  begin
    close;
    sql.Clear;
    sql.Text:='select (SELECT company_code FROM t_company) company_code,a."trans_no",'+
            ' "no_traveldoc", "trans_date", a."code_cust", a.customer_name_pkp "name_cust",  d."address",'+
            'e."address" AS address2, b."code_item", b."name_item",  b."amount",  b."code_unit",'+
            ' Upper(b."name_unit") name_unit,b.word_amount_qty, a."no_reference", b."code_unit" as ket, '+
            '(SELECT SUM(gross_weight) FROM t_selling_det WHERE trans_no=a.trans_no '+
            'AND code_unit=b.code_unit)  gross_weight, (SELECT SUM(tare_weight) '+
            'FROM t_selling_det WHERE trans_no=a.trans_no AND code_unit=b.code_unit) tare_weight, '+
            'COALESCE((SELECT vehicles FROM t_delivery_order_services WHERE notrans='+
            '(SELECT DISTINCT notrans from t_delivery_order_load WHERE notrans_load=a.trans_no )),'''')::VARCHAR vehicles  '+
            ', COALESCE(b.qty_bundle,0) qty_bundle,COALESCE(Trunc((b.amount / NULLIF(b.add_on_qty_bundle, 0)) / NULLIF(b.qty_bundle, 0)), 0) AS add_on_qty '+
            'from "public".get_selling(False) a   '+
            'LEFT JOIN "public"."t_selling_det" b ON a.trans_no=b.trans_no '+
            'LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address"  where "code_details"=''002'') d '+
            'on a.code_cust=d.customer_code '+
            'LEFT JOIN (SELECT "customer_code", "address" from "public"."t_customer_address"  '+
            'where "code_details"=''003'') e on a.code_cust=e.customer_code '+
            'LEFT JOIN t_item f ON f.item_code=b.code_item  '+
            'where (a.trans_date BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAwal.DateTime))+' AND '+
            ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAkhir.DateTime))+')'+ KodeKaresidenan+' '+
            ' AND a.deleted_at is null '+
            'order by a.trans_date,a.trans_no,f.group_id ASC';
    Open;
  end;

  if QSuratJalan.RecordCount>0 then
  begin
    cLocation := ExtractFilePath(Application.ExeName);
     //ShowMessage(cLocation);
    Report.LoadFromFile(cLocation +'report/rpt_suratjalan_kolektif'+ '.fr3');
    if RbAlamat2.Checked=True then
    begin
      TfrxMemoView(Report.FindObject('Memo29')).Visible := True;
      TfrxMemoView(Report.FindObject('Memo30')).Visible := True;
    end else begin
      TfrxMemoView(Report.FindObject('Memo29')).Visible := False;
      TfrxMemoView(Report.FindObject('Memo30')).Visible := False;
    end;

    Report.ShowReport();
  end else begin
    MessageDlg('Tidak ada data yang dicetak..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFKolektifSuratJalan.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='kolektifsuratjalan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFKolektifSuratJalan.FormShow(Sender: TObject);
begin
  strKodeKaresidenan:='';
  edKaresidenan.Text:='';
  dtTanggalAwal.Date:=NOW();
  dtTanggalAkhir.Date:=NOW();
  RbAlamat1.Checked:=True;
  RbAlamat2.Checked:=False;
end;

procedure TFKolektifSuratJalan.RbAlamat1Click(Sender: TObject);
begin
  RbAlamat2.Checked:=False;
end;

procedure TFKolektifSuratJalan.RbAlamat2Click(Sender: TObject);
begin
  RbAlamat1.Checked:=False;
end;

end.
