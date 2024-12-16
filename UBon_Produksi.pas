unit UBon_Produksi;

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
  dxBar, dxSkinChooserGallery, dxRibbonGallery, RzTabs, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon, frxClass, frxDBSet, cxCheckBox,
  cxBarEditItem, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls, RzButton,
  Vcl.Buttons, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFBon_Produksi = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridBonFormula: TDBGridEh;
    RzPageControl1: TRzPageControl;
    TabBaku: TRzTabSheet;
    DBGridBaku: TDBGridEh;
    TabKimia: TRzTabSheet;
    DBGridKimia: TDBGridEh;
    TabKemasan: TRzTabSheet;
    DBGridKemasan: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarBaru: TdxBarLargeButton;
    QBonProduksi: TUniQuery;
    DsBonProduksi: TDataSource;
    MemBonProduksi: TMemTableEh;
    DsdBonProduksi: TDataSetDriverEh;
    Qkemasan: TUniQuery;
    QBaku: TUniQuery;
    Qkimia: TUniQuery;
    DsBaku: TDataSource;
    DsKimia: TDataSource;
    DsKemasan: TDataSource;
    dxBarManager1Bar2: TdxBar;
    DxBeri: TdxBarButton;
    DxTerima: TdxBarButton;
    Rpt: TfrxReport;
    DbRptSPK: TfrxDBDataset;
    QRptSPK: TUniQuery;
    dxBarManager1Bar3: TdxBar;
    BBahan_Baku: TdxBarButton;
    BBahan_Kimia: TdxBarButton;
    BBahanKemasan: TdxBarButton;
    CkStatus: TcxBarEditItem;
    dxBarManager1Bar4: TdxBar;
    CkStatus2: TcxBarEditItem;
    Panel1: TPanel;
    DtTgl: TRzDateTimeEdit;
    Label1: TLabel;
    Bcari: TRzBitBtn;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DxBeriClick(Sender: TObject);
    procedure DxTerimaClick(Sender: TObject);
    procedure DBGridBonFormulaCellClick(Column: TColumnEh);
    procedure BBahan_BakuClick(Sender: TObject);
    procedure BBahan_KimiaClick(Sender: TObject);
    procedure BBahanKemasanClick(Sender: TObject);
    procedure CkStatus2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BcariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function  FBon_Produksi: TFBon_Produksi;

implementation

{$R *.dfm}

uses UNew_BonProduksi, umainmenu,UDataModule;
var
  realfBon_prod : TFBon_Produksi;
// implementasi function
function fBon_produksi: TFBon_Produksi;
begin
  if realfBon_prod <> nil then
    FBon_Produksi:= realfBon_prod
  else
    Application.CreateForm(TFBon_Produksi, Result);
end;

procedure TFBon_Produksi.DBGridBonFormulaCellClick(Column: TColumnEh);
begin
if MemBonProduksi['status']<>'In-Proses' then dxTerima.Enabled:=False
else dxTerima.Enabled:=True;
if MemBonProduksi['status']='Created' then dxBeri.Enabled:=true
else dxBeri.Enabled:=False;
end;

procedure TFBon_Produksi.dxBarBaruClick(Sender: TObject);
begin
with FNew_BonProduksi do
begin
  Clear;
  Show;
 // FNew_BonProduksi.Autonumber;
  FNew_BonProduksi.BEdit.Visible:=False;
  FNew_BonProduksi.BSimpan.Visible:=True;
  FNew_BonProduksi.DBGridBaku.Columns[10].Visible:=False;
  FNew_BonProduksi.DBGridBaku.Columns[11].Visible:=False;
  FNew_BonProduksi.DBGridBaku.Columns[12].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[10].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[11].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[12].Visible:=False;
  Label19.Visible:=false;
  Label20.Visible:=false;
  Label21.Visible:=false;
  Label22.Visible:=false;
  CbGudang.Visible:=false;
  CbGudang2.Visible:=false;
  statustrans:=1;
  end;
end;

procedure TFBon_Produksi.BBahanKemasanClick(Sender: TObject);
begin
with QRptSPK do
begin
  Filtered:=False;
  Filter:=' no_bon='+QuotedStr(MemBonProduksi['no_bon']) +''+
          ' and shift='+QuotedStr(MemBonProduksi['shift'])+''+
          ' and category=''BAHAN KEMASAN';
  FilterOptions:=[];
  Filtered:=True;
