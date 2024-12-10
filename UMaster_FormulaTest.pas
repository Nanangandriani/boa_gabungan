unit UMaster_FormulaTest;

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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, MemDS,
  DBAccess, Uni, MemTableDataEh, DataDriverEh, MemTableEh, frxClass, frxDBSet,
  Vcl.StdCtrls, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFMaster_FormulaTest = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBbaru1: TdxBarButton;
    dxBbaru2: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBfilterdw: TdxBarButton;
    dxBfilterparfum: TdxBarButton;
    dxBpremix: TdxBarButton;
    dxBclearfilter: TdxBarLargeButton;
    dxBterima: TdxBarButton;
    Dbgridspk_for: TDBGridEh;
    DBGridDetail: TDBGridEh;
    MemMaster_Formula: TMemTableEh;
    DsMaster_Formula: TDataSource;
    QMaster_Formula: TUniQuery;
    DsdMaster_Formula: TDataSetDriverEh;
    QMaster_detail: TUniQuery;
    DsDetail_Formula: TDataSource;
    QMaster_detail2: TUniQuery;
    DsMaster_detail2: TDataSource;
    dxBUpdate: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarSetuju: TdxBarButton;
    dxBartidaksetuju: TdxBarButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    procedure dxBarSetujuClick(Sender: TObject);
    procedure dxBartidaksetujuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
Function  FMaster_FormulaTest: TFMaster_FormulaTest;

implementation

{$R *.dfm}

uses UNew_MasterFormulaTest, UDataModule, umainmenu;
var
  realfmaster_for : TFMaster_FormulaTest;
// implementasi function
function FMaster_FormulaTest: TFMaster_FormulaTest;
begin
  if realfmaster_for <> nil then
    FMaster_FormulaTest:= realfmaster_for
  else
    Application.CreateForm(TFMaster_FormulaTest, Result);
end;

procedure TFMaster_FormulaTest.ActBaruExecute(Sender: TObject);
begin
  With FNew_MasterFormula do
  begin
    show;
    Clear;
    BSimpan.Visible:=True;
    BEdit.Visible:=False;
    Caption:='New Master Formula';
   // Autonumber;
    status:=0;
    EdTimbangChange(sender);
  end;
end;

procedure TFMaster_FormulaTest.ActDelExecute(Sender: TObject);
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

procedure TFMaster_FormulaTest.ActROExecute(Sender: TObject);
begin
  Dbgridspk_for.StartLoadingStatus();
  Dbgridspk_for.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QMaster_Formula do
    begin
      close;
      sql.clear;
      sql.Text:='select (case WHEN status=0 THEN ''PENGAJUAN'' WHEN status=1 THEN ''DISETUJUI'' else ''TIDAK DISETUJUI'''+
      ' END) AS status,a.*,b.wh_name,c.wh_name wh_nm from t_master_formula_test a INNER JOIN t_wh b on '+
      ' a.wh_code=b.wh_code INNER JOIN t_wh c on a.wh_code2=c.wh_code order by formula_no Desc ';
      ExecSQL;
    end;
    QMaster_Formula.Active:=True;
    MemMaster_Formula.Close;
    QMaster_detail.Close;
    QMaster_detail2.close;
    if MemMaster_Formula.Active=False then MemMaster_Formula.Active:=True;
    if QMaster_detail.Active=False then QMaster_detail.Active:=True;
    if QMaster_detail2.Active=False then QMaster_detail2.Active:=True;
  end else
  if loksbu<>'' then
  begin
    with QMaster_Formula do
    begin
      close;
      sql.clear;
      sql.Text:='select (case WHEN status=0 THEN ''PENGAJUAN'' WHEN status=1 THEN ''DISETUJUI'' else ''TIDAK DISETUJUI'''+
      ' END) AS status,a.*,b.wh_name,c.wh_name wh_nm from t_master_formula_test a INNER JOIN t_wh b on '+
      ' a.wh_code=b.wh_code INNER JOIN t_wh c on a.wh_code2=c.wh_code where a.sbu_code='+QuotedStr(loksbu)+''+
      ' order by formula_no Desc ';
      ExecSQL;
    end;
    QMaster_Formula.Active:=True;
    MemMaster_Formula.Close;
    QMaster_detail.Close;
    QMaster_detail2.close;
    if MemMaster_Formula.Active=False then MemMaster_Formula.Active:=True;
    if QMaster_detail.Active=False then QMaster_detail.Active:=True;
    if QMaster_detail2.Active=False then QMaster_detail2.Active:=True;
  end;
