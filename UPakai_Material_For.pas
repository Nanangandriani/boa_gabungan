unit UPakai_Material_For;

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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxBar, dxSkinChooserGallery,
  dxRibbonGallery, cxClasses, dxRibbon, MemTableDataEh, Data.DB, DataDriverEh,
  MemTableEh, MemDS, DBAccess, Uni, RzTabs, Vcl.ExtCtrls, frxClass, frxDBSet,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFPakai_Material_For = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarHapus: TdxBarButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarBaru: TdxBarLargeButton;
    DxBeri: TdxBarButton;
    DxTerima: TdxBarButton;
    DBGridPakai: TDBGridEh;
    QPakaiMaterial: TUniQuery;
    DsPakaiMaterial: TDataSource;
    MemPakaiMaterial: TMemTableEh;
    DsdPakaiMaterial: TDataSetDriverEh;
    QBaku: TUniQuery;
    DsBaku: TDataSource;
    RzPageControl1: TRzPageControl;
    TabBaku: TRzTabSheet;
    TabKimia: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Qkimia: TUniQuery;
    DsKimia: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarPrint: TdxBarLargeButton;
    Rpt: TfrxReport;
    DBPakai_Material: TfrxDBDataset;
    DsPakai_Materail: TDataSource;
    QRptPakai_Materail: TUniQuery;
    Timer1: TTimer;
    QRpt2: TUniQuery;
    dbpm2: TfrxDBDataset;
    DBPm3: TfrxDBDataset;
    QRpt3: TUniQuery;
    QRpt4: TUniQuery;
    DBPm4: TfrxDBDataset;
    DBPM5: TfrxDBDataset;
    QRpt5: TUniQuery;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBarRefreshClick(Sender: TObject);
    procedure dxBarUpdateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxBarPrintClick(Sender: TObject);
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

Function FPakai_Material_For: TFPakai_Material_For;
var nm_hari:string;
    ADate:TDateTime;

implementation

{$R *.dfm}

uses UNew_Pakai_Material_For, umainmenu, UDataModule;
var
  RealFPakai_Material_For: TFPakai_Material_For;
function FPakai_Material_For: TFPakai_Material_For;
begin
  if RealFPakai_Material_For <> nil then
    FPakai_Material_For:= RealFPakai_Material_For
  else
    Application.CreateForm(TFPakai_Material_For, Result);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFPakai_Material_For.ActBaruExecute(Sender: TObject);
begin
  with FNew_PakaiMatFor do
  begin
  //  Clear;
    BSimpan.Visible:=False;
    BEdit.Visible:=True;
    Show;
    Caption:='New Pemakaian Material untuk Formula';
  end;
end;

procedure TFPakai_Material_For.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Mengahpus Data '+DBGridPakai.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
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

procedure TFPakai_Material_For.ActROExecute(Sender: TObject);
begin
   DBGridPakai.StartLoadingStatus();
   DBGridPakai.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QPakaiMaterial do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from warehouse.t_item_use_for order by use_no desc ';
      ExecSQL;
    end;
     QPakaiMaterial.Open;
     MemPakaiMaterial.Close;
     MemPakaiMaterial.Open;
     QBaku.Close;
     QBaku.Open;
     Qkimia.Close;
     Qkimia.Open;
  end else
  if loksbu<>'' then
  begin
    with QPakaiMaterial do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from warehouse.t_item_use_for where sbu_code='+QuotedStr(loksbu)+''+
                ' order by use_no desc  ';
      ExecSQL;
    end;
     QPakaiMaterial.Open;
     MemPakaiMaterial.Close;
     MemPakaiMaterial.Open;
     QBaku.Close;
     QBaku.Open;
     Qkimia.Close;
     Qkimia.Open;
  end;
end;

