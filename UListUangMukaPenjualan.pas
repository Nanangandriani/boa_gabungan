unit UListUangMukaPenjualan;

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
  DynVarsEh, cxSpinEdit, cxLabel, cxDropDownEdit, MemTableDataEh, Data.DB,
  DataDriverEh, MemTableEh, MemDS, DBAccess, Uni, dxBarExtItems, cxBarEditItem,
  dxBar, cxClasses, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, RzButton, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzSpnEdt, RzCmboBx, Vcl.ExtCtrls, RzPanel, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, RzLabel, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportXLS, frxDBSet, ShellAPI;

type
  TFListUangMukaPenjualan = class(TForm)
    RzLabel1: TRzLabel;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
    DBGridKelompok: TDBGridEh;
    DBGridItem: TDBGridEh;
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
    dxBarManager1Bar3: TdxBar;
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
    cbSBU: TdxBarCombo;
    QUangMukaPenjualan: TUniQuery;
    DsUangMukaPenjualan: TDataSource;
    cxBarEditItem4: TcxBarEditItem;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    Report: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure ActBaruExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure ActSearchClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
    procedure ExportToExcel;
  end;

var
  FListUangMukaPenjualan: TFListUangMukaPenjualan;

implementation

{$R *.dfm}

uses UNew_UangMukaPenjualan, UHomeLogin, UDataModule, UMy_Function, UMainMenu;

procedure TFListUangMukaPenjualan.ActDelExecute(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
  try
    if MessageDlg('Anda Yakin Mau Hapus Uang Muka Dengan No. '+QUangMukaPenjualan.FieldValues['no_trans']+' '+ '?', mtInformation, [mbYes]+[mbNo],0) = mrYes then
    begin

      with dm.Qtemp do
      begin
        Close;
        SQL.Clear;
        SQL.Text:='UPDATE t_down_payment_sales SET deleted_at=NOW(), '+
                  'deleted_by='+QuotedStr(Nm)+' '+
                  'WHERE no_trans='+QuotedStr(QUangMukaPenjualan.FieldValues['no_trans'])+' ';
        ExecSQL;
      end;

      if dm.Koneksi.InTransaction then
        dm.Koneksi.Commit;
      MessageDlg('Hapus Berhasil ..!!',mtInformation,[MBOK],0);
      Refresh;
    end;
  Except on E :Exception do
    begin
      MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
      if dm.Koneksi.InTransaction then
        Dm.koneksi.Rollback ;
    end;
  end;
end;

procedure TFListUangMukaPenjualan.ActROExecute(Sender: TObject);
var month,year:String;
begin
  DBGrid.SearchPanel.SearchingText:='';
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListUangMukaPenjualan.ActSearchClick(Sender: TObject);
begin
  DBGrid.SearchPanel.SearchingText:='';
  Refresh;
end;

procedure TFListUangMukaPenjualan.ActUpdateExecute(Sender: TObject);
begin

  FNew_UangMukaPenjualan.Clear;
  Status:=1;
  with FNew_UangMukaPenjualan do
  begin
    edNoUangMuka.Text:=QUangMukaPenjualan.FieldValues['no_trans'];
    dtTanggal.Date:=QUangMukaPenjualan.FieldValues['trans_date'];
    strKodePelanggan:=QUangMukaPenjualan.FieldValues['customer_code'];
    edNama_Pelanggan.Text:=QUangMukaPenjualan.FieldValues['customer_name'];
    edAkunUangMuka.Text:=QUangMukaPenjualan.FieldValues['account_code'];
    edNamaAkunUangMuka.Text:=QUangMukaPenjualan.FieldValues['account_name'];
    edJumlah.value:=QUangMukaPenjualan.FieldValues['grand_tot'];
    kd_kares:='0';
  end;

  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.* from t_cash_bank_acceptance_down_payment a '+
              'where no_trans_down_payment='+QuotedStr(QUangMukaPenjualan.FieldValues['no_trans']);
    Open;
  end;

  if dm.Qtemp2.RecordCount>0 then
  begin
    MessageDlg('Uang Muka Sudah Dibayarkan..!!',mtInformation,[mbRetry],0);
    FNew_UangMukaPenjualan.BSave.Enabled:=False;
  end else begin
    FNew_UangMukaPenjualan.BSave.Enabled:=True;
  end;

  FNew_UangMukaPenjualan.ShowModal;
end;

procedure TFListUangMukaPenjualan.ExportToExcel;
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
        Report.Export(Exporter);
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

procedure TFListUangMukaPenjualan.dxBarLargeButton1Click(Sender: TObject);
begin
  Refresh;
  if QUangMukaPenjualan.RecordCount=0 then
  begin
    showmessage('Tidak ada data yang bisa dicetak !');
    exit;
  end else
  begin
    cLocation := ExtractFilePath(Application.ExeName);
    //ShowMessage(cLocation);
    Report.LoadFromFile(cLocation +'report/rpt_listuangmukapenjualan'+ '.fr3');
    SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
    SetMemo(Report,'periode',Uppercase('BULAN :'+cbBulan.Text+' TAHUN :'+edTahun.Text));
    Report.PrepareReport(True);
    ExportToExcel;
  end;
end;

procedure TFListUangMukaPenjualan.FormShow(Sender: TObject);
begin
  DBGrid.SearchPanel.SearchingText:='';
  ActROExecute(sender);
  FillSBUBarCombo(cbSBU);
end;

procedure TFListUangMukaPenjualan.Refresh;
var mm: Integer;
strSBU : String;
begin
  if FHomeLogin.vStatOffice=0 then
  begin
    strSBU:=cbSBU.Text;
  end else
  begin
    strSBU:=FHomeLogin.vKodePRSH;
  end;

  mm:=cbBulan.ItemIndex+1;
  DBGrid.StartLoadingStatus();
  try
    with QUangMukaPenjualan do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select a.no_trans,a.trans_date,a.customer_code,c.account_name,b.customer_name,'+
                'a.account_code,a.grand_tot,(SELECT array_to_string(array_agg(trans_no), '', '') '+
                'FROM t_selling_down_payment '+
                'WHERE trans_no_down_payment = a.no_trans) trans_no ,e.sisa_uang_muka,e.voucher_no, e.no_rekening, e.name_bank from t_down_payment_sales a '+
		            'LEFT JOIN get_customer() b on b.customer_code=a.customer_code '+
                'LEFT JOIN t_ak_account_sub c ON c.account_code2=a.account_code '+
//                'LEFT JOIN t_selling_down_payment d on d.trans_no_down_payment=a.no_trans '+
                'LEFT JOIN get_down_payment_sales() e on e.no_trans_down_payment=a.no_trans '+
                'WHERE a.sbu_code='+QuotedStr(strSBU)+' AND EXTRACT(YEAR FROM a.trans_date)='+edTahun.Text+' AND '+
                'EXTRACT(MONTH FROM a.trans_date)='+(IntToStr(mm))+' and a.deleted_at is NULL ORDER BY a.trans_date DESC, a.no_trans DESC;';
      Open;
    end;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListUangMukaPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_UangMukaPenjualan.Clear;
  Status:=0;
  FNew_UangMukaPenjualan.BSave.Enabled:=True;
  FNew_UangMukaPenjualan.ShowModal;
end;

initialization
  RegisterClass(TFListUangMukaPenjualan);

end.
