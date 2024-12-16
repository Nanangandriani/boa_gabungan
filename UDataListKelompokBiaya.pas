unit UDataListKelompokBiaya;

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
  TFDataListKelompokBiaya = class(TForm)
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
    QKelompokBiaya: TUniQuery;
    DsKelompokBiaya: TDataSource;
    QKelompokBiayacode: TStringField;
    QKelompokBiayainitial_code: TStringField;
    QKelompokBiayaname: TStringField;
    QKelompokBiayadescription: TMemoField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure QKelompokBiayadescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataListKelompokBiaya: TFDataListKelompokBiaya;

implementation

{$R *.dfm}

uses UDataKelompokBiaya, UDataModule;

procedure TFDataListKelompokBiaya.ActBaruExecute(Sender: TObject);
begin
  FDataKelompokBiaya.Clear;
  FDataKelompokBiaya.Autocode;
  FDataKelompokBiaya.Edkode.Enabled:=false;
  FDataKelompokBiaya.Status:=0;
  FDataKelompokBiaya.ShowModal;
end;

procedure TFDataListKelompokBiaya.ActDelExecute(Sender: TObject);
begin
  ShowMessage('Delete');
end;

procedure TFDataListKelompokBiaya.ActROExecute(Sender: TObject);
begin
  DBGridData.StartLoadingStatus();
  try
    QKelompokBiaya.Close;
    QKelompokBiaya.Open;
  finally
  DBGridData.FinishLoadingStatus();
  end;
end;

procedure TFDataListKelompokBiaya.ActUpdateExecute(Sender: TObject);
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_cost_group" a '+
                 ' WHERE code='+QuotedSTr(QKelompokBiaya.FieldByName('code').AsString)+' '+
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
  with FDataKelompokBiaya do
  begin
    Edkode.Text:=Dm.Qtemp.FieldByName('code').AsString;
    Ednama.Text:=Dm.Qtemp.FieldByName('name').AsString;
    edKodeInisial.Text:=Dm.Qtemp.FieldByName('initial_code').AsString;
    memKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
  end;
  end;
  FDataKelompokBiaya.Edkode.Enabled:=false;
  FDataKelompokBiaya.Show;
  FDataKelompokBiaya.Status := 1;
end;

procedure TFDataListKelompokBiaya.QKelompokBiayadescriptionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QKelompokBiayadescription.AsString, 1, 255);
end;

Initialization
  RegisterClasses([TFDataListKelompokBiaya]);

end.
