unit UKartuPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxCalendar, cxButtonEdit, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, cxSpinEdit, cxDropDownEdit, DateUtils,
  cxDBLookupComboBox, cxCheckComboBox, cxEdit, Vcl.StdCtrls, RzCmboBx, cxLabel,
  MemTableDataEh, MemTableEh, frxClass, frxDBSet;

type
  TFKartuPiutang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    QKartuPiutang: TUniQuery;
    DsKartuPiutang: TDataSource;
    spTahun: TcxBarEditItem;
    cbBulan: TRzComboBox;
    QKartuPiutangTRX: TUniQuery;
    dsKartuPiutangTRX: TDataSource;
    QKartuPiutangTRXcustomer_code: TMemoField;
    QKartuPiutangTRXcustomer_name_pkp: TMemoField;
    QKartuPiutangTRXcode_region: TMemoField;
    QKartuPiutangTRXname_region: TMemoField;
    QKartuPiutangTRXtrans_no: TMemoField;
    QKartuPiutangTRXtgltrans: TDateField;
    QKartuPiutangTRXsaldo_awal: TFloatField;
    QKartuPiutangTRXdebet: TFloatField;
    QKartuPiutangTRXkredit: TFloatField;
    QKartuPiutangTRXno_urut: TMemoField;
    cxBarEditItem1: TcxBarEditItem;
    QKartuPiutangcustomer_code: TMemoField;
    QKartuPiutangcustomer_name_pkp: TMemoField;
    QKartuPiutangcode_region: TMemoField;
    QKartuPiutangname_region: TMemoField;
    QKartuPiutangamount_receivable: TFloatField;
    QKartuPiutangpaid_amount: TFloatField;
    QKartuPiutangtotal_receivables: TFloatField;
    MemMaster: TMemTableEh;
    dsMaster: TDataSource;
    DBGrid: TDBGridEh;
    MemMasternama_pelanggan: TStringField;
    MemMasteralamat: TStringField;
    MemMastersaldo_awal: TFloatField;
    dsMasterDetail: TDataSource;
    MemMasterDetail: TMemTableEh;
    DBGridDetail: TDBGridEh;
    MemMasterDetailkode_cust: TStringField;
    MemMasterDetailnama_cust: TStringField;
    MemMasterDetailtrans_no: TStringField;
    MemMasterDetailtgltrans: TDateField;
    MemMasterDetailsaldo_awal: TFloatField;
    MemMasterDetaildebet: TFloatField;
    MemMasterDetailkredit: TFloatField;
    MemMasterDetailno_urut: TStringField;
    MemMasterDetailketerangan: TStringField;
    MemMasterkode_pelanggan: TStringField;
    QCetak: TUniQuery;
    frxDBDKartuPiutang: TfrxDBDataset;
    dsCetak: TDataSource;
    Report: TfrxReport;
    QCetaknomor: TLargeintField;
    QCetakcustomer_code: TMemoField;
    QCetakcustomer_name_pkp: TMemoField;
    QCetakcode_region: TMemoField;
    QCetakname_region: TMemoField;
    QCetaktrans_no: TMemoField;
    QCetaktgltrans: TDateField;
    QCetaksaldo_awal: TFloatField;
    QCetakno_urut: TMemoField;
    QCetakdebet: TFloatField;
    QCetakkredit: TFloatField;
    QCetaksaldo: TFloatField;
    QCetakcode_province: TStringField;
    QCetakcode_kab: TStringField;
    QCetakname_kab: TStringField;
    QCetakcode_karesidenan: TStringField;
    QCetakketerangan2: TMemoField;
    cbSBU: TdxBarCombo;
    MemMasternama_pkp: TStringField;
    QKartuPiutangcustomer_name: TMemoField;
    QKartuPiutangTRXketerangan2: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure QKartuPiutangname_regionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btSearchClick(Sender: TObject);
    procedure QKartuPiutangcustomer_name_pkpGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vkd_kares, vkd_kab : String ;
  end;

function FKartuPiutang: TFKartuPiutang;
//var
//  FKartuPiutang: TFKartuPiutang;

implementation

{$R *.dfm}

uses UMasterWilayah, UMasterData, UHomeLogin, UMy_Function;
var
  realfpiutang : TFKartuPiutang;
// implementasi function
function FKartuPiutang: TFKartuPiutang;
begin
  if realfpiutang <> nil then
    FKartuPiutang:= realfpiutang
  else
    Application.CreateForm(TFKartuPiutang, Result);
end;

function LastDayOfMonth(Year, Month: Word): word;
  var Last_day:tdatetime;
      yy,mm,dd:word;
  begin
    if Month = 12 then
    begin
    Inc(Year);
    Month := 1;
    end;
    Last_day:=EncodeDate(Year, Month + 1, 1) - 1;
    decodedate(last_day,yy,mm,dd);
    Result :=dd;

