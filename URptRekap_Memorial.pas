unit URptRekap_Memorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  DynVarsEh, cxLabel, cxSpinEdit, dxBar, cxBarEditItem, cxClasses, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFRekap_memorial = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DbRpt_Memorial: TfrxDBDataset;
    Rpt: TfrxReport;
    QRpt_Memorial: TUniQuery;
    BPrint2: TRzBitBtn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    spTahun: TcxBarEditItem;
    cbbulan: TComboBox;
    Ds_memorial: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure BPrint2Click(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln:string;
  end;

function FRekap_memorial: TFRekap_memorial;

implementation

{$R *.dfm}

uses UMainmenu, UDataModule;

var
  RealFRekap_memorial: TFRekap_memorial;
function FRekap_memorial: TFRekap_memorial;
begin
  if RealFRekap_memorial <> nil then
    FRekap_memorial:= RealFRekap_memorial
  else
    Application.CreateForm(TFRekap_memorial, Result);
end;

procedure TFRekap_memorial.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRekap_memorial.BPrint2Click(Sender: TObject);
var tgl,tgl2:string;
begin
{with QRpt_Memorial2 do
begin
  close;
  sql.Clear;
  sql.Text:='SELECT dense_rank() OVER (ORDER BY id_ket) AS nomor,tgl,no_bk,no_faktur,status_pembulatan,status_post,'+
   ' bln,thn,id_ket,akun_kredit,debit,kredit,nama_perkiraan,tgl2,bulan,keterangan,ket,nm_ket,kode_header '+
   ' FROM (select * from "V_BukuMemorial2" ) x where tgl='+QuotedStr(edth.Text+'-'+bln)+' ORDER BY id_ket asc,debit desc';
  open;
end;     }
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BukuMemorial2.Fr3');
//  Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
  Tfrxmemoview(Rpt.FindObject('Mthn')).Memo.Text:=''+spTahun.EditValue;
  Rpt.ShowReport();
end;

procedure TFRekap_memorial.BPrintClick(Sender: TObject);
var tgl,tgl2 :string;
begin
with QRpt_Memorial do
begin
  close;
  sql.Clear;
  sql.Text:='select * from "V_BukuMemorial" where to_char(trans_date,''yyyy-mm'')='+QuotedStr(spTahun.EditValue+'-'+bln)+' ORDER BY id asc,debit desc';
  open;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BukuMemorial.Fr3');
//  Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
  Tfrxmemoview(Rpt.FindObject('Mthn')).Memo.Text:=''+spTahun.EditValue;
  Rpt.ShowReport();
end;

procedure TFRekap_memorial.cbbulanSelect(Sender: TObject);
begin
case cbbulan.Itemindex of
  0:bln:='01';
  1:bln:='02';
  2:bln:='03';
  3:bln:='04';
  4:bln:='05';
  5:bln:='06';
  6:bln:='07';
  7:bln:='08';
  8:bln:='09';
  9:bln:='10';
  10:bln:='11';
  11:bln:='12';
end;
end;

procedure TFRekap_memorial.dxBarLargeButton1Click(Sender: TObject);
var tgl,tgl2 :string;
begin
with QRpt_Memorial do
begin
  close;
  sql.Clear;
  sql.Text:='select * from "V_BukuMemorial" where to_char(trans_date,''yyyy-mm'')='+QuotedStr(spTahun.EditValue+'-'+bln)+' ORDER BY id asc,debit desc';
  open;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BukuMemorial.Fr3');
//  Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
  Tfrxmemoview(Rpt.FindObject('Mthn')).Memo.Text:=''+spTahun.EditValue;
  Rpt.ShowReport();
end;

procedure TFRekap_memorial.DxRefreshClick(Sender: TObject);
begin
//GridEh1.StartLoadingStatus() ;
with QRpt_Memorial do
begin
  close;
  sql.Clear;
  sql.Text:='select * from "V_BukuMemorial" where to_char(trans_date,''yyyy-mm'')='+QuotedStr(spTahun.EditValue+'-'+bln)+' ORDER BY id asc,debit desc';
  open;
end;
//GridEh1.FinishLoadingStatus();
end;

procedure TFRekap_memorial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRekap_memorial.FormCreate(Sender: TObject);
begin
  RealFRekap_memorial:=self;
end;

procedure TFRekap_memorial.FormDestroy(Sender: TObject);
begin
  RealFRekap_memorial:=nil;
end;

procedure TFRekap_memorial.FormShow(Sender: TObject);
begin
  spTahun.EditValue:=FormatDateTime('yyyy',now());
end;

procedure TFRekap_memorial.RptGetValue(const VarName: string;
  var Value: Variant);
  var bulan1,bulan:string;
begin
//  bulan1:=QRpt_Memorial['bulan'];
  bulan1:=QRpt_Memorial['bulan'];
  if bulan1= '01' then
  bulan:=' Jan '
  else if bulan1= '02' then
  bulan:=' Feb '
  else if bulan1= '03' then
  bulan:=' Mar '
  else if bulan1= '04' then
  bulan:=' Apr '
  else if bulan1= '05' then
  bulan:=' Mei '
  else if bulan1= '06' then
  bulan:=' Jun '
  else if bulan1= '07' then
  bulan:=' Jul '
  else if bulan1= '08' then
  bulan:=' Agu '
  else if bulan1= '09' then
  bulan:=' Sep '
  else if bulan1= '10' then
  bulan:=' Okt '
  else if bulan1= '11' then
  bulan:=' Nov '
  else if bulan1= '12' then
  bulan:=' Des ';
  if CompareText(VarName, 'vBulan') = 0 then
  Value := bulan;
end;

initialization
RegisterClass(TFRekap_memorial);
end.
