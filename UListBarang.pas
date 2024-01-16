unit UListBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Mask, Vcl.DBCtrls, RzCmboBx, MemTableDataEh, DataDriverEh, MemTableEh,
  RzTabs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, dxRibbonCustomizationForm, cxClasses, dxRibbon, dxBar,
  dxBarExtItems, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, dxSkinsForm, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, frxClass,
  frxDBSet, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFlistBarang = class(TForm)
    QMaterial: TUniQuery;
    dsmaterial: TDataSource;
    MemMaterial: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    DxBarUpdate: TdxBarButton;
    DxBarRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    DBGridMaterial: TDBGridEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    Rpt: TfrxReport;
    DBBarang: TfrxDBDataset;
    Qrpt_Material: TUniQuery;
    dxBarButton1: TdxBarButton;
    procedure EdCategorySelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxBDeleteClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure DBGridMaterialCellClick(Column: TColumnEh);
    procedure ActPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FlistBarang:TFlistBarang;
var
//  FMaterial: TFMaterial;
  Urut:integer;
  Kode:string;

implementation

{$R *.dfm}

uses UMainmenu, UNew_Barang, UDataModule;
var
  RealFlistBarang: TFlistBarang;

// implementasi function
function FlistBarang: TFlistBarang;
begin
  if RealFlistBarang <> nil then
    FlistBarang := RealFlistBarang
  else
    Application.CreateForm(TFlistBarang, Result);
end;

procedure TFlistBarang.ActBaruExecute(Sender: TObject);
begin
  with FNew_barang do
  begin
    Show;
   // EdCategory.SetFocus;
    BSimpan.Visible:=true;
    //BEdit.Visible:=False;
    Caption:='New Barang';
    status_tr:=0;
  end;
end;

