unit URpt_Lr;

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
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, DataDriverEh,
  MemTableEh, cxLabel, cxSpinEdit, frxExportXLSX, frxExportBaseDialog,
  frxExportXLS, ShellAPI;

type
  TFRpt_Lr = class(TForm)
    cbbulan: TComboBox;
    Label16: TLabel;
    Label15: TLabel;
    edth: TSpinEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    DbLr_thn: TfrxDBDataset;
    QLr_thn: TUniQuery;
    Label2: TLabel;
    Label1: TLabel;
    dtmulai1: TRzDateTimeEdit;
    dtselesai1: TRzDateTimeEdit;
    QLr: TUniQuery;
    DbLr: TfrxDBDataset;
    Bprint2: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    Q_lr: TUniQuery;
    Db_lr: TfrxDBDataset;
    Ds_lr: TDataSource;
    Mem_lr: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    CbBulan2: TComboBox;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    dxBarLargeButton2: TdxBarLargeButton;
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bprint2Click(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln:string;
    procedure ExportToExcel;
  end;

//var
function  FRpt_Lr: TFRpt_Lr;

implementation

{$R *.dfm}

uses UMainmenu, UDataModule, UHomeLogin;
var
RealFRpt_Lr: TFRpt_Lr;
function FRpt_Lr: TFRpt_Lr;
begin
  if RealFRpt_Lr <> nil then
    FRpt_Lr:= RealFRpt_Lr
  else
    Application.CreateForm(TFRpt_Lr, Result);
end;

procedure TFRpt_Lr.ExportToExcel;
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

procedure TFRpt_Lr.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRpt_Lr.BPrintClick(Sender: TObject);
var subquery,subquery2,tgl,tgl2,tgl3:string;
begin
if cbbulan2.Text<>'' then
begin
  with Q_Lr do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "vlaba_rugi_month" where trans_year='+QuotedStr(SpTahun.EditValue)+' and '+
      ' trans_month='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lr.fr3');
    Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' - '+edth.Text);
  //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:=UpperCase(' '+FormatDateTime('dd',dtmulai1.Date)+' - '+FormatDateTime('dd/MMM/yyy',dtselesai1.Date));
    Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH;
    Tfrxmemoview(Rpt.FindObject('Memo11')).Memo.Text:=UpperCase(' % ');
    Rpt.ShowReport();
end;
  if cbbulan2.Text='' then
  begin
  with QLr_thn do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "vlaba_rugi_year" where trans_year='+QuotedStr(SpTahun.EditValue);
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lrthn.fr3');
    Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Tahun  '+edth.Text);
 //   Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:=UpperCase(' '+FormatDateTime('dd',dtmulai1.Date)+' - '+FormatDateTime('dd/MMM/yyy',dtselesai1.Date));
    Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH;
  //  Tfrxmemoview(Rpt.FindObject('Memo11')).Memo.Text:=UpperCase(' % ');
    Rpt.ShowReport();
  end;
end;

procedure TFRpt_Lr.cbbulanSelect(Sender: TObject);
begin
case cbbulan.Itemindex of
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

procedure TFRpt_Lr.dxBarLargeButton2Click(Sender: TObject);

var subquery,subquery2,tgl,tgl2,tgl3:string;
begin
if cbbulan2.Text<>'' then
begin
  with Q_Lr do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "vlaba_rugi_month" where trans_year='+QuotedStr(SpTahun.EditValue)+' and '+
      ' trans_month='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lr.fr3');

         if Rpt.FindObject('Mbln') <> nil then
    TfrxMemoView(Rpt.FindObject('Mbln')).Memo.Text :=UpperCase('Bulan  '+cbbulan.Text+' - '+edth.Text);
          if Rpt.FindObject('Mpt') <> nil then
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text :=''+FHomeLogin.vNamaPRSH;
          if Rpt.FindObject('Memo11') <> nil then
    TfrxMemoView(Rpt.FindObject('Memo11')).Memo.Text :=UpperCase(' % ');
      Rpt.PrepareReport(True);
      ExportToExcel;
end;

  if cbbulan2.Text='' then
  begin
  with QLr_thn do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "vlaba_rugi_year" where trans_year='+QuotedStr(SpTahun.EditValue);
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lrthn.fr3');

         if Rpt.FindObject('Mbln') <> nil then
    TfrxMemoView(Rpt.FindObject('Mbln')).Memo.Text :=UpperCase('Tahun  '+edth.Text);
          if Rpt.FindObject('Mpt') <> nil then
    TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text :=''+FHomeLogin.vNamaPRSH ;
      Rpt.PrepareReport(True);
      ExportToExcel;
  end;
