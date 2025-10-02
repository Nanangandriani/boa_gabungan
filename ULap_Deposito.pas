unit ULap_Deposito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxCheckBox,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet, dxBar, cxBarEditItem, cxClasses, MemTableDataEh,
  MemTableEh, DataDriverEh;

type
  TFLap_Deposito = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxPrint: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    BtnClear: TdxBarLargeButton;
    txtkdacckredit1: TdxBarEdit;
    dxBarEdit3: TdxBarEdit;
    dxBarEdit2: TdxBarEdit;
    dxBarEdit4: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    DTPick1: TcxBarEditItem;
    DTPick2: TcxBarEditItem;
    frxDBDatasetPers: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    QPerusahaancompany_code: TStringField;
    QPerusahaancompany_name: TStringField;
    QPerusahaanaddress: TStringField;
    QPerusahaantelp: TStringField;
    QPerusahaanemail: TStringField;
    QPerusahaannpwp: TStringField;
    QPerusahaancity: TStringField;
    QPerusahaanaddress2: TStringField;
    QPerusahaanid: TGuidField;
    QPerusahaancreated_at: TDateTimeField;
    QPerusahaancreated_by: TStringField;
    QPerusahaanupdated_at: TDateTimeField;
    QPerusahaanupdated_by: TStringField;
    QPerusahaandeleted_at: TDateTimeField;
    QPerusahaandeleted_by: TStringField;
    QPerusahaantype_of_business: TStringField;
    QPerusahaanlatitude: TStringField;
    QPerusahaanlongitude: TStringField;
    QPerusahaantax_status: TBooleanField;
    QPerusahaancurrency: TStringField;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    DBGridDeposito: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QLap_Deposito: TUniQuery;
    frxdbdeposito: TfrxDBDataset;
    frxlapdeposito: TfrxReport;
    DataSetDriverEh1: TDataSetDriverEh;
    MemDeposito: TMemTableEh;
    DSDeposito: TDataSource;
    QDeposito: TUniQuery;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure ActPrintExecute(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function
  FLap_Deposito: TFLap_Deposito;

implementation

{$R *.dfm}


var
  RealFLap_Deposito: TFLap_Deposito;

function FLap_Deposito: TFLap_Deposito;
begin
  if RealFLap_Deposito <> nil then
     FLap_Deposito:=RealFLap_Deposito
  else
     Application.CreateForm(TFLap_Deposito,Result);
end;


procedure TFLap_Deposito.ActPrintExecute(Sender: TObject);
begin
    if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Awal Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Akhir Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    with Qlap_Deposito do
    begin
        close;
        sql.Clear;
        sql.Text:='select a.*,c.bank_name as nabankkk,d.bank_name as nabankkm, b.deposito_no,b.bk_no,b.interest_value, '+
                  'b.bm_no,b.description,b.description2,c.amount as jum_kk,d.amount as jum_km,c.trans_date as tglbk,d.trans_date as tglbm from '+
                  '(select * from t_deposito_submission where deposito_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')a '+
                  'left join t_deposito b on a.id=b.id_submission '+
                  'left join(select a.voucher_no,a.bank_name,a.amount,b.trans_date from t_cash_bank_expenditure a '+
                  'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) c on b.bk_no=c.voucher_no '+
                  'left join(select a.voucher_no,a.amount,a.bank_name,b.trans_date from t_cash_bank_expenditure a '+
                  'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) d on b.bm_no=d.voucher_no '+
                  'order by deposito_date,deposito_no ';
        open;
    end;
    //if QLap_Deposito.recordcount<>0 then
    //begin
       with frxlapdeposito do
       begin
          frxLapdeposito.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Lap_Deposito.fr3');
          ReportOptions.Name := 'Laporan Deposito';
          with ScriptText do
          begin
            clear;
            add('var periode: string;');
            add('begin');
            Add('periode:='''+'PERIODE '+formatdatetime('dd mmmm yyyy',DTPick1.EditValue)+' s/d '+formatdatetime('dd mmmm yyyy',DTPick2.EditValue)+''' ;' );
            add('end.');
          end;
          frxLapdeposito.ShowReport;
       end;
    //end
    //else
    //begin
     //ShowMessage('Tidak ada data yang dapat diproses !');
    //end;
end;

procedure TFLap_Deposito.DxRefreshClick(Sender: TObject);
begin
    if DTPick1.EditValue = null then
    begin
      MessageDlg('Tanggal Awal Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick1.SetFocus;
      Exit;
    end;
    if DTPick2.EditValue = null then
    begin
      MessageDlg('Tanggal Akhir Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DTPick2.SetFocus;
      Exit;
    end;

    DBGridDeposito.StartLoadingStatus();
    with QDeposito do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.*,c.bank_name as nabankkk,d.bank_name as nabankkm, b.deposito_no,b.bk_no,b.interest_value, '+
                  'b.bm_no,b.description,b.description2,c.amount as jum_kk,d.amount as jum_km,c.trans_date as tglbk,d.trans_date as tglbm from '+
                  '(select * from t_deposito_submission where deposito_date between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick1.EditValue))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTPick2.EditValue))+')a '+
                  'left join t_deposito b on a.id=b.id_submission '+
                  'left join(select a.voucher_no,a.bank_name,a.amount,b.trans_date from t_cash_bank_expenditure a '+
                  'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) c on b.bk_no=c.voucher_no '+
                  'left join(select a.voucher_no,a.amount,a.bank_name,b.trans_date from t_cash_bank_expenditure a '+
                  'INNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_voucher) d on b.bm_no=d.voucher_no '+
                  'order by deposito_date,deposito_no ';
      open;
    end;
    MemDeposito.Close;
    MemDeposito.Open;
    DBGridDeposito.FinishLoadingStatus();
end;

procedure TFLap_Deposito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TFLap_Deposito.FormCreate(Sender: TObject);
begin
   RealFLap_Deposito:=Self;
end;

procedure TFLap_Deposito.FormDestroy(Sender: TObject);
begin
   RealFLap_Deposito:=Nil;
end;

procedure TFLap_Deposito.FormShow(Sender: TObject);
begin
   DTPick1.EditValue:=date();
   DTPick2.EditValue:=date();
end;

Initialization
  RegisterClasses([TFLap_Deposito]);

end.
