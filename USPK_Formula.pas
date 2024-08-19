unit USPK_Formula;

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
  dxBar, dxBarExtItems, dxSkinChooserGallery, dxRibbonGallery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, cxClasses, dxRibbon, RzTabs, frxClass,
  frxDBSet, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFSPK_Formula = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarButton5: TdxBarButton;
    dxBarFontNameCombo1: TdxBarFontNameCombo;
    dxBarCombo1: TdxBarCombo;
    dxBarBaru: TdxBarLargeButton;
    QSpkFormula: TUniQuery;
    DsSpkFormula: TDataSource;
    MemSpkFormula: TMemTableEh;
    DsdSPKFormula: TDataSetDriverEh;
    QSpkFormuladet: TUniQuery;
    DsSpkFormuladet: TDataSource;
    QSpkFormuladet2: TUniQuery;
    Dbgridspk_for: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1Bar2: TdxBar;
    BPrintBonTepung: TdxBarButton;
    Rpt: TfrxReport;
    QRptSPK: TUniQuery;
    DbRptSPK: TfrxDBDataset;
    BPrintBonKimia: TdxBarButton;
    dxBarManager1Bar3: TdxBar;
    dxBeri: TdxBarButton;
    dxTerima: TdxBarButton;
    dxBarManager1Bar4: TdxBar;
    BPrintTimbangTepung: TdxBarButton;
    dxBarButton6: TdxBarButton;
    BPrintTimbangKimia: TdxBarButton;
    DsRptSPK: TDataSource;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure FormShow(Sender: TObject);
    procedure BPrintBonTepungClick(Sender: TObject);
    procedure BPrintBonKimiaClick(Sender: TObject);
    procedure Dbgridspk_forCellClick(Column: TColumnEh);
    procedure dxBeriClick(Sender: TObject);
    procedure dxTerimaClick(Sender: TObject);
    procedure BPrintTimbangTepungClick(Sender: TObject);
    procedure BPrintTimbangKimiaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FSPK_Formula: TFSPK_Formula;

implementation

{$R *.dfm}

uses UNew_SPKFormula, UDataModule, umainmenu;
var
  RealFSPK_Formula: TFSPK_Formula;
function FSPK_Formula: TFSPK_Formula;
begin
  if RealFSPK_Formula <> nil then
    FSPK_Formula:= RealFSPK_Formula
  else
    Application.CreateForm(TFSPK_Formula, Result);
end;

procedure TFSPK_Formula.Dbgridspk_forCellClick(Column: TColumnEh);
begin
  if MemSpkFormula['type']<>'In-Proses' then dxTerima.Enabled:=False else dxTerima.Enabled:=True;
  if MemSpkFormula['type']='Created' then dxBeri.Enabled:=true else dxBeri.Enabled:=False;
  if MemSpkFormula['type']='Created' then ActUpdate.Enabled:=true else ActUpdate.Enabled:=false;
end;

procedure TFSPK_Formula.BPrintBonTepungClick(Sender: TObject);
begin
  QRptSPK.Close;
  QRptSPK.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' no_spk='+QuotedStr(Dbgridspk_for.Fields[1].AsString)+' '+
              ' and category=''BAHAN BAKU''';
    FilterOptions:=[];
    Filtered:=True;
  end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonFormula.Fr3');
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='BON PERMINTAAN BAHAN TEPUNG ';
  Rpt.ShowReport();
end;

procedure TFSPK_Formula.ActBaruExecute(Sender: TObject);
begin
  with FNew_SPKFormula do
  begin
    Clear;
    Show;
    BSimpan.Visible:=true;
    BEdit.Visible:=False;
    Caption:='New SPK Formula Test';
    DtMulai.Enabled:=True;
    DtTest.Enabled:=True;
    EdTimbang.Enabled:=True;
    Edperkiraan.Enabled:=True;
    Edno.Enabled:=True;
    EdShift.Enabled:=True;
    EdMesin.Enabled:=True;
    EdNo_Formula.Enabled:=True;
    EdProduk.Enabled:=True;
    DtPMulai.Enabled:=True;
    DtPSelesai.Enabled:=True;
    DBGriddetail.Columns[10].Visible:=False;
    DBGriddetail.Columns[11].Visible:=False;
    DBGriddetail.Columns[12].Visible:=False;
  end;
end;