end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonProduksiBahanKemasan.Fr3');
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  Rpt.ShowReport();
end;

procedure TFBon_Produksi.BBahan_BakuClick(Sender: TObject);
begin
dm.refreshperusahaan;
with QRptSPK do
begin	   	   
  Filtered:=False;
  Filter:=' no_bon='+QuotedStr(MemBonProduksi['no_bon']) +''+
        //  ' and shift='+QuotedStr(MemBonProduksi['shift'])+''+
          ' and category=''BAHAN BAKU';
  FilterOptions:=[];
  Filtered:=True;
end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonProduksi.Fr3');
 // TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=dm.qperusahaan['company_name'];
  TfrxMemoView(Rpt.FindObject('Mjudul')).Memo.Text:='BON PERMINTAAN BAHAN TEPUNG';
  Rpt.ShowReport();
end;

procedure TFBon_Produksi.BBahan_KimiaClick(Sender: TObject);
begin
 DM.refreshperusahaan;
with QRptSPK do
begin
  Filtered:=False;
  Filter:=' no_bon='+QuotedStr(MemBonProduksi['no_bon']) +''+
        //  ' and shift='+QuotedStr(MemBonProduksi['shift'])+''+
          ' and category=''KIMIA';
  FilterOptions:=[];
  Filtered:=True;
end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonProduksiKimia.Fr3');
//  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  TfrxMemoView(Rpt.FindObject('mpt')).Memo.Text:=dm.qperusahaan['company_name'];
 // TfrxMemoView(Rpt.FindObject('Mjudul')).Memo.Text:='BON PERMINTAAN BAHAN KIMIA';
  Rpt.ShowReport();
end;

procedure TFBon_Produksi.CkStatus2Change(Sender: TObject);
begin
if CkStatus2.EditValue='true' then
begin
  with MemBonProduksi do
  begin
    Filtered:=false;
    Filter:='status=''In-Proses''';
    FilterOptions:=[];
    Filtered:=True;
  end;
  MemBonProduksi.Open;
end else
 // CkStatusChange(sender);
end;

procedure TFBon_Produksi.dxBarRefreshClick(Sender: TObject);
begin
DBGridBonFormula.StartLoadingStatus();
DBGridBonFormula.FinishLoadingStatus();
if loksbu='' then
begin
with QBonProduksi do
begin
  close;
  sql.clear;
  sql.Text:='Select A.* ,B.*, date_part(''MONTH'', tgl_bon)as bulan from t_spk_prod_bon A '+
            ' inner join t_spk_prod_tmbng b on A.no_timbang=B.no_timbang order by A.tgl_bon Desc ';
  ExecSQL;
end;
end else
if loksbu<>'' then
begin
with QBonProduksi do
begin
  close;
  sql.clear;
  sql.Text:=' Select A.* ,B.*, date_part(''MONTH'', tgl_bon)as bulan '+
            ' from t_spk_prod_bon A  inner join t_spk_prod_tmbng b '+
            ' on A.no_timbang=B.no_timbang where a.kd_sbu='+QuotedStr(loksbu)+''+
            ' order by A.tgl_bon Desc';
  ExecSQL;
end;
end;
QBonProduksi.Open;
MemBonProduksi.Close;
QBaku.Close;
Qkimia.Close;
Qkemasan.Close;
if MemBonProduksi.Active=false then MemBonProduksi.Active:=true;
if QBaku.Active=false then QBaku.Active:=true;
if Qkimia.Active=false then Qkimia.Active:=true;
if Qkemasan.Active=false then Qkemasan.Active:=true;
end;

procedure TFBon_Produksi.dxBarUpdateClick(Sender: TObject);
begin
with FNew_BonProduksi do
begin
  statustrans:=2;
  BEdit.Visible:=True;
  BSimpan.Visible:=False;
  FNew_BonProduksi.Clear;
  FNew_BonProduksi.Show;
	CbGudang.Visible:=True;
  CbGudang2.Visible:=True;					 
  FNew_BonProduksi.Caption:='Update Bon Produksi';
  FNew_BonProduksi.BEdit.Visible:=true;
  FNew_BonProduksi.BSimpan.Visible:=false;
  FNew_BonProduksi.DBGridBaku.Columns[10].Visible:=False;
  FNew_BonProduksi.DBGridBaku.Columns[11].Visible:=False;
  FNew_BonProduksi.DBGridBaku.Columns[12].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[10].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[11].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[12].Visible:=False;
  FNew_BonProduksi.DBGridKemasan.Columns[10].Visible:=False;
  FNew_BonProduksi.DBGridKemasan.Columns[11].Visible:=False;
  FNew_BonProduksi.DBGridKemasan.Columns[12].Visible:=False;
