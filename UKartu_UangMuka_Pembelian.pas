unit UKartu_UangMuka_Pembelian;

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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxBar, cxBarEditItem,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, DataDriverEh, MemTableEh, frxClass, MemDS, DBAccess, Uni,
  frxDBSet, cxCheckBox;

type
  TFKartu_UangMuka_Pembelian = class(TForm)
    DS_Kartu_UangMuka: TDataSource;
    frxReport1: TfrxReport;
    frxDBDKartuUangMukaHutang: TfrxDBDataset;
    QKartu_UangMuka: TUniQuery;
    Mem_Kartu_UangMuka: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
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
    datetimepicker1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    DateTimePicker2: TcxBarEditItem;
    code_supp: TcxBarEditItem;
    Jenis_Hutang: TdxBarCombo;
    Cb_Valas: TdxBarCombo;
    dtp1: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    dtp2: TcxBarEditItem;
    dxRefresh: TdxBarLargeButton;
    ed_code_supp: TcxBarEditItem;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    DBGrid: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarEdit1: TdxBarEdit;
    supp_name: TdxBarEdit;
    dxBarLargeButton5: TdxBarLargeButton;
    CbRencana: TdxBarCombo;
    dxBarEdit3: TdxBarEdit;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    Cb_semua: TcxBarEditItem;
    QKartu_UangMukasupplier_code: TMemoField;
    QKartu_UangMukasupplier_name: TMemoField;
    QKartu_UangMukatanggal: TDateField;
    QKartu_UangMukanoref: TMemoField;
    QKartu_UangMukasaldo_awal: TFloatField;
    QKartu_UangMukadebit: TFloatField;
    QKartu_UangMukakredit: TFloatField;
    QKartu_UangMukasaldo: TFloatField;
    Mem_Kartu_UangMukasupplier_code: TMemoField;
    Mem_Kartu_UangMukasupplier_name: TMemoField;
    Mem_Kartu_UangMukatanggal: TDateField;
    Mem_Kartu_UangMukanoref: TMemoField;
    Mem_Kartu_UangMukasaldo_awal: TFloatField;
    Mem_Kartu_UangMukadebit: TFloatField;
    Mem_Kartu_UangMukakredit: TFloatField;
    Mem_Kartu_UangMukasaldo: TFloatField;
    QKartu_UangMukaaddress: TMemoField;
    QKartu_UangMukatelp: TMemoField;
    QKartu_UangMukaketerangan: TMemoField;
    procedure FormShow(Sender: TObject);
    procedure Ed_supplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall, vKODEPRSH,vnamapershfull:string;
  end;

//var
function
  FKartu_UangMuka_Pembelian: TFKartu_UangMuka_Pembelian;

implementation

{$R *.dfm}

uses UDataModule, USearch_Supplier;

var
 realFKartu_UangMuka_Pembelian: TFKartu_UangMuka_Pembelian;

  // implementasi function
function FKartu_UangMuka_Pembelian: TFKartu_UangMuka_Pembelian;
begin
  if realFKartu_UangMuka_Pembelian <> nil then
     FKartu_UangMuka_Pembelian:= realFKartu_UangMuka_Pembelian
  else
    Application.CreateForm(TFKartu_UangMuka_Pembelian, Result);
end;

procedure TFKartu_UangMuka_Pembelian.dxBarLargeButton4Click(
  Sender: TObject);
begin
  if length(code_supp.EditValue)=0 then
  begin
    ShowMessage('Silakan Pilih Supplier!!!');
    exit;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('select * from t_company');
    open;
  end;
    vKODEPRSH:=dm.Qtemp.FieldByName('company_code').AsString;

  DBGrid.StartLoadingStatus();
  with QKartu_UangMuka do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM "public"."kartu_uangmuka_hutang"('+
               ' '+QuotedStr(code_supp.EditValue)+', '+
               ' '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+', '+
               ' '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+');';
    Open;
  end;

  QKartu_UangMuka.Close;
  QKartu_UangMuka.Open;
  DBGrid.FinishLoadingStatus();

  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\rpt_kartuuangmukapembelian.fr3');
  Tfrxmemoview(frxreport1.FindObject('prsh')).Memo.Text:=vKODEPRSH;
  Tfrxmemoview(frxreport1.FindObject('prsh_alamat')).Memo.Text:=dm.Qtemp.FieldByName('address').AsString;
  frxreport1.showreport;
end;

procedure TFKartu_UangMuka_Pembelian.dxRefreshClick(Sender: TObject);
begin
  if length(code_supp.EditValue)=0 then
  begin
    ShowMessage('Silakan Pilih Supplier!!!');
    exit;
  end;

  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Add('select * from t_tmpsyst');
    open;
  end;
    vKODEPRSH:=dm.Qtemp.FieldByName('sbu_code').AsString;

  DBGrid.StartLoadingStatus();
  with QKartu_UangMuka do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM "public"."kartu_uangmuka_hutang"('+
               ' '+QuotedStr(code_supp.EditValue)+', '+
               ' '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp1.EditValue))+', '+
               ' '+QuotedStr(formatdatetime('yyyy-mm-dd',Dtp2.EditValue))+');';
    Open;
  end;

  QKartu_UangMuka.Close;
  QKartu_UangMuka.Open;
  Mem_Kartu_UangMuka.close;
  Mem_Kartu_UangMuka.Open;
  DBGrid.FinishLoadingStatus();
end;

procedure TFKartu_UangMuka_Pembelian.Ed_supplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
    with FSearch_Supplier do
    begin
      with Qsupplier do
      begin
        sql.Text:=' select a.* from t_supplier a '+
                  ' LEFT JOIN t_item_type b on a.header_code=b.acc_code_pemb '+
                  ' where '+
                  //' type='+QuotedStr(Jenis_Hutang.Text)+' and  '+
                  ' a.deleted_at is null  '+
                  ' Order by supplier_code ASC';
      end;
    end;
    FSearch_Supplier.Caption:='Master Data Supplier';
    FSearch_Supplier.vcall:='Kartu_UangMuka_Pembelian';
    FSearch_Supplier.ShowModal;
end;

procedure TFKartu_UangMuka_Pembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFKartu_UangMuka_Pembelian.FormCreate(Sender: TObject);
begin
   realFKartu_UangMuka_Pembelian:=self;
end;

procedure TFKartu_UangMuka_Pembelian.FormDestroy(Sender: TObject);
begin
   realFKartu_UangMuka_Pembelian:=nil;
end;

procedure TFKartu_UangMuka_Pembelian.FormShow(Sender: TObject);
begin
    DTP1.EditValue:=date();
    DTP2.EditValue:=date();
    code_supp.EditValue:='';
end;

initialization
  RegisterClass(TFKartu_UangMuka_Pembelian);


end.
