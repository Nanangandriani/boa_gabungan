unit UKartuUangMukaPenjualan;

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
  DynVarsEh, cxButtonEdit, cxSpinEdit, cxLabel, cxRadioGroup, MemTableDataEh,
  Data.DB, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, MemTableEh,
  MemDS, DBAccess, Uni, dxBar, dxBarExtItems, cxBarEditItem, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzCmboBx, dxRibbon,
  cxCalendar;

type
  TFKartuUangMukaPenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
    DBGridDetail: TDBGridEh;
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
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    cbSBU: TdxBarCombo;
    dxBarLargeButton1: TdxBarLargeButton;
    edNama_Pelanggan: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarMRUListItem1: TdxBarMRUListItem;
    QKartuUangMuka: TUniQuery;
    DsKartuUangMuka: TDataSource;
    QKartuUangMukaTRX: TUniQuery;
    dsKartuUangMukaTRX: TDataSource;
    MemMaster: TMemTableEh;
    MemMasternama_pelanggan: TStringField;
    MemMasteralamat: TStringField;
    MemMastersaldo_awal: TFloatField;
    MemMasterkode_pelanggan: TStringField;
    MemMasternama_pkp: TStringField;
    dsMaster: TDataSource;
    dsMasterDetail: TDataSource;
    MemMasterDetail: TMemTableEh;
    MemMasterDetailkode_cust: TStringField;
    MemMasterDetailnama_cust: TStringField;
    MemMasterDetailtrans_no: TStringField;
    MemMasterDetailtgltrans: TDateField;
    MemMasterDetailsaldo_awal: TFloatField;
    MemMasterDetaildebet: TFloatField;
    MemMasterDetailkredit: TFloatField;
    MemMasterDetailno_urut: TStringField;
    MemMasterDetailketerangan: TStringField;
    QCetak: TUniQuery;
    frxDBDKartuUMPenjualan: TfrxDBDataset;
    dsCetak: TDataSource;
    Report: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    dtAkhir: TcxBarEditItem;
    dtAwal: TcxBarEditItem;
    QKartuUangMukacustomer_code: TMemoField;
    QKartuUangMukacustomer_name: TMemoField;
    QKartuUangMukacustomer_name_pkp: TMemoField;
    QKartuUangMukaaddress: TMemoField;
    QKartuUangMukasaldo_awal: TFloatField;
    QKartuUangMukaTRXcustomer_code: TMemoField;
    QKartuUangMukaTRXcustomer_name: TMemoField;
    QKartuUangMukaTRXcustomer_name_pkp: TMemoField;
    QKartuUangMukaTRXaddress: TMemoField;
    QKartuUangMukaTRXtrans_date: TDateField;
    QKartuUangMukaTRXtrans_no: TMemoField;
    QKartuUangMukaTRXsaldo_awal: TFloatField;
    QKartuUangMukaTRXdebet: TFloatField;
    QKartuUangMukaTRXkredit: TFloatField;
    QKartuUangMukaTRXdescription: TMemoField;
    QKartuUangMukaTRXurut: TSmallintField;
    QKartuUangMukaTRXsaldo_komulatif: TFloatField;
    MemMasterDetailsaldo_komulatif: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure edNama_PelangganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodePelanggan: String;
  end;

function FKartuUangMukaPenjualan: TFKartuUangMukaPenjualan;
//var
//  FKartuUangMukaPenjualan: TFKartuUangMukaPenjualan;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UHomeLogin, Ubrowse_pelanggan;
var
  kartuuangmukapenjualan : TFKartuUangMukaPenjualan;

function FKartuUangMukaPenjualan: TFKartuUangMukaPenjualan;
begin
  if kartuuangmukapenjualan <> nil then
    FKartuUangMukaPenjualan:= kartuuangmukapenjualan
  else
    Application.CreateForm(TFKartuUangMukaPenjualan, Result);
end;

procedure TFKartuUangMukaPenjualan.btPreviewClick(Sender: TObject);
var strKab,strTP,strKaresidenan,
  tgl1,bulan1,tahun1,tgl2,bulan2,tahun2: STRING;
begin
  tgl1:=FormatDateTime('DD', dtAwal.EditValue);
  bulan1:=convbulanInd(StrToInt(FormatDateTime('M', dtAwal.EditValue)));
  tahun1:=FormatDateTime('YYYY', dtAwal.EditValue);

  tgl2:=FormatDateTime('DD', dtAkhir.EditValue);
  bulan2:=convbulanInd(StrToInt(FormatDateTime('M', dtAkhir.EditValue)));
  tahun2:=FormatDateTime('YYYY', dtAkhir.EditValue);
  if edNama_Pelanggan.EditValue='' then
  begin
    MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin

    with QCetak do
    begin
       close;
       sql.Clear;
       sql.text:='SELECT * from get_kartu_uang_muka_penjualan'+
                 '('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+','+
                 ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+')  '+
                 'WHERE customer_code='+QuotedStr(strKodePelanggan);
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
      Report.LoadFromFile(cLocation +'report/rpt_kartuuangmukapenjualan'+ '.fr3');
      SetMemo(Report,'prsh',FHomeLogin.vNamaPRSH);
      SetMemo(Report,'prsh_alamat',FHomeLogin.vAlamatPRSH);
      SetMemo(Report,'periode','TANGGAL : '+UpperCase(formatdatetime('dd mmmm yyyy',dtAwal.EditValue)+' S/D '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue)));
      Report.ShowReport();
    end;
  end;
