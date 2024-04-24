unit UUang_Muka_Pembelian;

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
  Data.DB, MemDS, DBAccess, Uni;

type
  TFUang_Muka_Pembelian = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGrid_um: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QUM: TUniQuery;
    DS_UM: TDataSource;
    DBGridCek_Det: TDBGridEh;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUang_Muka_Pembelian: TFUang_Muka_Pembelian;

implementation

{$R *.dfm}

uses UInput_um, UDataModule;

procedure TFUang_Muka_Pembelian.ActBaruExecute(Sender: TObject);
begin
   with  FNew_UM_Pembelian do
   begin
     Show;
     StatusTr:=0;
     clear;
     BSimpan.Visible:=True;
     BEdit.Visible:=false;
     DTP_UM.Date:=Now;
   end;
end;

procedure TFUang_Muka_Pembelian.ActRoExecute(Sender: TObject);
begin
    DBGrid_um.StartLoadingStatus();
    DBGrid_um.FinishLoadingStatus();
    QUM.Close;
    if QUM.Active=False then QUM.Active:=True;
end;

procedure TFUang_Muka_Pembelian.ActUpdateExecute(Sender: TObject);
begin
   with  FNew_UM_Pembelian do
   begin
     Show;
     StatusTr:=1;
     BSimpan.Visible:=false;
     BEdit.Visible:=true;

     Ed_No_trans.Text:=QUM.fieldbyname('no_trans').AsString;
     DTP_UM.Date:=QUM.fieldbyname('trans_date').Value;
     EdKd_supp.Text:=QUM.fieldbyname('supplier_code').AsString;
     Ednm_supp.Text:=QUM.fieldbyname('supplier_name').AsString;
     EdUM.Value:=QUM.fieldbyname('um_value').Value;
     Edkd_akun.Text:=QUM.fieldbyname('um_account_code').Asstring;
     Edhari.Text:=QUM.fieldbyname('trans_day').Value;
     Edbln.Text:=QUM.fieldbyname('trans_month').Value;
     Edth.Text:=QUM.fieldbyname('trans_year').Value;
     CbPo.text:=QUM.fieldbyname('po_no').AsString;
   end;



end;

procedure TFUang_Muka_Pembelian.FormShow(Sender: TObject);
begin
    ActRoExecute(sender);
end;

end.
