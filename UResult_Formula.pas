unit UResult_Formula;

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
  dxSkinVisualStudio2013Light, dxCore, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFResult_Formula = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridResult: TDBGridEh;
    DBGridEh2: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QResult: TUniQuery;
    DsResult: TDataSource;
    MemResult: TMemTableEh;
    DsdResult: TDataSetDriverEh;
    QResultDet: TUniQuery;
    DsResultDet: TDataSource;
    QResultDet2: TUniQuery;
    DsResultDet2: TDataSource;
    Rpt: TfrxReport;
    DbMasterFormula: TfrxDBDataset;
    QRptMaster_formula: TUniQuery;
    DsRptMaster_formula: TDataSource;
    QResultBakar_Formula: TUniQuery;
    DbRpt_ResultDet: TfrxDBDataset;
    QRptResult: TUniQuery;
    DbRptResult: TfrxDBDataset;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
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
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure DBGridResultCellClick(Column: TColumnEh);
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

Function FResult_Formula: TFResult_Formula;

implementation

{$R *.dfm}

uses UNew_ResultFormula, UMainmenu, UDatamodule;
var
  realfres_for : TFResult_Formula;
// implementasi function
function fresult_formula: TFResult_Formula;
begin
  if realfres_for <> nil then
    FResult_Formula:= realfres_for
  else
    Application.CreateForm(TFResult_Formula, Result);
end;

procedure TFResult_Formula.ActBaruExecute(Sender: TObject);
begin
  with FNew_resultFormula do
  begin
    Clear;
    Show;
    BEdit.Visible:=False;
    BSimpan.Visible:=True;
   // Autonumber;
    Caption:='New Result Formula Test Bakar';
  end;
end;

procedure TFResult_Formula.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridResult.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Delete From t_result_formula where nik='+QuotedStr(DBGridResult.Fields[0].AsString);
        Execute;
      end;
      //dxbarRefreshClick(sender);
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFResult_Formula.ActROExecute(Sender: TObject);
begin
  DBGridResult.StartLoadingStatus();
  DBGridResult.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QResult do
    begin
      close;
      sql.clear;
      sql.Text:=' select A.*,b.Shift,b.mc from t_result_formula a inner join t_spk_formula B on A.spk_no=B.spk_no order by result_no desc ';
      ExecSQL;
    end;
  end else
  if loksbu<>'' then
  begin
    with QResult do
    begin
      close;
      sql.clear;
      sql.Text:=' select A.*,b.Shift,b.mc from t_result_formula a inner join t_spk_formula B on A.spk_no=B.spk_no '+
                ' where a.sbu_code='+QuotedStr(loksbu)+''+
                '  order by a.result_no desc ';
      ExecSQL;
    end;
  end;
  QResult.Active:=True;
  MemResult.Active:=False;
  QResultDet.Close;
  QResultDet2.Close;
  if MemResult.Active=False then MemResult.Active:=True;
  if QResultDet.Active=False then QResultDet.Active:=True;
  if QResultDet2.Active=False then QResultDet2.Active:=True;
end;

procedure TFResult_Formula.ActUpdateExecute(Sender: TObject);
begin
  FNew_resultFormula.Clear;
  FNew_resultFormula.Show;
  FNew_resultFormula.BEdit.Visible:=true;
  FNew_resultFormula.BSimpan.Visible:=false;
  FNew_resultFormula.Caption:='Update Result Formula Test Bakar';
  with FResult_Formula.MemResult do
  begin
    FNew_resultFormula.edPersetujuan.Text:=FResult_Formula.MemResult['persetujuan'];
    FNew_resultFormula.Edket.Text:=FResult_Formula.MemResult['ket'];
    FNew_resultFormula.EdNo_Formula.Text:=FResult_Formula.MemResult['noformula'];
    FNew_resultFormula.EdNo_spk.Text:=FResult_Formula.MemResult['nospk'];
    FNew_resultFormula.EdProduk.Text:=FResult_Formula.MemResult['nm_produk'];
    EditNo:=MemResult['noresult'];
    yr:=MemResult['tahun'];
    FNew_resultFormula.DtTrial.Date:=MemResult['tanggal'];
    FNew_resultFormula.EdKesimpulan.Text:=MemResult['kesimpulan'];
  end;
  QResultDet2.First;
  while not QResultDet2.Eof do
  begin
    FNew_resultFormula.MemResult_for.Insert;
    FNew_resultFormula.MemResult_for['kode']:=QResultDet2['kode'];
    FNew_resultFormula.MemResult_for['deskripsi']:=QResultDet2['deskripsi'];
    FNew_resultFormula.MemResult_for['standard']:=QResultDet2['standard'];
    FNew_resultFormula.MemResult_for['trial']:=QResultDet2['trial'];
    FNew_resultFormula.MemResult_for.Post;
    QResultDet2.Next;
  end;
