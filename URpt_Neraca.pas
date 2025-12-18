unit URpt_Neraca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbonCustomizationForm, cxCalendar, dxBar, cxBarEditItem, cxClasses,
  dxRibbon, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxLabel, cxMaskEdit, cxSpinEdit,DateUtils, ShellAPI,
  frxExportXLSX, frxExportBaseDialog, frxExportXLS;

type
  TFRpt_Neraca = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    DbRpt_Neraca: TfrxDBDataset;
    QRpt_Neraca: TUniQuery;
    UniQuery1: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    Panel1: TPanel;
    Label16: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    cbbulan: TComboBox;
    edth: TSpinEdit;
    dtmulai1: TRzDateTimeEdit;
    dtselesai1: TRzDateTimeEdit;
    Pnthn: TPanel;
    Label4: TLabel;
    edthn2: TSpinEdit;
    QRpt_Neracathn: TUniQuery;
    dbRpt_neracathn: TfrxDBDataset;
    QRpt_PosNeraca: TUniQuery;
    DbRpt_PosNeraca: TfrxDBDataset;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DBGridEh1: TDBGridEh;
    DSNeraca: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    CbBulan2: TComboBox;
    DBGridEh2: TDBGridEh;
    DSNeracathn: TDataSource;
    dxBarLargeButton2: TdxBarLargeButton;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure BBatalClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure cbbulan2Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure CbBulan2Change(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln,statustr:string;
    procedure ExportToExcel;
  end;

//var
function  FRpt_Neraca: TFRpt_Neraca;

implementation

{$R *.dfm}

uses UMainmenu, UHomeLogin;
var
//  FPakai_BahanPervNamaPRSH: TFPakai_BahanPervNamaPRSH;
RealFRpt_Neraca: TFRpt_Neraca;

function FRpt_Neraca: TFRpt_Neraca;
begin
  if RealFRpt_Neraca <> nil then
    FRpt_Neraca:= RealFRpt_Neraca
  else
    Application.CreateForm(TFRpt_Neraca, Result);
end;

procedure TFRpt_Neraca.ExportToExcel;
var
  Exporter: TfrxCustomExportFilter;
  SaveDialog: TSaveDialog;
  SavePath, FormName, FileExt: string;
begin
  SaveDialog := TSaveDialog.Create(nil);
  Exporter := nil;
  try
    // Ambil nama form
    FormName := Self.Name;
    if Pos('TF', FormName) = 1 then
      FormName := Copy(FormName, 3, Length(FormName))
    else if Pos('T', FormName) = 1 then
      FormName := Copy(FormName, 2, Length(FormName));
    FormName := StringReplace(FormName, ' ', '', [rfReplaceAll]);
    // Setup Save Dialog
    SaveDialog.Title := 'Simpan Export Excel';
    SaveDialog.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog.FilterIndex := 1;
    SaveDialog.FileName := FormName + '_' + FormatDateTime('yyyymmdd_hhnnss', Now);
    SavePath := ExtractFilePath(Application.ExeName) + 'Export\';
    if not DirectoryExists(SavePath) then
      ForceDirectories(SavePath);
    SaveDialog.InitialDir := SavePath;
    SaveDialog.Options := [ofOverwritePrompt, ofEnableSizing, ofPathMustExist];
    if SaveDialog.Execute then
    begin
      // Ambil extension
      FileExt := LowerCase(ExtractFileExt(SaveDialog.FileName));
      // Debug: tampilkan extension yang terdeteksi
      // ShowMessage('Extension: ' + FileExt); // Uncomment untuk debug
      // Buat exporter sesuai FilterIndex (lebih reliable)
      if SaveDialog.FilterIndex = 1 then
      begin
        // Excel 2007+ (.xlsx)
        Exporter := TfrxXLSXExport.Create(nil);
        TfrxXLSXExport(Exporter).Wysiwyg := True;
        TfrxXLSXExport(Exporter).EmptyLines := True;
        TfrxXLSXExport(Exporter).SuppressPageHeadersFooters := False;
        TfrxXLSXExport(Exporter).ChunkSize := 1;
        // Pastikan extension .xlsx
        if FileExt <> '.xlsx' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xlsx')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else if SaveDialog.FilterIndex = 2 then
      begin
        // Excel 97-2003 (.xls)
        Exporter := TfrxXLSExport.Create(nil);
        TfrxXLSExport(Exporter).Wysiwyg := True;
        TfrxXLSExport(Exporter).EmptyLines := True;
        TfrxXLSExport(Exporter).SuppressPageHeadersFooters := False;
        // Pastikan extension .xls
        if FileExt <> '.xls' then
          Exporter.FileName := ChangeFileExt(SaveDialog.FileName, '.xls')
        else
          Exporter.FileName := SaveDialog.FileName;
      end
      else
      begin
        ShowMessage('Format file tidak didukung!');
        Exit;
      end;
      try
        // Export
        Exporter.ShowDialog := False;
        Rpt.Export(Exporter);
        // Konfirmasi buka file
        if MessageDlg('Export berhasil!' + #13#10 +
                      'File: ' + Exporter.FileName + #13#10#13#10 +
                      'Apakah ingin membuka file sekarang?',
                      mtInformation, [mbYes, mbNo], 0) = mrYes then
        begin
          ShellExecute(0, 'open', PChar(Exporter.FileName), nil, nil, SW_SHOW);
        end;
      except
        on E: Exception do
        begin
          ShowMessage('Error saat export: ' + E.Message);
        end;
      end;
    end;
  finally
    if Assigned(Exporter) then
      Exporter.Free;
    SaveDialog.Free;
  end;
end;

procedure TFRpt_Neraca.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRpt_Neraca.BPrintClick(Sender: TObject);
var tgl,tgl2,periode1,periode2:string;
begin
    if CbBulan2.Text<>'' then
    begin
     QRpt_Neraca.Close;
      with QRpt_Neraca do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from  "VNeraca_month" where trans_year='+quotedstr(SpTahun.editvalue)+''+
        ' and bulan='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
        Open;
      end;
      //end;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neraca.fr3');
      Rpt.ShowReport();
    end;
  //  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan2.Text+' '+INTTOSTR(spTahun.EditValue));
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
 //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='  '+FormatDateTime('dd',dtmulai.editvalue)+' - '+FormatDateTime('dd mmm yyy',dtselesai.editvalue);

  //end;
    if CbBulan2.Text='' then
    begin
      with QRpt_Neracathn do
      begin
         Close;
         sql.Clear;
         sql.Text:='select * from  "VNeraca_Year" where trans_year='+quotedstr(SpTahun.editvalue);
         Open;
      end;
        Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neracathn.fr3');
        Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:='TAHUN  '+edthn2.Text;
        Tfrxmemoview(Rpt.FindObject('Mspt')).Memo.Text:='SPT TH '+FloatToStr(StrToFloat(edthn2.Text)-1);
        Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
      //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='  '+FormatDateTime('dd',dtmulai.editvalue)+' - '+FormatDateTime('dd mmm yyy',dtselesai.editvalue);
        Rpt.ShowReport();
    end;
end;

procedure TFRpt_Neraca.CbBulan2Change(Sender: TObject);
begin
    case cbbulan2.Itemindex of
    0:bln:='01';
    1:bln:='02';
    2:bln:='03';
    3:bln:='04';
    4:bln:='05';
    5:bln:='06';
    6:bln:='07';
    7:bln:='08';
    8:bln:='09';
    9:bln:='10';
    10:bln:='11';
    11:bln:='12';
  end;
end;

procedure TFRpt_Neraca.cbbulan2Select(Sender: TObject);
begin
  case cbbulan2.Itemindex of
    0:bln:='01';
    1:bln:='02';
    2:bln:='03';
    3:bln:='04';
    4:bln:='05';
    5:bln:='06';
    6:bln:='07';
    7:bln:='08';
    8:bln:='09';
    9:bln:='10';
    10:bln:='11';
    11:bln:='12';
  end;
end;

procedure TFRpt_Neraca.dxBarLargeButton2Click(Sender: TObject);
var tgl,tgl2,periode1,periode2:string;
begin
    if CbBulan2.Text<>'' then
    begin
     QRpt_Neraca.Close;
      with QRpt_Neraca do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from  "VNeraca_month" where trans_year='+quotedstr(SpTahun.editvalue)+''+
        ' and bulan='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
        Open;
      end;
      //end;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neraca.fr3');
      //Rpt.ShowReport();

      Rpt.PrepareReport(True);
      ExportToExcel;
    end;
  //  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan2.Text+' '+INTTOSTR(spTahun.EditValue));
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
 //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='  '+FormatDateTime('dd',dtmulai.editvalue)+' - '+FormatDateTime('dd mmm yyy',dtselesai.editvalue);

  //end;
    if CbBulan2.Text='' then
    begin
      with QRpt_Neracathn do
      begin
         Close;
         sql.Clear;
         sql.Text:='select * from  "VNeraca_Year" where trans_year='+quotedstr(SpTahun.editvalue);
         Open;
      end;
        Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neracathn.fr3');

         if Rpt.FindObject('Mbln') <> nil then
    TfrxMemoView(Rpt.FindObject('Mbln')).Memo.Text:='TAHUN  '+edthn2.Text;
         if Rpt.FindObject('Mspt') <> nil then
    TfrxMemoView(Rpt.FindObject('Mspt')).Memo.Text :='SPT TH '+FloatToStr(StrToFloat(edthn2.Text)-1);
          if Rpt.FindObject('Mpt') <> nil then
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text :=''+FHomeLogin.vNamaPRSH ;
      Rpt.PrepareReport(True);
      ExportToExcel;

    end;
end;

procedure TFRpt_Neraca.DxRefreshClick(Sender: TObject);
var periode1,periode2:string;
begin
    if CbBulan2.Text<>'' then
    begin
      DBGridEh1.Visible:=false;
      DBGridEh2.Visible:=true;
      DBGridEh2.Align:=alClient;
      QRpt_Neraca.Close;
      with QRpt_Neraca do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from  "VNeraca_month" where trans_year='+quotedstr(SpTahun.editvalue)+''+
        ' and bulan='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
        Open;
      end;
      QRpt_Neraca.Open;
    end else
      begin
        DBGridEh1.Visible:=true;
        DBGridEh2.Visible:=false;
        with QRpt_Neracathn do
        begin
           Close;
           sql.Clear;
           sql.Text:='select * from  "VNeraca_Year" where trans_year='+quotedstr(SpTahun.editvalue);
           Open;
        end;
      end;
end;

procedure TFRpt_Neraca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRpt_Neraca.FormCreate(Sender: TObject);
begin
  RealFRpt_Neraca:=Self;
end;

procedure TFRpt_Neraca.FormDestroy(Sender: TObject);
begin
  RealFRpt_Neraca:=nil;
end;

procedure TFRpt_Neraca.FormShow(Sender: TObject);
begin
  edth.Text:=FormatDateTime('yyyy',now());
  edthn2.Text:=FormatDateTime('yyyy',now());
  spTahun.EditValue := YearOf(Now);
//  dtmulai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
//  DtSelesai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
end;

initialization
RegisterClass(TFRpt_Neraca);

end.
