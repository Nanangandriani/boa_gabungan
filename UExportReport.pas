unit UExportReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.ComCtrls,
  RzDTP, Vcl.Mask, RzEdit, RzBtnEdt, cxGraphics, cxControls, cxLookAndFeels,
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
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, cxProgressBar, cxButtonEdit,
  cxCalendar, cxRadioGroup, cxCheckGroup, MemTableDataEh, Data.DB, frxClass,
  frxExportBaseDialog, frxExportPDF, MemTableEh, MemDS, DBAccess, Uni, frxDBSet,
  dxBarExtItems, cxBarEditItem, dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxRibbon, scExcelExport, System.Win.ComObj;

type
  TFExportReport = class(TForm)
    RzLabel1: TRzLabel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
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
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    edWilayah: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    edArea: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    edKaresidenan: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    cxBarEditItem8: TcxBarEditItem;
    dtTanggal1: TdxBarDateCombo;
    dtTanggal2: TdxBarDateCombo;
    dxBarLargeButton2: TdxBarLargeButton;
    cxBarEditItem11: TcxBarEditItem;
    cbLaporoan: TcxBarEditItem;
    cbKelompok: TcxBarEditItem;
    cbBulan1: TdxBarCombo;
    edTahun1: TdxBarSpinEdit;
    cbBulan2: TdxBarCombo;
    edTahun2: TdxBarSpinEdit;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    cxBarEditItem18: TcxBarEditItem;
    dxBarLargeButton3: TdxBarLargeButton;
    cxBarEditItem19: TcxBarEditItem;
    cxBarEditItem20: TcxBarEditItem;
    cxBarEditItem22: TcxBarEditItem;
    cxBarEditItem23: TcxBarEditItem;
    cxBarEditItem24: TcxBarEditItem;
    dxBarLargeButton4: TdxBarLargeButton;
    cbJenisUsaha: TdxBarCombo;
    dxBarLargeButton5: TdxBarLargeButton;
    cbVolume: TdxBarCombo;
    cbPaperSize: TdxBarCombo;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    DsReport: TDataSource;
    Qreport: TUniQuery;
    cxBarEditItem12: TcxBarEditItem;
    dtTanggalAkhir: TcxBarEditItem;
    dtTanggalAwal: TcxBarEditItem;
    DBGrid: TDBGridEh;
    SaveDialog1: TSaveDialog;
    scExcelExport1: TscExcelExport;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbLaporoanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vSP: String;
  end;

  function FExportReport: TFExportReport;

//var
//  FExportReport: TFExportReport;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMainMenu, UHomeLogin;

var
  exportreport : TFExportReport;

function FExportReport: TFExportReport;
begin
  if exportreport <> nil then
    FExportReport:= exportreport
  else
    Application.CreateForm(TFExportReport, Result);
end;

procedure TFExportReport.cbLaporoanPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FMasterData.Caption:='Data Laporan';
  FMasterData.vcall:='exportreport';
  FMasterData.update_grid('id','report_name','sp_name','t_export_report_config','WHERE is_active=True');
  FMasterData.ShowModal;
end;

procedure TFExportReport.dxBarLargeButton5Click(Sender: TObject);
var
  i, j: Integer;
  vparameter, vtgl, strTanggal: String;
  ArrData: Variant;
  TotalRows, TotalCols: Integer;
  vExcel: Variant;
begin


  if cbLaporoan.EditValue <> '' then
  begin
    vparameter := '';

    FMainMenu.Load.Visible:=True;
    FMainMenu.Load.Percent:=10;

    if FExportReport.dtTanggalAwal.Visible = ivNever then
    begin
      vtgl := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggalAkhir.EditValue));
      strTanggal := FormatDateTime('dd-mm-yyyy', dtTanggalAkhir.EditValue);
    end else begin
      vtgl := QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggalAwal.EditValue)) + ',' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggalAkhir.EditValue));
      strTanggal := FormatDateTime('dd-mm-yyyy', dtTanggalAwal.EditValue) + ' sd ' + FormatDateTime('dd-mm-yyyy', dtTanggalAkhir.EditValue);
    end;

    vparameter := '(' + vtgl + ')';

    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM ' + vSP + vparameter;
      Open;
    end;

    FMainMenu.Load.Percent := 30;

    SaveDialog1.Filter := 'Excel 2007+ (*.xlsx)|*.xlsx|Excel 97-2003 (*.xls)|*.xls';
    SaveDialog1.DefaultExt := 'xlsx';
    SaveDialog1.FileName := 'Export ' + cbLaporoan.EditValue + ' Tanggal ' + strTanggal;

    if SaveDialog1.Execute then
    begin
      scExcelExport1.WorksheetName := 'Export ' + cbLaporoan.EditValue;
      scExcelExport1.ExcelVisible := False;

      try
        scExcelExport1.Connect;

