unit UListKonversi_Produk;

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
  Data.DB, MemDS, DBAccess, Uni;

type
  TFListKonvProduk = class(TForm)
    DBGridKonvProduk: TDBGridEh;
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
    DsKonversiP: TDataSource;
    QKonversiP: TUniQuery;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    procedure Load;
    Procedure Refresh;
    procedure Clear;
  end;

var
  FListKonvProduk: TFListKonvProduk;
  Urut:Integer;

implementation

{$R *.dfm}

uses UNewKonv_Produk, UDataModule;


procedure TFListKonvProduk.Autonumber;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' SELECT max(t_konversi_Produk.no_konversi)AS urut FROM t_konversi_produk';
      execsql;
    end;
    urut:=Dm.Qtemp.FieldByName('urut').AsInteger+1;
    FnewKonv_Produk.Edno.Text:=FloatToStr(urut);
end;

procedure TFListKonvProduk.load;
begin
    with FNewKonv_produk do
    begin
      EdNm.Clear;
      with Dm.Qtemp do
      begin
        close;
        sql.Text:='select * from t_Produk';
        ExecSQL;
      end;
      Dm.Qtemp.First;
      while not dm.Qtemp.Eof do
      begin
        EdNm.Items.Add(Dm.Qtemp.FieldByName('kd_produk').AsString);
        Dm.Qtemp.Next;
      end;
    end;
end;

procedure TFListKonvProduk.Refresh;
begin
  QKonversiP.Close;
  QKonversiP.Open;
end;

procedure TFListKonvProduk.Clear;
begin
    FnewKonv_Produk.EdKd.Text:='';
    FnewKonv_Produk.EdNm.Text:='';
    FnewKonv_Produk.Edqty.Text:='0';
    FnewKonv_Produk.Edsatuan.Text:='';
    FnewKonv_Produk.EdqtyKon.Text:='0';
    FnewKonv_Produk.EdKonversi.Text:='';
    FnewKonv_Produk.Edno.Text:='';
end;

procedure TFListKonvProduk.FormShow(Sender: TObject);
begin
   dxbarRefreshClick(sender);
end;

procedure TFListKonvProduk.dxBarDeleteClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridKonvProduk.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_konversi_produk where no_so='+QuotedStr(DBGridKonvProduk.Fields[0].AsString);
      Execute;
    end;
    dxbarRefreshClick(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFListKonvProduk.dxBarLargeBaruClick(Sender: TObject);
begin
   FNewKonv_produk.showmodal;
   Self.Clear;
   Self.Autonumber;
   Self.Load;
   FNewKonv_produk.Caption:='New Konversi Produk';
end;

procedure TFListKonvProduk.dxBarRefreshClick(Sender: TObject);
begin
  DBGridKonvProduk.StartLoadingStatus();
  QKonversiP.Close;
  QKonversiP.Open;
  DBGridKonvProduk.FinishLoadingStatus();
end;

initialization
  // Register TForm1 class
  RegisterClass(TFListKonvProduk);

end.
