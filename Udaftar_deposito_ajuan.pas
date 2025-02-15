unit Udaftar_deposito_ajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ComCtrls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFdaftar_deposito_ajuan = class(TForm)
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid_Daf_Deposito_Ajuan: TDBGridEh;
    DBGridEh1: TDBGridEh;
    PnFilter: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dptgldep1: TDateTimePicker;
    dptgldep2: TDateTimePicker;
    cbrek: TComboBox;
    cbbank: TComboBox;
    BCari: TRzBitBtn;
    procedure ActBaruExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat,kd_bank,kd_bank2,norek:string;
    next_proses:boolean;
  end;

//var
  //Fdaftar_deposito_ajuan: TFdaftar_deposito_ajuan;

function Fdaftar_deposito_ajuan: TFdaftar_deposito_ajuan;

implementation

{$R *.dfm}

uses Utrx_deposito_ajuan;

var
  RealFdaftar_deposito_ajuan : TFdaftar_deposito_ajuan;
// implementasi function
function Fdaftar_deposito_ajuan: TFdaftar_deposito_ajuan;
begin
  if RealFdaftar_deposito_ajuan <> nil then
     Fdaftar_deposito_ajuan:= RealFdaftar_deposito_ajuan
  else
    Application.CreateForm(TFdaftar_deposito_ajuan, Result);
end;

function parsing_koma(nilai:string):string;
var
  pos1,pos2:Integer;
  hasil_pars:string;
begin
  if Pos(',',nilai)<>0 then
  pos1:=Pos(',',nilai)
  else
  if Pos('.',nilai)<>0 then
  pos1:=Pos('.',nilai);

  if pos1<>0 then
  hasil_pars:=Copy(nilai,1,pos1-1)
  else
  hasil_pars:=nilai;

  result:=hasil_pars;
end;



procedure TFdaftar_deposito_ajuan.ActBaruExecute(Sender: TObject);
begin
    if stat='daf_ajuan' then
    begin
      //if application.MessageBox('Data baru?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      Ftrx_deposito_ajuan.show;
    end;
end;

initialization
  RegisterClass(TFdaftar_deposito_ajuan);

end.
