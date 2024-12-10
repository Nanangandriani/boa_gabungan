unit URekap_PO;

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
  dxRibbonCustomizationForm, dxBar, dxBarExtItems, cxClasses, dxRibbon,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, cxCalendar, cxBarEditItem, frxClass,
  frxDBSet, Data.DB, MemDS, DBAccess, Uni, cxDropDownEdit, cxButtonEdit;

type
  TFRekap_PO = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    BPrint: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DBGridKontrak: TDBGridEh;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    QRekapPO: TUniQuery;
    DbRekapPO: TfrxDBDataset;
    Rpt: TfrxReport;
    DsRekapo: TDataSource;
    CbKategori: TcxBarEditItem;
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FRekap_PO: TFRekap_PO;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function;

var
  RealFRekap_PO: TFRekap_PO;
function FRekap_PO: TFRekap_PO;
begin
  if RealFRekap_PO <> nil then
    FRekap_PO:= RealFRekap_PO
  else
    Application.CreateForm(TFRekap_PO, Result);
end;


procedure TFRekap_PO.dxBarLargeButton1Click(Sender: TObject);
begin
  dm.refreshperusahaan;
  if dtmulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
  if CbKategori.EditValue=''  then
  begin
    with QRekapPO do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_RptRekapPO" where po_date>='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue));
      ExecSQL;
    end;
  end;
  if CbKategori.EditValue<>''  then
  begin
    with QRekapPO do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_RptRekapPO" where po_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue))+' and kategori_tr='+QuotedStr(CbKategori.EditValue);
      ExecSQL;
    end;
  end;
  if status_akses='True' then
  begin
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekapPO_dr.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',Dtmulai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.QPerusahaan['company_code']);
    Rpt.ShowReport();
  end;
  if status_akses<>'True' then
  begin
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekapPO.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.QPerusahaan['company_code']);
    Rpt.ShowReport();
  end;
end;

procedure TFRekap_PO.DxRefreshClick(Sender: TObject);
begin
  dm.refreshperusahaan;
    if dtmulai.EditValue= null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
  DBGridKontrak.StartLoadingStatus() ;
  if CbKategori.EditValue=''  then
  begin
    with QRekapPO do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_RptRekapPO" where po_date>='+QuotedStr(FormatDateTime('yyy-mm-dd',Dtmulai.EditValue))+' and po_date<='+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.EditValue));
      ExecSQL;
    end;
  end;
  if cbkategori.editvalue<>''  then
  begin
    with QRekapPO do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_RptRekapPO" where po_date>='+QuotedStr(FormatDateTime('yyy-mm-dd',Dtmulai.EditValue))+' and po_date<='+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.EditValue))+' and trans_category='+QuotedStr(CbKategori.EditValue);
      ExecSQL;
    end;
  end;
  qrekappo.open;
  DBGridKontrak.FinishLoadingStatus();
end;

procedure TFRekap_PO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFRekap_PO.FormCreate(Sender: TObject);
begin
  RealFRekap_PO:=self;
end;

procedure TFRekap_PO.FormDestroy(Sender: TObject);
begin
  RealFRekap_PO:=nil;
end;

procedure TFRekap_PO.FormShow(Sender: TObject);
var
  comboProps: TcxComboBoxProperties;
begin
  if not (CbKategori.Properties is TcxComboBoxProperties) then
    raise Exception.Create('Properties harus bertipe TcxComboBoxProperties!');
  comboProps := TcxComboBoxProperties(CbKategori.Properties);
  comboProps.Items.Clear;
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item_type order by type';
    Execute;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.eof do
  begin
    comboProps.items.add(dm.Qtemp['type']);
    dm.Qtemp.Next;
  end;
end;

initialization
RegisterClass(TFRekap_PO);


end.