end;
  QBaku.First;
while not QBaku.Eof do
begin
  FNew_BonProduksi.MemBaku.Insert;
  FNew_BonProduksi.MemBaku['kd_material_stok']:=QBaku.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemBaku['nm_material']:=QBaku.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemBaku['nm_supplier']:=QBaku.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_supplier']:=QBaku.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_stok']:=QBaku.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemBaku['index']:=QBaku.FieldByName('index').AsString;
  FNew_BonProduksi.MemBaku['satuan']:=QBaku.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemBaku['gudang']:=QBaku.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemBaku['ttlberat']:=QBaku.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemBaku['qtyPerkemasan']:=QBaku.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemBaku['satuankemasan']:=QBaku['satuankemasan'];
  FNew_BonProduksi.MemBaku['totalkemasan']:=QBaku.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemBaku['totalberi']:=QBaku.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemBaku['totalterima']:=QBaku.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemBaku['gudangtransit']:=QBaku.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemBaku.Post;
  QBaku.Next;
end;
Qkimia.First;
while not Qkimia.Eof do
begin
  FNew_BonProduksi.MemKimia.Insert;
  FNew_BonProduksi.MemKimia['kd_material_stok']:=Qkimia.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKimia['nm_material']:=Qkimia.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKimia['nm_supplier']:=Qkimia.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_supplier']:=Qkimia.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_stok']:=Qkimia.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKimia['index']:=Qkimia.FieldByName('index').AsString;
  FNew_BonProduksi.MemKimia['satuan']:=Qkimia.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKimia['gudang']:=Qkimia.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKimia['ttlberat']:=Qkimia.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKimia['qtyPerkemasan']:=Qkimia.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKimia['satuankemasan']:=Qkimia['satuankemasan'];
  FNew_BonProduksi.MemKimia['totalkemasan']:=Qkimia.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKimia['totalberi']:=Qkimia.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKimia['totalterima']:=Qkimia.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemKimia['gudangtransit']:=Qkimia.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKimia.Post;
  Qkimia.Next;
end;
{Qkemasan.First;
while not Qkemasan.Eof do
begin
  FNew_BonProduksi.MemKemasan.Insert;
  FNew_BonProduksi.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
  FNew_BonProduksi.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
  FNew_BonProduksi.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
  FNew_BonProduksi.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKemasan['totalberi']:=Qkemasan.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKemasan.Post;
  Qkemasan.Next;
end;}
with MemBonProduksi do
begin
  FNew_BonProduksi.Edno.Text:=MemBonProduksi['no_bon'];
  FNew_BonProduksi.EdNo_Formula.Text:=MemBonProduksi['no_formula'];
  FNew_BonProduksi.DtTanggal.Text:=MemBonProduksi['tgl_bon'];
  FNew_BonProduksi.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
  FNew_BonProduksi.EdTimbang.text:=MemBonProduksi['jmlh_timbang'];
//  FNew_BonProduksi.EdKarton.text:=MemBonProduksi['jmlh_karton'];
//  FNew_BonProduksi.Edgroup.Text:=MemBonProduksi['shift'];
  notimbang:=MemBonProduksi['no_timbang'];
  FNew_BonProduksi.Edproduk.Text:=MemBonProduksi['nm_produk'];
  FNew_BonProduksi.Edmesin.text:=MemBonProduksi['mc'];
  FNew_BonProduksi.CbSpk_Timbang.Text:=MemBonProduksi['no_timbang'];
  Status:=MemBonProduksi['status'];
  bln:=MemBonProduksi['bln'];
  thn:=MemBonProduksi['thn'];
  FNew_BonProduksi.EdTimbang2.Text:=MemBonProduksi['qtytb'];
  if MemBonProduksi['sisatb'] > 0 then FNew_BonProduksi.EdSisa.text:=MemBonProduksi['sisatb'] else FNew_BonProduksi.EdSisa.text:='0';
  if MemBonProduksi['pakaitb'] > 0 then pakaitb:=MemBonProduksi['pakaitb'] else pakaitb:='0';
end;
end;