end;


procedure TFKartuPiutang.btPreviewClick(Sender: TObject);
var
  dd,mm,yy:word;
  bln_akhir,tgl1,tgl2:tdate;
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
  tgl1:=encodedate(yy,mm,1);
  tgl2:=encodedate(yy,mm,LastDayOfMonth(yy,mm));
  //bln_akhir:=encodedate(yy,mm-1,LastDayOfMonth(yy,mm-1));
  //tgl2:=encodedate(yy,12,LastDayOfMonth(yy,12));

  if mm=1 then
  bln_akhir:=EncodeDate(yy-1,12,LastDayOfMonth(yy,mm-1))
  else
  bln_akhir:=EncodeDate(yy,mm-1,LastDayOfMonth(yy,mm-1));

   with QCetak do
   begin
       close;
       sql.Clear;
       sql.add(' SELECT *,  ROUND(SUM(saldo_awal + debet - kredit) OVER (PARTITION BY customer_code ORDER BY nomor),2) AS saldo FROM (SELECT * from ( '+
               ' SELECT ROW_NUMBER() OVER (PARTITION BY customer_code ORDER BY no_urut, tgltrans ASC) AS nomor,  '+
               ' * '+
//               , ROUND(CAST(SUM(saldo_awal + debet - kredit) OVER (PARTITION BY customer_code ORDER BY no_urut, '+
//               ' tgltrans ASC) AS NUMERIC), 2) AS saldo '+
               ' FROM (SELECT customer_code, customer_name_pkp, code_region, name_region, trans_no, tgltrans, '+
               ' saldo_awal, no_urut, keterangan2, debet, kredit FROM '+
               ' "public"."get_piutang_trx2" ('+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+','+
               ' '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+') '+
               ' ORDER BY customer_code, no_urut, created_at ASC) AS subquery '+
               ' ORDER BY customer_code, nomor) trx '+
               ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
               ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b   '+
               ' ON "left"(code_region, 4)=b.code_kab '+
               ' where customer_code<> ''0'' ');
         if edKaresidenan.EditValue<>'' then
         begin
          sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
         end;
         if edKabupaten.EditValue<>'' then
         begin
          sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
         end;
       sql.add(' ORDER BY customer_code asc,nomor asc) zz ');
       open;
   end;

 if QCetak.RecordCount=0 then
 begin
  showmessage('Tidak ada data yang bisa dicetak !');
  exit;
 end;

 if QCetak.RecordCount<>0 then
 begin
   cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/rpt_kartupiutang'+ '.fr3');
   SetMemo(Report,'nama_PT',FHomeLogin.vKodePRSH);
   SetMemo(Report,'periode',cbBulan.Text+'-'+FloatToStr(spTahun.EditValue));
   //Report.DesignReport();
   //ShowMessage('A');
   Report.ShowReport();
 end;

end;

procedure TFKartuPiutang.btSearchClick(Sender: TObject);
var
  dd,mm,yy:word;
  bln_akhir,tgl1,tgl2:tdate;