procedure TFPakai_Material_For.ActUpdateExecute(Sender: TObject);
begin
  ADate:=DBGridPakai.Fields[3].AsDateTime;
 with FNew_PakaiMatFor do
  begin
    Clear;
    BSimpan.Visible:=False;
    BEdit.Visible:=True;
    Show;
    Caption:='Update Laporan Pemakaian Material untuk Formula';
    with MemPakaiMaterial do
    begin
      FNew_PakaiMatFor.EdNo.Text:=MemPakaiMaterial['use_no'];
      FNew_PakaiMatFor.EdNo_SPk.Text:=MemPakaiMaterial['spk_no'];
      FNew_PakaiMatFor.EdNo_Formula.Text:=MemPakaiMaterial['formula_no'];
      FNew_PakaiMatFor.EdKarton.Text:=MemPakaiMaterial['carton_qty'];
      FNew_PakaiMatFor.EdShift.Text:=MemPakaiMaterial['shift'];
      FNew_PakaiMatFor.EdMesin.Text:=MemPakaiMaterial['mc'];
      FNew_PakaiMatFor.EdProduk.Text:=MemPakaiMaterial['product_code'];
      FNew_PakaiMatFor.EdTimbang.Text:=MemPakaiMaterial['amount_weight'];
      FNew_PakaiMatFor.DtTanggal.Text:=MemPakaiMaterial['trans_date'];
      status:=MemPakaiMaterial['status'];
    end;
    QBaku.First;
    while not QBaku.Eof do
    begin
      with QBaku do
      begin
        FNew_PakaiMatFor.Membaku.Insert;
        FNew_PakaiMatFor.Membaku['kd_material_stok']:=QBaku['item_stock_code'];
        FNew_PakaiMatFor.Membaku['nm_material']:=QBaku['item_name'];
        FNew_PakaiMatFor.Membaku['kd_supplier']:=QBaku['supplier_code'];
        FNew_PakaiMatFor.Membaku['nm_supplier']:=QBaku['supplier_name'];
        FNew_PakaiMatFor.Membaku['kd_stok']:=QBaku['stock_code'];
        FNew_PakaiMatFor.Membaku['index']:=QBaku['index'];
        FNew_PakaiMatFor.Membaku['ttlberat']:=QBaku['total_weight'];
        FNew_PakaiMatFor.Membaku['satuan']:=QBaku['unit'];
        FNew_PakaiMatFor.Membaku['satuankemasan']:=QBaku['pack_unit'];
        FNew_PakaiMatFor.Membaku['qtyperkemasan']:=QBaku['pack_qty'];
        FNew_PakaiMatFor.Membaku['totalkemasan']:=QBaku['total_pack'];
        FNew_PakaiMatFor.Membaku['gudang']:=QBaku['wh_name'];
        FNew_PakaiMatFor.Membaku['totalpakai']:=QBaku['total_use'];
        FNew_PakaiMatFor.Membaku['sisa']:=QBaku['outstanding'];
        FNew_PakaiMatFor.Membaku.Post;
        QBaku.Next;
        end;
    end;
    MemKimia.EmptyTable;
    Qkimia.First;
    while not Qkimia.Eof do
    begin
      with Qkimia do
      begin
        FNew_PakaiMatFor.MemKimia.Insert;
        FNew_PakaiMatFor.MemKimia['kd_material_stok']:=Qkimia['item_stock_code'];
        FNew_PakaiMatFor.MemKimia['nm_material']:=Qkimia['item_name'];
        FNew_PakaiMatFor.MemKimia['kd_supplier']:=Qkimia['supplier_code'];
        FNew_PakaiMatFor.MemKimia['nm_supplier']:=Qkimia['supplier_name'];
        FNew_PakaiMatFor.MemKimia['kd_stok']:=Qkimia['stock_code'];
        FNew_PakaiMatFor.MemKimia['index']:=Qkimia['index'];
        FNew_PakaiMatFor.MemKimia['ttlberat']:=Qkimia['total_weight'];
        FNew_PakaiMatFor.MemKimia['satuan']:=Qkimia['unit'];
        FNew_PakaiMatFor.MemKimia['satuankemasan']:=Qkimia['pack_unit'];
        FNew_PakaiMatFor.MemKimia['qtyperkemasan']:=Qkimia['pack_qty'];
        FNew_PakaiMatFor.MemKimia['totalkemasan']:=Qkimia['total_pack'];
        FNew_PakaiMatFor.MemKimia['gudang']:=Qkimia['wh_name'];
        FNew_PakaiMatFor.MemKimia['totalpakai']:=Qkimia['total_use'];
        FNew_PakaiMatFor.MemKimia['sisa']:=Qkimia['outstanding'];
        FNew_PakaiMatFor.MemKimia.Post;
        Qkimia.Next;
      end;
    end;
  end;