procedure TFBon_Produksi.DxBeriClick(Sender: TObject);
begin
with FNew_BonProduksi do
begin
  statustrans:=2;
  FNew_BonProduksi.Clear;
  FNew_BonProduksi.Show;
  CbGudang.Enabled:=True;
  CbGudang2.Enabled:=True;
  FNew_BonProduksi.BEdit.Visible:=true;
  FNew_BonProduksi.BSimpan.Visible:=false;
  FNew_BonProduksi.DBGridBaku.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridBaku.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridBaku.Columns[12].Visible:=False;
  FNew_BonProduksi.DBGridKimia.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridKimia.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridKimia.Columns[12].Visible:=False;
  FNew_BonProduksi.DBGridKemasan.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridKemasan.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridKemasan.Columns[12].Visible:=False;
  Label19.Visible:=True;
  Label20.Visible:=True;
  Label21.Visible:=True;
  Label22.Visible:=True;
  CbGudang.Visible:=True;
  CbGudang2.Visible:=True;
end;
QBaku.First;
while not QBaku.Eof do
begin
  FNew_BonProduksi.MemBaku.Insert;
  FNew_BonProduksi.MemBaku['kd_material_stok']:=QBaku.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemBaku['nm_material']:=QBaku.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemBaku['nm_supplier']:=QBaku.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_supplier']:=QBaku.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_stok']:=QBaku.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemBaku['index']:=QBaku.FieldByName('index').AsString;
  FNew_BonProduksi.MemBaku['satuan']:=QBaku.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemBaku['gudang']:=QBaku.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemBaku['ttlberat']:=QBaku.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemBaku['qtyPerkemasan']:=QBaku.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemBaku['satuankemasan']:=QBaku['satuankemasan'];
  FNew_BonProduksi.MemBaku['totalkemasan']:=QBaku.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemBaku['totalberi']:=QBaku.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemBaku['totalterima']:=QBaku.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemBaku['gudangtransit']:=QBaku.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemBaku.Post;
  QBaku.Next;
end;
Qkimia.First;
while not Qkimia.Eof do
begin
  FNew_BonProduksi.MemKimia.Insert;
  FNew_BonProduksi.MemKimia['kd_material_stok']:=Qkimia.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKimia['nm_material']:=Qkimia.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKimia['nm_supplier']:=Qkimia.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_supplier']:=Qkimia.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_stok']:=Qkimia.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKimia['index']:=Qkimia.FieldByName('index').AsString;
  FNew_BonProduksi.MemKimia['satuan']:=Qkimia.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKimia['gudang']:=Qkimia.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKimia['ttlberat']:=Qkimia.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKimia['qtyPerkemasan']:=Qkimia.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKimia['satuankemasan']:=Qkimia['satuankemasan'];
  FNew_BonProduksi.MemKimia['totalkemasan']:=Qkimia.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKimia['totalberi']:=Qkimia.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKimia['totalterima']:=Qkimia.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemKimia['gudangtransit']:=Qkimia.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKimia.Post;
  Qkimia.Next;
end;
{Qkemasan.First;
while not Qkemasan.Eof do
begin
  FNew_BonProduksi.MemKemasan.Insert;
  FNew_BonProduksi.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
  FNew_BonProduksi.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
  FNew_BonProduksi.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
  FNew_BonProduksi.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKemasan['totalberi']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalterima').AsString;
  FNew_BonProduksi.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKemasan.Post;
  Qkemasan.Next;
end;  }
with MemBonProduksi do
begin
  FNew_BonProduksi.Edno.Text:=MemBonProduksi['no_bon'];
  FNew_BonProduksi.EdNo_Formula.Text:=MemBonProduksi['no_formula'];
  FNew_BonProduksi.DtTanggal.Text:=MemBonProduksi['tgl_bon'];
  FNew_BonProduksi.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
  FNew_BonProduksi.EdTimbang.text:=MemBonProduksi['jmlh_timbang'];
 // FNew_BonProduksi.EdKarton.text:=MemBonProduksi['jmlh_karton'];
