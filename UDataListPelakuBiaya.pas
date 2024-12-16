unit UDataListPelakuBiaya;

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
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFDataListPelakuBiaya = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridData: TDBGridEh;
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
    QPelakuBiaya: TUniQuery;
    DsPelakuBiaya: TDataSource;
    QPelakuBiayacode: TStringField;
    QPelakuBiayanik_employee: TStringField;
    QPelakuBiayaname: TStringField;
    QPelakuBiayaphone_number: TStringField;
    QPelakuBiayaaddress: TMemoField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QPelakuBiayaaddressGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataListPelakuBiaya: TFDataListPelakuBiaya;

implementation

{$R *.dfm}

uses UDataPeLakuBiaya, UDataModule;

procedure TFDataListPelakuBiaya.ActBaruExecute(Sender: TObject);
begin
  FDataPeLakuBiaya.Clear;
  FDataPeLakuBiaya.Autocode;
  FDataPeLakuBiaya.Edkode.Enabled:=false;
  FDataPeLakuBiaya.Status:=0;
  FDataPeLakuBiaya.ShowModal;
end;

procedure TFDataListPelakuBiaya.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Delete');
end;

procedure TFDataListPelakuBiaya.ActROExecute(Sender: TObject);
begin
  DBGridData.StartLoadingStatus();
  try
    QPelakuBiaya.Close;
    QPelakuBiaya.Open;
  finally
  DBGridData.FinishLoadingStatus();
  end;
end;

procedure TFDataListPelakuBiaya.ActUpdateExecute(Sender: TObject);
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_cost_actors" a '+
                 ' WHERE code='+QuotedSTr(QPelakuBiaya.FieldByName('code').AsString)+' '+
                 ' AND deleted_at is null order by code,created_at Desc ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;

  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataPeLakuBiaya do
  begin
    Edkode.Text:=Dm.Qtemp.FieldByName('code').AsString;
    Ednama.Text:=Dm.Qtemp.FieldByName('name').AsString;
    edNikKaryawan.Text:=Dm.Qtemp.FieldByName('nik_employee').AsString;
    EdNoTelp.Text:=Dm.Qtemp.FieldByName('phone_number').AsString;
    MemAlamat.Text:=Dm.Qtemp.FieldByName('address').AsString;
  end;
  end;
  FDataPeLakuBiaya.Edkode.Enabled:=false;
  FDataPeLakuBiaya.Show;
  FDataPeLakuBiaya.Status := 1;
end;

procedure TFDataListPelakuBiaya.QPelakuBiayaaddressGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QPelakuBiayaaddress.AsString, 1, 255);
end;

Initialization
  RegisterClasses([TFDataListPelakuBiaya]);

end.
