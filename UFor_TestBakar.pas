unit UFor_TestBakar;

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
  dxRibbonCustomizationForm, dxRibbon, dxBar, dxSkinChooserGallery,
  dxRibbonGallery, cxClasses, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, MemDS,
  DBAccess, Uni, MemTableDataEh, DataDriverEh, MemTableEh, frxClass, frxDBSet,
  dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  TFFor_Testbakar = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem;
    dxBarUpdate: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridTestBakar: TDBGridEh;
    DBGridEh2: TDBGridEh;
    QTestBakar: TUniQuery;
    DsTestBakar: TDataSource;
    MemTestBakar: TMemTableEh;
    DsdTestBakar: TDataSetDriverEh;
    QTestBakarDet: TUniQuery;
    DsTestBakarDet: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    Rpt: TfrxReport;
    DbQCBakar: TfrxDBDataset;
    QRpt_QCBakar: TUniQuery;
    dxBarLargeButton2: TdxBarLargeButton;
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
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FFor_Testbakar: TFFor_Testbakar;

implementation

{$R *.dfm}

uses UNew_ForTestBakar, UDatamodule, umainmenu;
var
  realFFor_Testbakar : TFFor_Testbakar;
// implementasi function
function FFor_Testbakar: TFFor_Testbakar;
begin
  if realFFor_Testbakar <> nil then
    FFor_Testbakar:= realFFor_Testbakar
  else
    Application.CreateForm(TFFor_Testbakar, Result);
end;

procedure TFFor_Testbakar.ActBaruExecute(Sender: TObject);
begin
  with FNew_ForTestBakar do
  begin
    statustr:=0;
    FNew_ForTestBakar.Show;
    FNew_ForTestBakar.BSimpan.Visible:=True;
    FNew_ForTestBakar.BEdit.Visible:=False;
    FNew_ForTestBakar.Clear;
    //FNew_ForTestBakar.Autonumber;
    FNew_ForTestBakar.load;
    Caption:='New QC Bakar Satu Coil';
  end;
end;

procedure TFFor_Testbakar.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridTestBakar.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Delete From t_test where nik='+QuotedStr(DBGridTestBakar.Fields[0].AsString);
        Execute;
      end;
      //dxbarRefreshClick(sender);
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFFor_Testbakar.ActROExecute(Sender: TObject);
begin
  DBGridTestBakar.StartLoadingStatus();
  DBGridTestBakar.FinishLoadingStatus();
  if loksbu='' then
  begin
    with QTestBakar do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from "warehouse".t_formula_burn_test Order by test_no Desc ';
      ExecSQL;
    end;
  end else
  if loksbu<>'' then
  begin
    with QTestBakar do
    begin
      close;
      sql.clear;
      sql.Text:=' select * from "warehouse".t_formula_burn_test  where sbu_code='+QuotedStr(loksbu)+''+
                ' Order by test_no Desc ';
      ExecSQL;
    end;
  end;
  QTestBakar.Active:=True;
  //QTestBakar.Close;
  MemTestBakar.Close;
  QTestBakarDet.Close;
  if MemTestBakar.Active=False then MemTestBakar.Active:=True;
  if QTestBakarDet.Active=False then QTestBakarDet.Active:=True;
end;