begin
  mm:=cbBulan.ItemIndex;
  yy:=spTahun.EditValue;
  tgl1:=encodedate(yy,mm,1);
  tgl2:=encodedate(yy,mm,LastDayOfMonth(yy,mm));
  //bln_akhir:=encodedate(yy,mm-1,LastDayOfMonth(yy,mm-1));
  //tgl2:=encodedate(yy,12,LastDayOfMonth(yy,12));

  if mm=1 then
  bln_akhir:=EncodeDate(yy-1,12,LastDayOfMonth(yy,mm-1))
  else
  bln_akhir:=EncodeDate(yy,mm-1,LastDayOfMonth(yy,mm-1));

  DBGrid.StartLoadingStatus();
  try
  with QKartuPiutang do //SaldoAwal
  begin
    close;
    sql.Clear;
    sql.add(' SELECT a.*,code_karesidenan,code_kab,name_kab from ('+
           ' select * from "public"."get_piutang_saldoawal"('+QuotedStr(formatdatetime('yyyy-mm-dd',bln_akhir))+')) a  '+
           ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
           ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL)b  '+
           ' ON "left"(code_region, 4)=b.code_kab '+
           ' where customer_code<>''0'' ');
     if edKaresidenan.EditValue<>'' then
     begin
      sql.add(' AND code_karesidenan='+QuotedStr(vkd_kares)+' ');
     end;
     if edKabupaten.EditValue<>'' then
     begin
      sql.add(' AND code_kab='+QuotedStr(vkd_kab)+' ');
     end;
   sql.add(' ORDER BY customer_code, customer_name_pkp asc');
   open;
  end;

  FKartuPiutang.MemMaster.active:=false;
  FKartuPiutang.MemMaster.active:=true;
  FKartuPiutang.MemMaster.EmptyTable;

  if  QKartuPiutang.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
  end;

  if  QKartuPiutang.RecordCount<>0 then
  begin
    QKartuPiutang.first;
    while not QKartuPiutang.Eof do
    begin
      FKartuPiutang.MemMaster.insert;
      FKartuPiutang.MemMaster['kode_pelanggan']:=QKartuPiutang.fieldbyname('customer_code').value;
      FKartuPiutang.MemMaster['nama_pelanggan']:=QKartuPiutang.fieldbyname('customer_name').value;
      FKartuPiutang.MemMaster['nama_pkp']:=QKartuPiutang.fieldbyname('customer_name_pkp').value;
      FKartuPiutang.MemMaster['alamat']:=QKartuPiutang.fieldbyname('name_region').value;
      FKartuPiutang.MemMaster['saldo_awal']:=QKartuPiutang.fieldbyname('total_receivables').value;
      FKartuPiutang.MemMaster.post;
      QKartuPiutang.next;
    end;
    FKartuPiutang.MemMaster.SortByFields('nama_pelanggan,alamat asc');
  end;

  with QKartuPiutangTRX do //Transaksi Bulan Pilih
  begin
     close;
     sql.Clear;
     sql.add(' SELECT * FROM  '+
             ' "public"."get_piutang_trx2"'+
             ' ('+QuotedStr(formatdatetime('yyyy-mm-dd',tgl1))+','+
             ' '+QuotedStr(formatdatetime('yyyy-mm-dd',tgl2))+') a ');
     open;
  end;

  FKartuPiutang.MemMasterDetail.active:=false;
  FKartuPiutang.MemMasterDetail.active:=true;
  FKartuPiutang.MemMasterDetail.EmptyTable;

  if  QKartuPiutangTRX.RecordCount=0 then
  begin
    Showmessage('Maaf, Data Tidak Ditemukan..');
  end;

  if  QKartuPiutangTRX.RecordCount<>0 then
  begin
    QKartuPiutangTRX.first;
    while not QKartuPiutangTRX.Eof do
    begin
     FKartuPiutang.MemMasterDetail.insert;
     FKartuPiutang.MemMasterDetail['kode_cust']:=QKartuPiutangTRX.fieldbyname('customer_code').value;
     FKartuPiutang.MemMasterDetail['nama_cust']:=QKartuPiutangTRX.fieldbyname('customer_name_pkp').value;
     FKartuPiutang.MemMasterDetail['trans_no']:=QKartuPiutangTRX.fieldbyname('trans_no').value;
     FKartuPiutang.MemMasterDetail['tgltrans']:=QKartuPiutangTRX.fieldbyname('tgltrans').value;
     FKartuPiutang.MemMasterDetail['saldo_awal']:=QKartuPiutangTRX.fieldbyname('saldo_awal').value;
     FKartuPiutang.MemMasterDetail['debet']:=QKartuPiutangTRX.fieldbyname('debet').value;
     FKartuPiutang.MemMasterDetail['kredit']:=QKartuPiutangTRX.fieldbyname('kredit').value;
     FKartuPiutang.MemMasterDetail['no_urut']:=QKartuPiutangTRX.fieldbyname('no_urut').value;
     FKartuPiutang.MemMasterDetail['keterangan']:=QKartuPiutangTRX.fieldbyname('keterangan2').value;
     FKartuPiutang.MemMasterDetail.post;
     QKartuPiutangTRX.next;
    end;
    //FKartuPiutang.MemMasterDetail.SortByFields('nama_pelanggan, name_region asc');
  end;

  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFKartuPiutang.edKabupatenPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='kartupiutang_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(vkd_kares)+'');
  FMasterData.ShowModal;
end;

procedure TFKartuPiutang.edKaresidenanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='kartupiutang_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFKartuPiutang.FormCreate(Sender: TObject);
begin
  realfpiutang:=self;
end;

procedure TFKartuPiutang.FormDestroy(Sender: TObject);
begin
  realfpiutang:=nil;
end;

procedure TFKartuPiutang.FormShow(Sender: TObject);
begin
  spTahun.EditValue := YearOf(Now);
  cbBulan.ItemIndex:= MonthOf(Now);
  edKaresidenan.EditValue := '';
  edKabupaten.EditValue := '';
  vkd_kares:='';
  vkd_kab:='';
  FillSBUBarCombo(cbSBU);
end;


procedure TFKartuPiutang.QKartuPiutangcustomer_name_pkpGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QKartuPiutangcustomer_name_pkp.asstring,255);
end;

procedure TFKartuPiutang.QKartuPiutangname_regionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=copy(QKartuPiutangname_region.asstring,255);
end;

initialization
  RegisterClass(TFKartuPiutang);

end.
