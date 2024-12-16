unit USPK_Produksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxBarPainter, MemTableDataEh, Data.DB, DataDriverEh, MemTableEh, MemDS,
  DBAccess, Uni, dxBar, dxBarExtItems, dxSkinChooserGallery, dxRibbonGallery,
  cxClasses, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxRibbon, RzTabs, frxClass, frxDBSet, frxDesgn,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFSPK_Produksi = class(TForm)
    DbgridSPKProd: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    QSPKProd: TUniQuery;
    DsSPKProd: TDataSource;
    MemSPKProd: TMemTableEh;
    DsdSPKProd: TDataSetDriverEh;
    QSpkProddet: TUniQuery;
    DsSpkProddet: TDataSource;
    QSpkFormuladet2: TUniQuery;
    MemSpkProddet: TMemTableEh;
    DsdSpkProddet: TDataSetDriverEh;
    UniQuery1: TUniQuery;
    DataSource1: TDataSource;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    RzPageControl3: TRzPageControl;
    TabSPKProd: TRzTabSheet;
    TabTimbang: TRzTabSheet;
    DBGridProduksi: TDBGridEh;
    DBGridTimbang: TDBGridEh;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    DsdSPKTimbang: TDataSetDriverEh;
    DsSPKTimbang: TDataSource;
    QSPKTimbang: TUniQuery;
    MemSPKTimbang: TMemTableEh;
    DsBaku: TDataSource;
    QBaku: TUniQuery;
    DBGridKimia: TDBGridEh;
    DBGridBaku: TDBGridEh;
    DsKimia: TDataSource;
    QKemasan: TUniQuery;
    DsKemasan: TDataSource;
    QKimia: TUniQuery;
    DBGridKemasan: TDBGridEh;
    QRptSPK: TUniQuery;
    DbRptSPK: TfrxDBDataset;
    Rpt: TfrxReport;
    dxBarManager1Bar2: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    QRptSPKDetail: TUniQuery;
    DsRptSPK: TDataSource;
    DbRptSPKDet: TfrxDBDataset;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure dxbarRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarDeleteClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    subqr:string;
  end;

//var
Function  FSPK_Produksi: TFSPK_Produksi;

implementation

{$R *.dfm}

uses UNew_SPKProduksi, UDatamodule, umainmenu;
var
  realfspk_prod: TFSPK_Produksi;
// implementasi function
function fspk_produksi: TFSPK_Produksi;
begin
  if realfspk_prod <> nil then
    FSPK_Produksi:= realfspk_prod
  else
    Application.CreateForm(TFSPK_Produksi, Result);
end;

procedure TFSPK_Produksi.dxBarBaruClick(Sender: TObject);
begin
With FNew_SPKProduksi do
begin
  FNew_SPKProduksi.Show;
  //FNew_SPKProduksi.Autonumber;
//  Autonumber2;
  FNew_SPKProduksi.BSimpan.Visible:=true;
  FNew_SPKProduksi.BEdit.Visible:=false;
  FNew_SPKProduksi.MemSPkProd.EmptyTable;
  FNew_SPKProduksi.Timbang;
  Caption:='New SPK Produksi';
  end;
end;

