unit UListPiutangBermasalah;

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
  DynVarsEh, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni, dxBarExtItems,
  dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, cxButtonEdit, cxBarEditItem;

type
  TFListPiutangBermasalah = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridPiutangBermasalah: TDBGridEh;
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
    dxBarManager1Bar3: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    QPiutangBermasalah: TUniQuery;
    DsPenjualan: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    Report: TfrxReport;
    frxDBDataPiutangBermasalah: TfrxDBDataset;
    edKaresidenan: TcxBarEditItem;
    edKabupaten: TcxBarEditItem;
    edKecamatan: TcxBarEditItem;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKabupatenPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edKaresidenanChange(Sender: TObject);
    procedure edKabupatenChange(Sender: TObject);
    procedure edKecamatanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure dxBarLargeButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StrKaresidananID,StrKabupatenID,StrKecamatanID:String;
    procedure Refresh;
    procedure Clear;
  end;

  function FListPiutangBermasalah: TFListPiutangBermasalah;

//var
//  FListPiutangBermasalah: TFListPiutangBermasalah;

implementation

{$R *.dfm}

uses UNew_PiutangBeramasalah, UMasterData, UMy_Function, UHomeLogin;
var
  listpiutangbermasalah : TFListPiutangBermasalah;

function FListPiutangBermasalah: TFListPiutangBermasalah;
begin
  if listpiutangbermasalah <> nil then
    FListPiutangBermasalah:= listpiutangbermasalah
  else
    Application.CreateForm(TFListPiutangBermasalah, Result);
end;

procedure TFListPiutangBermasalah.Clear;
begin
  StrKaresidananID:='';
  StrKabupatenID:='';
  StrKecamatanID:='';
  edKaresidenan.EditValue:='';
  edKabupaten.EditValue:='';
  edKecamatan.EditValue:='';
  QPiutangBermasalah.Close;
end;

procedure TFListPiutangBermasalah.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListPiutangBermasalah.ActUpdateExecute(Sender: TObject);
begin
  FNew_PiutangBermasalah.Clear;
  with FNew_PiutangBermasalah do
  begin
    strID:=QPiutangBermasalah.FieldValues['id'];
    strKodePelanggan:=QPiutangBermasalah.FieldValues['customer_code'];
    edPelanggan.Text:=QPiutangBermasalah.FieldValues['customer_name'];
    edNoNota.Text:=QPiutangBermasalah.FieldValues['trans_no_nota'];
    dtTglNota.Date:=QPiutangBermasalah.FieldValues['date_nota'];
    edJumlahPiutang.Text:=QPiutangBermasalah.FieldValues['amount'];
    MemKet.Text:=QPiutangBermasalah.FieldValues['note'];
    Status:=1;
  end;
  FNew_PiutangBermasalah.Show;
end;

procedure TFListPiutangBermasalah.dxBarLargeButton10Click(Sender: TObject);
begin
  Clear;
end;

procedure TFListPiutangBermasalah.dxBarLargeButton3Click(Sender: TObject);
begin
  Refresh;
  if QPiutangBermasalah.RecordCount=0 then
  begin
    MessageDlg('Tidak ada data..!!',mtInformation,[mbRetry],0);
  end else
  begin
    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/rpt_piutangbermasalah'+ '.fr3');
    Report.ShowReport();
  end;
end;

procedure TFListPiutangBermasalah.dxBarLargeButton6Click(Sender: TObject);
begin
  Refresh;
end;

procedure TFListPiutangBermasalah.edKabupatenChange(Sender: TObject);
begin
  StrKecamatanID:='';
  edKecamatan.EditValue:='';
end;

procedure TFListPiutangBermasalah.edKabupatenPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if edKaresidenan.EditValue<>'' then
  begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='piutangbermasalah_kab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_karesidenan='+QuotedStr(StrKaresidananID)+'');
    StrKabupatenID:='';
    StrKecamatanID:='';
    edKabupaten.EditValue:='';
    edKecamatan.EditValue:='';
    FMasterData.ShowModal;
  end else
  begin
    MessageDlg('TP wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFListPiutangBermasalah.edKaresidenanChange(Sender: TObject);
begin
  StrKabupatenID:='';
  StrKecamatanID:='';
  edKabupaten.EditValue:='';
  edKecamatan.EditValue:='';
end;

procedure TFListPiutangBermasalah.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='piutangbermasalah_kar';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFListPiutangBermasalah.edKecamatanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if edKabupaten.EditValue<>'' then
  begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='piutangbermasalah_kec';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(StrKabupatenID)+'');
    FMasterData.ShowModal;
  end else
  begin
    MessageDlg('Kabupaten wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFListPiutangBermasalah.FormCreate(Sender: TObject);
begin
  listpiutangbermasalah:=Self;
end;

procedure TFListPiutangBermasalah.FormDestroy(Sender: TObject);
begin
  listpiutangbermasalah:=nil;
end;

procedure TFListPiutangBermasalah.FormShow(Sender: TObject);
begin
  Clear;
//  ActROExecute(sender)
end;

procedure TFListPiutangBermasalah.Refresh;
var mm: Integer;
  strWhereWilayah: String;
begin
  mm:=cbBulan.ItemIndex+1;

  if edKecamatan.EditValue<>'' then
  begin
    strWhereWilayah:='WHERE code_region='+QuotedStr(StrKecamatanID)+' and status=True';
  end else if edKabupaten.EditValue<>'' then
  begin
    strWhereWilayah:='WHERE code_regency='+QuotedStr(StrKabupatenID)+' and status=True';
  end else if edKaresidenan.EditValue<>'' then
  begin
    strWhereWilayah:='WHERE code_karesidenan='+QuotedStr(StrKaresidananID)+' and status=True';
  end else begin
    strWhereWilayah:='';
  end;

  DBGridPiutangBermasalah.StartLoadingStatus();
  try
  with QPiutangBermasalah do
  begin
     close;
     sql.Clear;
     sql.Text:= 'SELECT * from get_piutang_bermasalah() '+
                ' '+strWhereWilayah;
//                'EXTRACT(YEAR FROM a.created_at)='+edTahun.Text+' AND '+
//                'EXTRACT(MONTH FROM a.created_at)='+(IntToStr(mm))+' AND '+
//                'a.deleted_at is null ORDER BY a.created_at DESC;';
     open;
  end;
  finally
  DBGridPiutangBermasalah.FinishLoadingStatus();
  end;
end;

procedure TFListPiutangBermasalah.ReportGetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'PRSH') = 0 then
  Value := UpperCase('PT. '+FHomeLogin.vNamaPRSH);
  if CompareText(VarName, 'karesidenan') = 0 then
  Value := UpperCase('TP '+edKaresidenan.EditValue);
end;

procedure TFListPiutangBermasalah.ActBaruExecute(Sender: TObject);
begin
  FNew_PiutangBermasalah.Clear;
  FNew_PiutangBermasalah.Status:=0;
  FNew_PiutangBermasalah.ShowModal;
end;

initialization
RegisterClass(TFListPiutangBermasalah);

end.
