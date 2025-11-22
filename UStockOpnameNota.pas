unit UStockOpnameNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, RzLabel, Vcl.ExtCtrls, RzPanel, RzButton,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, MemDS, DBAccess, Uni, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, DataDriverEh, frxClass, frxDBSet, RzCmboBx;

type
  TFStockOpnameNota = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    edKaresidenan: TRzButtonEdit;
    dtTanggal1: TRzDateTimePicker;
    dtTanggal2: TRzDateTimePicker;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    btTampilkan: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    btCetakLaporanStokOpname: TRzBitBtn;
    btCetakSaldoNotaLHSN: TRzBitBtn;
    btPostingStokOpname: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    ReportSaldoNotaLHSN: TfrxReport;
    frxDBDatasetSaldoNotaLHSN: TfrxDBDataset;
    QReport: TUniQuery;
    ReportStokOpname: TfrxReport;
    frxDBDatasetStokOpname: TfrxDBDataset;
    RzLabel4: TRzLabel;
    cbSBU: TRzComboBox;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCetakSaldoNotaLHSNClick(Sender: TObject);
    procedure btPostingStokOpnameClick(Sender: TObject);
    procedure ReportSaldoNotaLHSNGetValue(const VarName: string;
      var Value: Variant);
    procedure ReportStokOpnameGetValue(const VarName: string;
      var Value: Variant);
    procedure btCetakLaporanStokOpnameClick(Sender: TObject);
    procedure dtTanggal2Change(Sender: TObject);
    procedure dtTanggal1Change(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SaveStockOpname;
    procedure RefreshSBU;
  end;

  function FStockOpnameNota: TFStockOpnameNota;

//var
//  FStockOpnameNota: TFStockOpnameNota;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UMy_Function, UHomeLogin;

var
  stokopnamenota : TFStockOpnameNota;

function FStockOpnameNota: TFStockOpnameNota;
begin
  if stokopnamenota <> nil then
    FStockOpnameNota:= stokopnamenota
  else
    Application.CreateForm(TFStockOpnameNota, Result);
end;

procedure TFStockOpnameNota.RefreshSBU;
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select company_code, company_name from t_company where stat_office=1 order by company_name ASC';
    Open;
  end;

  if not Dm.Qtemp.IsEmpty then
  begin
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      cbSBU.Items.Add(Dm.Qtemp['company_code']);
      Dm.Qtemp.Next;
    end;
  end;

  if cbSBU.Items.Count > 0 then
    cbSBU.ItemIndex := 0;
end;

procedure TFStockOpnameNota.SaveStockOpname;
begin
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' DELETE FROM  "public"."t_stock_opname_nota" '+
                ' WHERE "no_invoice"='+QuotedStr(MemDetail['trans_no'])+';';
      ExecSQL;
    end;

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_stock_opname_nota" (date, no_invoice, nota_fisik, dpp_nota, '+
                ' kontra_bon, bg_mundur, transfer, retur, nota_masalah, nota_belum_kembali,nota_bangkrut) '+
                ' Values(:pardate,:parno_invoice, :parnota_fisik, :pardpp_nota, '+
                ' :parkontra_bon, :parbg_mundur, :partransfer, :parretur, '+
                ':parnota_masalah, :parnota_belum_kembali,:parnota_bangkrut)';
                parambyname('pardate').Value:=QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date));
                parambyname('parno_invoice').Value:=MemDetail['trans_no'];
                parambyname('parnota_fisik').Value:=MemDetail['nota_fisik'];
                parambyname('pardpp_nota').Value:=MemDetail['dpp_nota'];
                parambyname('parkontra_bon').Value:=MemDetail['kontra_bon'];
                parambyname('parbg_mundur').Value:=MemDetail['bg_mundur'];
                parambyname('partransfer').Value:=MemDetail['transfer'];
                parambyname('parretur').Value:=MemDetail['retur'];
                parambyname('parnota_masalah').Value:=MemDetail['nota_masalah'];
                parambyname('parnota_belum_kembali').Value:=MemDetail['nota_belum_kembali'];
                parambyname('parnota_bangkrut').Value:=MemDetail['nota_bangkrut'];