end;

procedure TFRpt_Lr.DxRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
    Q_lr.Close;
  with Q_Lr do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "vlaba_rugi_month" where trans_year='+QuotedStr(SpTahun.EditValue)+' and '+
      ' trans_month='+QuotedStr(IntToStr(CbBulan2.ItemIndex));
      Open;
    end;
    Q_lr.Open;
    Mem_lr.Close;
    Mem_lr.Open;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFRpt_Lr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_Lr.FormCreate(Sender: TObject);
begin
  RealFRpt_lr:=self;
end;

procedure TFRpt_Lr.FormDestroy(Sender: TObject);
begin
  RealFRpt_lr:=nil;
end;

procedure TFRpt_Lr.FormShow(Sender: TObject);
begin
  edth.Text:=FormatDateTime('yyyy',now());
  SpTahun.EditValue:=FormatDateTime('yyyy',now());
end;

procedure TFRpt_Lr.Bprint2Click(Sender: TObject);
var subquery,tgl,tgl2:string;
begin
tgl:=edth.Text+'-'+bln;
subquery:='(SELECT KODE,kode_header,nama_perkiraan,id_LR,posisi_dk,lr,lr2 FROM (select * from t_daftar_perkiraan WHERE  '+
' st_lr>''0'') A RIGHT JOIN t_jenis_lr b on a.st_lr=b.id_lr ) a left JOIN '+
' ( select null periode1,null periode2,round(cast(sum(qty) as numeric),0) qty,kd_akun from (select a.periode1,a.periode2,sum(debit2+kredit2) qty,'+
' kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans WHERE '+
' to_char(a.periode1,''yyyy-mm'')='+QuotedStr(tgl)+' and (b.kd_akun<>''1146'' and kd_akun<>''4110'') and '+
' (debit2+kredit2) >0 group by a.periode1,a.periode2,kd_akun) a group by kd_akun '+
' UNION select a.periode1,a.periode2,round(cast(-sum(debit+kredit)as numeric),0) qty,kd_akun from ( select * from t_neraca_lajur1 '+
' WHERE to_char(periode1,''yyyy-mm'')='+QuotedStr(tgl)+' ORDER BY periode1 desc limit 1) a INNER JOIN t_neraca_lajur1_det b '+
' on a.notrans=b.notrans WHERE to_char(a.periode1,''yyyy-mm'')='+QuotedStr(tgl)+' and b.kd_akun=''1146'' '+
' group by a.periode1,a.periode2,kd_akun '+
' UNION /*Penjualan*/ select NULL periode1,NULL periode2,round(cast(sum(kredit)as numeric),0) qty,kd_akun from t_item_neraca a INNER JOIN  '+
' t_item_neraca_det b on a.no_in=b.no_in WHERE to_char(a.tgl_in,''yyyy-mm'')='+QuotedStr(tgl)+' and '+
' b.kd_akun=''4110'' GROUP BY kd_akun '+
' UNION /*Return Penjualan*/select NULL periode1,NULL periode2,round(cast(-sum(debit) as numeric),0) qty,''4200'' kd_akun from t_item_neraca a INNER JOIN '+
' t_item_neraca_det b on a.no_in=b.no_in WHERE to_char(a.tgl_in,''yyyy-mm'')='+QuotedStr(tgl)+' and '+
' b.kd_akun=''4110'' GROUP BY kd_akun '+
' UNION /*tkl*/ select null periode1,null periode2,round(cast(sum(kredit) as numeric),0) qty,kode_header from t_jurnal_memorial a INNER JOIN '+
' t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on b.akun_kredit=c.kode  '+
' WHERE to_char(a.tgl,''yyyy-mm'')='+QuotedStr(tgl)+' and b.akun_kredit=''5300'' group by kode_header'+
' union /*bop*/ select null periode1,null periode2,round(cast(sum(kredit)as numeric),0) qty,kode_header from t_jurnal_memorial a INNER JOIN '+
' t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on b.akun_kredit=c.kode '+
' WHERE to_char(a.tgl,''yyyy-mm'')='+QuotedStr(tgl)+' and c.kode_header=''5400'' and kode<>''5400.18'' '+
' GROUP BY kode_header  '+
' UNION SELECT periode1,periode2,round(cast(sum(qty)as numeric),0)qty,kd_akun FROM (select a.periode1,a.periode2,CASE WHEN (debit+kredit) ISNULL THEN 0 '+
' ELSE (debit+kredit) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans '+
' WHERE to_char(a.periode1,''yyyy-mm'')<'+QuotedStr(tgl)+' and b.kd_akun=''1146'' ORDER BY periode1 DESC LIMIT 1) A'+
' group by a.periode1,a.periode2,kd_akun '+
' UNION /*Bahan produksi*/ select null,null,round(cast(sum(qtypk)as numeric),0) qtypk,kdakun FROM (select akun_kredit kdakun,(debit+kredit) qtypk from '+
' t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo WHERE  '+
' keterangan like ''%Biaya - Biaya Yang Dipakai Untuk Produksi bulan%'' and to_char(a.tgl,''yyyy-mm'')='+QuotedStr(tgl)+''+
') x group by kdakun ) b on a.kode=b.kd_akun';

