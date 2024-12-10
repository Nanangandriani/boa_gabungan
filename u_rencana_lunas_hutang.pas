unit u_rencana_lunas_hutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.StdCtrls, RzButton, Vcl.ComCtrls, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS,
  DBAccess, Uni;

type
  TFList_Rencana_Lunas_Hutang = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGrid_List_Rencana: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    RzPanel1: TRzPanel;
    Cari_supp: TButton;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    txtkdsupp: TEdit;
    txtnmsupp: TEdit;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    BCari: TRzBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    CBstatus: TComboBox;
    DateTimePicker1: TDateTimePicker;
    QRencana: TUniQuery;
    DSRencana: TDataSource;
    QRencanajumlah: TFloatField;
    QRencanaid: TLargeintField;
    QRencanafaktur_no: TStringField;
    QRencanaperiode1: TDateField;
    QRencanaperiode2: TDateField;
    QRencanabank: TStringField;
    QRencanacek_no: TStringField;
    QRencanaplan_to: TSmallintField;
    QRencanasupplier_code: TStringField;
    QRencanasupplier_name: TStringField;
    QRencanapaid_date: TDateField;
    QRencanaperiodetempo1: TDateField;
    QRencanaperiodetempo2: TDateField;
    QRencanapaid_status: TSmallintField;
    QRencanaapprove_status: TBooleanField;
    QRencanadebt_type: TIntegerField;
    QRencanaaccount_code: TStringField;
    QRencanaaccount_name: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure Cari_suppClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  FList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;

implementation

{$R *.dfm}

uses u_rencana_lunas_hutang_input, UDataModule, USearch_Supplier;

var
  RealFList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;

function FList_Rencana_Lunas_Hutang: TFList_Rencana_Lunas_Hutang;
begin
  if RealFList_Rencana_Lunas_Hutang <> nil then
     FList_Rencana_Lunas_Hutang:= RealFList_Rencana_Lunas_Hutang
  else
    Application.CreateForm(TFList_Rencana_Lunas_Hutang, Result);
end;

procedure TFList_Rencana_Lunas_Hutang.ActBaruExecute(Sender: TObject);
begin
   FRencana_Lunas_Hutang.Show;
end;

procedure TFList_Rencana_Lunas_Hutang.ActROExecute(Sender: TObject);
begin
    DBGrid_List_Rencana.StartLoadingStatus();
    CBstatus.ItemIndex:=0;
    txtkdsupp.Text:='';
    txtnmsupp.Text:='';
    BCariClick(sender);
    DBGrid_List_Rencana.FinishLoadingStatus();
end;

procedure TFList_Rencana_Lunas_Hutang.BCariClick(Sender: TObject);
var query:string;
begin
    query:='select * from v_plan_paid_debt ';
    if CBstatus.ItemIndex=0 then
    begin
      if txtkdsupp.Text='' then
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=0 and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date)) ;
          open;
        end;
      end
      else
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=0 and '+
                    'supplier_code='+QuotedStr(txtkdsupp.Text) ;
          open;
        end;
      end;
    end
    else
    begin
      if txtkdsupp.Text='' then
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=1 and '+
                    'periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date)) ;
          open;
        end;
      end
      else
      begin
        with Qrencana do
        begin
          close;
          sql.clear;
          sql.text:='select * from v_plan_paid_debt '+
                    'where paid_status=1 and '+
                    'periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' and '+
                    'supplier_code='+QuotedStr(txtkdsupp.Text) ;

          open;
        end;
      end;
    end;
end;

procedure TFList_Rencana_Lunas_Hutang.Cari_suppClick(Sender: TObject);
begin
    with FSearch_Supplier do
    begin
       QSupplier.Close;
       QSupplier.Open;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='rencanalunashutang';
    FSearch_Supplier.ShowModal;
end;

procedure TFList_Rencana_Lunas_Hutang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=cafree;
end;

procedure TFList_Rencana_Lunas_Hutang.FormCreate(Sender: TObject);
begin
   RealFList_Rencana_Lunas_Hutang:=self;
end;

procedure TFList_Rencana_Lunas_Hutang.FormDestroy(Sender: TObject);
begin
   RealFList_Rencana_Lunas_Hutang:=nil;
end;

procedure TFList_Rencana_Lunas_Hutang.FormShow(Sender: TObject);
begin
   DateTimePicker1.Date:=Now;
   DateTimePicker2.Date:=Now;
end;

initialization
RegisterClass(TFList_Rencana_Lunas_Hutang);

end.
