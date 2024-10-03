unit UTerima_Material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxClasses, frxClass,
  frxDBSet, DataDriverEh, MemTableEh, MemDS, DBAccess, Uni;

type
  TFTerima_Material = class(TForm)
    Qterima_material: TUniQuery;
    Memterima_material: TMemTableEh;
    Dsterima_material: TDataSource;
    DataSetDriverEh1: TDataSetDriverEh;
    QTerimaDet: TUniQuery;
    DsTerimaDet: TDataSource;
    QReportLPB: TUniQuery;
    DbLPB: TfrxDBDataset;
    RptLPB: TfrxReport;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridTerima: TDBGridEh;
    DBGridEh2: TDBGridEh;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FTerima_Material: TFTerima_Material;

implementation

{$R *.dfm}

uses UNew_TerimaMaterial, UMainMenu, UDataModule, UMy_Function;


procedure TFTerima_Material.ActBaruExecute(Sender: TObject);
begin
    with FNew_TerimaMaterial do
    begin
      FNew_TerimaMaterial.Show;
      FNew_TerimaMaterial.Clear;
      MemterimaDet.EmptyTable;
      //FNew_TerimaMaterial.Load;
      //FNew_TerimaMaterial.Loadpo;
      //FNew_TerimaMaterial.DtterimaChange(sender);
      //FNew_TerimaMaterial.Autonumber;
      FNew_TerimaMaterial.BSimpan.Visible:=true;
      FNew_TerimaMaterial.BEdit.Visible:=false;
      EdNoSPB.Enabled:=True;
      Caption:='New Terima Barang';
    end;
end;

procedure TFTerima_Material.ActRoExecute(Sender: TObject);
begin
  DBGridTerima.StartLoadingStatus();
  DBGridTerima.FinishLoadingStatus();
  if loksbu='' then
  begin
  with Qterima_material do
  begin
    close;
    sql.Clear;
    sql.Text:='select A.*, b.supplier_name,to_char(receive_date,''dd'') tgl,to_char(receive_date,''mm'') bln from purchase.t_item_receive a Left join t_supplier b '+
              ' on a.supplier_code=b.supplier_code order by a.receive_no Desc ';
    ExecSQL;
  end;
  end else
  if loksbu<>'' then
  begin
  with Qterima_material do
  begin
    close;
    sql.Clear;
    sql.Text:='select A.*, b.supplier_name,to_char(receive_date,''dd'') tgl,to_char(receive_date,''mm'') bln from purchase.t_item_receive a Left join t_supplier b '+
              ' on a.supplier_code=b.supplier_code  where a.sbu_code='+QuotedStr(kdsbu)+''+
              ' order by a.receive_no Desc ';
    ExecSQL;
  end;
  end;
  Qterima_material.Open;
  Memterima_material.Close;
  Memterima_material.Open;
  QTerimaDet.Close;
  QTerimaDet.Open;
end;

