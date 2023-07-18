unit UListBarang;

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
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxBar, cxClasses,
  dxRibbon, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni, MemTableEh,
  DataDriverEh;

type
  TFListBarang = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    DBGridMaterial: TDBGridEh;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    DataSetDriverEh1: TDataSetDriverEh;
    dsmaterial: TDataSource;
    MemMaterial: TMemTableEh;
    QMaterial: TUniQuery;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure clear;
  end;

var
  FListBarang: TFListBarang;

implementation

{$R *.dfm}

uses UNew_Barang, UDataModule;

procedure TFListBarang.clear;
begin
   FNew_barang.Edno.Text:='';
   FNew_barang.Edkd.Text:='';
   FNew_barang.Ednm.Text:='';
   FNew_barang.EdCategory.Text:='';
   FNew_barang.Edjenis.Text:='';
   FNew_barang.Edkd_akun.Text:='';
   FNew_barang.EdNm_akun.Text:='';
end;

procedure TFListBarang.dxBarDeleteClick(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridMaterial.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
    then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_material where no_so='+QuotedStr(DBGridMaterial.Fields[0].AsString);
      Execute;
    end;
    dxbarRefreshClick(sender);
    ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFListBarang.dxBarUpdateClick(Sender: TObject);
begin
    with FNew_barang do
    begin
      Show;
      BEdit.Visible:=true;
      BSimpan.Visible:=False;
      Caption:='Update Material';
    with MemMaterial do
    begin
      Edno1.Text:=MemMaterial.FieldByName('no_urut').AsString;
      Edno.Text:=MemMaterial.FieldByName('no_material').AsString;
      EdKd.Text:=MemMaterial.FieldByName('kd_material').AsString;
      EdNm.Text:=MemMaterial.FieldByName('nm_material').AsString;
      EdCategory.Text:=MemMaterial.FieldByName('Category').AsString;
      EdSatuan.Text:=MemMaterial.FieldByName('satuan').AsString;
      Edjenis.Text:=MemMaterial.FieldByName('jenis').AsString;
      EdMerk.Text:=MemMaterial.FieldByName('merk').AsString;
      Edkd_akun.Text:=MemMaterial.FieldByName('kd_akun').AsString;
      EdNm_akun.Text:=MemMaterial.FieldByName('nama_perkiraan').AsString;
      idmaterial:=MemMaterial.FieldByName('id').AsString;

    end;
    end;
end;

procedure TFListBarang.dxBarRefreshClick(Sender: TObject);
begin
    Dm.Koneksi.Close;
    DBGridMaterial.StartLoadingStatus();
    DBGridMaterial.FinishLoadingStatus();
    MemMaterial.Close;
    if QMaterial.Active=False then QMaterial.Active:=True;
    if MemMaterial.Active=False then MemMaterial.Active:=True;
end;

procedure TFListBarang.dxBarBaruClick(Sender: TObject);
begin
  {with FNew_barang do
  begin
    Show;
    Self.clear;
    EdCategory.SetFocus;
    BSimpan.Visible:=true;
    BEdit.Visible:=False;
    Caption:='New Material';
  end;}
  FNew_barang.ShowModal;

end;

end.