end;

procedure TFMaster_FormulaTest.ActUpdateExecute(Sender: TObject);
begin
  if Dbgridspk_for.Fields[8].AsString='DISETUJUI'  then
  begin
    Messagedlg('Tidak bisa di Update,Data sudah Disetujui',MtInformation,[Mbok],0);
    Exit;
  end;
  if Dbgridspk_for.Fields[8].AsString='TIDAK DISETUJUI'  then
  begin
    Messagedlg('Tidak bisa di Update,Data sudah Tidak Disetujui',MtInformation,[Mbok],0);
    Exit;
  end;
    if MemMaster_Formula['spk_status']='1'  then
  begin
    Messagedlg('Tidak bisa di Update,Data sudah Dipakai Untuk SPK',MtInformation,[Mbok],0);
    Exit;
  end;
  if MemMaster_Formula['spk_status']='0' then
  begin
    with FNew_MasterFormula do
    begin
      Clear;
      Show;
      Memformuladet.EmptyTable;
      Caption:='Update Master Formula';
      status:=1;
    end;
    with MemMaster_Formula do
    begin
      with FNew_MasterFormula do
      begin
        FNew_MasterFormula.Edno.Text:=MemMaster_Formula.FieldByName('formula_no').AsString;
        FNew_MasterFormula.EdShift.Text:=MemMaster_Formula.FieldByName('shift').AsString;
        FNew_MasterFormula.EdTimbang.Text:=MemMaster_Formula.FieldByName('weigh_amount').AsString;
        FNew_MasterFormula.Edperkiraan.Text:=MemMaster_Formula.FieldByName('est_prod_date').AsString;
        FNew_MasterFormula.DtTest.Text:=MemMaster_Formula.FieldByName('trial_date').AsString;
        FNew_MasterFormula.DtMulai.Text:=MemMaster_Formula.FieldByName('formula_date').AsString;
        DtPMulai.Text:=MemMaster_Formula.FieldByName('prod_start_date').AsString;
        DtPSelesai.Text:=MemMaster_Formula.FieldByName('prod_end_date').AsString;
        EdProduk.Text:=MemMaster_Formula.FieldByName('product_code').AsString;
        CbGdBaku.Text:=MemMaster_Formula.FieldByName('wh_name').AsString;
        CbGdKimia.Text:=MemMaster_Formula.FieldByName('wh_nm').AsString;
        kd_gdng:=MemMaster_Formula.FieldByName('wh_code').AsString;
        kd_gdng2:=MemMaster_Formula.FieldByName('wh_code2').AsString;
        thn:=MemMaster_Formula.FieldByName('trans_year').AsString;
      end;
    end;
    if DBGridDetail.Fields[0].AsString='' then
    begin
      FNew_MasterFormula.Memformuladet2.First;
      while not FNew_MasterFormula.Memformuladet2.Eof do
      begin
        with FNew_MasterFormula.Memformuladet2 do
        begin
          FNew_MasterFormula.Memformuladet.Insert;
          FNew_MasterFormula.Memformuladet['item_name']:=FNew_MasterFormula.Memformuladet2['item_name'];
          FNew_MasterFormula.Memformuladet['item_code']:=FNew_MasterFormula.Memformuladet2['item_code'];
          FNew_MasterFormula.Memformuladet['supplier_name']:=FNew_MasterFormula.Memformuladet2['supplier_name'];
          FNew_MasterFormula.Memformuladet['supplier_code']:=FNew_MasterFormula.Memformuladet2['supplier_code'];
          FNew_MasterFormula.Memformuladet['stock_code']:=FNew_MasterFormula.Memformuladet2['stock_code'];
          FNew_MasterFormula.Memformuladet['index']:=FNew_MasterFormula.Memformuladet2['index'];
          FNew_MasterFormula.Memformuladet['unit']:=FNew_MasterFormula.Memformuladet2['unit'];
          FNew_MasterFormula.Memformuladet['wh']:=FNew_MasterFormula.Memformuladet2['wh_name'];
          FNew_MasterFormula.Memformuladet['pack_qty']:=FNew_MasterFormula.Memformuladet2['pack_qty'];
          FNew_MasterFormula.Memformuladet['wh_code']:=FNew_MasterFormula.Memformuladet2['wh_code'];
      //    FNew_SPKFormula.Memformuladet['mc']:=FNew_SPKFormula.Memformuladet2['mc'];
          FNew_MasterFormula.Memformuladet.Post;
          FNew_MasterFormula.Memformuladet2.Next;
        end;
      end;
    end else

    QMaster_detail2.First;
    while not QMaster_detail2.Eof do
    begin
      with QMaster_detail2 do
      begin
        FNew_MasterFormula.Memformuladet.Insert;
        FNew_MasterFormula.Memformuladet['item_code']:=QMaster_detail2.FieldByName('item_stock_code').AsString;
        FNew_MasterFormula.Memformuladet['item_name']:=QMaster_detail2.FieldByName('item_name').AsString;
        FNew_MasterFormula.Memformuladet['supplier_name']:=QMaster_detail2.FieldByName('supplier_name').AsString;
        FNew_MasterFormula.Memformuladet['supplier_code']:=QMaster_detail2.FieldByName('supplier_code').AsString;
        FNew_MasterFormula.Memformuladet['stock_code']:=QMaster_detail2.FieldByName('stock_code').AsString;
        FNew_MasterFormula.Memformuladet['index']:=QMaster_detail2.FieldByName('index').AsString;
        FNew_MasterFormula.Memformuladet['unit']:=QMaster_detail2.FieldByName('unit').AsString;
        FNew_MasterFormula.Memformuladet['wh']:=QMaster_detail2.FieldByName('wh_name').AsString;
        FNew_MasterFormula.Memformuladet['wh_code']:=QMaster_detail2.FieldByName('wh_code').AsString;
        FNew_MasterFormula.Memformuladet['total_weight']:=QMaster_detail2.FieldByName('total_weight').AsString;
        FNew_MasterFormula.Memformuladet['pack_qty']:=QMaster_detail2.FieldByName('pack_qty').AsString;
        FNew_MasterFormula.Memformuladet['total_pack']:=QMaster_detail2.FieldByName('total_pack').AsString;
        FNew_MasterFormula.Memformuladet['pack_unit']:=QMaster_detail2.FieldByName('pack_unit').AsString;
        FNew_MasterFormula.Memformuladet.Post;
      end;
        QMaster_detail2.Next;
    end;
  end;