procedure TFTerima_Material.ActUpdateExecute(Sender: TObject);
begin
    FNew_TerimaMaterial.Clear;
    FNew_TerimaMaterial.Show;
    FNew_TerimaMaterial.Caption:='Update Terima Material';
    FNew_TerimaMaterial.BSimpan.Visible:=False;
    FNew_TerimaMaterial.BEdit.Visible:=True;
    FNew_TerimaMaterial.EdNoSPB.Enabled:=false;
    with Memterima_material do
    begin
       with FNew_TerimaMaterial do
       begin
          Load;
          EdPIB.Text:=Memterima_material.FieldByName('pib_no').AsString;
          EdNoSPB.Text:=Memterima_material.FieldByName('spb_no').AsString;
          EdNo.Text:=Memterima_material.FieldByName('receive_no').AsString;
          EdKet.Text:=Memterima_material.FieldByName('remark').AsString;
          Dtterima.Text:=Memterima_material.FieldByName('receive_date').AsString;
          EdSJ.Text:=Memterima_material.FieldByName('sj_no').AsString;
          Edno_Faktur.Text:=Memterima_material.FieldByName('faktur_no').AsString;
          DtFaktur.Text:=Memterima_material.FieldByName('faktur_date').AsString;
          DtFaktur2.text:=Memterima_material.FieldByName('faktur2_date').AsString;
          EdNm_supp.Text:=Memterima_material.FieldByName('supplier_name').AsString;
          Edkd_supp.Text:=Memterima_material.FieldByName('supplier_code').AsString;
          Edjatuhtempo.Text:=Memterima_material.FieldByName('due_date').AsString;
          Edkd_akun.Text:=Memterima_material.FieldByName('account_code').AsString;
          Edjenis.Text:=Memterima_material.FieldByName('purchase_type').AsString;
          Edjenispo.Text:=Memterima_material.FieldByName('po_type').AsString;
          EdValas.Text:=Memterima_material.FieldByName('valas').AsString;
          Ednilai_valas.Text:=Memterima_material.FieldByName('valas_value').AsString;
          EdSisaHutang.Value:=Memterima_material.FieldByName('debt_remaining').AsFloat;
          EdNilai_um.Value:=Memterima_material.FieldByName('um_value').AsFloat;
          Edkd_akunum.Text:=Memterima_material.FieldByName('account_um_code').AsString;
          Edsbu.Text:=Memterima_material.FieldByName('sbu_code').AsString;
       end;
    end;
    QTerimaDet.First;
    while not QTerimaDet.Eof do
    begin
        with QTerimaDet do
        begin
          FNew_TerimaMaterial.MemterimaDet.insert;
          FNew_TerimaMaterial.MemterimaDet['item_stock_code']:=QTerimaDet.FieldByName('item_stock_code').AsString;
          FNew_TerimaMaterial.MemterimaDet['kd_material']:=QTerimaDet.FieldByName('item_code').AsString;
          FNew_TerimaMaterial.MemterimaDet['nm_material']:=QTerimaDet.FieldByName('item_name').AsString;
          FNew_TerimaMaterial.MemterimaDet['kd_stok']:=QTerimaDet.FieldByName('stock_code').AsString;
          FNew_TerimaMaterial.MemterimaDet['qty']:=QTerimaDet.FieldByName('qty').AsString;
          FNew_TerimaMaterial.MemterimaDet['satuan']:=QTerimaDet.FieldByName('unit').AsString;
          //FNew_TerimaMaterial.MemterimaDet['gudang']:=QTerimaDet.FieldByName('gudang').AsString;
          FNew_TerimaMaterial.MemterimaDet['gudang']:=QTerimaDet.FieldByName('wh_name').AsString;
          FNew_TerimaMaterial.MemterimaDet['tahun']:=QTerimaDet.FieldByName('trans_year').AsString;
          FNew_TerimaMaterial.MemterimaDet['qtypo']:=QTerimaDet.FieldByName('qty_po').AsString;
          FNew_TerimaMaterial.MemterimaDet['satuanpo']:=QTerimaDet.FieldByName('unit_po').AsString;
          FNew_TerimaMaterial.MemterimaDet['qtyselisih']:=QTerimaDet.FieldByName('qty_difference').AsString;
          FNew_TerimaMaterial.MemterimaDet['Harga']:=QTerimaDet.FieldByName('price').AsString;
          FNew_TerimaMaterial.MemterimaDet['subtotal']:=QTerimaDet.FieldByName('subtotal').AsString;
          FNew_TerimaMaterial.MemterimaDet['ppn']:=QTerimaDet.FieldByName('ppn').AsString;
          FNew_TerimaMaterial.MemterimaDet['ppn_rp']:=QTerimaDet.FieldByName('ppn_rp').AsString;
          FNew_TerimaMaterial.MemterimaDet['pph']:=QTerimaDet.FieldByName('pph').AsString;
          FNew_TerimaMaterial.MemterimaDet['pph_rp']:=QTerimaDet.FieldByName('pph_rp').AsString;
          FNew_TerimaMaterial.MemterimaDet['nopo']:=QTerimaDet.FieldByName('po_no').AsString;
          FNew_TerimaMaterial.MemterimaDet['grandtotal']:=QTerimaDet.FieldByName('grandtotal').AsString;
          FNew_TerimaMaterial.MemterimaDet.Post;
          QTerimaDet.Next;
        end;
    end;
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFTerima_Material);

end.