//        vExcel := scExcelExport1.ExcelApplication.DefaultInterface;
        vExcel := scExcelExport1.ExcelApplication.Application;

//        vExcel := GetActiveOleObject('Excel.Application');
        vExcel.ScreenUpdating := False;
        vExcel.DisplayAlerts := False;
        vExcel.Calculation := -4135;

        scExcelExport1.ExcelWorkSheet.Cells.Range['A1','B1'].Merge(true);
        scExcelExport1.ExcelWorkSheet.Range['A1', 'B1'].Value2 := 'Export ' + cbLaporoan.EditValue + ' ' + FHomeLogin.vKodePRSH;
        scExcelExport1.ExcelWorkSheet.Cells.Range['A2','B2'].Merge(true);
        scExcelExport1.ExcelWorkSheet.Range['A2', 'B2'].Value2 := 'Tanggal: '+strTanggal;
//        scExcelExport1.ExcelWorkSheet.Range['B2', 'B2'].NumberFormat := 'dd/mm/yyyy';
        scExcelExport1.ExcelWorkSheet.Cells.Range['A2','B2'].HorizontalAlignment:=haLeft;

        scExcelExport1.ExcelWorkSheet.Range['A1', 'B1'].Font.Bold := True;
        scExcelExport1.ExcelWorkSheet.Range['A2', 'A2'].Font.Bold := True;
        scExcelExport1.ExcelWorkSheet.Range['B2', 'B2'].Font.Bold := True;

        scExcelExport1.ExcelWorkSheet.Range['A1', 'B2'].Font.Bold := True;

        TotalCols := dm.Qtemp.FieldCount;
        for j := 0 to TotalCols - 1 do
        begin
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, j + 1].Value2 := dm.Qtemp.Fields[j].FieldName;
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, j + 1].Font.Bold := True;
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, j + 1].HorizontalAlignment:=haCenter;
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, j + 1].Font.Color := clWhite;
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, j + 1].Interior.Color := RGB(68, 114, 196);
        end;

        FMainMenu.Load.Percent := 45;

        dm.Qtemp.Last;
        TotalRows := dm.Qtemp.RecordCount;
        dm.Qtemp.First;

        if TotalRows > 0 then
        begin
          ArrData := VarArrayCreate([1, TotalRows, 1, TotalCols], varVariant);
          i := 1;
          while not dm.Qtemp.Eof do
          begin
            for j := 0 to TotalCols - 1 do
            begin
              if dm.Qtemp.Fields[j].IsNull then
                ArrData[i, j + 1] := ''
              else if dm.Qtemp.Fields[j] is TDateTimeField then
                ArrData[i, j + 1] := dm.Qtemp.Fields[j].AsDateTime
              else if (dm.Qtemp.Fields[j] is TBCDField) or (dm.Qtemp.Fields[j].ClassNameIs('TFMTBCDField')) then
                ArrData[i, j + 1] := dm.Qtemp.Fields[j].AsFloat
              else if dm.Qtemp.Fields[j] is TNumericField then
                ArrData[i, j + 1] := dm.Qtemp.Fields[j].AsFloat
              else if (dm.Qtemp.Fields[j] is TIntegerField) or (dm.Qtemp.Fields[j].DataType = ftLargeint) then
                ArrData[i, j + 1] := dm.Qtemp.Fields[j].AsLargeInt
              else
                ArrData[i, j + 1] := dm.Qtemp.Fields[j].AsString;
            end;

            if (i mod 100 = 0) or (i = TotalRows) then
            begin
              FMainMenu.Load.Percent := 45 + Round((i / TotalRows) * 30);
              Application.ProcessMessages;
            end;

            Inc(i);
            dm.Qtemp.Next;
          end;

          FMainMenu.Load.Percent := 80;
          Application.ProcessMessages;

          scExcelExport1.ExcelWorkSheet.Range[
            scExcelExport1.ExcelWorkSheet.Cells.Item[5, 1],
            scExcelExport1.ExcelWorkSheet.Cells.Item[5 + TotalRows - 1, TotalCols]
          ].Value2 := ArrData;

          FMainMenu.Load.Percent := 90;
          Application.ProcessMessages;

          for j := 0 to TotalCols - 1 do
          begin
            if dm.Qtemp.Fields[j] is TDateTimeField then
            begin