end;

procedure TFResult_Formula.DBGridResultCellClick(Column: TColumnEh);
begin
if DBGridResult.Fields[8].AsString='DISETUJUI' then
BEGIN
  dxBarButton1.Enabled:=False;
  dxBarButton2.Enabled:=False;
END;
if DBGridResult.Fields[8].AsString<>'DISETUJUI' then
BEGIN
  dxBarButton1.Enabled:=True;
  dxBarButton2.Enabled:=True;
END;
end;

procedure TFResult_Formula.dxBarButton1Click(Sender: TObject);
begin
   if messageDlg ('Yakin Disetujui No.'+DBGridResult.Fields[1].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Update t_result_formula set persetujuan=''DISETUJUI'', tanggal=now(), approval='+QuotedStr(Nm)+' where noresult='+QuotedStr(DBGridResult.Fields[1].AsString);
    Execute;
  end;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test set status=''DISETUJUI'', tgl_approv=now(), approval='+QuotedStr(Nm)+' where no_formula='+QuotedStr(DBGridResult.Fields[3].AsString);
    Execute;
  end;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Update t_master_formula_test_det set status=''DISETUJUI'' where no_formula='+QuotedStr(DBGridResult.Fields[3].AsString);
    Execute;
  end;
  ActROExecute(sender);
  ShowMessage('Data Berhasil di Disetujui');
  end;
end;

procedure TFResult_Formula.dxBarButton2Click(Sender: TObject);
begin
 if messageDlg ('Yakin Tidak Disetujui No.'+DBGridResult.Fields[1].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_result_formula set persetujuan=''TIDAK DISETUJUI'', tanggal=now(), approval='+QuotedStr(Nm)+' where noresult='+QuotedStr(DBGridResult.Fields[1].AsString);
      Execute;
    end;
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_master_formula_test set status=''TIDAK DISETUJUI'', tgl_approv=now(), approval='+QuotedStr(Nm)+' where noresult='+QuotedStr(DBGridResult.Fields[3].AsString);
      Execute;
    end;
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Update t_master_formula_test_det set status=''TIDAK DISETUJUI'' where no_formula='+QuotedStr(DBGridResult.Fields[3].AsString);
      Execute;
    end;
  ActROExecute(sender);
  ShowMessage('Data Berhasil di Tidak Disetujui');
  end;
end;

procedure TFResult_Formula.dxBarLargeButton1Click(Sender: TObject);
begin
  QRptMaster_formula.Close;
  QRptMaster_formula.Open;
  with QRptMaster_formula do
  begin
    Filtered:=False;
    Filter:=' no_spk='+QuotedStr(DBGridResult.Fields[0].AsString);
    FilterOptions:=[];
    Filtered:=True;
  end;
  QRptMaster_formula.Open;
  QResultBakar_Formula.Close;
  QResultBakar_Formula.Open;
  with QResultBakar_Formula do
  begin
    Filtered:=False;
    Filter:=' nospk='+QuotedStr(DBGridResult.Fields[0].AsString);
    FilterOptions:=[];
    Filtered:=True;
  end;
  QResultBakar_Formula.Open;
  QRptResult.Close;
  QRptResult.Open;
  with QRptResult do
  begin
    Filtered:=False;
    Filter:=' nospk='+QuotedStr(DBGridResult.Fields[0].AsString);
    FilterOptions:=[];
    Filtered:=True;
  end;
    QRptResult.Open;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_MasterFormula.Fr3');
    TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  //  Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='BON PERMINTAAN BAHAN TEPUNG ';
  Rpt.ShowReport();
end;

procedure TFResult_Formula.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFResult_Formula.FormCreate(Sender: TObject);
begin
realfres_for:=self;
end;

procedure TFResult_Formula.FormDestroy(Sender: TObject);
begin
realfres_for:=nil;
end;

procedure TFResult_Formula.FormShow(Sender: TObject);
begin
//  dxbarRefreshClick(sender);
end;

initialization
RegisterClass(TFResult_Formula);

end.

