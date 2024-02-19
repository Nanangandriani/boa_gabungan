unit UPercampuran_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar,
  cxClasses, Data.DB, MemDS, DBAccess, Uni, MemTableDataEh, DataDriverEh,
  MemTableEh, frxClass, frxDBSet, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore;

type
  TFPerc_Barang = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridPermt: TDBGridEh;
    QPermt_Material: TUniQuery;
    DsPermt_material: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarBeri: TdxBarButton;
    dxBarTerima: TdxBarButton;
    QPermt_Material_det: TUniQuery;
    DBGridEh2: TDBGridEh;
    DsQPermt_Material_det: TDataSource;
    MemPermt_Material: TMemTableEh;
    DsdPermt_Material: TDataSetDriverEh;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    Rpt: TfrxReport;
    DbRptPermintaan: TfrxDBDataset;
    QRptPermintaan: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure DBGridPermtCellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure dxBarBeriClick(Sender: TObject);
    procedure dxBarTerimaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FPerc_Barang: TFPerc_Barang;

implementation

{$R *.dfm}

uses UNew_PercBarang, UDataModule, umainmenu, maenangka;//, maenangka;

var RealFPerc_Barang: TFPerc_Barang;

function FPerc_Barang: TFPerc_Barang;
begin
  if RealFPerc_Barang<> nil then FPerc_Barang:= RealFPerc_Barang
  else  Application.CreateForm(TFPerc_Barang, Result);
end;

procedure TFPerc_Barang.ActBaruExecute(Sender: TObject);
begin
  with FNew_PercBarang do
  begin
    Clear;
    Show;
  //  FNew_PercBarang.Autonumber;
    BEdit.Visible:=false;
    BSimpan.Visible:=true;
    Caption:='New Permintaan Barang Untuk Dicampur';
    Load;
  end;
end;

procedure TFPerc_Barang.ActDelExecute(Sender: TObject);
begin
 if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridPermt.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='Delete From t_permint_material where no_permintaan='+QuotedStr(DBGridPermt.Fields[0].AsString);
  Execute;
end;
ActROExecute(sender);
ShowMessage('Data Berhasil di Hapus');
end;
end;

procedure TFPerc_Barang.ActRoExecute(Sender: TObject);
begin
  DBGridPermt.StartLoadingStatus();
  DBGridPermt.FinishLoadingStatus();
  QPermt_Material.Close;
  if loksbu='' then
  begin
    QPermt_Material.Close;
    QPermt_Material.Open;
    MemPermt_Material.Close;
    MemPermt_Material.Open;
{    QPermt_Material_det.Close;
    QPermt_Material_det.Open;     }
  end;
  if loksbu<>'' then
  begin
   with QPermt_Material do
   begin
     Filtered:=False;
     Filter:=' kd_sbu='+QuotedStr(loksbu);
     FilterOptions:=[];
     Filtered:=True;
   end;
    QPermt_Material.Open;
    MemPermt_Material.Close;
    MemPermt_Material.Open;
 //   QPermt_Material_det.Close;
//    QPermt_Material_det.Open;
  end;
end;