//              vExcel.Cells[i + 2, j + 1] := dm.Qtemp.Fields[j].AsDateTime;
              vExcel.ActiveSheet.Columns[j + 1].NumberFormat := 'dd/mm/yyyy';
            end
            else if (dm.Qtemp.Fields[j] is TNumericField) or
                    (dm.Qtemp.Fields[j] is TBCDField) or
                    (dm.Qtemp.Fields[j].ClassNameIs('TFMTBCDField')) or
                    (dm.Qtemp.Fields[j] is TIntegerField) or
                    (dm.Qtemp.Fields[j].DataType = ftLargeint) then
            begin
//              vExcel.Cells[i + 2, j + 1] := dm.Qtemp.Fields[j].AsFloat;
              vExcel.ActiveSheet.Columns[j + 1].NumberFormat := '#.##0,00';
            end;
//            else
//            begin
//              vExcel.Cells[i + 2, j + 1] := dm.Qtemp.Fields[j].AsString;
//            end;
          end;
        end;


        scExcelExport1.ExcelWorkSheet.Range[
          scExcelExport1.ExcelWorkSheet.Cells.Item[4, 1],
          scExcelExport1.ExcelWorkSheet.Cells.Item[4 + TotalRows, TotalCols]
        ].Borders.LineStyle := 1;

        FMainMenu.Load.Percent := 100;
        Application.ProcessMessages;

        scExcelExport1.ExcelWorkSheet.Columns.AutoFit;
//        scExcelExport1.SaveAs(SaveDialog1.FileName, ffXLSX);
        if LowerCase(ExtractFileExt(SaveDialog1.FileName)) = '.xls' then
          scExcelExport1.SaveAs(SaveDialog1.FileName, ffXLS)
        else
          scExcelExport1.SaveAs(SaveDialog1.FileName, ffXLSX);

        MessageDlg('Export data ke Excel berhasil..!!',mtInformation,[MBOK],0);

      finally
        try
          if scExcelExport1.Connected then
          begin
            vExcel.ScreenUpdating := True;
            vExcel.DisplayAlerts := True;
            vExcel.Calculation := -4105;
          end;
        except
        end;
        scExcelExport1.Disconnect;

        FMainMenu.Load.Visible := False;
      end;
    end else begin
      FMainMenu.Load.Visible := False;
    end;
  end else begin
    MessageDlg('Nama Laporan wajib diisi..!!', mtInformation, [mbRetry], 0);
  end;
end;

procedure TFExportReport.dxBarLargeButton6Click(Sender: TObject);
var vtgl,vparameter: String;
    i: Integer;
begin
  if cbLaporoan.EditValue<>'' then
  begin
    vparameter:='';

    if FExportReport.dtTanggalAwal.Visible=ivNever then
    begin
      vtgl:=QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAkhir.EditValue));
    end else begin
      vtgl:=QuotedStr(FormatDateTime('yyyy-mm-dd',dtTanggalAkhir.EditValue));
    end;

    vparameter:='('+vtgl+')';
    DBGrid.Columns.Clear;

    with Qreport do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM '+vSP+vparameter;
      open;
    end;

    for i := 0 to Qreport.FieldCount - 1 do
    begin
      if Qreport.Fields[i] is TNumericField then
      begin
        TNumericField(Qreport.Fields[i]).DisplayFormat := '#,#0.00;(#,#0.00);#,#0';
      end else if Qreport.Fields[i] is TDateTimeField then
      begin
        TDateTimeField(Qreport.Fields[i]).DisplayFormat := 'dd/mm/yyyy';
      end;
    end;

    DBGrid.Columns[0].OptimizeWidth;
    DBGrid.AutoFitColWidths := True;

  end else begin
    MessageDlg('Nama Laporan wajib diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFExportReport.dxBarLargeButton7Click(Sender: TObject);
begin
  DBGrid.Columns.Clear;
  vSP:='';
  cbLaporoan.EditValue:='';
  dtTanggalAwal.EditValue:=NOW();
  dtTanggalAkhir.EditValue:=NOW();
end;

procedure TFExportReport.FormCreate(Sender: TObject);
begin
  exportreport:=Self;
end;

procedure TFExportReport.FormDestroy(Sender: TObject);
begin
  exportreport:=nil;
end;

procedure TFExportReport.FormShow(Sender: TObject);
begin
  DBGrid.Columns.Clear;
  vSP:='';
  cbLaporoan.EditValue:='';
  dtTanggalAwal.EditValue:=NOW();
  dtTanggalAkhir.EditValue:=NOW();
end;

initialization
  RegisterClass(TFExportReport);

end.
