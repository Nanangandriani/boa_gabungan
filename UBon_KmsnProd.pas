unit UBon_KmsnProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsdxBarPainter,
  MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni,
  dxBar, dxSkinChooserGallery, dxRibbonGallery, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon, frxClass, frxDBSet, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore;

type
  TFBon_Kmsn_prod = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridBonFormula: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarBaru: TdxBarLargeButton;
    DxBeri: TdxBarButton;
    DxTerima: TdxBarButton;
    QBonProduksi: TUniQuery;
    DsBonProduksi: TDataSource;
    MemBonProduksi: TMemTableEh;
    DsdBonProduksi: TDataSetDriverEh;
    Qkemasan: TUniQuery;
    DsKemasan: TDataSource;
    DBGridEh1: TDBGridEh;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DbRptSPK: TfrxDBDataset;
    Rpt: TfrxReport;
    QRptSPK: TUniQuery;
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure DxBeriClick(Sender: TObject);
    procedure DxTerimaClick(Sender: TObject);
    procedure DBGridBonFormulaCellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


Function  FBon_Kmsn_prod: TFBon_Kmsn_prod;

implementation

{$R *.dfm}

uses UNew_BonKmsnProd, umainmenu, UDataModule;
var
  realfBon_kms : TFBon_Kmsn_prod;
// implementasi function
function fBon_kmsn_prod: TFBon_Kmsn_prod;
begin
  if realfBon_kms <> nil then
    fBon_kmsn_prod:= realfBon_kms
  else
    Application.CreateForm(TFBon_Kmsn_prod, Result);
end;
procedure TFBon_Kmsn_prod.DBGridBonFormulaCellClick(Column: TColumnEh);
begin
if MemBonProduksi['status']<>'In-Proses' then dxTerima.Enabled:=False
else dxTerima.Enabled:=True;
if MemBonProduksi['status']='Created' then dxBeri.Enabled:=true
else dxBeri.Enabled:=False;
end;

procedure TFBon_Kmsn_prod.dxBarBaruClick(Sender: TObject);
begin
with FNew_BonKmsnProd do
begin
  Show;
  Clear;
  BSimpan.Visible:=true;
  BEdit.Visible:=False;
//  Autonumber;
MemKemasan2.First;
while not MemKemasan2.Eof do
begin
  MemKemasan.Insert;
  MemKemasan['kd_material_stok']:=MemKemasan2['kd_material'];
  MemKemasan['nm_material']:=MemKemasan2['nm_material'];
  MemKemasan['index']:=MemKemasan2['index'];
  MemKemasan['index2']:=MemKemasan2['index2'];
  MemKemasan['qtyperkemasan']:=MemKemasan2['qtyperkemasan'];
  MemKemasan.Post;
  MemKemasan2.Next;
end;
end;
end;

procedure TFBon_Kmsn_prod.dxBarLargeButton1Click(Sender: TObject);
begin
  dm.refreshperusahaan;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' no_bon='+QuotedStr(MemBonProduksi['no_bon']);
    FilterOptions:=[];
    Filtered:=True;
  end;
    QRptSPK.Open;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonKmsProd.Fr3');
  // TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=dm.QPerusahaan['kode_perusahaan'];
    Rpt.ShowReport();
end;

procedure TFBon_Kmsn_prod.dxBarRefreshClick(Sender: TObject);
begin
if loksbu='' then
begin
  with QBonProduksi do
  begin
    close;
    sql.Clear;
    SQL.Text:='Select * from t_spk_prod_bon_kmsn order by no_bon desc';
    ExecSQL;
  end;
end;
if loksbu<>'' then
begin
  with QBonProduksi do
  begin
    close;
    sql.Clear;
    SQL.Text:='Select * from t_spk_prod_bon_kmsn where kd_sbu='+QuotedStr(loksbu)+' order by no_bon desc';
    ExecSQL;
  end;
end;
DBGridBonFormula.StartLoadingStatus();
DBGridBonFormula.FinishLoadingStatus();
QBonProduksi.Close;
MemBonProduksi.Close;
Qkemasan.Close;
if QBonProduksi.Active=false then QBonProduksi.Active:=true;
if MemBonProduksi.Active=false then MemBonProduksi.Active:=true;
if Qkemasan.Active=false then Qkemasan.Active:=true;
end;