end;

procedure TFPakai_Material_For.dxBarBaruClick(Sender: TObject);
begin
with FNew_PakaiMatFor do
begin
  Clear;
  Show;
  BSimpan.Visible:=true;
  BEdit.Visible:=false;
  Caption:='New Laporan Pemakaian Material untuk Formula';
end;
end;

procedure TFPakai_Material_For.dxBarPrintClick(Sender: TObject);
begin
QRptPakai_Materail.Close;
{with QRptPakai_Materail do
begin
  close;
  sql.Clear;
  sql.Text:=' SELECT kd_material,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,index,satuan,ttlpakai,category,ws,qtypk,jenis from "V_PakaiBahanFormula1" '+
             ' where no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+''+
             ' UNION '+
             ' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis from "V_PakaiBahanFormula2" '+
             ' WHERE jenis=''TEPUNG DW'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+''+
             ' UNION '+
             ' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis from "V_PakaiBahanFormula2" '+
             ' WHERE jenis=''PREMIX'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+''+
             ' UNION '+
             ' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis  from "V_PakaiBahanFormula2" '+
             ' WHERE jenis=''PARFUM'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+''+
             ' ORDER BY kd_material ASC';
  ExecSQL;
  end;
  QRptPakai_Materail.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PakaiMaterialFormula.Fr3');
//  SetMemo(Rpt,'MHari',':  '+nm_hari);
 // TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=fmainmenu.vKODEPRSH;
  Rpt.ShowReport();       }
with dm.Qtemp do
begin
 close;
 sql.Clear;
 sql.Text:=' SELECT ROW_NUMBER() OVER (ORDER BY kd_material)AS no_urut,kd_material,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,index,satuan,ttlpakai,category,ws,qtypk,jenis from "V_PakaiBahanFormula1" '+
           ' where no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+' and category=''BAHAN BAKU'''+
           ' ORDER BY kd_material Desc limit 1';
 open;
end;
with QRptPakai_Materail do
begin
 close;
 sql.Clear;
 sql.Text:=' SELECT kd_material,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,index,satuan,ttlpakai,category,ws,qtypk,jenis from "V_PakaiBahanFormula1" '+
           ' where no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+' and category=''BAHAN BAKU'''+
           ' ORDER BY kd_material ASC';
 open;
end;
with QRpt2 do
begin
 close;
 sql.Clear;
 sql.Text:=' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis from "V_PakaiBahanFormula2" '+
           ' WHERE jenis=''TEPUNG DW'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai']);
 open;
end;
with QRpt3 do
begin
 close;
 sql.Clear;
 sql.Text:=' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis from "V_PakaiBahanFormula2" '+
           ' WHERE jenis=''PARFUM'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai']);
 Open;
