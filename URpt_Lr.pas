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
  MemTableEh;

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
    DbLr2: TfrxDBDataset;
    QLr2: TUniQuery;
    Label2: TLabel;
    Label1: TLabel;
    dtmulai1: TRzDateTimeEdit;
    dtselesai1: TRzDateTimeEdit;
    QLr: TUniQuery;
    DbLr: TfrxDBDataset;
    Bprint2: TRzBitBtn;
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
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    Q_lr: TUniQuery;
    Db_lr: TfrxDBDataset;
    Ds_lr: TDataSource;
    Mem_lr: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bprint2Click(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln:string;
  end;

//var
function  FRpt_Lr: TFRpt_Lr;

implementation

{$R *.dfm}

uses UMainmenu, UDataModule;
var
RealFRpt_Lr: TFRpt_Lr;
function FRpt_Lr: TFRpt_Lr;
begin
  if RealFRpt_Lr <> nil then
    FRpt_Lr:= RealFRpt_Lr
  else
    Application.CreateForm(TFRpt_Lr, Result);
end;

procedure TFRpt_Lr.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRpt_Lr.BPrintClick(Sender: TObject);
var subquery,subquery2,tgl,tgl2,tgl3:string;
begin                                        {
tgl:=FormatDateTime('yyyy-mm-dd',dtmulai.EditValue);
tgl2:=FormatDateTime('yyyy-mm-dd',dtselesai.EditValue);   }
//tgl3:=edth.Text+'-'+bln;

//  ShowMessage('test');
{subquery:='(SELECT KODE,kode_header,nama_perkiraan,id_LR,posisi_dk,lr,lr2 FROM (select * from t_daftar_perkiraan WHERE  '+
' st_lr>''0'') A RIGHT JOIN t_jenis_lr b on a.st_lr=b.id_lr ) a left JOIN '+
' (select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on '+
' a.notrans=b.notrans WHERE a.periode1='+QuotedStr(tgl)+' and a.periode2='+QuotedStr(tgl2)+' and '+
' (b.kd_akun<>''1146'' and kd_akun<>''4110'') and (debit2+kredit2) >0  '+
' UNION select a.periode1,a.periode2,round(cast(-(debit+kredit) as numeric),0) qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b '+
' on a.notrans=b.notrans WHERE a.periode1='+QuotedStr(tgl)+' and a.periode2='+QuotedStr(tgl2)+' and b.kd_akun=''1146''   '+
' UNION /*Penjualan*/ select NULL periode1,NULL periode2,round(cast(sum(kredit) as numeric),0) qty,kd_akun from t_item_neraca a INNER JOIN  '+
' t_item_neraca_det b on a.no_in=b.no_in WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' and '+
' b.kd_akun=''4110''  GROUP BY kd_akun '+
' UNION /*Return Penjualan*/select NULL periode1,NULL periode2,round(cast(-sum(debit)as numeric),0) qty,''4200'' kd_akun from t_item_neraca a INNER JOIN '+
' t_item_neraca_det b on a.no_in=b.no_in WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' and '+
' b.kd_akun=''4110''  GROUP BY kd_akun '+
' UNION /*tkl*/ select null periode1,null periode2,round(cast(kredit as numeric),0) qty,kode_header from t_jurnal_memorial a INNER JOIN '+
' t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on b.akun_kredit=c.kode  '+
' WHERE a.tgl>='+QuotedStr(tgl)+' and a.tgl<='+QuotedStr(tgl2)+' and b.akun_kredit=''5300'''+
' union /*bop*/ select null periode1,null periode2,round(cast(sum(kredit)as numeric),0) qty,kode_header from t_jurnal_memorial a INNER JOIN '+
' t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on b.akun_kredit=c.kode '+
' WHERE a.tgl>='+QuotedStr(tgl)+' and a.tgl<='+QuotedStr(tgl2)+' and c.kode_header=''5400'' and kode<>''5400.18'' '+
' GROUP BY kode_header  '+
' UNION SELECT periode1,periode2,round(cast(qty as numeric),0) qty,kd_akun FROM (select a.periode1,a.periode2,CASE WHEN (debit+kredit) ISNULL THEN 0 '+
' ELSE (debit+kredit) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans '+
' WHERE a.periode2<'+QuotedStr(tgl2)+' and b.kd_akun=''1146'' ORDER BY periode1 DESC LIMIT 1) A'+
{' UNION /*Bahan produksi*/ select null,null,qtypk,kdakun FROM (select kdakun,category,sum(hargapk) qtypk from '+
' (select a.kdakun,a.kd_produk,category,a.kd_material,qtypk*harga hargapk from (SELECT a.kd_produk,c.category,'+
' sum(b.qtyperubahan) qtypk,b.kd_material,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_pakai_bahan_det b on '+
' a.notrans=b.notrans INNER join t_material c on b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on '+
' c.kd_akun=d.kode WHERE periode1='+QuotedStr(tgl)+' and periode2='+QuotedStr(tgl2)+' GROUP BY a.kd_produk,c.category, '+
' b.kd_material,d.kode_header)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then '+
' round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_material FROM t_sa_persediaan a INNER JOIN '+
' t_sa_persediaan_det b on a.notrans=b.notrans  WHERE periode='+QuotedStr(tgl)+' and periode2='+QuotedStr(tgl2)+''+
' and category<>''BAHAN KEMASAN'')b on  a.kd_material=b.kd_material )x GROUP BY kdakun,category'+
' UNION select kode_header,category,sum(hargapk) qtypk from (select kode_header,a.kd_produk,category, a.kd_material, '+
' qtypk*harga hargapk from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_material FROM '+
' t_pakai_bahan a INNER JOIN t_pakai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.kode_header from    '+
' t_material a inner join t_daftar_perkiraan b on a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_material  '+
' WHERE periode12='+QuotedStr(tgl)+' and periode22='+QuotedStr(tgl2)+' GROUP BY c.kode_header,a.kd_produk,c.category,'+
' b.kd_material)a INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then round(hargapk/NULLIF(qtypk,0),0)'+
' else 0 end harga, a.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b on a.notrans=b.notrans '+
' WHERE periode='+QuotedStr(tgl)+' and periode2='+QuotedStr(tgl2)+' and category=''BAHAN KEMASAN'')b on a.kd_material=b.kd_material)x'+
' GROUP BY kode_header,category)x  ORDER BY kd_akun ASC)b' }
{' UNION /*Bahan produksi*/ select null,null,qtypk,kdakun FROM (select akun_kredit kdakun,(debit+kredit) qtypk from '+
' t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.no_bukti_memo=b.no_bukti_memo WHERE  '+
' keterangan like ''%Biaya - Biaya Yang Dipakai Untuk Produksi bulan%'' and tgl>='+QuotedStr(tgl)+' and'+
' tgl<='+QuotedStr(tgl2)+') x) b on a.kode=b.kd_akun';

with QLr do
begin
  close;
  sql.Clear;
  sql.Text:=' SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,qty ,round(cast((qty/(select sum(qty) qty2 from (/*Penjualan*/ '+
  ' select NULL periode1,NULL periode2,round(cast(sum(kredit)as numeric),0) qty,kd_akun from t_item_neraca a INNER JOIN '+
  ' t_item_neraca_det b on a.no_in=b.no_in WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' and  b.kd_akun=''4110'''+
  ' GROUP BY kd_akun UNION /*Return Penjualan*/select NULL ,NULL ,round(cast(-sum(debit) as numeric),0) qty,''4200'' kd_akun'+
  ' from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+''+
  ' and b.kd_akun=''4110'' GROUP BY kd_akun)xx) )*100 as numeric),2)as qty2 FROM  ('+
  'SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,CASE WHEN kode=''6200.01'' then -qty else qty end qty '+
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
  open;                                                                           }
  with Q_lr do
  begin
     Close;
     sql.Clear;
     sql.Text:='select b.id,b.lr,b.lr2,c.header_name,a.* from t_ak_type_lr b Left JOIN t_ak_account a '+
     ' on a.lr_st_id=b.id left JOIN t_ak_header c on a.header_code=c.header_code order by b.id asc';
     Execute;
  end;
//  ShowMessage('test');
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_lr.fr3');
    Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
    Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:=UpperCase(' '+FormatDateTime('dd',dtmulai1.Date)+' - '+FormatDateTime('dd/MMM/yyy',dtselesai1.Date));
    Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
    Tfrxmemoview(Rpt.FindObject('Memo11')).Memo.Text:=UpperCase(' % ');
    Rpt.ShowReport();
   // rpt.sho
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

procedure TFRpt_Lr.DxRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
    Q_lr.Close;
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
  DtMulai.EditValue:=FormatDateTime('yyy-mm-dd',now());
  DtSelesai.EditValue:=FormatDateTime('yyy-mm-dd',now());
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
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
  Tfrxmemoview(Rpt.FindObject('Memo11')).Memo.Text:=UpperCase(' % ');
  Rpt.ShowReport();
end;


initialization
RegisterClass(TFRpt_Lr);

end.