procedure TFBon_Kmsn_prod.dxBarUpdateClick(Sender: TObject);
begin
  with FNew_BonKmsnProd do
  begin
    FNew_BonKmsnProd.BEdit.Visible:=True;
    FNew_BonKmsnProd.BSimpan.Visible:=False;
    FNew_BonKmsnProd.Clear;
    FNew_BonKmsnProd.Show;
    FNew_BonKmsnProd.BEdit.Visible:=true;
    FNew_BonKmsnProd.BSimpan.Visible:=false;
    FNew_BonKmsnProd.DBGridKemasan.Columns[10].Visible:=False;
    FNew_BonKmsnProd.DBGridKemasan.Columns[11].Visible:=False;
    FNew_BonKmsnProd.DBGridKemasan.Columns[12].Visible:=False;
    FNew_BonKmsnProd.DBGridKemasan.Columns[10].Visible:=False;
    FNew_BonKmsnProd.DBGridKemasan.Columns[11].Visible:=False;
    FNew_BonKmsnProd.DBGridKemasan.Columns[12].Visible:=False;
    label23.Visible:=false;
    label24.Visible:=false;
    CbGudang.Visible:=false;
    with MemBonProduksi do
    begin
      FNew_BonKmsnProd.Edno.Text:=MemBonProduksi['no_bon'];
    //FNew_BonKmsnProd.EdNo_Hasil.Text:=MemBonProduksi['nohasil'];
      FNew_BonKmsnProd.DtTanggal.Text:=MemBonProduksi['tanggal'];
      FNew_BonKmsnProd.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
      FNew_BonKmsnProd.EdKarton.text:=MemBonProduksi['jmlh_karton'];
      FNew_BonKmsnProd.EdShift.text:=MemBonProduksi['shift'];
      Status:=MemBonProduksi['status'];
      CbGudang.Text:=MemBonProduksi['gudang'];
    end;
    Qkemasan.First;
    while not Qkemasan.Eof do
    begin
      FNew_BonKmsnProd.MemKemasan.Insert;
      FNew_BonKmsnProd.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
      FNew_BonKmsnProd.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
      FNew_BonKmsnProd.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
      FNew_BonKmsnProd.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
      FNew_BonKmsnProd.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
      FNew_BonKmsnProd.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
      FNew_BonKmsnProd.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
      FNew_BonKmsnProd.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
      FNew_BonKmsnProd.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
      FNew_BonKmsnProd.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
      FNew_BonKmsnProd.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
      FNew_BonKmsnProd.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
      FNew_BonKmsnProd.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
      FNew_BonKmsnProd.MemKemasan['totalberi']:=Qkemasan.FieldByName('totalberi').AsString;
      FNew_BonKmsnProd.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalterima').AsString;
      FNew_BonKmsnProd.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
      FNew_BonKmsnProd.MemKemasan['total_kb']:=Qkemasan.FieldByName('total_kb').AsString;
      FNew_BonKmsnProd.MemKemasan.Post;
      Qkemasan.Next;
    end;
  end;
end;

procedure TFBon_Kmsn_prod.DxBeriClick(Sender: TObject);
begin
with FNew_BonKmsnProd do
begin
  FNew_BonKmsnProd.BEdit.Visible:=True;
  FNew_BonKmsnProd.BSimpan.Visible:=False;
  FNew_BonKmsnProd.Clear;
  FNew_BonKmsnProd.Show;
  FNew_BonKmsnProd.BEdit.Visible:=true;
  FNew_BonKmsnProd.BSimpan.Visible:=false;
  FNew_BonKmsnProd.DBGridKemasan.Columns[10].Visible:=True;
  FNew_BonKmsnProd.DBGridKemasan.Columns[11].Visible:=True;
  FNew_BonKmsnProd.DBGridKemasan.Columns[12].Visible:=False;
  label23.Visible:=True;
  label24.Visible:=True;
  CbGudang.Visible:=True;
with MemBonProduksi do
begin
  FNew_BonKmsnProd.Edno.Text:=MemBonProduksi['no_bon'];