procedure TFSPK_Formula.ActDelExecute(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Mengahpus Data '+Dbgridspk_for.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  {  with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='update warehouse.t_item_receive3 set deleted_at=now,deleted_by='+quotedstr(nm)+'  where no_terima='+QuotedStr(DBGridPermt_Material.Fields[1].AsString);
      Execute;
    end;
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='update warehouse.t_item_receive3 set deleted_at=now,deleted_by='+quotedstr(nm)+'  where no_terima='+QuotedStr(DBGridPermt_Material.Fields[1].AsString);
      Execute;
    end;
    actroexecute(sender);
    ShowMessage('Data Berhasil di Hapus');    }
  end;
end;

procedure TFSPK_Formula.ActROExecute(Sender: TObject);
begin
 if loksbu='' then
  begin
  with QSpkFormula do
    begin
      close;
      sql.clear;
      sql.Text:=' select a.*,b.wh_name from warehouse.t_spk_formula a INNER JOIN t_wh b on a.wh_code=b.wh_code Order by a.formula_no Desc ';
      ExecSQL;
    end;
  end else
  if loksbu<>'' then
  begin
    with QSpkFormula do
    begin
      close;
      sql.clear;
      sql.Text:=' select a.*,b.wh_name from warehouse.t_spk_formula a INNER JOIN t_wh b on a.wh_code=b.wh_code where a.sbu_code='+QuotedStr(loksbu)+''+
                ' Order by a.formula_no Desc ';
      ExecSQL;
    end;
  end;
  QSpkFormula.Active:=true;
  MemSpkFormula.Close;
  QSpkFormuladet.Close;
  QSpkFormuladet2.Close;
  if MemSpkFormula.Active=false then MemSpkFormula.Active:=true;
  if QSpkFormuladet.Active=false then QSpkFormuladet.Active:=true;
  if QSpkFormuladet2.Active=false then QSpkFormuladet2.Active:=true;
  Dbgridspk_for.StartLoadingStatus();
  Dbgridspk_for.FinishLoadingStatus();

end;