//                ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+', '+
//                ' '+QuotedStr(MemDetail['trans_no'])+', '+
//                ' '+QuotedStr(MemDetail['nota_fisik'])+', '+
//                ' '+(StringReplace(FloatToStr(dpp_nota),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(kontra_bon),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(bg_mundur),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(transfer),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(retur),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(nota_masalah),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(nota_belum_kembali),',','.',[]))+', '+
//                ' '+(StringReplace(FloatToStr(nota_bangkrut),',','.',[]))+');';
      ExecSQL;
    end;
    MemDetail.Next;
  end;
end;

procedure TFStockOpnameNota.btCetakLaporanStokOpnameClick(Sender: TObject);
var strReportName, strKaresidenan: String;
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('TP wajib diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    if edKaresidenan.Text<>'' then
    strKaresidenan:=QuotedStr(edKaresidenan.Text) else strKaresidenan:='NULL';

    with QReport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.* FROM get_lhsn_sum('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal1.Date))+','+
                QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+strKaresidenan+',NULL,FALSE,TRUE) a '+
                'LEFT JOIN  vstock_opname_nota_sum b on COALESCE(b.karesidenan,'''') = COALESCE(a.karesidenan,'''') '+
                'and date='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date));
      open
    end;
    if QReport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin
      strReportName:='rpt_stockopnamenota';
      cLocation := ExtractFilePath(Application.ExeName);
      ReportStokOpname.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      ReportStokOpname.ShowReport();
    end;
  end;
end;

