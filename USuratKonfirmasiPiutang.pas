unit USuratKonfirmasiPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzButton,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxCalendar,
  cxButtonEdit, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBar,
  cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, cxMemo, dxBarExtItems, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFSuratKonfirmasiPiutang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    edKaresidenan: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    frxDBDBHAmplopPelanggan: TfrxDBDataset;
    QDetail: TUniQuery;
    QCetak: TUniQuery;
    dsCetakRincianBarang: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem2: TcxBarEditItem;
    dxBarEdit2: TdxBarEdit;
    Report: TfrxReport;
    dtPerTanggal: TdxBarDateCombo;
    dtTanggalSurat: TdxBarDateCombo;
    cxBarEditItem3: TcxBarEditItem;
    dxBarEdit3: TdxBarEdit;
    dxBarSpinEdit1: TdxBarSpinEdit;
    cxBarEditItem4: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    edNamaPelanggan: TcxBarEditItem;
    dxBarEdit4: TdxBarEdit;
    DataSource1: TDataSource;
    cbSBU: TdxBarCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure edNamaPelangganPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StrSKPKodePelanggan,StrNonOp:String;
  end;


//var
//  FSuratKonfirmasiPiutang: TFSuratKonfirmasiPiutang;
//  AClass: TPersistentClass;
//  AFormClass: TFormClass;
//  AForm: TForm;
//  AForm1: TForm;

function FSuratKonfirmasiPiutang: TFSuratKonfirmasiPiutang;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMy_Function, UHomeLogin, UDataModule;
var
  skpiutang : TFSuratKonfirmasiPiutang;

function FSuratKonfirmasiPiutang: TFSuratKonfirmasiPiutang;
begin
  if skpiutang <> nil then
    FSuratKonfirmasiPiutang:= skpiutang
  else
    Application.CreateForm(TFSuratKonfirmasiPiutang, Result);
end;

procedure TFSuratKonfirmasiPiutang.btPreviewClick(Sender: TObject);
begin
  if edNamaPelanggan.EditValue='' then
  begin
    MessageDlg('Pelanggan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_piutang_invoice('+QuotedStr(FormatDateTime('yyyy-mm-dd', dtPerTanggal.Date) )+') '+
                'where code_cust='+QuotedStr(StrSKPKodePelanggan)+';';
      open;
    end;
    if QCetak.RecordCount=0 then
    begin
       MessageDlg(edNamaPelanggan.EditValue+' tidak memiliki piutang ..!!',mtInformation,[mbRetry],0);
    end else begin
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:='select name_cust,address,sum(sisa_piutang) total_piutang from get_piutang_invoice('+QuotedStr(FormatDateTime('yyyy-mm-dd', dtPerTanggal.Date))+') '+
                  'where code_cust='+QuotedStr(StrSKPKodePelanggan)+' GROUP BY name_cust,address;';
        open;
      end;
      cLocation := ExtractFilePath(Application.ExeName);
      Report.LoadFromFile(cLocation +'report/rpt_surat_konfirmasi_piutang'+ '.fr3');
      Report.ShowReport();
    end;
  end;
end;

procedure TFSuratKonfirmasiPiutang.btSearchClick(Sender: TObject);
begin
  if edNamaPelanggan.EditValue='' then
  begin
    MessageDlg('Pelanggan wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    with QDetail do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from get_piutang_invoice('+QuotedStr(FormatDateTime('yyyy-mm-dd', dtPerTanggal.Date) )+') '+
                'where code_cust='+QuotedStr(StrSKPKodePelanggan)+';';
      open;
    end;
    if QDetail.RecordCount=0 then
    begin
       MessageDlg(edNamaPelanggan.EditValue+' tidak memiliki piutang ..!!',mtInformation,[mbRetry],0);
    end;
  end;
end;

procedure TFSuratKonfirmasiPiutang.dxBarLargeButton2Click(Sender: TObject);
begin
  dtPerTanggal.Date:=NOW();
  dtTanggalSurat.Date:=NOW();
  edNamaPelanggan.EditValue:='';
  StrSKPKodePelanggan:='';
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.full_name from t_user  a left join t_position b on b.position_code=a.position_code where b.level=2';
    open;
  end;
  StrNonOp:=dm.Qtemp.FieldValues['full_name'] ;
//  QDetail.Close;
end;

procedure TFSuratKonfirmasiPiutang.edNamaPelangganPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='skpiutang';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFSuratKonfirmasiPiutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFSuratKonfirmasiPiutang.FormCreate(Sender: TObject);
begin
  skpiutang:=self;
end;

procedure TFSuratKonfirmasiPiutang.FormDestroy(Sender: TObject);
begin
  skpiutang:=nil;
end;

procedure TFSuratKonfirmasiPiutang.FormShow(Sender: TObject);
begin
  dtPerTanggal.Date:=NOW();
  dtTanggalSurat.Date:=NOW();
  edNamaPelanggan.EditValue:='';
  StrSKPKodePelanggan:='';
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.full_name from t_user  a left join t_position b on b.position_code=a.position_code where b.level=2';
    open;
  end;
  StrNonOp:=dm.Qtemp.FieldValues['full_name'] ;
  QDetail.Close;
  FillSBUBarCombo(cbSBU);
end;

procedure TFSuratKonfirmasiPiutang.ReportGetValue(const VarName: string;
  var Value: Variant);
var
tgl,bulan,tahun: STRING;
begin
  tgl:=FormatDateTime('DD', dtTanggalSurat.Date);
  bulan:=convbulanInd(StrToInt(FormatDateTime('M', dtTanggalSurat.Date)));
  tahun:=FormatDateTime('YYYY', dtTanggalSurat.Date);
  
  if CompareText(VarName, 'kota') = 0 then
  Value := FHomeLogin.vKotaPRSH;
  if CompareText(VarName, 'tgl_surat') = 0 then
  Value := tgl+' '+bulan+' '+tahun ;
  if CompareText(VarName, 'parNamaPelanggan') = 0 then
  Value := dm.Qtemp1.FieldValues['name_cust'];
  if CompareText(VarName, 'parAlamatPelanggan') = 0 then
  Value := dm.Qtemp1.FieldValues['address'];
  if CompareText(VarName, 'nmsbu') = 0 then
  Value := FHomeLogin.vNamaPRSH;
  if CompareText(VarName, 'tgl_sampai') = 0 then
  Value := tgl+' '+bulan+' '+tahun ;
  if CompareText(VarName, 'almt_ktr') = 0 then
  Value := FHomeLogin.vAlamatPRSH;
  if CompareText(VarName, 'nofax') = 0 then
  Value := '';
  if CompareText(VarName, 'nm_up') = 0 then
  Value := StrNonOp;
  if CompareText(VarName, 'total_piutang') = 0 then
  Value := dm.Qtemp1.FieldValues['total_piutang'];
  if CompareText(VarName, 'terbilang') = 0 then
  Value := UraikanAngka(floattostr(dm.Qtemp1.FieldValues['total_piutang']))
end;

initialization
  RegisterClass(TFSuratKonfirmasiPiutang);

end.
