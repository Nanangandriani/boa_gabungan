unit URpt_Rekap_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, RzLabel, Vcl.ExtCtrls, RzPanel, Data.DB, MemDS, DBAccess, Uni,
  frxClass, frxDBSet, RzBtnEdt, Vcl.Mask, RzEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxCalendar, cxButtonEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, dxBar, cxBarEditItem, cxClasses,
  cxCheckBox, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRptRekap_Pembelian = class(TForm)
    RzPanel2: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Rpt: TfrxReport;
    frxDBRekap_pemb: TfrxDBDataset;
    Qrekap_pemb: TUniQuery;
    DTdari: TRzDateTimePicker;
    DTsampai: TRzDateTimePicker;
    RzLabel4: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    Edkd_sp: TRzEdit;
    Ednm_sp: TRzButtonEdit;
    Button1: TButton;
    RzLabel3: TRzLabel;
    RzLabel7: TRzLabel;
    EdKd_Barang: TRzEdit;
    EdNm_Barang: TRzButtonEdit;
    Ckppn: TCheckBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    BProduksi: TdxBarButton;
    BNonProduksi: TdxBarButton;
    BClosed: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    CbSupplier: TcxBarEditItem;
    CbBarang: TcxBarEditItem;
    Cxppn: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    DsRekap_Pembelian: TDataSource;
    BtnClear: TdxBarLargeButton;
    procedure Ednm_spButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdNm_BarangButtonClick(Sender: TObject);
    procedure RzPanel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CbBarangPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CbSupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    subquery:string;
  end;

//var
Function  FRptRekap_Pembelian: TFRptRekap_Pembelian;

implementation

{$R *.dfm}

uses USearch_Supplier, umainmenu, Ucari_barang, UDataModule, UMy_Function;
var
  realfrpt_rekappemb : TFRptRekap_Pembelian;
// implementasi function
function frptrekap_pembelian: TFRptRekap_Pembelian;
begin
  if realfrpt_rekappemb<> nil then
    FRptRekap_Pembelian:= realfrpt_rekappemb
  else
    Application.CreateForm(TFRptRekap_Pembelian, Result);
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFRptRekap_Pembelian.BtnClearClick(Sender: TObject);
begin
  DtMulai.EditValue:= null;
  DtSelesai.EditValue:= null;
  CbBarang.EditValue:= null;
end;

procedure TFRptRekap_Pembelian.Button1Click(Sender: TObject);
begin
  //frxXLSXExport1.(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
end;

procedure TFRptRekap_Pembelian.CbBarangPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FCari_Barang.Show;
  statustr:='Rekap_Pemb';
  FCari_Barang.QBarang.Close;
  FCari_Barang.QBarang.Open;
end;

procedure TFRptRekap_Pembelian.CbSupplierPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with FSearch_Supplier do
  begin
    show;
    statustr:='RekapPemb';
    QSupplier.Close;
    QSupplier.Open;
  end;
end;

procedure TFRptRekap_Pembelian.dxBarLargeButton1Click(Sender: TObject);
begin
  dm.qperusahaan.close;
  dm.qperusahaan.open;
  if DtMulai.EditValue= null then
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
  subquery:='select * from  purchase."V_RekapPembelian" where trans_date>='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue))+''+
            ' and trans_date<='+QuotedStr(FormatDateTime('yyy-mm-dd',dtselesai.EditValue));
  // kode Barang 0 dan ppn false
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian2.Fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  // ppn true
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and ppn > 0';
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian2.Fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  // supplier > 1
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and ppn > 0 and supplier_code='+QuotedStr(Edkd_sp.Text);
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;

  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and supplier_code='+QuotedStr(Edkd_sp.Text);
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtmulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  // Barang > 0
  if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:= subquery + ' and  item_name='+QuotedStr(CbBarang.EditValue)+' and supplier_code='+QuotedStr(Edkd_sp.Text) ;
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
  begin
    with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:= subquery + ' and ppn > 0 and  item_name='+QuotedStr(CbBarang.EditValue)+' and supplier_code='+QuotedStr(Edkd_sp.Text) ;
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:= subquery + ' and  item_name='+QuotedStr(CbBarang.EditValue) ;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
  if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:= subquery + ' and ppn > 0 and  item_name='+QuotedStr(CbBarang.EditValue) ;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end else
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
    SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',DtMulai.EditValue)+' - '+FormatDateTime('dd/MM/yyyy',DtSelesai.EditValue));
    SetMemo(Rpt,'msbu',' '+dm.qperusahaan['company_name']);
    Rpt.ShowReport();
  end;
end;