procedure TFSPK_Formula.ActUpdateExecute(Sender: TObject);
begin
  with FNew_SPKFormula do
  begin
    CLear;
    Show;
  //FNew_SPKFormula.clear;
    BEdit.Visible:=true;
    BSimpan.Visible:=False;
    FNew_SPKFormula.DBGriddetail.Columns[10].Visible:=False;
    FNew_SPKFormula.DBGriddetail.Columns[11].Visible:=False;
    FNew_SPKFormula.DBGriddetail.Columns[12].Visible:=False;
    FNew_SPKFormula.Caption:='Update SPK Formula Test';
  end;
  with MemSpkFormula do
  begin
    FNew_SPKFormula.EdProduk.Text:=MemSpkFormula['product_code'];
    FNew_SPKFormula.EdMesin.Text:=MemSpkFormula['mc'];
    FNew_SPKFormula.Edno.Text:=MemSpkFormula.FieldByName('spk_no').AsString;
    FNew_SPKFormula.EdNo_Formula.Text:=MemSpkFormula.FieldByName('formula_no').AsString;
    FNew_SPKFormula.EdShift.Text:=MemSpkFormula.FieldByName('shift').AsString;
    FNew_SPKFormula.EdTimbang.Text:=MemSpkFormula.FieldByName('amount_weight').AsString;
    FNew_SPKFormula.Edperkiraan.Text:=MemSpkFormula.FieldByName('est_prod_date').AsString;
    FNew_SPKFormula.DtPMulai.Text:=MemSpkFormula.FieldByName('prod_start_date').AsString;
    FNew_SPKFormula.DtPSelesai.Text:=MemSpkFormula.FieldByName('prod_end_date').AsString;
    FNew_SPKFormula.DtTest.Text:=MemSpkFormula.FieldByName('trial_date').AsString;
    FNew_SPKFormula.DtMulai.Text:=MemSpkFormula.FieldByName('formula_date').AsString;
    FNew_SPKFormula.CBGudang.Text:=MemSpkFormula['wh_name'];
    kdgdng:=MemSpkFormula['wh_code'];
    Status:=MemSpkFormula['type'];
  end;
  if Dbgridspk_for.Fields[0].AsString='' then
  begin
    FNew_SPKFormula.Memformuladet2.First;
    while not FNew_SPKFormula.Memformuladet2.Eof do
    begin
      with FNew_SPKFormula.Memformuladet2 do
      begin
        FNew_SPKFormula.Memformuladet.Insert;
        FNew_SPKFormula.Memformuladet['nm_material']:=FNew_SPKFormula.Memformuladet2['nm_material'];
        FNew_SPKFormula.Memformuladet['kd_material']:=FNew_SPKFormula.Memformuladet2['kd_material'];
        FNew_SPKFormula.Memformuladet['nm_supplier']:=FNew_SPKFormula.Memformuladet2['nm_supplier'];
        FNew_SPKFormula.Memformuladet['kd_supplier']:=FNew_SPKFormula.Memformuladet2['kd_supplier'];
        FNew_SPKFormula.Memformuladet['kd_stok']:=FNew_SPKFormula.Memformuladet2['kd_stok'];
        FNew_SPKFormula.Memformuladet['index']:=FNew_SPKFormula.Memformuladet2['index'];
        FNew_SPKFormula.Memformuladet['satuan']:=FNew_SPKFormula.Memformuladet2['satuan'];
        FNew_SPKFormula.Memformuladet['Gudang']:=FNew_SPKFormula.Memformuladet2['Gudang'];
        FNew_SPKFormula.Memformuladet['qtyPerkemasan']:=FNew_SPKFormula.Memformuladet2['qtyperkemasan'];
        FNew_SPKFormula.Memformuladet['satuankemasan']:=FNew_SPKFormula.Memformuladet2['satuankemasan'];
        FNew_SPKFormula.Memformuladet['totalberi']:=FNew_SPKFormula.Memformuladet2['totalberi'];
        FNew_SPKFormula.Memformuladet['totalterima']:=FNew_SPKFormula.Memformuladet2['totalterima'];
        FNew_SPKFormula.Memformuladet['Gudang_transite']:=FNew_SPKFormula.Memformuladet2['Gudang'];
        FNew_SPKFormula.Memformuladet['kd_Gudangtransite']:=FNew_SPKFormula.Memformuladet2['Gudang'];
        FNew_SPKFormula.Memformuladet['Gudang']:=FNew_SPKFormula.Memformuladet2['Gudang'];
        FNew_SPKFormula.Memformuladet.Post;
        FNew_SPKFormula.Memformuladet2.Next;
      end;
    end;
  end else
  QSpkFormuladet2.First;
  while not QSpkFormuladet2.Eof do
  begin
    with QSpkFormuladet do
    begin
      FNew_SPKFormula.Memformuladet.Insert;
      FNew_SPKFormula.Memformuladet['kd_material']:=QSpkFormuladet2.FieldByName('item_stock_code').AsString;
      FNew_SPKFormula.Memformuladet['nm_material']:=QSpkFormuladet2.FieldByName('item_name').AsString;
      FNew_SPKFormula.Memformuladet['nm_supplier']:=QSpkFormuladet2.FieldByName('supplier_name').AsString;
      FNew_SPKFormula.Memformuladet['kd_supplier']:=QSpkFormuladet2.FieldByName('supplier_code').AsString;
      FNew_SPKFormula.Memformuladet['kd_stok']:=QSpkFormuladet2.FieldByName('stock_code').AsString;
      FNew_SPKFormula.Memformuladet['index']:=QSpkFormuladet2.FieldByName('index').AsString;
      FNew_SPKFormula.Memformuladet['satuan']:=QSpkFormuladet2.FieldByName('unit').AsString;
      FNew_SPKFormula.Memformuladet['gudang']:=QSpkFormuladet2.FieldByName('wh_name').AsString;
      FNew_SPKFormula.Memformuladet['totalberat']:=QSpkFormuladet2.FieldByName('total_weight').AsString;
      FNew_SPKFormula.Memformuladet['qtyPerkemasan']:=QSpkFormuladet2.FieldByName('pack_qty').AsString;
      FNew_SPKFormula.Memformuladet['satuankemasan']:=QSpkFormuladet2['pack_unit'];
      FNew_SPKFormula.Memformuladet['totalkemasan']:=QSpkFormuladet2.FieldByName('total_pack').AsString;
      FNew_SPKFormula.Memformuladet['totalberi']:=QSpkFormuladet2.FieldByName('total_give').AsString;
      FNew_SPKFormula.Memformuladet['totalterima']:=QSpkFormuladet2.FieldByName('total_receive').AsString;
      FNew_SPKFormula.Memformuladet['gudangtransit']:=QSpkFormuladet2.FieldByName('wh_code2').AsString;
      FNew_SPKFormula.Memformuladet['kd_gudang']:=QSpkFormuladet2.FieldByName('wh_code').AsString;
      FNew_SPKFormula.Memformuladet['Gudangtransit']:=QSpkFormuladet2['wh_transite'];
      FNew_SPKFormula.Memformuladet['kd_Gudangtransite']:=QSpkFormuladet2['wh_code2'];
      FNew_SPKFormula.Memformuladet.Post;
    end;
    QSpkFormuladet2.Next;
  end;
  FNew_SPKFormula.Memformuladet.First;
  while not FNew_SPKFormula.Memformuladet.Eof do
  begin
    FNew_SPKFormula.DBGriddetailColExit(sender);
    FNew_SPKFormula.Memformuladet.Next;
  end;
