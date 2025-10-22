unit UListKolektor;

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
  TFListKolektor = class(TForm)
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
    QKolektor: TUniQuery;
    DsKolektor: TDataSource;
    QKolektorcode: TStringField;
    QKolektorname: TStringField;
    QKolektornik_employee: TStringField;
    QKolektorphone_number: TStringField;
    QKolektoraddress: TMemoField;
    QKolektorcode_kares: TStringField;
    QKolektorname_kares: TStringField;
    QKolektorcode_regency: TStringField;
    QKolektorname_regency: TStringField;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    Status : integer;
    { Public declarations }
  end;

var
  FListKolektor: TFListKolektor;

implementation

{$R *.dfm}

uses UDataKolektor, UDataModule, UMainMenu, UHomeLogin;

procedure TFListKolektor.ActBaruExecute(Sender: TObject);
begin
    FDataKolektor.Clear;
    FDataKolektor.Autocode;
    FDataKolektor.Edkode.Enabled:=false;
    FDataKolektor.Status:=0;
    FDataKolektor.ShowModal;
end;

procedure TFListKolektor.ActDelExecute(Sender: TObject);
begin
if MessageDlg('Apakah anda yakin ingin hapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_collector"  SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(Nm)+'  '+
                    ' WHERE code='+QuotedSTr(Qkolektor.FieldByName('code').AsString);
          ExecSQL;
        end;

        MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
        ActROExecute(sender);
        Dm.Koneksi.Commit;
        Refresh;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
  end;
end;

procedure TFListKolektor.ActROExecute(Sender: TObject);
begin
  DBGridData.StartLoadingStatus();
  try
    QKolektor.Close;
    QKolektor.Open;
  finally
  DBGridData.FinishLoadingStatus();
  end;
end;

procedure TFListKolektor.ActUpdateExecute(Sender: TObject);
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_collector" a '+
                 ' WHERE code='+QuotedSTr(Qkolektor.FieldByName('code').AsString)+' '+
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
  with FDataKolektor do
  begin
    Edkode.Text:=Dm.Qtemp.FieldByName('code').AsString;
    Ednama.Text:=Dm.Qtemp.FieldByName('name').AsString;
    edNikKaryawan.Text:=Dm.Qtemp.FieldByName('nik_employee').AsString;
    EdNoTelp.Text:=Dm.Qtemp.FieldByName('phone_number').AsString;
    MemAlamat.Text:=Dm.Qtemp.FieldByName('address').AsString;
    edKodeKares.Text:=Dm.Qtemp.FieldByName('code_kares').AsString;
    edKodeKab.Text:=Dm.Qtemp.FieldByName('code_regency').AsString;
    edNamaKares.Text:=Dm.Qtemp.FieldByName('name_kares').AsString;
    edNameKab.Text:=Dm.Qtemp.FieldByName('name_regency').AsString;
  end;
  end;
  FDataKolektor.Edkode.Enabled:=false;
  FDataKolektor.Show;
  FDataKolektor.Status := 1;
end;

Initialization
  RegisterClasses([TFListKolektor]);

end.