procedure TFlistBarang.ActDelExecute(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridMaterial.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='update t_item set deleted_at=now(),deleted_by='+QuotedStr(nm)+' where "id"='+QuotedStr(DBGridMaterial.Fields[9].AsString);
      Execute;
    end;
    ActRoExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFlistBarang.ActPrintExecute(Sender: TObject);
begin
{with FRpt_material do
begin
  show;
  cbcategory.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_category_material order by category asc';
    ExecSQL;
  end;
  DM.Qtemp.First;
  while not DM.Qtemp.eof do
  begin
    cbcategory.Items.Add(DM.Qtemp['category']);
    DM.Qtemp.Next;
  end;
end;}
end;

procedure TFlistBarang.ActRoExecute(Sender: TObject);
begin
  Dm.Koneksi.Close;
  DBGridMaterial.StartLoadingStatus();
  DBGridMaterial.FinishLoadingStatus();
  QMaterial.Close;
  MemMaterial.Close;
  if QMaterial.Active=False then QMaterial.Active:=True;
  if MemMaterial.Active=False then MemMaterial.Active:=True;
end;

procedure TFlistBarang.ActUpdateExecute(Sender: TObject);
begin
  with FNew_barang do
  begin
    Show;
    status_tr:=1;
    //BEdit.Visible:=true;
    //BSimpan.Visible:=False;
    Caption:='Update Barang';
    with MemMaterial do
    begin
      EdKd.Enabled:=false;
    //  Edno1.Text:=MemMaterial.FieldByName('no_urut').AsString;
     // Edno.Text:=MemMaterial.FieldByName('item_no').AsString;
      EdKd.Text:=MemMaterial.FieldByName('item_code').AsString;
      Edkd_display.Text:=MemMaterial.FieldByName('item_code2').AsString;
      EdNm.Text:=MemMaterial.FieldByName('item_name').AsString;
      EdCategory.Text:=MemMaterial.FieldByName('Category').AsString;
      id_ct:=MemMaterial.FieldByName('Category_id').AsString;
      EdSatuan.Text:=MemMaterial.FieldByName('unit').AsString;
      Edjenis.Text:=MemMaterial.FieldByName('Type').AsString;
      EdMerk.Text:=MemMaterial.FieldByName('merk').AsString;
      Edkd_akun.Text:=MemMaterial.FieldByName('account_code').AsString;
      EdNm_akun.Text:=MemMaterial.FieldByName('account_name').AsString;
      idmaterial:=MemMaterial.FieldByName('id').AsString;
      EdDesk.Text:=MemMaterial.FieldByName('description').AsString;
      Edno.Text:=MemMaterial.FieldByName('order_no').AsString;
      group_id:=MemMaterial.FieldByName('group_id').AsString;
      st_penjualan:=MemMaterial.FieldByName('sell_status').AsString;
      Cbkelompok.Text:=MemMaterial.FieldByName('group_name').AsString;
      if MemMaterial['sell_status']='false' then ck_st_penjualan.Checked:=false else ck_st_penjualan.Checked:=true;
      edharga_pemb.value:=MemMaterial.FieldByName('buy').value;
      eddisc_pemb.Value:=MemMaterial.FieldByName('disc_buy').Value;
      edharga_penj.Value:=MemMaterial.FieldByName('sell').Value;
      eddisc_penj.Value:=MemMaterial.FieldByName('disc_sell').Value;
      Edkd_akunPemb.Text:=MemMaterial.FieldByName('acc_pemb').value;
      EdNm_akunPemb.Text:=MemMaterial.FieldByName('nm_pemb').value;
      Edkd_akunrt_Pemb.Text:=MemMaterial.FieldByName('acc_rtpemb').value;
      EdNm_akunRt_Pemb.Text:=MemMaterial.FieldByName('nm_rtpemb').value;
      Edkd_akunPot_Pemb.Text:=MemMaterial.FieldByName('acc_potpemb').value;
      EdNm_akunPot_Pemb.Text:=MemMaterial.FieldByName('nm_potpemb').value;
      Edkd_akunPenj.Text:=MemMaterial.FieldByName('acc_penj').value;
      EdNm_akunPenj.Text:=MemMaterial.FieldByName('nm_penj').value;
      Edkd_akunRt_Penj.Text:=MemMaterial.FieldByName('acc_rtpenj').value;
      EdNm_akunRt_Penj.Text:=MemMaterial.FieldByName('nm_rtpenj').value;
      if MemMaterial['lot_status']='false' then Ck_NoUrut.Checked:=false else Ck_NoUrut.Checked:=true;
    end;
  end;
end;

procedure TFlistBarang.DBGridMaterialCellClick(Column: TColumnEh);
begin
  if DBGridMaterial.Fields[8].AsString='1' then
  BEGIN
    ActUpdate.Enabled:=True;
  END else
    ActUpdate.Enabled:=False;
end;

procedure TFlistBarang.dxBDeleteClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridMaterial.Fields[1].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_item where no_so='+QuotedStr(DBGridMaterial.Fields[0].AsString);
      Execute;
    end;
    ActRoExecute(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFlistBarang.EdCategorySelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  Close;
  SQL.clear;
//  sql.Text:=' SELECT * FROM t_material '+
//            ' WHERE t_material.category='+QuotedStr(EdCategory.Text);
  Open;
end;
if dm.Qtemp.RecordCount =0 then urut:=1 else
if dm.Qtemp.RecordCount >0 then
begin
with dm.Qtemp do
begin
  Close;
  SQL.clear;
//  sql.Text:=' SELECT max(t_material.no_urut)AS urut FROM t_material '+
    //        ' WHERE t_material.category='+QuotedStr(EdCategory.Text);
  Open;
end;
  urut:= Dm.Qtemp.FieldByName('urut').AsInteger +1;
end;
 // Edno1.Text:=FloatToStr(urut);
//  Edno.Text:='0'+(Edno1.Text);
end;

procedure TFlistBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFlistBarang.FormCreate(Sender: TObject);
begin
{FMainMenu.parent:=FMaterial.Panel1;
FMainMenu.Visible:=True;
FMainMenu.WindowState:=wsMaximized;}
  RealFlistBarang:=self;
end;

procedure TFlistBarang.FormDestroy(Sender: TObject);
begin
  RealFlistBarang:=nil;
end;

end.