end;

procedure TFSPK_Formula.BPrintBonKimiaClick(Sender: TObject);
begin
  QRptSPK.Close;
  QRptSPK.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' no_spk='+QuotedStr(Dbgridspk_for.Fields[1].AsString)+' '+
              ' and category=''KIMIA''';
    FilterOptions:=[];
    Filtered:=True;
  end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BonFormula.Fr3');
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='BON PERMINTAAN BAHAN KIMIA';
  Rpt.ShowReport();
end;

procedure TFSPK_Formula.BPrintTimbangTepungClick(Sender: TObject);
begin
  QRptSPK.Close;
  QRptSPK.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' group_name=''BAHAN BAKU'''+
            ' and spk_no='+QuotedStr(MemSpkFormula['spk_no']);
    FilterOptions:=[];
    Filtered:=True;
  end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SPKTest_Tepung.Fr3');
//  TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG TEPUNG';
  Rpt.ShowReport();
end;

procedure TFSPK_Formula.BPrintTimbangKimiaClick(Sender: TObject);
begin
  QRptSPK.Close;
  QRptSPK.Open;
  with QRptSPK do
  begin
    Filtered:=False;
    Filter:=' group_name=''KIMIA'''+
            ' and spk_no='+QuotedStr(MemSpkFormula['spk_no']);
    FilterOptions:=[];
    Filtered:=True;
  end;
  QRptSPK.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SPKTest_Kimia.Fr3');
 // TfrxPictureView(Rpt.FindObject('Picture2')).Picture.loadfromfile('Report\Logo.jpg');
  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='SPK TIMBANG KIMIA';
  Rpt.ShowReport();
end;