procedure TFSPK_Produksi.dxBarButton1Click(Sender: TObject);
begin
  DM.refreshperusahaan;
  with QRptSPK do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select e.mc,e.jmlh_timbang,e.start_date,e.end_date,e.product_code,e.spk_prod_no,e.formula_no,e.notes,e.no_timbang,'+
              ' e.kd_sbu,e.tgl_input from t_spk_prod_tmbng e where e.spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
    open
  end;
  QRptSPK.First;
  while not QRptSPK.eof do
  begin
  subqr:='SELECT c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,   '+
  ' a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category,C.btl * e.jmlh_timbang AS jmlh,e.mc,e.jmlh_timbang,e.start_date,    '+
  ' e.end_date,e.product_code,e.spk_prod_no,e.formula_no,e.notes,e.kd_sbu,e.tgl_input FROM t_spk_prod_tmbng_det AS "a"  '+
  '	LEFT JOIN	t_material_stok AS b ON a.kd_material_stok=b.kd_material_stok LEFT JOIN	t_material AS "c" ON b.kd_material=c.kd_material'+
  '	LEFT JOIN t_supplier AS d ON b.kd_supplier=d.kd_supplier INNER JOIN	t_spk_prod_tmbng AS e	ON a.no_timbang=e.no_timbang where '+
  ' c.category=''BAHAN BAKU'' and a.no_timbang='+QuotedStr(QRptSPK['no_timbang'])+' GROUP BY c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,'+
  ' a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category,c.btl,e.mc,e.jmlh_timbang,e.start_date,e.end_date,  '+
  ' e.product_code,e.spk_prod_no,e.formula_no,e.notes,e.kd_sbu,e.tgl_input ORDER BY	iddetail ASC ';
  with QRptSPKDetail do
  begin
    close;
    sql.Clear;
    sql.Text:=subqr;
  end;
  {with QRptSPKDetail do
  begin
    close;
    sql.Clear;
    sql.Text:=' select c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,       '+
    ' a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category from t_spk_prod_tmbng_det A left join      '+
    ' t_material_stok B on A.kd_material_stok=B.kd_material_stok left join t_material C on B.kd_material=C.kd_material left     '+
    ' join t_supplier D on B.kd_supplier=D.kd_supplier where c.category=''BAHAN BAKU'' Group by c.nm_material,d.nm_supplier,    '+
    ' a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,'+
    ' a.satuankemasan,c.category order by a.kd_material_stok Asc ';
    Open;
  end;   }
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select no_timbang,sum(cast("replace"(index,'','',''.'') as FLOAT(1))) total from t_spk_prod_tmbng_det a INNER JOIN'+
    ' (select * from t_material_stok a inner join t_material b on a.kd_material=b.kd_material) b on a.kd_material_stok='+
    ' b.kd_material_stok where no_timbang='+QuotedStr(QRptSPK['no_timbang'])+' and b.category=''BAHAN BAKU'' GROUP BY no_timbang ';
    Open;
  end;
    QRptSPK.Next;
  end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SpkTimbang.Fr3');
    TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG TEPUNG';
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=DM.QPerusahaan['KODE_PERUSAHAAN'];
    Rpt.ShowReport();
end;

procedure TFSPK_Produksi.dxBarButton2Click(Sender: TObject);
begin
  DM.refreshperusahaan;
  with QRptSPK do
  begin
    Close;
    SQL.Clear;
    SQL.Text:=' select e.mc,e.jmlh_timbang,e.start_date,e.end_date,e.product_code,e.spk_prod_no,e.formula_no,e.notes,e.no_timbang,'+
              ' e.kd_sbu,e.tgl_input from t_spk_prod_tmbng e where e.spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
    open
  end;
  QRptSPK.First;
  while not QRptSPK.eof do
  begin
  subqr:='SELECT c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,   '+
  ' a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category,C.btl * e.jmlh_timbang AS jmlh,e.mc,e.jmlh_timbang,e.start_date,    '+
  ' e.end_date,e.product_code,e.spk_prod_no,e.formula_no,	e.notes,e.kd_sbu,e.tgl_input FROM t_spk_prod_tmbng_det AS "a"  '+
  '	LEFT JOIN	t_material_stok AS b ON a.kd_material_stok=b.kd_material_stok LEFT JOIN	t_material AS "c" ON b.kd_material=c.kd_material'+
  '	LEFT JOIN t_supplier AS d ON b.kd_supplier=d.kd_supplier INNER JOIN	t_spk_prod_tmbng AS e	ON a.no_timbang=e.no_timbang where '+
  ' c.category=''KIMIA'' and a.no_timbang='+QuotedStr(QRptSPK['no_timbang'])+' GROUP BY c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",a.satuan,a.ttlberat,a.iddetail,'+
  ' a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category,c.btl,e.mc,e.jmlh_timbang,e.start_date,e.end_date,  '+
  ' e.product_code,e.spk_prod_no,e.formula_no,e.notes,e.kd_sbu,e.tgl_input ORDER BY	iddetail ASC ';
  with QRptSPKDetail do
  begin
    close;
    sql.Clear;
    sql.Text:=subqr;
  end;
  {  QRptSPK.Close;
    QRptSPK.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
    FilterOptions:=[];
    Filtered:=True;
  end;
    QRptSPK.Open;
  with QRptSPKDetail do
  begin
    close;
    sql.Clear;
    sql.Text:='select c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",'+
              ' a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category '+
              ' from t_spk_prod_tmbng_det A '+
              ' left join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
              ' left join t_material C on B.kd_material=C.kd_material '+
              ' left join t_supplier D on B.kd_supplier=D.kd_supplier '+
              ' where c.category=''KIMIA'''+
              ' Group by c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",'+
              ' a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category '+
              ' order by a.kd_material_stok Asc ';
    ExecSQL;
  end;
    QRptSPKDetail.Open;}
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select no_timbang,sum(cast("replace"(index,'','',''.'') as FLOAT(1))) total from t_spk_prod_tmbng_det a INNER JOIN'+
    ' (select * from t_material_stok a inner join t_material b on a.kd_material=b.kd_material) b on a.kd_material_stok='+
    ' b.kd_material_stok where no_timbang='+QuotedStr(QRptSPK['no_timbang'])+' and b.category=''KIMIA'' GROUP BY no_timbang ';
    Open;
  end;
    QRptSPK.Next;
  end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SpkTimbangKimia.Fr3');
    TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG KIMIA';
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=DM.QPerusahaan['kode_perusahaan'];
   // TfrxDetailData(Rpt.FindObject('DetailData1')).Height:=1.5;
    Rpt.ShowReport();
