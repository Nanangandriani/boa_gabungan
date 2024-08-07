unit Udafcek_entry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, MemDS, DBAccess, Uni,
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
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFDaf_EntryCek = class(TForm)
    qnocek: TUniQuery;
    DSnocek: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    qnocekcode: TIntegerField;
    qnocekcek_no: TStringField;
    qnocekbank: TStringField;
    qnocekrek_no: TStringField;
    qnocekcekbg: TStringField;
    qnocekstatus: TStringField;
    qnocekid: TGuidField;
    qnocekcreated_at: TDateTimeField;
    qnocekcreated_by: TStringField;
    qnocekupdated_at: TDateTimeField;
    qnocekupdated_by: TStringField;
    qnocekdeleted_at: TDateTimeField;
    qnocekdeleted_by: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    cbbank: TComboBox;
    DBGridEh2: TDBGridEh;
    procedure ActBaruExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cbbankChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  function FDaf_EntryCek: TFDaf_EntryCek;


implementation

{$R *.dfm}

uses Uimportnocek, UDataModule;


var
  RealFDaf_EntryCek: TFDaf_EntryCek;

function FDaf_EntryCek: TFDaf_EntryCek;
begin
  if RealFDaf_EntryCek <> nil then
     FDaf_EntryCek:= RealFDaf_EntryCek
  else
    Application.CreateForm(TFDaf_EntryCek, Result);
end;


procedure TFDaf_EntryCek.ActBaruExecute(Sender: TObject);
begin
    if not assigned(FImportnocek) then
    FImportnocek:=TFImportnocek.create(application);
    FImportnocek.show;
end;

procedure TFDaf_EntryCek.cbbankChange(Sender: TObject);
begin
    if length(ComboBox1.Text)<>0 and length(cbbank.Text) then
    begin
      with qnocek do
      begin
        close;
        sql.clear;
        sql.add('select * from t_nocek where bank='+QuotedStr(cbbank.Text)+' and cekbg='+QuotedStr(ComboBox1.Text)+' and status=''N''');
        sql.add('order by cek_no');
        open;
      end;
  end;
end;

procedure TFDaf_EntryCek.ComboBox1Change(Sender: TObject);
begin
    if length(ComboBox1.Text)<>0 and length(cbbank.Text) then
    begin
    with qnocek do
    begin
      close;
      sql.clear;
      sql.add('select * from t_nocek where bank='+QuotedStr(cbbank.Text)+' and cekbg='+QuotedStr(ComboBox1.Text)+' and status=''N''');
      sql.add('order by cek_no');
      open;
    end;
    end;
end;

procedure TFDaf_EntryCek.FormShow(Sender: TObject);
begin
    cbbank.Clear;
    with dm.qtemp2 do
    begin
      close;
      sql.clear;
      sql.add('select bank_code from t_bank');
      open;
      first;
    end;
    while not dm.qtemp2.Eof do
    begin
       cbbank.Items.add(dm.qtemp2.fieldbyname('bank_code').asstring);
       dm.qtemp2.Next;
    end;
end;

end.