//  FNew_BonProduksi.Edgroup.Text:=MemBonProduksi['shift'];
  notimbang:=MemBonProduksi['no_timbang'];
  FNew_BonProduksi.Edproduk.Text:=MemBonProduksi['nm_produk'];
  FNew_BonProduksi.Edmesin.text:=MemBonProduksi['mc'];
  FNew_BonProduksi.CbGudang.Text:=MemBonProduksi['gudang'];
  FNew_BonProduksi.CbGudang2.text:=MemBonProduksi['gudang2'];
  FNew_BonProduksi.CbSpk_Timbang.Text:=MemBonProduksi['no_timbang'];
  Status:='In-Proses';
  bln:=MemBonProduksi['bln'];
  thn:=MemBonProduksi['thn'];
  FNew_BonProduksi.EdTimbang2.Text:=MemBonProduksi['qtytb'];
  Fnew_bonproduksi.edsisa.text:='0';
  pakaitb:='0';
  //if MemBonProduksi['sisatb'] > 0 then FNew_BonProduksi.edsisa.text:=MemBonProduksi['sisatb'] else FNew_BonProduksi.edsisa.text:='0';
  //if MemBonProduksi['pakaitb'] > 0 then pakaitb:=MemBonProduksi['pakaitb'] else pakaitb:='0';
end;
end;

procedure TFBon_Produksi.DxTerimaClick(Sender: TObject);
begin
with FNew_BonProduksi do
begin
  statustrans:=2;
  Clear;
  Show;
  CbGudang.Enabled:=false;
  CbGudang2.Enabled:=false;
  FNew_BonProduksi.BEdit.Visible:=true;
  FNew_BonProduksi.BSimpan.Visible:=false;
  FNew_BonProduksi.DBGridBaku.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridBaku.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridBaku.Columns[12].Visible:=True;
  FNew_BonProduksi.DBGridKimia.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridKimia.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridKimia.Columns[12].Visible:=True;
  FNew_BonProduksi.DBGridKemasan.Columns[10].Visible:=True;
  FNew_BonProduksi.DBGridKemasan.Columns[11].Visible:=True;
  FNew_BonProduksi.DBGridKemasan.Columns[12].Visible:=True;
  Label19.Visible:=True;
  Label20.Visible:=True;
  Label21.Visible:=True;
  Label22.Visible:=True;
  CbGudang.Visible:=True;
  CbGudang2.Visible:=True;
end;

QBaku.First;
while not QBaku.Eof do
begin
  FNew_BonProduksi.MemBaku.Insert;
  FNew_BonProduksi.MemBaku['kd_material_stok']:=QBaku.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemBaku['nm_material']:=QBaku.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemBaku['nm_supplier']:=QBaku.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_supplier']:=QBaku.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemBaku['kd_stok']:=QBaku.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemBaku['index']:=QBaku.FieldByName('index').AsString;
  FNew_BonProduksi.MemBaku['satuan']:=QBaku.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemBaku['gudang']:=QBaku.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemBaku['ttlberat']:=QBaku.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemBaku['qtyPerkemasan']:=QBaku.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemBaku['satuankemasan']:=QBaku['satuankemasan'];
  FNew_BonProduksi.MemBaku['totalkemasan']:=QBaku.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemBaku['totalberi']:=QBaku.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemBaku['totalterima']:=QBaku.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemBaku['gudangtransit']:=QBaku.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemBaku.Post;
  QBaku.Next;
end;
Qkimia.First;
while not Qkimia.Eof do
begin
  FNew_BonProduksi.MemKimia.Insert;
  FNew_BonProduksi.MemKimia['kd_material_stok']:=Qkimia.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKimia['nm_material']:=Qkimia.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKimia['nm_supplier']:=Qkimia.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_supplier']:=Qkimia.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKimia['kd_stok']:=Qkimia.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKimia['index']:=Qkimia.FieldByName('index').AsString;
  FNew_BonProduksi.MemKimia['satuan']:=Qkimia.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKimia['gudang']:=Qkimia.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKimia['ttlberat']:=Qkimia.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKimia['qtyPerkemasan']:=Qkimia.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKimia['satuankemasan']:=Qkimia['satuankemasan'];
  FNew_BonProduksi.MemKimia['totalkemasan']:=Qkimia.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKimia['totalberi']:=Qkimia.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKimia['totalterima']:=Qkimia.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKimia['gudangtransit']:=Qkimia.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKimia.Post;
  Qkimia.Next;