end;

procedure TFSPK_Produksi.dxBarButton3Click(Sender: TObject);
begin
  DM.refreshperusahaan;
  QRptSPK.Close;
  QRptSPK.Open;
//  QRptSPKDetail.Close;
 // QRptSPKDetail.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
    FilterOptions:=[];
    Filtered:=True;
  end;
    QRptSPK.Open;
  with QRptSPKDetail do
  begin
    close;
    sql.Clear;
    sql.Text:='select c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",'+
              ' a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category '+
              ' from t_spk_prod_tmbng_det A '+
              ' left join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
              ' left join t_material C on B.kd_material=C.kd_material '+
              ' left join t_supplier D on B.kd_supplier=D.kd_supplier '+
              ' where c.category=''BAHAN KEMASAN'''+
              ' Group by c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,a."index",'+
              ' a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,a.satuankemasan,c.category '+
              ' order by a.kd_material_stok Asc ';
    ExecSQL;
  end;
    QRptSPKDetail.Open;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SpkTimbang.Fr3');
    TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG KEMASAN';
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=DM.QPerusahaan['kode_perusahaan'];
    Rpt.ShowReport();
end;

procedure TFSPK_Produksi.dxBarButton4Click(Sender: TObject);
begin
{  QRptSPK.Close;
  QRptSPK.Open;
  QRptSPKDetail.Close;
  QRptSPKDetail.Open;
with QRptSPK do
begin
  Filtered:=False;
  Filter:=' spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
  FilterOptions:=[];
  Filtered:=True;
end;
  QRptSPK.Open;
with QRptSPKDetail do
begin
  Filtered:=False;
  Filter:=' category=''Bahan Kemasan''';
  FilterOptions:=[];
  Filtered:=True;
end;
  QRptSPKDetail.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SpkTimbang.Fr3');
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG KEMASAN';
  Rpt.DesignReport();  }
end;