procedure TFSPK_Formula.dxBeriClick(Sender: TObject);
begin
  with FNew_SPKFormula do
  begin
    Caption:='Update SPK Formula Test';
    Show;
    //clear;
    Memformuladet.EmptyTable;
    BEdit.Visible:=true;
    BSimpan.Visible:=False;
    DBGriddetail.Columns[10].Visible:=True;
    DBGriddetail.Columns[11].Visible:=True;
    DBGriddetail.Columns[12].Visible:=False;
    DtMulai.Enabled:=False;
    DtTest.Enabled:=False;
    EdTimbang.Enabled:=False;
    Edperkiraan.Enabled:=False;
    Edno.Enabled:=False;
    EdShift.Enabled:=False;
    EdMesin.Enabled:=False;
    EdNo_Formula.Enabled:=False;
    EdProduk.Enabled:=False;
    DtPMulai.Enabled:=False;
    DtPSelesai.Enabled:=False;
  end;
  with MemSpkFormula do
  begin
    FNew_SPKFormula.EdProduk.Text:=MemSpkFormula['product_code'];
    FNew_SPKFormula.EdMesin.Text:=MemSpkFormula['mc'];
    FNew_SPKFormula.Edno.Text:=MemSpkFormula.FieldByName('spk_no').AsString;
    FNew_SPKFormula.EdNo_Formula.Text:=MemSpkFormula.FieldByName('formula_no').AsString;
    FNew_SPKFormula.EdShift.Text:=MemSpkFormula.FieldByName('shift').AsString;
    FNew_SPKFormula.EdTimbang.Text:=MemSpkFormula.FieldByName('amount_weight').AsString;
    FNew_SPKFormula.Edperkiraan.Text:=MemSpkFormula.FieldByName('est_prod_date').AsString;
    FNew_SPKFormula.DtTest.Text:=MemSpkFormula.FieldByName('trial_date').AsString;
    FNew_SPKFormula.DtMulai.Text:=MemSpkFormula.FieldByName('formula_date').AsString;
    FNew_SPKFormula.DtPMulai.Text:=MemSpkFormula.FieldByName('prod_start_date').AsString;
    FNew_SPKFormula.DtPSelesai.Text:=MemSpkFormula.FieldByName('prod_end_date').AsString;
    FNew_SPKFormula.CBGudang.Text:=MemSpkFormula['wh_name'];
    kdgdng:=MemSpkFormula['wh_code'];
    Status:='In-Proses';
  end;
  QSpkFormuladet2.First;
  while not QSpkFormuladet2.Eof do
  begin
    with QSpkFormuladet do
    begin
      FNew_SPKFormula.Memformuladet.Insert;
      FNew_SPKFormula.Memformuladet['kd_material']:=QSpkFormuladet2.FieldByName('item_stock_code').AsString;
      FNew_SPKFormula.Memformuladet['nm_material']:=QSpkFormuladet2.FieldByName('item_name').AsString;
      FNew_SPKFormula.Memformuladet['nm_supplier']:=QSpkFormuladet2.FieldByName('supplier_name').AsString;
      FNew_SPKFormula.Memformuladet['kd_supplier']:=QSpkFormuladet2.FieldByName('supplier_code').AsString;
      FNew_SPKFormula.Memformuladet['kd_stok']:=QSpkFormuladet2.FieldByName('stock_code').AsString;
      FNew_SPKFormula.Memformuladet['index']:=QSpkFormuladet2.FieldByName('index').AsString;
      FNew_SPKFormula.Memformuladet['satuan']:=QSpkFormuladet2.FieldByName('unit').AsString;
      FNew_SPKFormula.Memformuladet['gudang']:=QSpkFormuladet2.FieldByName('wh_name').AsString;
      FNew_SPKFormula.Memformuladet['kd_gudang']:=QSpkFormuladet2.FieldByName('wh_code').AsString;
      FNew_SPKFormula.Memformuladet['totalberat']:=QSpkFormuladet2.FieldByName('total_weight').AsString;
      FNew_SPKFormula.Memformuladet['qtyPerkemasan']:=QSpkFormuladet2.FieldByName('pack_qty').AsString;
      FNew_SPKFormula.Memformuladet['satuankemasan']:=QSpkFormuladet2['pack_unit'];
      FNew_SPKFormula.Memformuladet['totalkemasan']:=QSpkFormuladet2.FieldByName('total_pack').AsString;
      FNew_SPKFormula.Memformuladet['totalberi']:=QSpkFormuladet2.FieldByName('total_weight').AsString;
      FNew_SPKFormula.Memformuladet['totalterima']:=QSpkFormuladet2.FieldByName('total_receive').AsString;
      FNew_SPKFormula.Memformuladet['gudangtransit']:=QSpkFormuladet2.FieldByName('wh_transite').AsString;
      FNew_SPKFormula.Memformuladet['kd_gudangtransite']:=QSpkFormuladet2.FieldByName('wh_code2').AsString;
     FNew_SPKFormula.Memformuladet.Post;
    end;
    QSpkFormuladet2.Next;
  end;
  FNew_SPKFormula.Memformuladet.First;
  while not FNew_SPKFormula.Memformuladet.Eof do
  begin
    FNew_SPKFormula.DBGriddetailColExit(sender);
    FNew_SPKFormula.Memformuladet.Next;
  end;
end;