end;
with QRpt4 do
begin
 close;
 sql.Clear;
 sql.Text:=' SELECT kd_mat,no_pakai,tanggal,shift,mc,nm_produk,jmlh_timbang,nm_material,qty,satuan,ttl,'''',ws,ttlpakai,jenis from "V_PakaiBahanFormula2" '+
           ' WHERE jenis=''PREMIX'' AND no_pakai='+quotedstr(MemPakaiMaterial['no_pakai']);
 Open;
end;
with QRpt5 do
begin
 close;
 sql.Clear;
 sql.Text:='SELECT ROW_NUMBER() OVER (ORDER BY kd_material) + 10 AS no_urut,kd_material,no_pakai,tanggal,shift,mc,'+
 ' nm_produk,jmlh_timbang,nm_material,index,satuan,ttlpakai,category,ws,qtypk,jenis from "V_PakaiBahanFormula1"  where '+
 ' no_pakai='+quotedstr(MemPakaiMaterial['no_pakai'])+' and category=''KIMIA'''+
 ' ORDER BY kd_material ASC';
 ExecSQL;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PakaiMaterialfor.Fr3');
//  SetMemo(Rpt,'MHari',':  '+nm_hari);
 // SetMemo(rpt,'MPT',''+fmainmenu.vKODEPRSH);
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  Rpt.ShowReport();
end;

procedure TFPakai_Material_For.dxBarRefreshClick(Sender: TObject);
begin
   DBGridPakai.StartLoadingStatus();
   DBGridPakai.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QPakaiMaterial do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from warehouse.t_item_use_for order by use_no desc ';
      ExecSQL;
    end;
     QPakaiMaterial.Open;
     MemPakaiMaterial.Close;
     MemPakaiMaterial.Open;
     QBaku.Close;
     QBaku.Open;
     Qkimia.Close;
     Qkimia.Open;
  end else
  if loksbu<>'' then
  begin
    with QPakaiMaterial do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from warehouse.t_item_use_for where sbu_code='+QuotedStr(loksbu)+''+
                ' order by use_no desc  ';
      ExecSQL;
    end;
     QPakaiMaterial.Open;
     MemPakaiMaterial.Close;
     MemPakaiMaterial.Open;
     QBaku.Close;
     QBaku.Open;
     Qkimia.Close;
     Qkimia.Open;
  end;
end;