procedure TFSPK_Produksi.dxBarDeleteClick(Sender: TObject);
begin
if messageDlg ('Anda Yakin Akan Menghapus Data '+DbgridSPKProd.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='Delete From t_spb where no_so='+QuotedStr(DbgridSPKProd.Fields[0].AsString);
  Execute;
end;
dxbarRefreshClick(sender);
ShowMessage('Data Berhasil di Hapus');
end;
end;

procedure TFSPK_Produksi.dxBarLargeButton1Click(Sender: TObject);
begin
with dm.qtemp do
begin
  close;
  sql.clear;
  sql.text:=' update t_spk_prod set status1=''1'' where spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
  execsql;
end;
   dxBarRefreshClick(sender);
end;

procedure TFSPK_Produksi.dxBarLargeButton2Click(Sender: TObject);
begin
with dm.qtemp do
begin
  close;
  sql.clear;
  sql.text:=' update t_spk_prod set status1=''0'' where spk_prod_no='+QuotedStr(MemSPKProd['spk_prod_no']);
  execsql;
end;
   dxBarRefreshClick(sender);
end;

procedure TFSPK_Produksi.dxbarRefreshClick(Sender: TObject);
begin
  QSPKProd.Close;
  MemSPKProd.Close;
  MemSPKProd.Close;
  QSpkProddet.Close;
  MemSpkProddet.Close;
  MemSPKTimbang.Close;
  QBaku.Close;
  QKimia.Close;
  QKemasan.Close;
if loksbu='' then
begin
with QSPKProd do
begin
  close;
  sql.clear;
  sql.Text:='  SELECT start_date,end_date, amount_carton, spk_prod_no,formula_no,order_no,notes,trans_year,trans_month,trans_day from t_spk_prod'+
            ' group by  start_date,end_date, amount_carton, spk_prod_no,formula_no,order_no,notes,trans_year,trans_month,trans_day '+
            ' order by spk_prod_no Desc';
  ExecSQL;
end;
  QSPKProd.Active:=True;
end else
if loksbu<>'' then
begin
with QSPKProd do
begin
  close;
  sql.clear;
  sql.Text:=' SELECT start_date,end_date, amount_carton, spk_prod_no,formula_no,order_no,notes,trans_year,trans_month,trans_day from t_spk_prod'+
            ' where kd_sbu='+QuotedStr(loksbu)+''+
            ' group by  start_date,end_date, amount_carton, spk_prod_no,formula_no,order_no,notes,trans_year,trans_month,trans_day '+
            ' order by spk_prod_no Desc';
  ExecSQL;
end;
  QSPKProd.Active:=True;
end;
  if MemSPKProd.Active=False then MemSPKProd.Active:=True;
  if QSpkProddet.Active=False then QSpkProddet.Active:=True;
  if MemSpkProddet.Active=False then MemSpkProddet.Active:=True;
  if MemSPKTimbang.Active=False then MemSPKTimbang.Active:=True;
  if QBaku.Active=False then QBaku.Active:=True;
  if QKimia.Active=False then QKimia.Active:=True;
  if QKemasan.Active=False then QKemasan.Active:=True;
  DbgridSPKProd.StartLoadingStatus();
  DbgridSPKProd.FinishLoadingStatus();
end;

procedure TFSPK_Produksi.dxBarUpdateClick(Sender: TObject);
begin
  FNew_SPKProduksi.Show;
  FNew_SPKProduksi.BSimpan.Visible:=False;
  FNew_SPKProduksi.BEdit.Visible:=True;
  FNew_SPKProduksi.MemSPkProd.EmptyTable;
  FNew_SPKProduksi.Caption:='Update SPK Produksi';
with MemSPKProd do
begin
  FNew_SPKProduksi.Edno_spk.Text:=MemSPKProd['spk_prod_no'];
  FNew_SPKProduksi.EdNo_spktemp.Text:=MemSPKProd['spk_prod_no'];
  FNew_SPKProduksi.EdNoFormula.Text:=MemSPKProd['formula_no'];
  FNew_SPKProduksi.DtMulai.Text:=MemSPKProd['start_date'];
  FNew_SPKProduksi.DtSelasai.Text:=MemSPKProd['end_date'];
  FNew_SPKProduksi.ednourut.text:=MemSPKProd['order_no'];
  FNew_SPKProduksi.EdNotes.Text:=MemSPKProd['notes'];
end;
MemSpkProddet.First;
while not MemSpkProddet.Eof do
begin
  FNew_SPKProduksi.MemSPkProd.Insert;
  FNew_SPKProduksi.MemSPkProd['Regu']:=MemSpkProddet['shift'];
  FNew_SPKProduksi.MemSPkProd['Produk']:=MemSpkProddet['product_code'];
  FNew_SPKProduksi.MemSPkProd['Timbang']:=MemSpkProddet['total_weight'];
  kd_produk:=MemSpkProddet['product_code'];
  FNew_SPKProduksi.MemSPkProd.Post;
  MemSpkProddet.Next;
end;
  FNew_SPKProduksi.Timbang;
end;

procedure TFSPK_Produksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFSPK_Produksi.FormCreate(Sender: TObject);
begin
realfspk_prod:=Self;
end;

procedure TFSPK_Produksi.FormDestroy(Sender: TObject);
begin
realfspk_prod:=Nil;
end;

procedure TFSPK_Produksi.FormShow(Sender: TObject);
begin
//  dxbarRefreshClick(sender);
end;

initialization
registerclass(TFSPK_Produksi);

end.
