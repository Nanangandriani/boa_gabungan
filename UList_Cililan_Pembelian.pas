unit UList_Cililan_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzButton, Vcl.ExtCtrls, MemTableDataEh, Data.DB, MemTableEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxClasses, dxRibbon, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, DataDriverEh, cxCheckBox,
  cxBarEditItem, cxCalendar;

type
  TFList_Cicilan_Pembelian = class(TForm)
    DBGridCicilan: TDBGridEh;
    MemCicilan: TMemTableEh;
    DsCicilan: TDataSource;
    QCicilan: TUniQuery;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DataSetDriverEh1: TDataSetDriverEh;
    cxBarEditItem1: TcxBarEditItem;
    dtawal: TcxBarEditItem;
    dtakhir: TcxBarEditItem;
    dxBarButton10: TdxBarButton;
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var trans_no:string;
  end;

function FList_Cicilan_Pembelian: TFList_Cicilan_Pembelian;

implementation

{$R *.dfm}

uses UDataModule;

var
  RealFList_Cicilan_Pembelian: TFList_Cicilan_Pembelian;
// implementasi function
function FList_Cicilan_Pembelian: TFList_Cicilan_Pembelian;
begin
  if RealFList_Cicilan_Pembelian <> nil then
    FList_Cicilan_Pembelian:= RealFList_Cicilan_Pembelian
  else
    Application.CreateForm(TFList_Cicilan_Pembelian, Result);
end;

procedure TFList_Cicilan_Pembelian.ActRoExecute(Sender: TObject);
begin
  DBGridCicilan.StartLoadingStatus();
    QCicilan.Close;
    QCicilan.Open;
    MemCicilan.Close;
    MemCicilan.Open;
  DBGridCicilan.FinishLoadingStatus();
end;

procedure TFList_Cicilan_Pembelian.BSaveClick(Sender: TObject);
begin
{MemDetail.First;
while not MemDetail.Eof do
begin
  with dm.qtemp do
  begin
      close;
      sql.Clear;
      sql.Text:='Insert into t_purchase_installment(trans_no,trans_month,trans_year,amount)'+
      'values(:trans_no,:tmonth,:tyear,:amount)';
      ParamByName('trans_no').Value:=MemDetail['trans_no'];
      ParamByName('tmonth').Value:=MemDetail['trans_month'];
      ParamByName('tyear').Value:=MemDetail['trans_year'];
      ParamByName('amount').Value:=MemDetail['amount'];
      ExecSQL;
  end;
  MemDetail.Next;
end;           }
end;

procedure TFList_Cicilan_Pembelian.dxBarButton10Click(Sender: TObject);
begin
    DBGridCicilan.StartLoadingStatus();
    with QCicilan do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from v_purchase_installment where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtawal.EditValue))+''+
      ' and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtakhir.EditValue))+''+
      ' order by trans_year asc,cast(trans_month as integer) asc';
      open;
    end;
    MemCicilan.Close;
    MemCicilan.Open;
  DBGridCicilan.FinishLoadingStatus();
end;

procedure TFList_Cicilan_Pembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFList_Cicilan_Pembelian.FormCreate(Sender: TObject);
begin
  RealFList_Cicilan_Pembelian:=Self;
end;

procedure TFList_Cicilan_Pembelian.FormDestroy(Sender: TObject);
begin
  RealFList_Cicilan_Pembelian:=nil;
end;

procedure TFList_Cicilan_Pembelian.FormShow(Sender: TObject);
begin
  
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFList_Cicilan_Pembelian);
end.
