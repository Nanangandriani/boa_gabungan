unit URpt_Kartu_Gudang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.StdCtrls, RzCmboBx, frxClass, Data.DB, MemDS, DBAccess,
  Uni, frxDBSet, Vcl.Mask, RzEdit, RzBtnEdt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCalendar, cxLabel, cxSpinEdit, dxBar,
  cxBarEditItem, cxClasses, dxRibbon, cxButtonEdit, cxCalc, cxTextEdit,
  cxDropDownEdit, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRpt_Kartu_Gudang = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CbBulan: TRzComboBox;
    CbGudang: TRzComboBox;
    EdTahun: TSpinEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    RptKartu_Gudang: TfrxReport;
    QKartu_Gudang: TUniQuery;
    DsKartu_Gudang: TDataSource;
    DbKartu_gudang: TfrxDBDataset;
    Label7: TLabel;
    Label8: TLabel;
    EdKd_supp: TEdit;
    EdNm_supp: TRzButtonEdit;
    Label1: TLabel;
    Label4: TLabel;
    Edkd: TEdit;
    EdNm: TRzButtonEdit;
    Qstok: TUniQuery;
    frxDBDataset1: TfrxDBDataset;
    DsStok: TDataSource;
    RzBitBtn1: TRzBitBtn;
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
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    CbBulan2: TComboBox;
    cxnm_barang: TcxBarEditItem;
    cxkd_barang: TcxBarEditItem;
    CbGudang2: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure CbBulanChange(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure EdTahunChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure EdNm_suppButtonClick(Sender: TObject);
    procedure EdNmButtonClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CbBulan2Select(Sender: TObject);
    procedure cxBarEditItem2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DxRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      NamaBulan : array [1..12] of string;
      procedure Load;
  end;

//var
Function  FRpt_Kartu_Gudang: TFRpt_Kartu_Gudang;
var  Tgl,bln,thn:string;
implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UCari_Barang;

//uses , USearch_Supplier_SPB, USearchMaterial, umainmenu;
var
  realfRptkg : TFRpt_Kartu_Gudang;
// implementasi function
function frpt_kartu_gudang: TFRpt_Kartu_Gudang;
begin
  if realfRptkg<> nil then
    FRpt_Kartu_Gudang:= realfRptkg
  else
    Application.CreateForm(TFRpt_Kartu_Gudang, Result);
end;
procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;
Procedure TFrpt_Kartu_Gudang.Load;
var
  comboProps: TcxComboBoxProperties;
begin
  if not (CbGudang2.Properties is TcxComboBoxProperties) then
    raise Exception.Create('Properties harus bertipe TcxComboBoxProperties!');
  comboProps := TcxComboBoxProperties(CbGudang2.Properties);
  comboProps.Items.Clear;
{CbMaterial.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_material_stok';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  CbMaterial.Items.Add(Dm.Qtemp.FieldByName('nm_material').AsString);
  Dm.Qtemp.Next;
  end;     }
  if loksbu='' then
  begin
  CbGudang.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_wh order by wh_name asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  CbGudang.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
  comboProps.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
  Dm.Qtemp.Next;
  end;
  end;
    if loksbu<>'' then
  begin
  CbGudang.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_wh where sbu_code='+QuotedStr(loksbu)+' or sbu_code='''' order by wh_name asc';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  CbGudang.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
  comboProps.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
  Dm.Qtemp.Next;
  end;
  end;
end;

procedure TFRpt_Kartu_Gudang.Panel1Click(Sender: TObject);
begin
with QKartu_Gudang do
begin
  close;
  sql.Clear;
  sql.Text:='SELECT	a.nm_material, c.nm_supplier,b.kd_stok, b.stokawal,b.masuk, b.keluar,'+
            ' b.stokakhir,b.satuan, b.ket, b.tgl_trans, b.kd_material_stok, b.kd_material,'+
            ' d.gudang FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON '+
            ' a.kd_material_stok = b.kd_material_stok LEFT JOIN t_supplier AS "c" ON '+
            ' a.kd_supplier = c.kd_supplier INNER JOIN t_material_stok_det AS d ON '+
            ' b.kd_material_stok = d.kd_material_stok and d.kd_stok=b.kd_stok '+
            ' where a.nm_material='+QuotedStr(EdNm.Text)+' and '+
            ' d.gudang='+QuotedStr(CbGudang.Text)+' and '+
            ' to_char(b.tgl_trans, ''mm-yyyy'')='+QuotedStr(thn)+''+
            ' GROUP BY a.nm_material, c.nm_supplier,b.kd_stok, b.stokawal,b.masuk,b.keluar,'+
            ' b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok, b.kd_material,d.gudang'+
            ' order by b.tgl_trans asc';
  ExecSQL;
end;
  QKartu_Gudang.Open;
  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'Memo24',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.DesignReport();
end;

procedure TFRpt_Kartu_Gudang.RzBitBtn1Click(Sender: TObject);
begin
  with QKartu_Gudang do
  begin
    close;
    sql.Clear;
    sql.Text:='select b.item_code,b.item_name,a.unit,a.wh_code,to_char(a.trans_date,''FMMonth''),'+
    ' A.trans_date,a.stock_code,sa_first,"in","out",sa_end,trans_code from t_trans_item A INNER JOIN'+
    ' t_item_stock b on a.item_stock_code=b.item_stock_code'+
    ' where b.item_code='+QuotedStr(Edkd.Text)+' AND A.wh_code='+QuotedStr(CbGudang.Text)+'and DATE_PART(''MONTH'',a.trans_date) ='+QuotedStr(inttostr(CbBulan.itemindex));
    Execute;
  end;
  QKartu_Gudang.Open;
  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'MBln',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.ShowReport();
end;

procedure TFRpt_Kartu_Gudang.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_Kartu_Gudang.BPrintClick(Sender: TObject);
begin
if EdKd_supp.Text='' then
begin
with Qstok do
begin
  close;
  sql.Clear;
  sql.Text:='Select Distinct * from (select a.kd_stok,a.kd_material_stok,a.stokakhir,c.nm_supplier,b.nm_material,d.gudang FROM t_trans_material a'+
  ' INNER JOIN t_material_stok b on a.kd_material_stok=b.kd_material_stok INNER JOIN t_supplier c on '+
  ' b.kd_supplier=c.kd_supplier INNER JOIN  t_material_stok_det AS d ON a.kd_material_stok=d.kd_material_stok and '+
  ' a.kd_stok=d.kd_stok where idstok in (select max(idstok) ids from (SELECT	a.nm_material,c.nm_supplier,b.kd_stok,'+
  ' b.stokawal,b.masuk,b.keluar,b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok,b.kd_material,d.gudang,b.idstok '+
  ' FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok INNER JOIN '+
  ' t_supplier AS "c" ON a.kd_supplier = c.kd_supplier INNER JOIN  t_material_stok_det AS d ON  b.kd_material_stok= '+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where  a.nm_material='+QuotedStr(EdNm.Text)+' and '+
  ' d.gudang='+QuotedStr(CbGudang.Text)+' and a.kd_supplier='+QuotedStr(EdKd_supp.Text)+' and '+
  ' to_char(b.tgl_trans,''mm-yyyy'')<'+QuotedStr(thn)+' GROUP BY a.nm_material,c.nm_supplier,b.kd_stok,b.stokawal, '+
  ' b.masuk,b.keluar, b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok, b.kd_material,d.gudang,b.idstok)a '+
  ' GROUP BY kd_stok,kd_material_stok order by kd_stok asc) and stokakhir > 0 '+
  ' UNION all'+
  ' select a.kd_stok,a.kd_material_stok,0,c.nm_supplier,b.nm_material,d.gudang FROM t_trans_material a'+
  ' INNER JOIN t_material_stok b on a.kd_material_stok=b.kd_material_stok INNER JOIN t_supplier c on '+
  ' b.kd_supplier=c.kd_supplier INNER JOIN  t_material_stok_det AS d ON a.kd_material_stok=d.kd_material_stok and '+
  ' a.kd_stok=d.kd_stok where idstok in (select min(idstok) ids from (SELECT	a.nm_material,c.nm_supplier,b.kd_stok,'+
  ' b.stokawal,b.masuk,b.keluar,b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok,b.kd_material,d.gudang,b.idstok '+
  ' FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok INNER JOIN '+
  ' t_supplier AS "c" ON a.kd_supplier = c.kd_supplier INNER JOIN  t_material_stok_det AS d ON  b.kd_material_stok= '+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where  a.nm_material='+QuotedStr(EdNm.Text)+' and '+
  ' d.gudang='+QuotedStr(CbGudang.Text)+' and '+
  ' to_char(b.tgl_trans,''mm-yyyy'')='+QuotedStr(thn)+' GROUP BY a.nm_material,c.nm_supplier,b.kd_stok,b.stokawal, '+
  ' b.masuk,b.keluar, b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok, b.kd_material,d.gudang,b.idstok)a '+
  ' GROUP BY kd_stok,kd_material_stok order by kd_stok asc) and masuk > 0) a order by kd_stok asc ';
  ExecSQL;
end;
Qstok.Open;
with QKartu_Gudang do
begin
  close;
  sql.Clear;
  sql.Text:='select Distinct * from (SELECT Distinct	sum(b.masuk) ms, sum(b.keluar) kl,min(stokakhir) sa,b.kd_stok,b.satuan,b.tgl_trans,b.kd_material_stok,'+
  ' b.kd_material FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok '+
  ' LEFT JOIN t_supplier AS "c" ON a.kd_supplier=c.kd_supplier INNER JOIN t_material_stok_det AS d ON b.kd_material_stok='+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where a.nm_material='+QuotedStr(EdNm.Text)+' and d.gudang='+QuotedStr(CbGudang.Text)+''+
  ' and to_char(b.tgl_trans, ''mm-yyyy'')='+QuotedStr(thn)+''+// and  b.kd_stok ='+QuotedStr(Qstok['kd_stok'])+''+
  ' GROUP BY b.kd_stok,b.satuan,b.tgl_trans,b.kd_material_stok,b.kd_material order by b.kd_stok,b.tgl_trans asc) a '+
  ' order by kd_stok,tgl_trans ASC ';
  ExecSQL;
end;
  QKartu_Gudang.Open;
  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'MBln',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.ShowReport();
end;
if EdKd_supp.Text<>'' then
begin
with Qstok do
begin
  close;
  sql.Clear;
  sql.Text:='select Distinct * from (select a.kd_stok,a.kd_material_stok,a.stokakhir,c.nm_supplier,b.nm_material,d.gudang FROM t_trans_material a'+
  ' INNER JOIN t_material_stok b on a.kd_material_stok=b.kd_material_stok INNER JOIN t_supplier c on '+
  ' b.kd_supplier=c.kd_supplier INNER JOIN  t_material_stok_det AS d ON a.kd_material_stok=d.kd_material_stok and '+
  ' a.kd_stok=d.kd_stok where idstok in (select max(idstok) ids from (SELECT	a.nm_material,c.nm_supplier,b.kd_stok,'+
  ' b.stokawal,b.masuk,b.keluar,b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok,b.kd_material,d.gudang,b.idstok '+
  ' FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok INNER JOIN '+
  ' t_supplier AS "c" ON a.kd_supplier = c.kd_supplier INNER JOIN  t_material_stok_det AS d ON  b.kd_material_stok= '+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where  a.nm_material='+QuotedStr(EdNm.Text)+' and '+
  ' d.gudang='+QuotedStr(CbGudang.Text)+' and a.kd_supplier='+QuotedStr(EdKd_supp.Text)+' and '+
  ' to_char(b.tgl_trans,''mm-yyyy'')<'+QuotedStr(thn)+' GROUP BY a.nm_material,c.nm_supplier,b.kd_stok,b.stokawal, '+
  ' b.masuk,b.keluar, b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok, b.kd_material,d.gudang,b.idstok)a '+
  ' GROUP BY kd_stok,kd_material_stok order by kd_stok asc) and stokakhir > 0 '+
  ' UNION all'+
  ' select a.kd_stok,a.kd_material_stok,0,c.nm_supplier,b.nm_material,d.gudang FROM t_trans_material a'+
  ' INNER JOIN t_material_stok b on a.kd_material_stok=b.kd_material_stok INNER JOIN t_supplier c on '+
  ' b.kd_supplier=c.kd_supplier INNER JOIN  t_material_stok_det AS d ON a.kd_material_stok=d.kd_material_stok and '+
  ' a.kd_stok=d.kd_stok where idstok in (select min(idstok) ids from (SELECT	a.nm_material,c.nm_supplier,b.kd_stok,'+
  ' b.stokawal,b.masuk,b.keluar,b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok,b.kd_material,d.gudang,b.idstok '+
  ' FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok INNER JOIN '+
  ' t_supplier AS "c" ON a.kd_supplier = c.kd_supplier INNER JOIN  t_material_stok_det AS d ON  b.kd_material_stok= '+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where  a.nm_material='+QuotedStr(EdNm.Text)+' and '+
  ' d.gudang='+QuotedStr(CbGudang.Text)+' and a.kd_supplier='+QuotedStr(EdKd_supp.Text)+' and '+
  ' to_char(b.tgl_trans,''mm-yyyy'')='+QuotedStr(thn)+' GROUP BY a.nm_material,c.nm_supplier,b.kd_stok,b.stokawal, '+
  ' b.masuk,b.keluar, b.stokakhir,b.satuan,b.ket,b.tgl_trans,b.kd_material_stok, b.kd_material,d.gudang,b.idstok)a '+
  ' GROUP BY kd_stok,kd_material_stok order by kd_stok asc) and masuk > 0) a order by kd_stok asc ';
  ExecSQL;
end;
Qstok.Open;
with QKartu_Gudang do
begin
  close;
  sql.Clear;
  sql.Text:='select Distinct * from (SELECT	distinct sum(b.masuk) ms, sum(b.keluar) kl,min(stokakhir) sa,b.kd_stok,b.satuan,b.tgl_trans,b.kd_material_stok,'+
  ' b.kd_material FROM	t_material_stok AS "a" INNER JOIN t_trans_material AS b ON a.kd_material_stok=b.kd_material_stok '+
  ' LEFT JOIN t_supplier AS "c" ON a.kd_supplier=c.kd_supplier INNER JOIN t_material_stok_det AS d ON b.kd_material_stok='+
  ' d.kd_material_stok and d.kd_stok=b.kd_stok  where a.nm_material='+QuotedStr(EdNm.Text)+' and d.gudang='+QuotedStr(CbGudang.Text)+''+
  ' and to_char(b.tgl_trans, ''mm-yyyy'')='+QuotedStr(thn)+''+// and  b.kd_stok ='+QuotedStr(Qstok['kd_stok'])+''+
  ' and a.kd_supplier='+QuotedStr(EdKd_supp.Text)+''+
  ' GROUP BY b.kd_stok,b.satuan,b.tgl_trans,b.kd_material_stok,b.kd_material order by b.kd_stok,b.tgl_trans asc) a '+
  ' order by kd_stok,tgl_trans ASC ';
  ExecSQL;
end;
  QKartu_Gudang.Open;
  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'Mbln',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.ShowReport();
end;
end;

procedure TFRpt_Kartu_Gudang.CbBulan2Select(Sender: TObject);
begin
case CbBulan.ItemIndex of
0:Tgl:='01';
1:Tgl:='02';
2:Tgl:='03';
3:Tgl:='04';
4:Tgl:='05';
5:Tgl:='06';
6:Tgl:='07';
7:Tgl:='08';
8:Tgl:='09';
9:Tgl:='10';
10:Tgl:='11';
11:Tgl:='12';
end;
thn:=tgl+'-'+EdTahun.Text;
end;

procedure TFRpt_Kartu_Gudang.CbBulanChange(Sender: TObject);
begin
case CbBulan.ItemIndex of
0:Tgl:='01';
1:Tgl:='02';
2:Tgl:='03';
3:Tgl:='04';
4:Tgl:='05';
5:Tgl:='06';
6:Tgl:='07';
7:Tgl:='08';
8:Tgl:='09';
9:Tgl:='10';
10:Tgl:='11';
11:Tgl:='12';
end;
thn:=tgl+'-'+EdTahun.Text;
end;

procedure TFRpt_Kartu_Gudang.cxBarEditItem2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='9';
    with QBarang do
    begin
    Close;
    sql.clear;
    SQL.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit from t_item '+
              ' a INNER JOIN t_item_category b on a.category_id=b.category_id '+
              //' where b.category='+QuotedStr(Edcategory.Text)+''+
              ' Group by a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit '+
              ' order by b.category,a.order_no Asc';
      execute;
    end;
  end;
end;

procedure TFRpt_Kartu_Gudang.dxBarLargeButton1Click(Sender: TObject);
begin
   with QKartu_Gudang do
  begin
    close;
    sql.Clear;
    sql.Text:='select b.item_code,b.item_name,a.unit,a.wh_code,to_char(a.trans_date,''FMMonth''),'+
    ' A.trans_date,a.stock_code,sa_first,"in","out",sa_end,trans_code from t_trans_item A INNER JOIN'+
    ' t_item_stock b on a.item_stock_code=b.item_stock_code'+
    ' where b.item_code='+QuotedStr(cxkd_barang.EditValue)+' AND A.wh_code='+QuotedStr(CbGudang2.EditValue)+'and DATE_PART(''MONTH'',a.trans_date) ='+QuotedStr(inttostr(CbBulan2.itemindex));
    Execute;
  end;
  QKartu_Gudang.Open;
  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'MBln',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.ShowReport();
end;

procedure TFRpt_Kartu_Gudang.DxRefreshClick(Sender: TObject);
begin
  QKartu_Gudang.Close;
   with QKartu_Gudang do
  begin
    close;
    sql.Clear;
    sql.Text:='select b.item_code,b.item_name,a.unit,a.wh_code,to_char(a.trans_date,''FMMonth''),'+
    ' A.trans_date,a.stock_code,sa_first,"in","out",sa_end,trans_code from t_trans_item A INNER JOIN'+
    ' t_item_stock b on a.item_stock_code=b.item_stock_code'+
   ' where b.item_code='+QuotedStr(cxkd_barang.EditValue)+' AND A.wh_code='+QuotedStr(CbGudang2.EditValue)+'and DATE_PART(''MONTH'',a.trans_date) ='+QuotedStr(inttostr(CbBulan2.itemindex));
     Execute;
  end;
  QKartu_Gudang.Open;
{  RptKartu_Gudang.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Kartu_Gudang.Fr3');
  SetMemo(RptKartu_Gudang,'MBln',':  '+CbBulan.Text+' '+EdTahun.Text);
  RptKartu_Gudang.ShowReport();
}end;

procedure TFRpt_Kartu_Gudang.EdNmButtonClick(Sender: TObject);
begin
{with FSearchMaterial do
  begin
    show;
    statustr:='Rptkartugudang';
    with QMaterial do
    begin
      close;
      sql.Text:='select kd_material,nm_material,category,no_material,satuan from t_material '+
                ' Group by kd_material,nm_material,category,no_material,satuan  '+
                ' order by category,no_material Asc';
      ExecSQL;
    end;
  end; }
  with FCari_Barang do
  begin
    show;
    status_tr:='9';
    with QBarang do
    begin
    Close;
    sql.clear;
    SQL.Text:='select a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit from t_item '+
              ' a INNER JOIN t_item_category b on a.category_id=b.category_id '+
              //' where b.category='+QuotedStr(Edcategory.Text)+''+
              ' Group by a.item_code,a.item_name,b.category,a.order_no,a.merk,a.unit '+
              ' order by b.category,a.order_no Asc';
      execute;
    end;
  end;
end;

procedure TFRpt_Kartu_Gudang.EdNm_suppButtonClick(Sender: TObject);
begin
{with FSearch_Supplier_SPB do
begin
  Show;
  status_tr:='Rptkartu_gudang';
  QSupplier.Close;
  QSupplier.Open;
end;     }

end;

procedure TFRpt_Kartu_Gudang.EdTahunChange(Sender: TObject);
begin
 thn:=tgl+'-'+EdTahun.Text;
end;

procedure TFRpt_Kartu_Gudang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRpt_Kartu_Gudang.FormCreate(Sender: TObject);
begin
  realfRptkg:=self;
end;

procedure TFRpt_Kartu_Gudang.FormDestroy(Sender: TObject);
begin
  realfRptkg:=nil;
end;

procedure TFRpt_Kartu_Gudang.FormShow(Sender: TObject);
begin
SpTahun.EditValue:=FormatDateTime('yyyy',now());
EdKd_supp.Clear;
EdNm_supp.Clear;
Edkd.Clear;
EdNm.Clear;
Tag := 0;
Tag := Tag + 1; NamaBulan[Tag] := 'January';
Tag := Tag + 1; NamaBulan[Tag] := 'February';
Tag := Tag + 1; NamaBulan[Tag] := 'Maret';
Tag := Tag + 1; NamaBulan[Tag] := 'April';
Tag := Tag + 1; NamaBulan[Tag] := 'Mey';
Tag := Tag + 1; NamaBulan[Tag] := 'Juni';
Tag := Tag + 1; NamaBulan[Tag] := 'July';
Tag := Tag + 1; NamaBulan[Tag] := 'Agustus';
Tag := Tag + 1; NamaBulan[Tag] := 'September';
Tag := Tag + 1; NamaBulan[Tag] := 'Oktober';
Tag := Tag + 1; NamaBulan[Tag] := 'November';
Tag := Tag + 1; NamaBulan[Tag] := 'Desember';
bln:=FormatDateTime('mm',Now);
CbBulan.Text:=NamaBulan[strtoInt(bln)];
EdTahun.Text:=FormatDateTime('yyyy',Now);
CbBulanChange(sender);
Load;
end;

initialization
RegisterClass(TFRpt_Kartu_Gudang);

end.
