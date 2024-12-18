unit URpt_BukuHarianPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  RzButton, Vcl.ExtCtrls, RzCmboBx, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Mask, RzEdit, MemTableDataEh, MemTableEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh,ComCtrls, RzBtnEdt, cxGraphics, cxControls, cxLookAndFeels,
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
  dxRibbon, cxButtonEdit, cxTextEdit;

type
  TFRpt_BukuHarianPembelian = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Bprint: TRzBitBtn;
    Rpt: TfrxReport;
    DbRptSP: TfrxDBDataset;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Label3: TLabel;
    QRptBHP: TUniQuery;
    MemBHP: TMemTableEh;
    dsbph: TDataSource;
    QCategory: TUniQuery;
    QRptBHPNon: TUniQuery;
    DbRptBHPNon: TfrxDBDataset;
    BBatal: TRzBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    edkd_akun1: TRzEdit;
    Ednm_akun1: TRzButtonEdit;
    CKUm: TCheckBox;
    QRptBHPDet: TUniQuery;
    DbRptSPdet: TfrxDBDataset;
    BPrint2: TRzBitBtn;
    Rpt_BHP: TfrxDBDataset;
    BPrint11: TRzBitBtn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    dtMulai: TcxBarEditItem;
    dtSelesai: TcxBarEditItem;
    EdAkun: TcxBarEditItem;
    Ednm_akun: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBatalClick(Sender: TObject);
    procedure Ednm_akun1ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure Panel1Click(Sender: TObject);
    procedure BPrint11Click(Sender: TObject);
    procedure Ednm_akun1Change(Sender: TObject);
    procedure EdAkunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


function FRpt_BukuHarianPembelian: TFRpt_BukuHarianPembelian;
var
  Bulan,PPN1:string;

namaBulan: array[1..12] of string = ( 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli',
'Agustus', 'September', 'Oktober', 'Nopember', 'Desember');

implementation

{$R *.dfm}

uses UDatamodule, UMainmenu, UAkun_Perkiraan_TerimaMat, UMy_Function;
var
  realfbhp : TFRpt_BukuHarianPembelian;
// implementasi function
function frpt_bukuharianpembelian: TFRpt_BukuHarianPembelian;
begin
  if realfbhp <> nil then
    FRpt_BukuHarianPembelian:= realfbhp
  else
    Application.CreateForm(TFRpt_BukuHarianPembelian, Result);
end;
procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

{procedure replaceLongMonthNamesWithIndonesian;
var i : integer;
begin
for i:=1 to High(namaBulan) do
longmonthnames[i]:=namaBulan[i];
end;                    }

procedure TFRpt_BukuHarianPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dm.Koneksi.Close;
  Action:=caFree;
end;

procedure TFRpt_BukuHarianPembelian.FormCreate(Sender: TObject);
begin
  realfbhp:=self;
end;

procedure TFRpt_BukuHarianPembelian.FormDestroy(Sender: TObject);
begin
  realfbhp:=nil;
end;

procedure TFRpt_BukuHarianPembelian.FormShow(Sender: TObject);
begin
edkd_akun1.Clear;
Ednm_akun1.Clear;
DtMulai1.Clear;
MemBHP.Close;
MemBHP.Open;
{if QRptBHP.Active=false then QRptBHP.Active:=true;
if MemBHP.Active=false then MemBHP.Active:=true;
}end;

procedure TFRpt_BukuHarianPembelian.Panel1Click(Sender: TObject);
begin
MemBHP.Close;
MemBHP.Open;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.DesignReport();
end;

procedure TFRpt_BukuHarianPembelian.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFRpt_BukuHarianPembelian.RptGetValue(const VarName: string;
  var Value: Variant);
  var varppn:real;
