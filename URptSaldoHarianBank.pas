unit URptSaldoHarianBank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxCalendar, cxButtonEdit, cxTextEdit, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, MemDS, DBAccess, Uni,
  dxBar, cxBarEditItem, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon;

type
  TFRptSaldoHarianBank = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarManager1Bar2: TdxBar;
    btExportExcel: TdxBarLargeButton;
    btExportPDF: TdxBarLargeButton;
    dtAkhir: TcxBarEditItem;
    edNamaBank: TcxBarEditItem;
    btPreview: TdxBarLargeButton;
    btSearch: TdxBarLargeButton;
    edKabupaten: TcxBarEditItem;
    edRekeningBank: TcxBarEditItem;
    cbSBU: TdxBarCombo;
    dxBarLargeButton1: TdxBarLargeButton;
    QSaldoHarianBank: TUniQuery;
    DsSaldoHarianBank: TDataSource;
    Report: TfrxReport;
    frxDBDSaldoHarianBank: TfrxDBDataset;
    QCetak: TUniQuery;
    frxPDFExport1: TfrxPDFExport;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edNamaBankPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vRekeningBank, vNamaBank : String ;
  end;

  function FRptSaldoHarianBank: TFRptSaldoHarianBank;

//var
//  FRptSaldoHarianBank: TFRptSaldoHarianBank;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMy_Function, UHomeLogin;

var
  realRptSaldoHarianBank : TFRptSaldoHarianBank;

function FRptSaldoHarianBank: TFRptSaldoHarianBank;
begin
  if realRptSaldoHarianBank <> nil then
    FRptSaldoHarianBank:= realRptSaldoHarianBank
  else
    Application.CreateForm(TFRptSaldoHarianBank, Result);
end;

procedure TFRptSaldoHarianBank.btPreviewClick(Sender: TObject);
begin
  if Length(edNamaBank.EditValue)=0 then
  begin
    ShowMessage('silakan Pilih Bank !!!');
    Exit;
  end;

  if Length(edNamaBank.EditValue)<>0 then
  begin
    with QCetak do
    begin
       close;
       sql.Clear;
       sql.add( 'SELECT b.bank_name,b.rekening_no,a.saldo_akhir '+
                'FROM t_bank b '+
                'LEFT JOIN LATERAL ( '+
                'SELECT saldo_akhir '+
                'FROM get_daftar_cek_bulan(b.rekening_no, '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+', '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+') '+
                'ORDER BY nomor DESC '+
                'LIMIT 1 '+
                ') a ON TRUE');
       try
          Open;
       except
          Connection.Close;
          Connection.Open;
          Open;
       end;
    end;
  end;

  if QCetak.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end;

  if QCetak.RecordCount<>0 then
  begin
    cLocation := ExtractFilePath(Application.ExeName);
    Report.LoadFromFile(cLocation +'report/rpt_saldo_harian_bank'+ '.fr3');
    SetMemo(Report,'prsh',FHomeLogin.vNamaPRSH);
    SetMemo(Report,'tanggal',UpperCase('TANGGAL : '+formatdatetime('dd mmmm yyyy',dtAkhir.EditValue)));
    Report.ShowReport();
  end;
end;

procedure TFRptSaldoHarianBank.btSearchClick(Sender: TObject);
begin
  if Length(edNamaBank.EditValue)=0 then
  begin
    ShowMessage('silakan Pilih Bank !!!');
    Exit;
  end;

  if Length(edNamaBank.EditValue)<>0 then
  begin
  DBGrid.StartLoadingStatus();
  try
   with QSaldoHarianBank do
   begin
       close;
       sql.Clear;
       sql.add( 'SELECT b.bank_name,b.rekening_no,a.saldo_akhir '+
          'FROM t_bank b '+
          'LEFT JOIN LATERAL ( '+
          'SELECT saldo_akhir '+
          'FROM get_daftar_cek_bulan(b.rekening_no, '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+', '+QuotedStr(formatdatetime('yyyy-mm-dd',dtAkhir.EditValue))+') '+
          'ORDER BY nomor DESC '+
          'LIMIT 1 '+
          ') a ON TRUE');
       try
          Open;
       except
          Connection.Close;
          Connection.Open;
          Open;
       end;
   end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
  end;
end;

procedure TFRptSaldoHarianBank.dxBarLargeButton1Click(Sender: TObject);
begin
  dtAkhir.EditValue := Date;
  edNamaBank.EditValue := '';
  edRekeningBank.EditValue := '';
  vNamaBank:='';
  vRekeningBank:='';
end;

procedure TFRptSaldoHarianBank.edNamaBankPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='saldo_harian_bank';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
end;

procedure TFRptSaldoHarianBank.FormCreate(Sender: TObject);
begin
  realRptSaldoHarianBank:=self;
end;

procedure TFRptSaldoHarianBank.FormDestroy(Sender: TObject);
begin
  realRptSaldoHarianBank:=nil;
end;

procedure TFRptSaldoHarianBank.FormShow(Sender: TObject);
begin
  dtAkhir.EditValue := Date;
  edNamaBank.EditValue := '';
  edRekeningBank.EditValue := '';
  vNamaBank:='';
  vRekeningBank:='';
  FillSBUBarCombo(cbSBU);
  QSaldoHarianBank.Close;
end;

initialization
  RegisterClass(TFRptSaldoHarianBank);

end.
