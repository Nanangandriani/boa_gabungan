unit URekap_Kontrakks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  dxSkinsdxBarPainter, dxBar, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxClasses, dxRibbon, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, MemTableEh, DataDriverEh,
  MemDS, DBAccess, Uni, frxClass, frxDBSet, dxSkinBasic,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxCore, dxBarExtItems, cxCalendar, cxBarEditItem;

type
  TFRekapKontrak = class(TForm)
    DsKerjasama: TDataSource;
    QKerjasama: TUniQuery;
    DataSetDriverEh1: TDataSetDriverEh;
    Memkerjasama: TMemTableEh;
    QKerjasama_det: TUniQuery;
    DsKerjasama_det: TDataSource;
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
    DBGridKontrak: TDBGridEh;
    DBGridEh3: TDBGridEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    dtmulai: TcxBarEditItem;
    dtselesai: TcxBarEditItem;
    Rpt: TfrxReport;
    QRptRekapKontrak: TUniQuery;
    DbRptRekapKontrak: TfrxDBDataset;
    procedure dxBRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FRekapKontrak: TFRekapKontrak;

implementation

{$R *.dfm}

uses // URpt_RekapKontrak,
UDataModule, umainmenu,UMy_Function;
var
  RealFRekapKontrak: TFRekapKontrak;
function FRekapKontrak: TFRekapKontrak;
begin
  if RealFRekapKontrak <> nil then
    FRekapKontrak:= RealFRekapKontrak
  else
    Application.CreateForm(TFRekapKontrak, Result);
end;

procedure TFRekapKontrak.dxBarLargeButton1Click(Sender: TObject);
var
Datemulai,dateselesai: TDateTime;
begin
  DM.QPerusahaan.Close;
  DM.QPerusahaan.Open;
    if dtmulai.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
    Datemulai:=dtmulai.EditValue;
    dateselesai:=dtselesai.EditValue;
  if status_akses<>'True' then
  begin
    DBGridKontrak.Columns[6].Visible:=false;
  end;

  if status_akses='True' then
  begin
    DBGridKontrak.Columns[6].Visible:=true;
  end;
  with QRptRekapKontrak do
  begin
    close;
    sql.Clear;
    sql.Text:='select	A.contract_no,a.contract_date,b.supplier_name,d.item_name,c.qty,c.unit,c.price,c.remaining_qty from '+
    ' t_coop_contract A inner join t_supplier B on A.supplier_code=B.supplier_code   '+
    ' INNER JOIN t_coop_contract_det AS "c" on a. contract_no=c.contract_no '+
    ' INNER JOIN t_item_stock AS d	ON c.item_stock_code = d.item_stock_code '+
    ' where contract_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd', datemulai))+ ' and contract_date<='+quotedstr(FormatDateTime('yyyy-mm-dd',dateselesai))+''+
    ' order by a.id Asc';
    open;
  end;
     QKerjasama_det.Open;
     Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapKontrak.Fr3');
  //   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
  //   SetMemo(Rpt,'msbu',' '+dm.QPerusahaan['company_code']);
     Rpt.ShowReport();
end;

procedure TFRekapKontrak.DxRefreshClick(Sender: TObject);
var
Datemulai,dateselesai: TDateTime;
begin
    if dtmulai.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue= null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
    Datemulai:=dtmulai.EditValue;
    dateselesai:=dtselesai.EditValue;
  if status_akses<>'True' then
  begin
    DBGridKontrak.Columns[6].Visible:=false;
  end;

  if status_akses='True' then
  begin
    DBGridKontrak.Columns[6].Visible:=true;
  end;
  DBGridKontrak.StartLoadingStatus();
  with QKerjasama do
  begin
    close;
    sql.Clear;
    sql.Text:='select	A.contract_no,a.contract_date,b.supplier_name,d.item_name,c.qty,c.unit,c.price,c.remaining_qty from '+
    ' t_coop_contract A inner join t_supplier B on A.supplier_code=B.supplier_code   '+
    ' INNER JOIN t_coop_contract_det AS "c" on a. contract_no=c.contract_no '+
    ' INNER JOIN t_item_stock AS d	ON c.item_stock_code = d.item_stock_code '+
    ' where contract_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd', datemulai))+ ' and contract_date<='+quotedstr(FormatDateTime('yyyy-mm-dd',dateselesai))+''+
    ' order by a.id Asc';
    open;
  end;
  //  qkerjasama.Open;
    Memkerjasama.Close;
    Memkerjasama.Open;
    QKerjasama_det.Close;
    QKerjasama_det.Open;
  //  ShowMessage(status_akses);
  DBGridKontrak.FinishLoadingStatus();

end;

procedure TFRekapKontrak.dxBRefreshClick(Sender: TObject);
begin
if status_akses<>'True' then
begin
  DBGridKontrak.Columns[6].Visible:=false;
end;

if status_akses='True' then
begin
  DBGridKontrak.Columns[6].Visible:=true;
end;
  QKerjasama.Close;
  qkerjasama.Open;
  Memkerjasama.Close;
  Memkerjasama.Open;
  QKerjasama_det.Close;
  QKerjasama_det.Open;
//  ShowMessage(status_akses);
end;

procedure TFRekapKontrak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRekapKontrak.FormCreate(Sender: TObject);
begin
  RealFRekapKontrak:=self;
end;

procedure TFRekapKontrak.FormDestroy(Sender: TObject);
begin
  RealFRekapKontrak:=nil;
end;

procedure TFRekapKontrak.FormShow(Sender: TObject);
begin
  dtmulai.EditValue:=date;
  dtselesai.EditValue:=date;
end;

initialization
RegisterClass(TFRekapKontrak);

end.