procedure TFStockOpnameNota.btCetakSaldoNotaLHSNClick(Sender: TObject);
var strReportName, strKaresidenan: String;
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('TP wajib diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    if edKaresidenan.Text<>'' then
    strKaresidenan:=QuotedStr(edKaresidenan.Text) else strKaresidenan:='NULL';

    with QReport do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_stock_opname_nota('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date))+','+strKaresidenan+') '+
                'ORDER BY karesidenan,kabupaten,kecamatan,customer_name ASC';
      open
    end;
    if QReport.RecordCount=0 then
    begin
      MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
    end else begin
      strReportName:='rpt_saldonotaLHSN';
      cLocation := ExtractFilePath(Application.ExeName);
      ReportSaldoNotaLHSN.LoadFromFile(cLocation +'report/'+strReportName+''+ '.fr3');
      ReportSaldoNotaLHSN.ShowReport();
    end;
  end;
end;

procedure TFStockOpnameNota.btPostingStokOpnameClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if MemDetail.RecordCount=0 then
  begin
    MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
  end else
  begin
    SaveStockOpname;
    Dm.Koneksi.Commit;
    MessageDlg('Posting Stok Opname Berhasil..!!',mtInformation,[MBOK],0);
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

procedure TFStockOpnameNota.btTampilkanClick(Sender: TObject);
var strKaresidenan:String;
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('TP wajib diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    if edKaresidenan.Text<>'' then
    strKaresidenan:=QuotedStr(edKaresidenan.Text) else strKaresidenan:='NULL';

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_stock_opname_nota('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggal2.Date+1))+','+strKaresidenan+')';
      open;
    end;
    if  Dm.Qtemp.RecordCount<>0 then
    begin
      MemDetail.EmptyTable;
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        MemDetail.insert;
        MemDetail['karesidenan']:=Dm.Qtemp.FieldValues['karesidenan'];
        MemDetail['kabupaten']:=Dm.Qtemp.FieldValues['kabupaten'];
        MemDetail['kecamatan']:=Dm.Qtemp.FieldValues['kecamatan'];
        MemDetail['customer_name']:=Dm.Qtemp.FieldValues['customer_name'];
        MemDetail['trans_no']:=Dm.Qtemp.FieldValues['trans_no'];
        MemDetail['no_faktur']:=Dm.Qtemp.FieldValues['no_faktur'];
        MemDetail['trans_date']:=Dm.Qtemp.FieldValues['trans_date'];
        MemDetail['amount_nota_awal']:=Dm.Qtemp.FieldValues['amount_nota_awal'];
        MemDetail['nota_fisik']:=Dm.Qtemp.FieldValues['nota_fisik'];
        MemDetail['dpp_nota']:=Dm.Qtemp.FieldValues['dpp_nota'];
        MemDetail['kontra_bon']:=Dm.Qtemp.FieldValues['kontra_bon'];
        MemDetail['bg_mundur']:=Dm.Qtemp.FieldValues['bg_mundur'];
        MemDetail['transfer']:=Dm.Qtemp.FieldValues['transfer'];
        MemDetail['retur']:=Dm.Qtemp.FieldValues['retur'];
        MemDetail['nota_masalah']:=Dm.Qtemp.FieldValues['nota_masalah'];
        MemDetail['nota_belum_kembali']:=Dm.Qtemp.FieldValues['nota_belum_kembali'];
        MemDetail['nota_bangkrut']:=Dm.Qtemp.FieldValues['nota_bangkrut'];

        Dm.Qtemp.next;
      end;
    end;
  end;
end;

procedure TFStockOpnameNota.dtTanggal1Change(Sender: TObject);
begin
  if dtTanggal1.Date>dtTanggal2.Date then dtTanggal2.Date:=dtTanggal1.Date;
end;

procedure TFStockOpnameNota.dtTanggal2Change(Sender: TObject);
begin
  if dtTanggal2.Date<dtTanggal1.Date then dtTanggal1.Date:=dtTanggal2.Date;
end;

procedure TFStockOpnameNota.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='stockopnamenota';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
end;

procedure TFStockOpnameNota.FormCreate(Sender: TObject);
begin
  stokopnamenota:=Self;
end;

procedure TFStockOpnameNota.FormDestroy(Sender: TObject);
begin
  stokopnamenota:=nil;
end;

procedure TFStockOpnameNota.FormShow(Sender: TObject);
begin
  edKaresidenan.Text:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
  MemDetail.Active:=True;
  MemDetail.EmptyTable;
  if FHomeLogin.vStatOffice=0 then
  begin
    RzPanel1.Height:=153;
    RzLabel4.Visible:=True;
    cbSBU.Visible:=True;
    RefreshSBU;
  end else begin
    RzPanel1.Height:=113;
    RzLabel4.Visible:=False;
    cbSBU.Visible:=False;
  end;
end;

procedure TFStockOpnameNota.ReportStokOpnameGetValue(const VarName: string;
  var Value: Variant);
var
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2: STRING;
begin
  tgl1:=FormatDateTime('DD', dtTanggal1.Date);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal1.Date)));
  tahun1:=FormatDateTime('YYYY', dtTanggal1.Date);

  tgl2:=FormatDateTime('DD', dtTanggal2.Date);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal2.Date)));
  tahun2:=FormatDateTime('YYYY', dtTanggal2.Date);

  if CompareText(VarName, 'SBU') = 0 then
  Value := 'SBU : '+FHomeLogin.vNamaPRSH;
  if CompareText(VarName, 'PERIODE') = 0 then
  Value := UpperCase(tgl1+' '+bulan1+' '+tahun1)+' S/D '+UpperCase(tgl2+' '+bulan2+' '+tahun2);
  if CompareText(VarName, 'KARESIDENAN') = 0 then
  Value := edKaresidenan.Text;

  if CompareText(VarName, 'TANGGAL1') = 0 then
  Value := FormatDateTime('dd-mm-yyyy',dtTanggal1.Date);
  if CompareText(VarName, 'TANGGAL1_TANGGAL2') = 0 then
  Value := FormatDateTime('dd-mm-yyyy',dtTanggal1.Date)+' s/d '+FormatDateTime('dd-mm-yyyy',dtTanggal2.Date);
end;

procedure TFStockOpnameNota.RzBitBtn1Click(Sender: TObject);
begin
  edKaresidenan.Text:='';
  dtTanggal1.Date:=NOW;
  dtTanggal2.Date:=NOW;
end;

procedure TFStockOpnameNota.ReportSaldoNotaLHSNGetValue(const VarName: string;
  var Value: Variant);
var
  tgl,bulan,tahun: STRING;
begin
  tgl:=FormatDateTime('DD', dtTanggal2.Date);
  bulan:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggal2.Date)));
  tahun:=FormatDateTime('YYYY', dtTanggal2.Date);

  if CompareText(VarName, 'TANGGAL') = 0 then
  Value := 'PER. TANGGAL '+UpperCase(tgl+' '+bulan+' '+tahun);
  if CompareText(VarName, 'KARESIDENAN') = 0 then
  Value := edKaresidenan.Text;
end;

initialization
  RegisterClass(TFStockOpnameNota);

end.
