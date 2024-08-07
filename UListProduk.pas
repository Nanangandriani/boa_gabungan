unit UListProduk;

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
  TFListProduk = class(TForm)
    DBGridProduk: TDBGridEh;
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
    DsProduk: TDataSource;
    QProduk: TUniQuery;
    procedure dxBarLargeBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridProdukDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refresh;
  end;

var
  FListProduk: TFListProduk;

implementation

{$R *.dfm}

uses Unew_Produk, UDataModule;

procedure TFListProduk.refresh;
begin
  DBGridProduk.StartLoadingStatus();
  try
    QProduk.Close;
    QProduk.Open;
  finally
  DBGridProduk.FinishLoadingStatus();
  end;
end;

procedure TFListProduk.DBGridProdukDblClick(Sender: TObject);
begin
  dxBarUpdateClick(sender);
end;

procedure TFListProduk.dxBarDeleteClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridProduk.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_produk where no_so='+QuotedStr(DBGridProduk.Fields[0].AsString);
      Execute;
    end;
    dxbarRefreshClick(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFListProduk.dxBarLargeBaruClick(Sender: TObject);
begin
  FInput_produk.Clear;
  FInput_produk.Edkd.Enabled:=true;
  FInput_produk.Caption:='New Produk';
  Status:=0;
  FInput_Produk.showmodal;
end;

procedure TFListProduk.dxBarRefreshClick(Sender: TObject);
begin
   self.Refresh;
end;

procedure TFListProduk.dxBarUpdateClick(Sender: TObject);
begin
    with FInput_Produk do
    begin
      Clear;
      Status:=1;
      Show;
      Caption:='Update Produk';
      Edkd.Enabled:=false;
    with QProduk do
    begin
      Edkd.Text:=QProduk.FieldByName('kd_produk').AsString;
      EdNm.Text:=QProduk.FieldByName('nm_produk').AsString;
      edharga_dalam_pulau.Text:=QProduk.FieldByName('harga_satuan_dalam').AsString;
      edharga_luar_pulau.Text:=QProduk.FieldByName('harga_satuan_luar').AsString;
    end;
    end;
end;

procedure TFListProduk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Dm.Koneksi.Close;
end;

procedure TFListProduk.FormShow(Sender: TObject);
begin
   dxBarRefreshClick(sender);
end;

initialization
  // Register TForm1 class
  RegisterClass(TFListProduk);

end.