end;
{Qkemasan.First;
while not Qkemasan.Eof do
begin
  FNew_BonProduksi.MemKemasan.Insert;
  FNew_BonProduksi.MemKemasan['kd_material_stok']:=Qkemasan.FieldByName('kd_material_stok').AsString;
  FNew_BonProduksi.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
  FNew_BonProduksi.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
  FNew_BonProduksi.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
  FNew_BonProduksi.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
  FNew_BonProduksi.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
  FNew_BonProduksi.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
  FNew_BonProduksi.MemKemasan['gudang']:=Qkemasan.FieldByName('gudang').AsString;
  FNew_BonProduksi.MemKemasan['ttlberat']:=Qkemasan.FieldByName('ttlberat').AsString;
  FNew_BonProduksi.MemKemasan['qtyPerkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
  FNew_BonProduksi.MemKemasan['satuankemasan']:=Qkemasan['satuankemasan'];
  FNew_BonProduksi.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('totalkemasan').AsString;
  FNew_BonProduksi.MemKemasan['totalberi']:=Qkemasan.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKemasan['totalterima']:=Qkemasan.FieldByName('totalberi').AsString;
  FNew_BonProduksi.MemKemasan['gudangtransit']:=Qkemasan.FieldByName('gudangtransit').AsString;
  FNew_BonProduksi.MemKemasan.Post;
  Qkemasan.Next;
end;  }
with MemBonProduksi do
begin
  FNew_BonProduksi.Edno.Text:=MemBonProduksi['no_bon'];
  FNew_BonProduksi.EdNo_Formula.Text:=MemBonProduksi['no_formula'];
  FNew_BonProduksi.DtTanggal.Text:=MemBonProduksi['tgl_bon'];
  FNew_BonProduksi.EdNo_SPk.Text:=MemBonProduksi['no_spk_prod'];
  FNew_BonProduksi.EdTimbang.text:=MemBonProduksi['jmlh_timbang'];
//  FNew_BonProduksi.EdKarton.text:=MemBonProduksi['jmlh_karton'];
 // FNew_BonProduksi.Edgroup.Text:=MemBonProduksi['shift'];
  notimbang:=MemBonProduksi['no_timbang'];
  FNew_BonProduksi.Edproduk.Text:=MemBonProduksi['nm_produk'];
  FNew_BonProduksi.Edmesin.text:=MemBonProduksi['mc'];
  FNew_BonProduksi.CbGudang.Text:=MemBonProduksi['gudang'];
  FNew_BonProduksi.CbGudang2.text:=MemBonProduksi['gudang2'];
  FNew_BonProduksi.CbSpk_Timbang.Text:=MemBonProduksi['no_timbang'];
  Status:='Selesai';
  bln:=MemBonProduksi['bln'];
  thn:=MemBonProduksi['thn'];
  FNew_BonProduksi.EdTimbang2.Text:=MemBonProduksi['qtytb'];
  Fnew_bonproduksi.edsisa.text:='0';
  pakaitb:='0';
//  if MemBonProduksi['sisatb'] > 0 then FNew_BonProduksi.edsisa.text:=MemBonProduksi['sisatb'] else FNew_BonProduksi.edsisa.text:='0';
//  if MemBonProduksi['pakaitb'] > 0 then pakaitb:=MemBonProduksi['pakaitb'] else pakaitb:='0';
end;
end;

procedure TFBon_Produksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree
end;

procedure TFBon_Produksi.FormCreate(Sender: TObject);
begin
realfBon_prod:=self;
end;

procedure TFBon_Produksi.FormDestroy(Sender: TObject);
begin
realfBon_prod:=Nil;
end;

procedure TFBon_Produksi.FormShow(Sender: TObject);
begin
//  dxBarRefreshClick(sender);
 // CkStatusChange(sender);
 BcariClick(sender);
end;

procedure TFBon_Produksi.BcariClick(Sender: TObject);
begin
if CkStatus.EditValue='false' then
begin
  with MemBonProduksi do
  begin
    Filtered:=false;
    Filter:='status=''Created'' or status=''In-Proses''';
    FilterOptions:=[];
    Filtered:=True;
  end;
  MemBonProduksi.Open;
end;
if CkStatus.EditValue='True' then
begin
if DtTgl.Text='' then
begin
  MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTgl.SetFocus;
  Exit;
end;
  with MemBonProduksi do
  begin
    Filtered:=false;
    Filter:='status=''Selesai'' and tgl_bon='+QuotedStr(FormatDateTime('yyy-mm-dd',DtTgl.date));
    FilterOptions:=[];
    Filtered:=True;
  end;
  MemBonProduksi.Open;
end;
  dxBarRefreshClick(sender);
end;

initialization
RegisterClass(TFBon_Produksi);

end.