//  FNew_BonKmsnProd.EdNo_Hasil.Text:=MemBonProduksi['nohasil'];
  FNew_BonKmsnProd.DtTanggal.Text:=MemBonProduksi['tanggal'];
  FNew_BonKmsnProd.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
  FNew_BonKmsnProd.EdKarton.text:=MemBonProduksi['jmlh_karton'];
  FNew_BonKmsnProd.EdShift.text:=MemBonProduksi['shift'];
  Status:='In-Proses';
  CbGudang.Text:=MemBonProduksi['gudang'];
end;
Qkemasan.First;
while not Qkemasan.Eof do
begin
  FNew_BonKmsnProd.MemKemasan.Insert;
  FNew_BonKmsnProd.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
  FNew_BonKmsnProd.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
  FNew_BonKmsnProd.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
  FNew_BonKmsnProd.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
  FNew_BonKmsnProd.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
  FNew_BonKmsnProd.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
  FNew_BonKmsnProd.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
  FNew_BonKmsnProd.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
  FNew_BonKmsnProd.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
  FNew_BonKmsnProd.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonKmsnProd.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
  FNew_BonKmsnProd.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
  FNew_BonKmsnProd.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
  FNew_BonKmsnProd.MemKemasan['totalberi']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonKmsnProd.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalterima').AsString;
  FNew_BonKmsnProd.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
  FNew_BonKmsnProd.MemKemasan.Post;
  Qkemasan.Next;
end;
end;
end;

procedure TFBon_Kmsn_prod.DxTerimaClick(Sender: TObject);
begin
with FNew_BonKmsnProd do
begin
  FNew_BonKmsnProd.BEdit.Visible:=True;
  FNew_BonKmsnProd.BSimpan.Visible:=False;
  FNew_BonKmsnProd.Clear;
  FNew_BonKmsnProd.Show;
  FNew_BonKmsnProd.BEdit.Visible:=true;
  FNew_BonKmsnProd.BSimpan.Visible:=false;
  FNew_BonKmsnProd.DBGridKemasan.Columns[10].Visible:=True;
  FNew_BonKmsnProd.DBGridKemasan.Columns[11].Visible:=True;
  FNew_BonKmsnProd.DBGridKemasan.Columns[12].Visible:=True;
  label23.Visible:=True;
  label24.Visible:=True;
  CbGudang.Visible:=True;
with MemBonProduksi do
begin
  FNew_BonKmsnProd.Edno.Text:=MemBonProduksi['no_bon'];
//  FNew_BonKmsnProd.EdNo_Formula.Text:=MemBonProduksi['no_formula'];
  FNew_BonKmsnProd.DtTanggal.Text:=MemBonProduksi['tanggal'];
  FNew_BonKmsnProd.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
  FNew_BonKmsnProd.EdKarton.text:=MemBonProduksi['jmlh_karton'];
  FNew_BonKmsnProd.EdShift.text:=MemBonProduksi['shift'];
  Status:='Selesai';
  CbGudang.Text:=MemBonProduksi['gudang'];
end;
Qkemasan.First;
while not Qkemasan.Eof do
begin
  FNew_BonKmsnProd.MemKemasan.Insert;
  FNew_BonKmsnProd.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
  FNew_BonKmsnProd.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
  FNew_BonKmsnProd.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
  FNew_BonKmsnProd.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
  FNew_BonKmsnProd.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
  FNew_BonKmsnProd.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
  FNew_BonKmsnProd.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
  FNew_BonKmsnProd.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
  FNew_BonKmsnProd.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
  FNew_BonKmsnProd.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonKmsnProd.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
  FNew_BonKmsnProd.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
  FNew_BonKmsnProd.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
  FNew_BonKmsnProd.MemKemasan['totalberi']:=Qkemasan.FieldByName('ttlberat').Value;
  FNew_BonKmsnProd.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalberi').Value;
  FNew_BonKmsnProd.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
  FNew_BonKmsnProd.MemKemasan.Post;
  Qkemasan.Next;
end;
end;
end;

procedure TFBon_Kmsn_prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFBon_Kmsn_prod.FormCreate(Sender: TObject);
begin
realfBon_kms:=self;
end;

procedure TFBon_Kmsn_prod.FormDestroy(Sender: TObject);
begin
realfBon_kms:=nil;
end;

procedure TFBon_Kmsn_prod.FormShow(Sender: TObject);
begin
//  dxBarRefreshClick(sender);
end;

initialization
RegisterClass(TFBon_Kmsn_prod);
end.

