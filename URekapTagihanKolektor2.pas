unit URekapTagihanKolektor2;

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
  DynVarsEh, cxButtonEdit, cxDropDownEdit, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, cxCalendar, System.DateUtils;

type
  TFRekapTagihanKolektor2 = class(TForm)
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
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    dxBarLargeButton2: TdxBarLargeButton;
    edTP: TcxBarEditItem;
    QCetak: TUniQuery;
    Report: TfrxReport;
    dsCetak: TDataSource;
    DSQBHPenjualanExportKredit: TDataSource;
    frxDBCetakTagihanKolektor: TfrxDBDataset;
    cbBulan: TdxBarCombo;
    cbTahun: TdxBarCombo;
    edKaresidenan: TcxBarEditItem;
    QCetak2: TUniQuery;
    frxDBCetakTagihanKolektor2: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edTPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btSearchClick(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strCodeTP,strCodeKabupaten,strCodeKaresidenan:String;
    procedure Clear;
  end;

  function FRekapTagihanKolektor2: TFRekapTagihanKolektor2;
//var
//  FRekapTagihanKolektor2: TFRekapTagihanKolektor2;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin;
var
  rekaptagihankolektor2 : TFRekapTagihanKolektor2;

function FRekapTagihanKolektor2: TFRekapTagihanKolektor2;
begin
  if rekaptagihankolektor2 <> nil then
    FRekapTagihanKolektor2:= rekaptagihankolektor2
  else
    Application.CreateForm(TFRekapTagihanKolektor2, Result);
end;

procedure TFRekapTagihanKolektor2.btPreviewClick(Sender: TObject);
var
  TanggalAwal, TanggalAkhir: TDateTime;
  strTanggalAwal,strTanggalAkhir: String;
begin
//  if edKabupaten.EditValue='' then
//  begin
//    MessageDlg('Kabupaten Wajib Diisi ..!!',mtInformation,[mbRetry],0);
//  end else begin
    TanggalAwal := StartOfAMonth(StrToInt(cbTahun.Text), cbBulan.ItemIndex+1);
    TanggalAkhir := EndOfAMonth(StrToInt(cbTahun.Text), cbBulan.ItemIndex+1);
    strTanggalAwal:=QuotedStr(FormatDateTime('yyyy-mm-dd',TanggalAwal));
    strTanggalAkhir:=QuotedStr(FormatDateTime('yyyy-mm-dd',TanggalAkhir));

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from get_rekap_tagihan_kolektor('+strTanggalAwal+','+strTanggalAkhir+')';
      Open;
    end;

    with QCetak2 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from get_rekap_tagihan_kolektor_sum('+strTanggalAwal+','+strTanggalAkhir+')';
      Open;
    end;

    cLocation := ExtractFilePath(Application.ExeName);

   //ShowMessage(cLocation);
   Report.LoadFromFile(cLocation +'report/RekapTagihanKolektor'+ '.fr3');
   SetMemo(Report,'Judul','REKAP TAGIHAN KOLEKTOR PT. '+FHomeLogin.vNamaPRSH);
   SetMemo(Report,'MemBulan','BULAN '+cbBulan.Text+' '+cbTahun.Text);

   SetMemo(Report,'Judul2','PENGAJUAN INSENTIVE KOLEKTOR PT. '+FHomeLogin.vNamaPRSH);
   SetMemo(Report,'MemBulan2','BULAN '+cbBulan.Text+' '+cbTahun.Text);
   SetMemo(Report,'MemKotaTanggal2',FHomeLogin.vKotaPRSH+', ' + FormatDateTime('dd', Date) +' '+cbBulan.Text+' '+cbTahun.Text);

   SetMemo(Report,'Judul3','PERHITUNGAN INSENTIVE KOLEKTOR PT. '+FHomeLogin.vNamaPRSH);
   SetMemo(Report,'MemBulan3','BULAN '+cbBulan.Text+' '+cbTahun.Text);
   SetMemo(Report,'MemKotaTanggal3',FHomeLogin.vKotaPRSH+', ' + FormatDateTime('dd', Date) +' '+cbBulan.Text+' '+cbTahun.Text);
   Report.ShowReport();

//  end;
end;

procedure TFRekapTagihanKolektor2.btSearchClick(Sender: TObject);
var
  TanggalAwal, TanggalAkhir: TDateTime;
  strTanggalAwal,strTanggalAkhir: String;
begin
//  if edKabupaten.EditValue='' then
//  begin
//    MessageDlg('Kabupaten Wajib Diisi ..!!',mtInformation,[mbRetry],0);
//  end else begin
    TanggalAwal := StartOfAMonth(StrToInt(cbTahun.Text), cbBulan.ItemIndex+1);
    TanggalAkhir := EndOfAMonth(StrToInt(cbTahun.Text), cbBulan.ItemIndex+1);
    strTanggalAwal:=QuotedStr(FormatDateTime('yyyy-mm-dd',TanggalAwal));
    strTanggalAkhir:=QuotedStr(FormatDateTime('yyyy-mm-dd',TanggalAkhir));

    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * from get_rekap_tagihan_kolektor('+strTanggalAwal+','+strTanggalAkhir+')';
      Open;
    end;
//  end;
end;

procedure TFRekapTagihanKolektor2.cbKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='rekaptagihankolektor_kares';
  FMasterData.update_grid('DISTINCT code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapTagihanKolektor2.Clear;
var
  TahunMulai, TahunSelesai, I: Integer;
begin
  strCodeTP:='';
  strCodeKaresidenan:='';
  strCodeKabupaten:='';
  edTP.EditValue:='';
  edKaresidenan.EditValue:='';
  edKabupaten.EditValue:='';
  cbBulan.ItemIndex:=0;
  TahunMulai := 2026;
  TahunSelesai := YearOf(Now) + 1;
  cbTahun.Items.Clear;

  if TahunMulai <= TahunSelesai then
  begin
    for I := TahunMulai to TahunSelesai do
    begin
      cbTahun.Items.Add(IntToStr(I));
    end;
  end
  else
  begin
    cbTahun.Items.Add(IntToStr(TahunMulai));
  end;
  cbTahun.ItemIndex := cbTahun.Items.IndexOf(IntToStr(YearOf(Now)));
end;

procedure TFRekapTagihanKolektor2.dxBarLargeButton2Click(Sender: TObject);
begin
  Clear;
end;

procedure TFRekapTagihanKolektor2.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='rekaptagihankolektor_kab';
  if (edKaresidenan.EditValue<>'') AND (edTP.EditValue='') then
  begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(strCodeKaresidenan)+'');
    FMasterData.ShowModal;
  end else if (edKaresidenan.EditValue='') AND (edTP.EditValue<>'') then begin
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_tp='+QuotedStr(strCodeTP)+'');
    FMasterData.ShowModal;
  end;
end;

procedure TFRekapTagihanKolektor2.edTPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='rekaptagihankolektor_tp';
  FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRekapTagihanKolektor2.FormCreate(Sender: TObject);
begin
  rekaptagihankolektor2:=Self;
end;

procedure TFRekapTagihanKolektor2.FormDestroy(Sender: TObject);
begin
  rekaptagihankolektor2:=nil;
end;

procedure TFRekapTagihanKolektor2.FormShow(Sender: TObject);
begin
  Clear;
end;

initialization
  RegisterClass(TFRekapTagihanKolektor2);

end.
