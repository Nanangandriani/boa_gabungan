unit UList_Gudang;

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
  Data.DB, MemDS, DBAccess, Uni, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFListGudang = class(TForm)
    DBGridGudang: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DsGudang: TDataSource;
    QGudang: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure refresh;
  public
    { Public declarations }
  end;

var
  FListGudang: TFListGudang;

implementation

{$R *.dfm}

uses UNew_Gudang, UDataModule, UMainMenu, UMy_Function;

procedure TFListGudang.refresh;
begin
   with QGudang do
   begin
       close;
       sql.Clear;
       sql.Text:='select * from t_wh where deleted_at is null order by order_no,created_at ASC ';
       open;
   end;
   QGudang.Active:=False;
   QGudang.Active:=True;
   QGudang.Close;
   QGudang.Open;
end;

procedure TFListGudang.ActDelExecute(Sender: TObject);
begin
    if MessageDlg('Apakah anda yakin ingin menghapus data ini?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
        with Dm.Qtemp do
        begin
          close;
          sql.Clear;
          //sql.Text:='Delete From t_wh where code = '+QuotedStr(DBGridGudang.Fields[0].AsString);
          sql.Text:=' Update t_wh set deleted_at=:deleted_at,deleted_by=:deleted_by '+
                    ' where code='+QuotedStr(DBGridGudang.Fields[0].AsString);
          parambyname('deleted_at').AsDateTime:=Now;
          parambyname('deleted_by').AsString:=Nm;
          execsql;
        end;
        MessageDlg('Hapus Berhasil..!!',mtInformation,[MBOK],0);
        Refresh;
    end;
end;

procedure TFListGudang.ActROExecute(Sender: TObject);
begin
  DBGridGudang.StartLoadingStatus();
  try
    QGudang.Close;
    QGudang.Open;
  finally
  DBGridGudang.FinishLoadingStatus();
  end;
end;

procedure TFListGudang.ActUpdateExecute(Sender: TObject);
begin
    with FNew_gudang do
    begin
      CLear;
      Show;
      BEdit.Visible:=true;
      BSimpan.Visible:=false;
      Caption:='Update Gudang';
      with QGudang do
      begin
        Edno.Text:=QGudang.FieldByName('order_no').AsString;
        Ednm.Text:=QGudang.FieldByName('wh_name').AsString;
        Edkd.Text:=QGudang.FieldByName('wh_code').AsString;
        CbCategory.Text:=QGudang.FieldByName('category').AsString;
        CbSbu.Text:=QGudang.FieldByName('sbu_code').AsString;
        Edkode.Text:=QGudang.FieldByName('code').AsString;
        Kode_Pelanggan:=QGudang.FieldByName('customer_code').AsString;
        edNama_Pelanggan.Text:=SelectRow('SELECT customer_name from t_customer where customer_code='+QuotedStr(QGudang.FieldByName('customer_code').AsString)+'');
      end;

      Edkd.Enabled:=False;
    end;
end;

procedure TFListGudang.dxBarLargeBaruClick(Sender: TObject);
begin
  FNew_Gudang.Show;
  with FNew_gudang do
  begin
    Fnew_gudang.show;
    FNew_gudang.BSimpan.Visible:=true;
    FNew_gudang.BEdit.Visible:=false;
    FNew_gudang.Ednm.SetFocus;
    Caption:='New Gudang';
    Edkd.Enabled:=True;
  end;

end;

procedure TFListGudang.FormShow(Sender: TObject);
begin
   Refresh;
end;

initialization
  RegisterClass(TFListGudang);

end.