procedure TFFor_Testbakar.ActUpdateExecute(Sender: TObject);
begin
  with FNew_ForTestBakar do
  begin
      statustr:=1;
      FNew_ForTestBakar.Show;
    //  FNew_ForTestBakar.BSimpan.Visible:=;
   //   FNew_ForTestBakar.BEdit.Visible:=True;
      FNew_ForTestBakar.Clear;
      FNew_ForTestBakar.load;
      FNew_ForTestBakar.Caption:='Update QC Bakar Satu Coil';
      with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from "warehouse".t_formula_burn_test  where test_no='+QuotedStr(DBGridTestBakar.Fields[0].AsString);
        ExecSQL;
      end;
      with Dm.Qtemp do
      begin
        FNew_ForTestBakar.EdProduk.Text:=Dm.Qtemp['product_code'];
        FNew_ForTestBakar.edregu.Text:=Dm.Qtemp['shift'];
        FNew_ForTestBakar.EdMesin.Text:=Dm.Qtemp['mc'];
        FNew_ForTestBakar.EdKet.Text:=Dm.Qtemp['notes'];
        FNew_ForTestBakar.Edno.Text:=Dm.Qtemp['test_no'];
        FNew_ForTestBakar.DtPMulai.Text:=Dm.Qtemp['prod_start_date'];
        FNew_ForTestBakar.DtPSelesai.Text:=Dm.Qtemp['prod_end_date'];
        FNew_ForTestBakar.DtProduksi.Text:=Dm.Qtemp['prod_date'];
        FNew_ForTestBakar.EdNo_Formula.Text:=Dm.Qtemp['formula_no'];
        FNew_ForTestBakar.DtTest.Text:=Dm.Qtemp['test_date'];
        FNew_ForTestBakar.EdNo_Spk.Text:=Dm.Qtemp['spk_no'];
        st:=DM.qtemp['status'];
        thn:=DM.Qtemp['trans_year'];
      end;
      QTestBakarDet.First;
      while not QTestBakarDet.Eof do
      begin
        with QTestBakarDet do
        begin
          FNew_ForTestBakar.MemBakarDet.Insert;
          FNew_ForTestBakar.MemBakarDet['no_gotrok']:=QTestBakarDet['gotrok_no'];
          FNew_ForTestBakar.MemBakarDet['berat']:=QTestBakarDet['weight'];
          FNew_ForTestBakar.MemBakarDet['kadar_air']:=QTestBakarDet['water_content'];
          FNew_ForTestBakar.MemBakarDet['jam_mulai']:=QTestBakarDet['start_time'];
          FNew_ForTestBakar.MemBakarDet['jam_mati']:=QTestBakarDet['end_time'];
          FNew_ForTestBakar.MemBakarDet['lama_bakar']:=QTestBakarDet['long_burn'];
          FNew_ForTestBakar.MemBakarDet['keterangan']:=QTestBakarDet['notes'];
          FNew_ForTestBakar.MemBakarDet['warna_abu']:=QTestBakarDet['gray_color'];
          FNew_ForTestBakar.MemBakarDet['bentuk_api']:=QTestBakarDet['fire_shape'];
          FNew_ForTestBakar.MemBakarDet['bentuk_abu']:=QTestBakarDet['ash_form'];
          FNew_ForTestBakar.MemBakarDet['tensile']:=QTestBakarDet['tensile'];
          FNew_ForTestBakar.MemBakarDet['strength']:=QTestBakarDet['strength'];
          FNew_ForTestBakar.MemBakarDet['ket1']:=QTestBakarDet['note1'];
          FNew_ForTestBakar.MemBakarDet['ket2']:=QTestBakarDet['note2'];
          FNew_ForTestBakar.MemBakarDet['ket3']:=QTestBakarDet['note3'];
          FNew_ForTestBakar.MemBakarDet['ket4']:=QTestBakarDet['note4'];
          FNew_ForTestBakar.MemBakarDet['ket_rata2']:=QTestBakarDet['note_avg'];
          FNew_ForTestBakar.MemBakarDet.Post;
          DBGridDetailColEnter(sender);
          QTestBakarDet.Next;
        end;
      end;
  end;
end;

procedure TFFor_Testbakar.dxBarLargeButton1Click(Sender: TObject);
begin
with QRpt_QCBakar do
begin
 { Filtered:=False;
  Filter:=' no_test='+QuotedStr(DBGridTestBakar.Fields[0].AsString);
  FilterOptions:=[];
  Filtered:=True; }
  CLOSE;
  sql.Clear;
  sql.Text:='select * from "warehouse".t_formula_burn_test A inner join "warehouse".t_formula_burn_test_det B on a.test_no=b.test_no where a.test_no='+QuotedStr(DBGridTestBakar.Fields[0].AsString);
  ExecSQL;
end;
  QRpt_QCBakar.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_TestBakar.Fr3');
//  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  //Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='QC ';
  Rpt.ShowReport();
end;

procedure TFFor_Testbakar.dxBarLargeButton2Click(Sender: TObject);
begin
with QRpt_QCBakar do
begin
  CLOSE;
  sql.Clear;
  sql.Text:='select * from t_formula_testbakar A inner join t_formula_testbakar_det B on a.no_test=b.no_test where a.no_test='+QuotedStr(DBGridTestBakar.Fields[0].AsString);
  ExecSQL;
end;
  //QRpt_QCBakar.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_QCBakarFormula.Fr3');
  TfrxPictureView(Rpt.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
  //Tfrxmemoview(Rpt.FindObject('MJudul')).Memo.Text:='QC ';
  Rpt.ShowReport();
end;

procedure TFFor_Testbakar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFFor_Testbakar.FormCreate(Sender: TObject);
begin
  realFFor_Testbakar:=self;
end;

procedure TFFor_Testbakar.FormDestroy(Sender: TObject);
begin
  realFFor_Testbakar:=nil;
end;

procedure TFFor_Testbakar.FormShow(Sender: TObject);
begin
//  dxbarRefreshClick(sender);
end;

initialization
RegisterClass(TFFor_Testbakar);

end.