procedure TFPerc_Barang.ActUpdateExecute(Sender: TObject);
begin
FNew_PercBarang.Clear;
FNew_PercBarang.BEdit.Visible:=True;
FNew_PercBarang.BSimpan.Visible:=False;
FNew_PercBarang.Show;
FNew_PercBarang.Load;
QPermt_Material_det.First;
FNew_PercBarang.Caption:='Update Permintaan Barang Untuk Campur';
while NOT QPermt_Material_det.Eof do
begin
FNew_PercBarang.Edno.Text:=MemPermt_Material['no_permintaan'];
FNew_PercBarang.Edjenis.Text:=MemPermt_Material['jenis'];
FNew_PercBarang.Edkd_material.Text:=MemPermt_Material['kd_material'];
FNew_PercBarang.Edtimbang.Text:=MemPermt_Material['jmlh_timbang'];
FNew_PercBarang.DtPeriode.Text:=MemPermt_Material['periode'];
FNew_PercBarang.EdStatus.Text:=MemPermt_Material['status'];
FNew_PercBarang.Edno_urut.Text:=MemPermt_Material['no_urut'];
FNew_PercBarang.st:=MemPermt_Material['no_urut'];
with FNew_PercBarang.MemMaterial do
begin
FNew_PercBarang.MemMaterial.Insert;
FNew_PercBarang.MemMaterial['nm_material']:=QPermt_Material_det['nm_material'];
FNew_PercBarang.MemMaterial['kd_stok']:=QPermt_Material_det['kd_stok'];
FNew_PercBarang.MemMaterial['kd_material']:=QPermt_Material_det['kd_material_stok'];
FNew_PercBarang.MemMaterial['qty']:=QPermt_Material_det['qty'];
FNew_PercBarang.MemMaterial['satuan']:=QPermt_Material_det['satuan'];
FNew_PercBarang.MemMaterial['gudang']:=QPermt_Material_det['gudang'];
FNew_PercBarang.MemMaterial['ket']:=QPermt_Material_det['keterangan'];
FNew_PercBarang.MemMaterial['total']:=QPermt_Material_det['total_permt'];
FNew_PercBarang.MemMaterial['total_terima']:=QPermt_Material_det['total_terima'];
FNew_PercBarang.MemMaterial.Post;
QPermt_Material_det.Next;
end;
end;
end;

procedure TFPerc_Barang.DBGridPermtCellClick(Column: TColumnEh);
begin
if MemPermt_Material['status']<>'In-Proses' then dxBarTerima.Enabled:=False
else dxBarTerima.Enabled:=True;
if MemPermt_Material['status']<>'Created' then dxbarberi.Enabled:=False
else dxBarBeri.Enabled:=True;
if MemPermt_Material['status']='Selesai' then ActUpdate.Enabled:=False
else ActUpdate.Enabled:=True;
//if MemPermt_Material['status']<>'Selesai' then dxbarberi.Enabled:=True else ActUpdate.Enabled:=False;
end;

procedure TFPerc_Barang.dxBarBeriClick(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_permt_material';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='Update t_permt_material set Status=''In-Proses'' where no_permintaan='+QuotedStr(DBGridPermt.Fields[0].AsString);
  ExecSQL;
end;
ActRoExecute(sender);
end;

procedure TFPerc_Barang.dxBarLargeButton1Click(Sender: TObject);
begin
 with QRptPermintaan do
 begin
   close;
   sql.Clear;
   sql.Text:=' select A.*,B.nm_material from t_permt_material a inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
             ' where a.no_permintaan='+QuotedStr(DBGridPermt.Fields[0].AsString);
   open;
 end;
if QRptPermintaan.FieldByName('no_permintaan').AsString<>''  then
begin
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PermintaanBarang.Fr3');
//  Tfrxmemoview(RptRekap_Persediaan.FindObject('Memo2')).Memo.Text:='Periode  : '+DtMulai.Text+' - '+DtSelesai.Text;
 // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  SetMemo(Rpt,'Mpt',''+KdSBU+'');
  //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
  Rpt.ShowReport();
end else
ShowMessage('Maaf data kosong');
end;

procedure TFPerc_Barang.dxBarTerimaClick(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_permt_material';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='Update t_permt_material set Status=''Selesai'' where no_permintaan='+QuotedStr(DBGridPermt.Fields[0].AsString);
  ExecSQL;
end;
ActRoExecute(sender);
end;

procedure TFPerc_Barang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TFPerc_Barang.FormCreate(Sender: TObject);
begin
  RealFPerc_Barang:=self;
end;

procedure TFPerc_Barang.FormDestroy(Sender: TObject);
begin
  RealFPerc_Barang:=nil;
end;

procedure TFPerc_Barang.FormShow(Sender: TObject);
begin
  //ActRoExecute(sender);
end;

end.