with QLr do
begin
  close;
  sql.Clear;
  sql.Text:=' SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,qty ,round(cast((qty/(select sum(qty) qty2 from (/*Penjualan*/ '+
  ' select NULL periode1,NULL periode2,round(cast(sum(kredit)as numeric),0) qty,kd_akun from t_item_neraca a INNER JOIN '+
  ' t_item_neraca_det b on a.no_in=b.no_in WHERE to_char(a.tgl_in,''yyyy-mm'')='+QuotedStr(tgl)+' and  b.kd_akun=''4110'''+
  ' GROUP BY kd_akun UNION /*Return Penjualan*/select NULL ,NULL ,round(cast(-sum(debit) as numeric),0) qty,''4200'' kd_akun'+
  ' from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in WHERE to_char(a.tgl_in,''yyyy-mm'')='+QuotedStr(tgl)+''+
  ' and b.kd_akun=''4110'' GROUP BY kd_akun)xx) )*100 as numeric),2)as qty2 FROM  ('+
  ' SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,CASE WHEN kode=''6200.01'' then -qty else qty end qty '+
  ' from '+subquery+' where (id_lr<>4 and id_lr<>6 and id_lr<>8) '+
  ' union /*LABA (RUGI) KOTOR*/ '+
  ' select CAST('''' AS VARCHAR ),null,''LABA (RUGI) KOTOR'' perk,''4'' idlr,'''' lr,'''' lr2,sum(qtypenj-(qtyhpp+qtybj)) Qtykotor from '+
  ' (SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypenj,case when id_lr=2 then sum(qty) else 0 end qtyhpp,case when  '+
  ' id_lr=3 then sum(qty) else 0 end qtybj from '+subquery+' GROUP BY id_lr) xx'+
  ' union /*LABA (RUGI) USAHA*/ '+
  ' select CAST('''' AS VARCHAR ),null,''LABA (RUGI) USAHA'' perk,''6'' idlr,'''' lr,'''' lr2, sum((qtypenj-(qtyhpp+qtybj))-qtybo) Qtyusaha'+
  ' from (SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypenj,case when id_lr=2 then sum(qty) else 0 end qtyhpp,'+
  ' case when id_lr=3 THEN SUM(QTY) else 0 end qtybj,case when id_lr=5 then sum(qty) else 0 end qtyBO from '+subquery+' GROUP BY id_lr) xx'+
  ' union /*LABA (RUGI) PERUSAHAAN*/ '+
  ' select CAST('''' AS VARCHAR ),null,''LABA (RUGI) PERUSAHAAN'' perk,''8'' idlr,'''' lr,'''' lr2, sum((qtypenj+qtydu)-(qtyhpp+qtybj+qtybo)) Qtyusaha'+
  ' from (SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypenj,case when id_lr=2 then sum(qty) else 0 end qtyhpp,'+
  ' case when id_lr=3 THEN SUM(QTY) else 0 end qtybj,case when id_lr=5 then sum(qty) else 0 end qtyBO,case when id_lr=7 then '+
  ' sum(qty) else 0 end qtydu from (SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,CASE WHEN kode=''6200.01'' then -qty else qty end qty '+
  ' from '+subquery+' ) c GROUP BY id_lr) xx ORDER BY id_lr,kode ASC, qty desc)x';
  open;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lrbln.fr3');
  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:=UpperCase(' '+cbbulan.Text+' - '+edth.Text);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
  Tfrxmemoview(Rpt.FindObject('Memo11')).Memo.Text:=UpperCase(' % ');
  Rpt.ShowReport();
end;


initialization
RegisterClass(TFRpt_Lr);

end.