end;

procedure TFKartuUangMukaPenjualan.btSearchClick(Sender: TObject);

begin
  if edNama_Pelanggan.EditValue='' then
  begin
    MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    DBGrid.StartLoadingStatus();
    try
    with QKartuUangMuka do //SaldoAwal
    begin
      close;
      sql.Clear;
      sql.text:='SELECT customer_code,customer_name,customer_name_pkp,address,saldo_awal from get_kartu_uang_muka_penjualan'+
               '('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+','+
               ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+')  '+
               'WHERE customer_code='+QuotedStr(strKodePelanggan)+' and urut=0';
     open;
    end;

    MemMaster.active:=false;
    MemMaster.active:=true;
    MemMaster.EmptyTable;

    if  QKartuUangMuka.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  QKartuUangMuka.RecordCount<>0 then
    begin
      QKartuUangMuka.first;
      while not QKartuUangMuka.Eof do
      begin
        MemMaster.insert;
        MemMaster['kode_pelanggan']:=QKartuUangMuka.fieldbyname('customer_code').value;
        MemMaster['nama_pelanggan']:=QKartuUangMuka.fieldbyname('customer_name').value;
        MemMaster['nama_pkp']:=QKartuUangMuka.fieldbyname('customer_name_pkp').value;
        MemMaster['alamat']:=QKartuUangMuka.fieldbyname('address').value;
        MemMaster['saldo_awal']:=QKartuUangMuka.fieldbyname('saldo_awal').value;
        MemMaster.post;
        QKartuUangMuka.next;
      end;
      MemMaster.SortByFields('nama_pelanggan,alamat asc');
    end;

    with QKartuUangMukaTRX do
    begin
       close;
       sql.Clear;
       sql.text:='SELECT * from get_kartu_uang_muka_penjualan'+
               '('+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+','+
               ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+')  '+
               'WHERE customer_code='+QuotedStr(strKodePelanggan)+' ORDER BY '+
               'customer_code DESC,trans_date DESC NULLS LAST,urut DESC,created_at DESC';
       open;
    end;

    MemMasterDetail.active:=false;
    MemMasterDetail.active:=true;
    MemMasterDetail.EmptyTable;

    if  QKartuUangMukaTRX.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  QKartuUangMukaTRX.RecordCount<>0 then
    begin
      QKartuUangMukaTRX.first;
      while not QKartuUangMukaTRX.Eof do
      begin
       MemMasterDetail.insert;
       MemMasterDetail['kode_cust']:=QKartuUangMukaTRX.fieldbyname('customer_code').value;
       MemMasterDetail['nama_cust']:=QKartuUangMukaTRX.fieldbyname('customer_name_pkp').value;
       MemMasterDetail['trans_no']:=QKartuUangMukaTRX.fieldbyname('trans_no').value;
       MemMasterDetail['tgltrans']:=QKartuUangMukaTRX.fieldbyname('trans_date').value;
       MemMasterDetail['saldo_awal']:=QKartuUangMukaTRX.fieldbyname('saldo_awal').value;
       MemMasterDetail['debet']:=QKartuUangMukaTRX.fieldbyname('debet').value;
       MemMasterDetail['kredit']:=QKartuUangMukaTRX.fieldbyname('kredit').value;
       MemMasterDetail['saldo_komulatif']:=QKartuUangMukaTRX.fieldbyname('saldo_komulatif').value;
       MemMasterDetail['no_urut']:=QKartuUangMukaTRX.fieldbyname('urut').value;
       MemMasterDetail['keterangan']:=QKartuUangMukaTRX.fieldbyname('description').value;
       MemMasterDetail.post;
       QKartuUangMukaTRX.next;
      end;

    end;

    finally
    DBGrid.FinishLoadingStatus();
    end;
  end;
end;

procedure TFKartuUangMukaPenjualan.dxBarLargeButton1Click(Sender: TObject);
begin
  dtAwal.EditValue:=NOW();
  dtAkhir.EditValue:=NOW();
  strKodePelanggan:='';
  edNama_Pelanggan.EditValue:='';
end;

procedure TFKartuUangMukaPenjualan.edNama_PelangganPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='uangmukapenjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFKartuUangMukaPenjualan.FormCreate(Sender: TObject);
begin
  kartuuangmukapenjualan:=self;
end;

procedure TFKartuUangMukaPenjualan.FormDestroy(Sender: TObject);
begin
  kartuuangmukapenjualan:=nil;
end;

procedure TFKartuUangMukaPenjualan.FormShow(Sender: TObject);
begin
  dtAwal.EditValue:=NOW();
  dtAkhir.EditValue:=NOW();
  strKodePelanggan:='';
  edNama_Pelanggan.EditValue:='';
  FillSBUBarCombo(cbSBU);
end;

initialization
  RegisterClass(TFKartuUangMukaPenjualan);

end.