procedure TFRptRekap_Pembelian.DxRefreshClick(Sender: TObject);
begin
  dm.qperusahaan.close;
  dm.qperusahaan.open;
    if DtMulai.EditValue= null then
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
  subquery:='select * from purchase."V_RekapPembelian" where trans_date>='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.EditValue))+''+
            ' and trans_date<='+QuotedStr(FormatDateTime('yyy-mm-dd',dtselesai.EditValue));
  // kode Barang 0 dan ppn false
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  // ppn true
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and ppn > 0';
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  // supplier > 1
  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and ppn > 0 and supplier_code='+QuotedStr(Edkd_sp.Text);
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;

  if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
  begin
  with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:=subquery+' and supplier_code='+QuotedStr(Edkd_sp.Text);
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  // Barang > 0
  if (CbBarang.EditValue <> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:= subquery + ' and  item_name='+QuotedStr(CbBarang.EditValue)+' and supplier_code='+QuotedStr(Edkd_sp.Text) ;
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  if (CbBarang.EditValue <> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
  begin
    with Qrekap_pemb do
  begin
    close;
    sql.Clear;
    sql.Text:= subquery + ' and ppn > 0 and  item_name='+QuotedStr(CbBarang.EditValue)+' and supplier_code='+QuotedStr(Edkd_sp.Text) ;
    ExecSQL;
  end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  if (CbBarang.EditValue <> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:= subquery + ' and  item_name='+QuotedStr(CbBarang.EditValue) ;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
  if (CbBarang.EditValue <> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
  begin
    with Qrekap_pemb do
    begin
      close;
      sql.Clear;
      sql.Text:= subquery + ' and ppn > 0 and  item_name='+QuotedStr(CbBarang.EditValue) ;
      ExecSQL;
    end;
    Qrekap_pemb.Open;
    if Qrekap_pemb.RecordCount=0 then
    begin
      ShowMessage('Data Kosong');
    end;
  end;
end;

procedure TFRptRekap_Pembelian.EdNm_BarangButtonClick(Sender: TObject);
begin
  FCari_Barang.Show;
  statustr:='Rekap_Pemb';
end;

procedure TFRptRekap_Pembelian.Ednm_spButtonClick(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
    show;
    statustr:='RptRekapPemb';
    QSupplier.Close;
    QSupplier.Open;
  end;
end;

procedure TFRptRekap_Pembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFRptRekap_Pembelian.FormCreate(Sender: TObject);
begin
realfrpt_rekappemb:=self;
end;

procedure TFRptRekap_Pembelian.FormDestroy(Sender: TObject);
begin
realfrpt_rekappemb:=nil;
end;

procedure TFRptRekap_Pembelian.FormShow(Sender: TObject);
begin
  DTdari.Date:=now;
  DTsampai.Date:=now;
  Edkd_sp.Clear;
  Ednm_sp.Clear;
end;

procedure TFRptRekap_Pembelian.RzBitBtn1Click(Sender: TObject);
begin
dm.qperusahaan.close;
dm.qperusahaan.open;
subquery:='select * from  "V_RekapPembelian" where tgl_terima>='+QuotedStr(FormatDateTime('yyy-mm-dd',DTdari.Date))+''+
          ' and tgl_terima<='+QuotedStr(FormatDateTime('yyy-mm-dd',DTsampai.Date));
// kode Barang 0 dan ppn false
if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
begin
with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:=subquery;
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian2.Fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
// ppn true
if (CbBarang.EditValue= NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
begin
with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:=subquery+' and ppn > 0';
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian2.Fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
// supplier > 1
if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
begin
with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:=subquery+' and ppn > 0 and kd_supplier='+QuotedStr(Edkd_sp.Text);
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;

if (CbBarang.EditValue= NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
begin
with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:=subquery+' and kd_supplier='+QuotedStr(Edkd_sp.Text);
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
// Barang > 0
if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=false) then
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:= subquery + ' and  nm_material='+QuotedStr(EdNm_Barang.Text)+' and kd_supplier='+QuotedStr(Edkd_sp.Text) ;
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text<>'') and (Ckppn.Checked=true) then
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:= subquery + ' and ppn > 0 and  nm_material='+QuotedStr(EdNm_Barang.Text)+' and kd_supplier='+QuotedStr(Edkd_sp.Text) ;
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=false) then
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:= subquery + ' and  nm_material='+QuotedStr(EdNm_Barang.Text) ;
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
if (CbBarang.EditValue<> NULL) and (Edkd_sp.Text='') and (Ckppn.Checked=true) then
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:= subquery + ' and ppn > 0 and  nm_material='+QuotedStr(EdNm_Barang.Text) ;
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'msbu',' '+dm.qperusahaan['nama_perusahaan']);
  Rpt.ShowReport();
end;
{
if Edkd_sp.Text<>'' then
begin
with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:=subquery+' and kd_supplier='+QuotedStr(Edkd_sp.Text);
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_Pembelian.Fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'nmsbu',' '+SBU);
  Rpt.ShowReport();
end;
end;
if CbBarang.EditValue<> NULL then
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:= subquery + ' and  nm_material='+QuotedStr(EdNm_Barang.Text);
  ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'nmsbu',' '+SBU);
  Rpt.ShowReport();
end;    }
{  sql.Text:='SELECT c.nm_supplier,tr.nm_material,a.tgl_terima,tr.qty,a.nofaktur,'+
              '(case when a.tgl_faktur2=''1899-12-30'' then null else a.tgl_faktur2 end )as tgl_faktur,tr.sbtotal*a.nilai_valas as subtotal,tr.ppn,'+
              ' tr.grtotal*a.nilai_valas as grandtotal,a.kd_supplier,tr.kd_material_stok from '+
              ' t_terima_material a INNER JOIN t_supplier c on a.kd_supplier=c.kd_supplier  '+
              ' INNER JOIN (SELECT b.nm_material,a.no_terima,sum(a.qty) as qty,a.kd_material_stok,'+
              ' sum(a.subtotal)as sbtotal,sum(a.grandtotal)as grtotal,sum(ppn_rp) as ppn '+
              ' from t_terima_material_det a inner join t_material_stok b on '+
              '  a.kd_material_stok=b.kd_material_stok GROUP BY b.nm_material,a.no_terima,a.kd_material_stok)as '+
              ' tr on a.no_terima=tr.no_terima '+
              ' where tr.nm_material='+QuotedStr(EdNm_Barang.Text)+' and a.tgl_terima>='+QuotedStr(FormatDateTime('yyy-mm-dd',DTdari.Date))+''+
              ' and a.tgl_terima<='+QuotedStr(FormatDateTime('yyy-mm-dd',DTsampai.Date))+''+
              ' ORDER BY a.tgl_terima asc ';              }
end;

procedure TFRptRekap_Pembelian.RzBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFRptRekap_Pembelian.RzPanel2Click(Sender: TObject);
begin
  with Qrekap_pemb do
begin
  close;
  sql.Clear;
  sql.Text:='SELECT c.nm_supplier,tr.nm_material,a.tgl_terima,tr.qty,a.nofaktur,'+
              ' (case when a.tgl_faktur2=''1899-12-30'' then null else a.tgl_faktur2 end )as tgl_faktur,'+
              ' tr.sbtotal*a.nilai_valas as subtotal,tr.ppn,'+
              ' tr.grtotal*a.nilai_valas as grandtotal,a.kd_supplier,tr.kd_material_stok from '+
              ' t_terima_material a INNER JOIN t_supplier c on a.kd_supplier=c.kd_supplier  '+
              ' INNER JOIN (SELECT b.nm_material,a.no_terima,sum(a.qty) as qty,a.kd_material_stok,'+
              ' sum(a.subtotal)as sbtotal,sum(a.grandtotal)as grtotal,sum(ppn_rp) as ppn '+
              ' from t_terima_material_det a inner join t_material_stok b on '+
              '  a.kd_material_stok=b.kd_material_stok GROUP BY b.nm_material,a.no_terima,a.kd_material_stok)as '+
              ' tr on a.no_terima=tr.no_terima '+
              ' where tr.nm_material='+QuotedStr(EdNm_Barang.Text)+' and a.tgl_terima>='+QuotedStr(FormatDateTime('yyy-mm-dd',DTdari.Date))+''+
              ' and a.tgl_terima<='+QuotedStr(FormatDateTime('yyy-mm-dd',DTsampai.Date))+''+
              ' ORDER BY a.tgl_terima asc ';
            ExecSQL;
end;
  Qrekap_pemb.Open;
  if Qrekap_pemb.RecordCount=0 then
  begin
    ShowMessage('Data Kosong');
  end else
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptRekap_PembelianPerBarang.fr3');
  SetMemo(Rpt,'MPeriode','Periode: '+FormatDateTime('dd/MM/yyyy',Dtdari.Date)+' - '+FormatDateTime('dd/MM/yyyy',DTsampai.Date));
  SetMemo(Rpt,'nmsbu',' '+SBU);
  Rpt.DesignReport();
end;
initialization
RegisterClass(TFRptRekap_Pembelian);

end.