procedure TFPakai_Material_For.dxBarUpdateClick(Sender: TObject);
begin
  with FNew_PakaiMatFor do
  begin
    Clear;
    BSimpan.Visible:=False;
    BEdit.Visible:=True;
    Show;
    Caption:='Update Laporan Pemakaian Material untuk Formula';
    with MemPakaiMaterial do
    begin
      FNew_PakaiMatFor.EdNo.Text:=MemPakaiMaterial['use_no'];
      FNew_PakaiMatFor.EdNo_SPk.Text:=MemPakaiMaterial['spk_no'];
      FNew_PakaiMatFor.EdNo_Formula.Text:=MemPakaiMaterial['formula_no'];
      FNew_PakaiMatFor.EdKarton.Text:=MemPakaiMaterial['carton_qty'];
      FNew_PakaiMatFor.EdShift.Text:=MemPakaiMaterial['shift'];
      FNew_PakaiMatFor.EdMesin.Text:=MemPakaiMaterial['mc'];
      FNew_PakaiMatFor.EdProduk.Text:=MemPakaiMaterial['product_code'];
      FNew_PakaiMatFor.EdTimbang.Text:=MemPakaiMaterial['amount_weight'];
      FNew_PakaiMatFor.DtTanggal.Text:=MemPakaiMaterial['trans_date'];
      status:=MemPakaiMaterial['status'];
    end;
    QBaku.First;
    while not QBaku.Eof do
    begin
      with QBaku do
      begin
        FNew_PakaiMatFor.Membaku.Insert;
        FNew_PakaiMatFor.Membaku['kd_material_stok']:=QBaku['item_stock_code'];
        FNew_PakaiMatFor.Membaku['nm_material']:=QBaku['item_name'];
        FNew_PakaiMatFor.Membaku['kd_supplier']:=QBaku['supplier_code'];
        FNew_PakaiMatFor.Membaku['nm_supplier']:=QBaku['supplier_name'];
        FNew_PakaiMatFor.Membaku['kd_stok']:=QBaku['stock_code'];
        FNew_PakaiMatFor.Membaku['index']:=QBaku['index'];
        FNew_PakaiMatFor.Membaku['ttlberat']:=QBaku['total_weight'];
        FNew_PakaiMatFor.Membaku['satuan']:=QBaku['unit'];
        FNew_PakaiMatFor.Membaku['satuankemasan']:=QBaku['pack_unit'];
        FNew_PakaiMatFor.Membaku['qtyperkemasan']:=QBaku['pack_qty'];
        FNew_PakaiMatFor.Membaku['totalkemasan']:=QBaku['total_pack'];
        FNew_PakaiMatFor.Membaku['gudang']:=QBaku['wh_name'];
        FNew_PakaiMatFor.Membaku['totalpakai']:=QBaku['total_use'];
        FNew_PakaiMatFor.Membaku['sisa']:=QBaku['outstanding'];
        FNew_PakaiMatFor.Membaku.Post;
        QBaku.Next;
        end;
    end;
    MemKimia.EmptyTable;
    Qkimia.First;
    while not Qkimia.Eof do
    begin
      with Qkimia do
      begin
        FNew_PakaiMatFor.MemKimia.Insert;
        FNew_PakaiMatFor.MemKimia['kd_material_stok']:=Qkimia['item_stock_code'];
        FNew_PakaiMatFor.MemKimia['nm_material']:=Qkimia['item_name'];
        FNew_PakaiMatFor.MemKimia['kd_supplier']:=Qkimia['supplier_code'];
        FNew_PakaiMatFor.MemKimia['nm_supplier']:=Qkimia['supplier_name'];
        FNew_PakaiMatFor.MemKimia['kd_stok']:=Qkimia['stock_code'];
        FNew_PakaiMatFor.MemKimia['index']:=Qkimia['index'];
        FNew_PakaiMatFor.MemKimia['ttlberat']:=Qkimia['total_weight'];
        FNew_PakaiMatFor.MemKimia['satuan']:=Qkimia['unit'];
        FNew_PakaiMatFor.MemKimia['satuankemasan']:=Qkimia['pack_unit'];
        FNew_PakaiMatFor.MemKimia['qtyperkemasan']:=Qkimia['pack_qty'];
        FNew_PakaiMatFor.MemKimia['totalkemasan']:=Qkimia['total_pack'];
        FNew_PakaiMatFor.MemKimia['gudang']:=Qkimia['wh_name'];
        FNew_PakaiMatFor.MemKimia['totalpakai']:=Qkimia['total_use'];
        FNew_PakaiMatFor.MemKimia['sisa']:=Qkimia['outstanding'];
        FNew_PakaiMatFor.MemKimia.Post;
        Qkimia.Next;
      end;
    end;
  end;
end;

procedure TFPakai_Material_For.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFPakai_Material_For.FormCreate(Sender: TObject);
begin
  RealFPakai_Material_For:=self;
end;

procedure TFPakai_Material_For.FormDestroy(Sender: TObject);
begin
  RealFPakai_Material_For:=nil;
end;

procedure TFPakai_Material_For.FormShow(Sender: TObject);
begin
{  DBGridPakai.StartLoadingStatus();
  DBGridPakai.FinishLoadingStatus();
  if  QPakaiMaterial.Active=false then QPakaiMaterial.Active:=true ;
  if  MemPakaiMaterial.Active=false then MemPakaiMaterial.Active:=true;
  if  QBaku.Active=false then QBaku.Active:=true;
  if  Qkimia.Active=false then Qkimia.Active:=true; }
end;

procedure TFPakai_Material_For.Timer1Timer(Sender: TObject);
var
hari:array[1..7] of string;
begin
  hari[1]:='Minggu';
  hari[2]:='Senin';
  hari[3]:='Selasa';
  hari[4]:='Rabu';
  hari[5]:='Kamis';
  hari[6]:='Jumat';
  hari[7]:='Sabtu';
  nm_hari:=hari[DayofWeek(ADate)];
end;

initialization
RegisterClass(TFPakai_Material_For);

end.
