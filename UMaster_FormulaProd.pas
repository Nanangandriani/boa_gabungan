unit UMaster_FormulaProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsdxBarPainter,
  MemTableDataEh, Data.DB, DataDriverEh, MemDS, DBAccess, Uni, MemTableEh,
  dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzSpnEdt, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore;

type
  TFMaster_FormulaProd = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DbgridMasterFormula: TDBGridEh;
    DBGridDetail: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBbaru1: TdxBarButton;
    dxBbaru2: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBfilterdw: TdxBarButton;
    dxBfilterparfum: TdxBarButton;
    dxBpremix: TdxBarButton;
    dxBclearfilter: TdxBarLargeButton;
    dxBterima: TdxBarButton;
    dxBUpdate: TdxBarButton;
    dxBarSetuju: TdxBarButton;
    dxBartidaksetuju: TdxBarButton;
    MemMaster_Formula: TMemTableEh;
    DsMaster_Formula: TDataSource;
    QMaster_Formula: TUniQuery;
    DsdMaster_Formula: TDataSetDriverEh;
    QMaster_detail: TUniQuery;
    DsDetail_Formula: TDataSource;
    QMaster_detail2: TUniQuery;
    DsMaster_detail2: TDataSource;
    dxBarButton3: TdxBarButton;
    RzSpinEdit1: TRzSpinEdit;
    procedure dxBRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
Function  FMaster_FormulaProd: TFMaster_FormulaProd;

implementation

{$R *.dfm}

uses umainmenu, UDataModule;
var
  realfms_formula: TFMaster_FormulaProd;
// implementasi function
function fmaster_formulaProd: TFMaster_FormulaProd;
begin
  if realfms_formula <> nil then
    FMaster_FormulaProd:= realfms_formula
  else
    Application.CreateForm(TFMaster_FormulaProd, Result);
end;

procedure TFMaster_FormulaProd.dxBarButton3Click(Sender: TObject);
begin
 with dm.qtemp do
 begin
   close;
   sql.clear;
   sql.Text:='Update t_master_formula set status=''False'' where formula_no='+QuotedStr(DbgridMasterFormula.Fields[0].AsString);
   execsql;
 end;
  ShowMessage('Data Berhasil di Close');
end;

procedure TFMaster_FormulaProd.dxBRefreshClick(Sender: TObject);
begin
DbgridMasterFormula.StartLoadingStatus();
DbgridMasterFormula.FinishLoadingStatus();
if loksbu='' then
begin
with QMaster_Formula do
begin
  close;
  sql.clear;
  sql.Text:=' select * from t_master_formula order by formula_no Desc ';
  ExecSQL;
end;
end else
if loksbu<>'' then
begin
with QMaster_Formula do
begin
  close;
  sql.clear;
  sql.Text:=' select * from t_master_formula where sbu_code='+QuotedStr(loksbu)+''+
            '  order by formula_no Desc';
  ExecSQL;
end;
end;
QMaster_Formula.Open;
MemMaster_Formula.Close;
MemMaster_Formula.Open;
QMaster_detail.Close;
QMaster_detail.Open;
QMaster_detail2.Close;
QMaster_detail2.Open;
end;

procedure TFMaster_FormulaProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFMaster_FormulaProd.FormCreate(Sender: TObject);
begin
realfms_formula:=self;
end;

procedure TFMaster_FormulaProd.FormDestroy(Sender: TObject);
begin
realfms_formula:=nil;
end;

procedure TFMaster_FormulaProd.FormShow(Sender: TObject);
begin
//dxBRefreshClick(sender);
end;

initialization
RegisterClass(TFMaster_FormulaProd);
end.