begin
{MemBHP.First;
while not MemBHP.Eof do
begin
if MemBHP.FieldByName('grandtotal').AsString='0' then
begin
    Tfrxmemoview(Rpt.FindObject('Mhutang')).Memo.Text:='';
end;
if MemBHP.FieldByName('nilai_um').AsString='0' then
begin
    Tfrxmemoview(Rpt.FindObject('Memo46')).Memo.Text:='';
    Tfrxmemoview(Rpt.FindObject('Mlain2')).Memo.Text:='';
end;
if MemBHP.FieldByName('lain2').value=0 then
begin
    Tfrxmemoview(Rpt.FindObject('memo85')).Memo.Text:='';
end;
{if MemBHP.FieldByName('Bahan_penolong').value=0 then
begin
    Tfrxmemoview(Rpt.FindObject('MPenolong')).Memo.Text:='';
end;
if MemBHP.FieldByName('kimia').value=0 then
begin
    Tfrxmemoview(Rpt.FindObject('MKimia')).Memo.Text:='';
end;
if MemBHP.FieldByName('Bahan_kms').Value=0 then
begin
    Tfrxmemoview(Rpt.FindObject('MKms')).Memo.Text:='';
end;
if MemBHP.FieldByName('ppn').Value=0 then
begin
    Tfrxmemoview(Rpt.FindObject('Mppn')).Memo.Text:='';
end;   }
//MemBHP.Next;
//end;
{with dm.QTemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='SELECT sum(jumlah) AS jmlh FROM t_detail_bayar_real AS "a" INNER JOIN tkas AS b ON a.nobk=b.voucher'+
  ' INNER JOIN t_po AS "c" ON a.no_voucher = c.nopo INNER JOIN (SELECT	b.nopo,a.tgl_terima	FROM t_terima_material '+
  ' "a"	INNER JOIN t_terima_material_det AS b	ON a.no_terima=b.no_terima WHERE a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' '+
  ' GROUP BY b.nopo,a.tgl_terima) AS d ON c.nopo = d.nopo WHERE b.kodesp=''1211'' AND c.status_um=''1'' GROUP BY d.tgl_terima ';
  ExecSQL;
end;
  if CompareText(VarName, 'varppn') = 0 then
  begin
    Value := Dm.Qtemp['jmlh'];
  end; }
end;

procedure TFRpt_BukuHarianPembelian.BPrint11Click(Sender: TObject);
begin
if EdAkun.EditValue<> null then
begin
  with QRptBHP do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.trans_no,a.trans_date,a.faktur_no,b.po_no,debt_remaining,a.um_value,'+
    ' a.account_code ak_htng,c.item_stock_code,c.item_name,b.account_code,b.ppn_account,b.subtotalrp,'+
    ' b.ppn_rp,b.grandtotal,concat(a.account_code,'' ('',d.account_name,'')'') ak_ht_name,'+
    ' concat(b.account_code,'' ('',e.account_name,'')'') ak_detail,case when b.ppn_account <> '''' then'+
    ' concat(b.ppn_account,'' ('',f.account_name,'')'') else '''' end ak_ppn,case when a.account_um_code <> '''''+
    ' then concat(a.account_um_code,'' ('',g.account_name,'')'') else '''' end ak_um,c.group_name,h.supplier_name '+
    ' from t_purchase_invoice a INNER JOIN  t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from warehouse.t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where a.account_code='+QuotedStr(edkd_akun1.Text)+' and a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    Execute;
  end;
end;
if EdAkun.EditValue=null then
begin
  with QRptBHP do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.trans_no,a.trans_date,a.faktur_no,b.po_no,debt_remaining,a.um_value,'+
    ' a.account_code ak_htng,c.item_stock_code,c.item_name,b.account_code,b.ppn_account,b.subtotalrp,'+
    ' b.ppn_rp,b.grandtotal,concat(a.account_code,'' ('',d.account_name,'')'') ak_ht_name,'+
    ' concat(b.account_code,'' ('',e.account_name,'')'') ak_detail,case when b.ppn_account <> '''' then'+
    ' concat(b.ppn_account,'' ('',f.account_name,'')'') else '''' end ak_ppn,case when a.account_um_code <> '''''+
    ' then concat(a.account_um_code,'' ('',g.account_name,'')'') else '''' end ak_um,c.group_name,h.supplier_name '+
    ' from t_purchase_invoice a INNER JOIN  t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from warehouse.t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    Execute;
  end;
end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Harian_Pembelian.Fr3');
  // Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
  //  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  //  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
    rpt.ShowReport();
end;

procedure TFRpt_BukuHarianPembelian.dxBarLargeButton1Click(Sender: TObject);
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
if EdAkun.EditValue<> null then
begin
  with QRptBHP do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.trans_no,a.trans_date,a.faktur_no,b.po_no,debt_remaining,a.um_value,'+
    ' a.account_code ak_htng,c.item_stock_code,c.item_name,b.account_code,b.ppn_account,b.subtotalrp,'+
    ' b.ppn_rp,b.grandtotal,concat(a.account_code,'' ('',d.account_name,'')'') ak_ht_name,'+
    ' concat(b.account_code,'' ('',e.account_name,'')'') ak_detail,case when b.ppn_account <> '''' then'+
    ' concat(b.ppn_account,'' ('',f.account_name,'')'') else '''' end ak_ppn,case when a.account_um_code <> '''''+
    ' then concat(a.account_um_code,'' ('',g.account_name,'')'') else '''' end ak_um,c.group_name,h.supplier_name '+
    ' from t_purchase_invoice a INNER JOIN  t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where d.header_code='+QuotedStr(edakun.EditValue)+' and a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    Execute;
  end;
end;
if EdAkun.EditValue=null then
begin
  with QRptBHP do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.trans_no,a.trans_date,a.faktur_no,b.po_no,debt_remaining,a.um_value,'+
    ' a.account_code ak_htng,c.item_stock_code,c.item_name,b.account_code,b.ppn_account,b.subtotalrp,'+
    ' b.ppn_rp,b.grandtotal,concat(a.account_code,'' ('',d.account_name,'')'') ak_ht_name,'+
    ' concat(b.account_code,'' ('',e.account_name,'')'') ak_detail,case when b.ppn_account <> '''' then'+
    ' concat(b.ppn_account,'' ('',f.account_name,'')'') else '''' end ak_ppn,case when a.account_um_code <> '''''+
    ' then concat(a.account_um_code,'' ('',g.account_name,'')'') else '''' end ak_um,c.group_name,h.supplier_name '+
    ' from t_purchase_invoice a INNER JOIN  t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue));
    Execute;
  end;
end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Harian_Pembelian.Fr3');
  // Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.EditValue));
  //  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  //  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
    rpt.ShowReport();
end;

procedure TFRpt_BukuHarianPembelian.EdAkunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 with  FAkun_Perkiraan_TerimaMat do
  begin
    Show;
    statustr:='1';
    with qakun do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.code,a.header_code,a.account_name,a.posisi_dk,b.module_id,header_name  from t_ak_account a '+
      ' INNER JOIN t_ak_account_det b on a.code=b.account_code '+
      ' INNER JOIN t_ak_header c on a.header_code=c.header_code WHERE module_id=''2''  '+
      ' GROUP BY a.code,a.header_code,a.account_name,a.posisi_dk,b.module_id,header_name ORDER BY a.code asc';
     // ' where a.id_modul=''2'' and b.nama_perkiraan like ''%HUTANG%'' ORDER BY b.kode asc';
      Open;
    end;
  //  statustr:='bhp';
    //if QAkun.Active=false then QAkun.Active:=True;
    QAkun.Active:=True;
  end;
end;

procedure TFRpt_BukuHarianPembelian.Ednm_akun1ButtonClick(Sender: TObject);
begin
  with  FAkun_Perkiraan_TerimaMat do
  begin
    Show;
    statustr:='1';
    with qakun do
    begin
      close;
      sql.Clear;
      sql.Text:='select a.code,a.header_code,a.account_name,a.posisi_dk,b.module_id,header_name  from t_ak_account a '+
      ' INNER JOIN t_ak_account_det b on a.code=b.account_code '+
      ' INNER JOIN t_ak_header c on a.header_code=c.header_code WHERE module_id=''2''  '+
      ' GROUP BY a.code,a.header_code,a.account_name,a.posisi_dk,b.module_id,header_name ORDER BY a.code asc';
     // ' where a.id_modul=''2'' and b.nama_perkiraan like ''%HUTANG%'' ORDER BY b.kode asc';
      Open;
    end;
  //  statustr:='bhp';
    //if QAkun.Active=false then QAkun.Active:=True;
    QAkun.Active:=True;
  end;
end;

procedure TFRpt_BukuHarianPembelian.Ednm_akun1Change(Sender: TObject);
begin

end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFRpt_BukuHarianPembelian);

end.