procedure TFSPK_Formula.dxTerimaClick(Sender: TObject);
begin
  with FNew_SPKFormula do
  begin
    Show;
    //FNew_SPKFormula.clear;
    Memformuladet.EmptyTable;
    BEdit.Visible:=true;
    BSimpan.Visible:=False;
    DBGriddetail.Columns[10].Visible:=True;
    DBGriddetail.Columns[11].Visible:=True;
    DBGriddetail.Columns[12].Visible:=True;
    DtMulai.Enabled:=False;
    DtTest.Enabled:=False;
    EdTimbang.Enabled:=False;
    Edperkiraan.Enabled:=False;
    Edno.Enabled:=False;
    EdShift.Enabled:=False;
    EdMesin.Enabled:=False;
    EdNo_Formula.Enabled:=False;
    EdProduk.Enabled:=False;
    DtPMulai.Enabled:=False;
    DtPSelesai.Enabled:=False;
    with MemSpkFormula do
    begin
      FNew_SPKFormula.EdProduk.Text:=MemSpkFormula['product_code'];
      FNew_SPKFormula.EdMesin.Text:=MemSpkFormula['mc'];
      FNew_SPKFormula.Edno.Text:=MemSpkFormula.FieldByName('spk_no').AsString;
      FNew_SPKFormula.EdNo_Formula.Text:=MemSpkFormula.FieldByName('formula_no').AsString;
      FNew_SPKFormula.EdShift.Text:=MemSpkFormula.FieldByName('shift').AsString;
      FNew_SPKFormula.EdTimbang.Text:=MemSpkFormula.FieldByName('amount_weight').AsString;
      FNew_SPKFormula.Edperkiraan.Text:=MemSpkFormula.FieldByName('est_prod_date').AsString;
      FNew_SPKFormula.DtTest.Text:=MemSpkFormula.FieldByName('trial_date').AsString;
      FNew_SPKFormula.DtMulai.Text:=MemSpkFormula.FieldByName('formula_date').AsString;
      FNew_SPKFormula.DtPMulai.Text:=MemSpkFormula.FieldByName('prod_start_date').AsString;
      FNew_SPKFormula.DtPSelesai.Text:=MemSpkFormula.FieldByName('prod_end_date').AsString;
      FNew_SPKFormula.CBGudang.Text:=MemSpkFormula['wh_name'];
      kdGdng:=MemSpkFormula['wh_code'];
      Status:='Selesai';
    end;
    QSpkFormuladet2.First;
    while not QSpkFormuladet2.Eof do
    begin
      with QSpkFormuladet do
      begin
        FNew_SPKFormula.Memformuladet.Insert;
        FNew_SPKFormula.Memformuladet['kd_material']:=QSpkFormuladet2.FieldByName('item_stock_code').AsString;
        FNew_SPKFormula.Memformuladet['nm_material']:=QSpkFormuladet2.FieldByName('item_name').AsString;
        FNew_SPKFormula.Memformuladet['nm_supplier']:=QSpkFormuladet2.FieldByName('supplier_name').AsString;
        FNew_SPKFormula.Memformuladet['kd_supplier']:=QSpkFormuladet2.FieldByName('supplier_code').AsString;
        FNew_SPKFormula.Memformuladet['kd_stok']:=QSpkFormuladet2.FieldByName('stock_code').AsString;
        FNew_SPKFormula.Memformuladet['index']:=QSpkFormuladet2.FieldByName('index').AsString;
        FNew_SPKFormula.Memformuladet['satuan']:=QSpkFormuladet2.FieldByName('unit').AsString;
        FNew_SPKFormula.Memformuladet['gudang']:=QSpkFormuladet2.FieldByName('wh_name').AsString;
        FNew_SPKFormula.Memformuladet['totalberat']:=QSpkFormuladet2.FieldByName('total_weight').AsString;
        FNew_SPKFormula.Memformuladet['qtyPerkemasan']:=QSpkFormuladet2.FieldByName('pack_qty').AsString;
        FNew_SPKFormula.Memformuladet['satuankemasan']:=QSpkFormuladet2['pack_unit'];
        FNew_SPKFormula.Memformuladet['totalkemasan']:=QSpkFormuladet2.FieldByName('total_pack').AsString;
        FNew_SPKFormula.Memformuladet['totalberi']:=QSpkFormuladet2.FieldByName('total_weight').AsString;
        FNew_SPKFormula.Memformuladet['totalterima']:=QSpkFormuladet2.FieldByName('total_give').AsString;
        FNew_SPKFormula.Memformuladet['gudangtransit']:=QSpkFormuladet2.FieldByName('wh_transite').AsString;
        FNew_SPKFormula.Memformuladet['kd_gudang']:=QSpkFormuladet2.FieldByName('wh_code').AsString;
        FNew_SPKFormula.Memformuladet['kd_gudangtransite']:=QSpkFormuladet2.FieldByName('wh_code2').AsString;
        FNew_SPKFormula.Memformuladet.Post;
      end;
      QSpkFormuladet2.Next;
    end;
    FNew_SPKFormula.Memformuladet.First;
    while not FNew_SPKFormula.Memformuladet.Eof do
    begin
      FNew_SPKFormula.DBGriddetailColExit(sender);
      FNew_SPKFormula.Memformuladet.Next;
    end;
  end;
end;

procedure TFSPK_Formula.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFSPK_Formula.FormCreate(Sender: TObject);
begin
  RealFSPK_Formula:=self;
end;

procedure TFSPK_Formula.FormDestroy(Sender: TObject);
begin
  RealFSPK_Formula:=nil;
end;

procedure TFSPK_Formula.FormShow(Sender: TObject);
begin
//  dxBarRefreshClick(sender);
end;

initialization
RegisterClass(TFSPK_Formula);
end.
