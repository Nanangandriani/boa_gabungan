unit Ulap_Rekap_Hutang_Kredit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, frxClass, frxDBSet, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, dxRibbon, dxBar, cxBarEditItem, cxClasses, MemDS,
  DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DataDriverEh, MemTableEh;

type
  TFlap_Rekap_Hutang_Kredit = class(TForm)
    DSRekap_Hutang_Kredit: TDataSource;
    MemRekap_Hutang_Kredit: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    QPerusahaan: TUniQuery;
    QPerusahaancompany_code: TStringField;
    QPerusahaancompany_name: TStringField;
    QPerusahaanaddress: TStringField;
    QPerusahaantelp: TStringField;
    QPerusahaanemail: TStringField;
    QPerusahaannpwp: TStringField;
    QPerusahaancity: TStringField;
    QPerusahaanaddress2: TStringField;
    QPerusahaanid: TGuidField;
    QPerusahaancreated_at: TDateTimeField;
    QPerusahaancreated_by: TStringField;
    QPerusahaanupdated_at: TDateTimeField;
    QPerusahaanupdated_by: TStringField;
    QPerusahaandeleted_at: TDateTimeField;
    QPerusahaandeleted_by: TStringField;
    QPerusahaantype_of_business: TStringField;
    QPerusahaanlatitude: TStringField;
    QPerusahaanlongitude: TStringField;
    QPerusahaantax_status: TBooleanField;
    QPerusahaancurrency: TStringField;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxPrint: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    BtnClear: TdxBarLargeButton;
    txtkdacckredit1: TdxBarEdit;
    dxBarEdit3: TdxBarEdit;
    dxBarEdit2: TdxBarEdit;
    dxBarEdit4: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    DTPick1: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DBGridHutangKredit: TDBGridEh;
    frxDBDatasetPers: TfrxDBDataset;
    QRekap_Hutang_Kredit: TUniQuery;
    QLap_Rekap_Hutang_Kredit: TUniQuery;
    frxdbRekap_Hutang_Kredit: TfrxDBDataset;
    Ed_Account: TcxBarEditItem;
    edkode_akun: TcxBarEditItem;
    unirekapkredittrx: TUniQuery;
    frxrekapkreditrx: TfrxReport;
    frxrekdafkredittrx: TfrxDBDataset;
    frxrekapkreditrx2: TfrxReport;
    unirekapkredittrx2: TUniQuery;
    frxrekdafkredittrx2: TfrxDBDataset;
    procedure cxBarEditItem2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat:string;
  end;

function
//var
  Flap_Rekap_Hutang_Kredit: TFlap_Rekap_Hutang_Kredit;

implementation

{$R *.dfm}

uses UDataModule, UCari_DaftarPerk;

var
  realFlap_Rekap_Hutang_Kredit : TFlap_Rekap_Hutang_Kredit;

  // implementasi function
function Flap_Rekap_Hutang_Kredit: TFlap_Rekap_Hutang_Kredit;
begin
  if realFlap_Rekap_Hutang_Kredit <> nil then
     Flap_Rekap_Hutang_Kredit:= realFlap_Rekap_Hutang_Kredit
  else
    Application.CreateForm(TFlap_Rekap_Hutang_Kredit, Result);
end;

procedure TFlap_Rekap_Hutang_Kredit.ActPrintExecute(Sender: TObject);
var query:string;
    dd,mm,yy:word;
    bulanold,bulannow:tdate;
    sawal:real;
begin
  with unirekapkredittrx do
  begin
  close;
  sql.Clear;
  sql.Text:=' select * from v_rekap_hutang_kredit '+
            ' where  tanggal BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
            ' and kodesp='+QuotedStr(edkode_akun.EditValue)+' ';
  open;
  end;

  with frxrekapkreditrx do
  begin
    frxrekapkreditrx.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rekap_Hutang_Kredit.fr3');
    ReportOptions.Name := 'Rekap hutang akun kredit';
    with ScriptText do
    begin
    clear;
    add('var periode,prsh,judul: string;');
    add('begin');
    Add('judul:='''+'REKAP HUTANG '+UpperCase(Ed_Account.EditValue)+  ''' ;' );
    Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick2.EditValue)+''' ;' );
    //Add('prsh:='''+dm.qperusahaan.fieldbyname('company_name').asstring+  ''' ;' );
    add('end.');
  end;
  ShowReport;
  end;
end;

procedure TFlap_Rekap_Hutang_Kredit.cxBarEditItem2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    with FCari_DaftarPerk do
    begin
    //QDaftar_Perk.Close;
    //QDaftar_Perk.Open;
      with QDaftar_Perk do
      begin
        close;
        sql.Clear;
        SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                  ' left join t_ak_account b on a.account_code=b.code  '+
                  ' left join t_ak_header c on b.header_code=c.header_code'+
                  ' where b.code is not null '+
                  ' GROUP BY b.code,b.account_name,c.header_name '+
                  ' ORDER BY b.code,b.account_name,c.header_name';
        Execute;
      end;
    end;
    FCari_DaftarPerk.Caption:='Master Data Perkiraan';
    FCari_DaftarPerk.vpanggil:='Lap_Rekap_Hutang_Kredit';
    FCari_DaftarPerk.ShowModal;
end;


procedure TFlap_Rekap_Hutang_Kredit.DxRefreshClick(Sender: TObject);
begin
   DBGridHutangKredit.StartLoadingStatus();
   try
     with unirekapkredittrx do
     begin
        close;
        sql.clear;
        sql.add(' select * from v_rekap_hutang_kredit '+
                ' where  tanggal BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+' '+
                ' and kodesp='+QuotedStr(edkode_akun.EditValue)+' ');
        open;
     end;
   finally
   DBGridHutangKredit.FinishLoadingStatus();
   end;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormCreate(Sender: TObject);
begin
   realFlap_Rekap_Hutang_Kredit:=self;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormDestroy(Sender: TObject);
begin
   realFlap_Rekap_Hutang_Kredit:=nil;
end;

procedure TFlap_Rekap_Hutang_Kredit.FormShow(Sender: TObject);
begin
    DTPick1.EditValue := Date;
    DTPick2.EditValue := Date;
end;

initialization
  RegisterClass(TFlap_Rekap_Hutang_Kredit);

end.