end;

procedure TFMaster_FormulaTest.dxBarSetujuClick(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test set Status=''Disetujui'' where formula_no='+QuotedStr(Dbgridspk_for.Fields[0].AsString);
    ExecSQL;
  end;
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test_det set Status=''Disetujui'' where formula_no='+QuotedStr(Dbgridspk_for.Fields[0].AsString);
    ExecSQL;
  end;
  ActROExecute(sender);
end;

procedure TFMaster_FormulaTest.dxBartidaksetujuClick(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test set Status=''Tidak Disetujui'' where formula_no='+QuotedStr(Dbgridspk_for.Fields[0].AsString);
    ExecSQL;
  end;
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test_det set Status=''Tidak Disetujui'' where formula_no='+QuotedStr(Dbgridspk_for.Fields[0].AsString);
    ExecSQL;
  end;
  ActROExecute(sender);
end;

procedure TFMaster_FormulaTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFMaster_FormulaTest.FormCreate(Sender: TObject);
begin
  realfmaster_for:=self;
end;

procedure TFMaster_FormulaTest.FormDestroy(Sender: TObject);
begin
  realfmaster_for:=nil;
end;

procedure TFMaster_FormulaTest.FormShow(Sender: TObject);
begin
//  ActROExecute(sender);
{  QMaster_Formula.Close;
  MemMaster_Formula.Close;
  QMaster_detail.Close;
  QMaster_detail2.close;}
end;

initialization
RegisterClass(TFMaster_FormulaTest);

end.
