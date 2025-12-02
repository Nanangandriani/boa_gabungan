unit URpt_by;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Samples.Spin,
  VirtualTable, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxRibbonCustomizationForm, cxCheckComboBox, cxMaskEdit, dxBar, cxBarEditItem,
  cxClasses, dxRibbon, cxSpinEdit, cxLabel, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRpt_by = class(TForm)
    QRpt_By: TUniQuery;
    DbRpt_By: TfrxDBDataset;
    Rpt: TfrxReport;
    DbRpt_by2: TfrxDBDataset;
    QRpt_By2: TUniQuery;
    Dbrpt_thn: TfrxDBDataset;
    QRpt_thn: TUniQuery;
    QRpt_By4: TUniQuery;
    Dbrpt_by4: TfrxDBDataset;
    Dbrpt_by5: TfrxDBDataset;
    QRpt_By5: TUniQuery;
    DbRpt_by1: TfrxDBDataset;
    QRpt_by1: TUniQuery;
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
    DBGridBy: TDBGridEh;
    cbbulan: TComboBox;
    DsRpt_By: TDataSource;
    sptahun: TcxBarEditItem;
    procedure BPrintClick(Sender: TObject);
    procedure cbbulanSelect(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln:string;
    status_by:integer;
  end;

//var
function  FRpt_by: TFRpt_by;

implementation

{$R *.dfm}

uses UMainmenu, UHomeLogin;
var
//  FPakai_BahanPersbu: TFPakai_BahanPersbu;
RealFRpt_by: TFRpt_by;
function FRpt_by: TFRpt_by;
begin
  if RealFRpt_by <> nil then
    FRpt_by:= RealFRpt_by
  else
    Application.CreateForm(TFRpt_by, Result);
end;

procedure TFRpt_by.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRpt_by.BPrintClick(Sender: TObject);
begin
  if cbbulan.Text='' then
  begin
    with QRpt_thn do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM "vbiaya_year" where trans_year='+QuotedStr(sptahun.EditValue);
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_bythn.fr3');
    Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Tahun  '+sptahun.EditValue);
    Tfrxmemoview(Rpt.FindObject('Mspt')).Memo.Text:=('SPT Tahun  '+QuotedStr(IntToStr(sptahun.EditValue-1)));
    Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
    Rpt.ShowReport();
  end;
  if cbbulan.Text<>'' then
  begin
    with QRpt_by do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM "vbiaya_month" where trans_year='+QuotedStr(sptahun.EditValue)+''+
      ' and trans_month='+QuotedStr(IntToStr(cbbulan.ItemIndex));
      Open;
    end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_bybln.fr3');
    Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+sptahun.EditValue);
    Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+FHomeLogin.vNamaPRSH ;
    Rpt.ShowReport();
  end;
end;

procedure TFRpt_by.cbbulanSelect(Sender: TObject);
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

procedure TFRpt_by.DxRefreshClick(Sender: TObject);
begin
  if cbbulan.Text='' then
  begin
    with QRpt_thn do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM "vbiaya_year" where trans_year='+QuotedStr(sptahun.EditValue);
      Open;
    end;
  end;
  if cbbulan.Text<>'' then
  begin
    with QRpt_by do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='SELECT * FROM "vbiaya_month" where trans_year='+QuotedStr(sptahun.EditValue)+''+
      ' and trans_month='+QuotedStr(IntToStr(cbbulan.ItemIndex));
      Open;
    end;
  end;
end;

procedure TFRpt_by.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_by.FormCreate(Sender: TObject);
begin
  RealFRpt_by:=self;
end;

procedure TFRpt_by.FormDestroy(Sender: TObject);
begin
  RealFRpt_by:=nil;
end;

procedure TFRpt_by.FormShow(Sender: TObject);
begin
  sptahun.EditValue:=FormatDateTime('yyyy',now());
end;

procedure TFRpt_by.RzBitBtn1Click(Sender: TObject);
begin
{if status_by=1 then
begin
  with QRpt_By do
  begin
    close;
    sql.clear;
    SQL.Text:='select *,(db/NULLIF(db2,0))* 100 as persentase from (select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,x3."id",x3.jenis_by,sum(x2.kredit) kr,'+
    ' sum(x2.debit) db from t_daftar_perkiraan x LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_neraca a'+
    ' on a.no_in=b.no_in WHERE bulan='+QuotedStr(bln)+' and tahun='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode '+
    ' INNER JOIN t_jenis_by x3 on x.st_by=x3."id" GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,'+
    ' x3."id",x3.jenis_by)x'+
    '/*total per jenis*/'+
    '	INNER JOIN (select sum(db) db2,"id" id2 from (select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,'+
    ' x3."id",x3.jenis_by,sum(x2.kredit) kr,sum(x2.debit) db from t_daftar_perkiraan x LEFT JOIN (select * from '+
    ' t_item_neraca_det b INNER JOIN t_item_neraca a on a.no_in=b.no_in WHERE bulan='+QuotedStr(bln)+' and '+
    ' tahun='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode INNER JOIN t_jenis_by x3 on x.st_by=x3."id" GROUP BY '+
    ' x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,x3."id",x3.jenis_by)a GROUP BY "id")x2 on x.id=x2.id2'+
    ' ORDER BY "id",kd_akun asc';
    open;
  end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_bybln.fr3');
  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
//  Tfrxmemoview(Rpt.FindObject('MAlamat')).Memo.Text:=(''+alamat+''+alamat2);
  Rpt.ShowReport();
end;
if status_by=2 then
begin
with QRpt_By do
begin
  close;
  sql.clear;
  sql.Text:='select kode,"id",jenis_by,kode_header,tahun,nama_perkiraan,case when sum(spt)ISNULL then 0 else sum(spt) end '+
  ' spt, case when sum(jan) ISNULL then 0 else sum(jan) end jan,case when sum(feb) isnull then 0 else sum(feb) end feb,'+
  ' case when sum(mar) ISNULL then 0 else sum(mar) end mar,case when sum(apr) isnull then 0 else sum(apr) end apr,'+
  ' case when sum(mei) isnull then 0 else sum(mei) end mei,case when sum(jun)ISNULL then 0 else sum(jun) end jun,case when'+
  ' sum(jul) isnull then 0 else sum(jul) end jul,case when sum(ags) ISNULL then 0 else sum(ags) end ags,case when sum(sep)'+
  ' isnull then 0 else sum(sep) end sep,case when sum(okt) ISNULL then 0 else sum(okt) end okt,case when sum(nov) ISNULL  '+
  ' then 0 else sum(nov) end nov,case when sum(des) isnull then 0 else sum(des) end des,'+
  ' /*pensentase*/ case when sum(spt)ISNULL then 0 else sum(spt2) end spt2, case when sum(jan2) ISNULL then 0 else sum(jan2)'+
  ' end jan2,case when sum(feb2) isnull then 0 else sum(feb2) end feb2,case when sum(mar2) ISNULL then 0 else sum(mar2) end '+
  ' mar2,case when sum(apr2) isnull then 0 else sum(apr2) end apr2,case when sum(mei2) isnull then 0 else sum(mei2) end mei2,'+
  ' case when sum(jun2)ISNULL then 0 else sum(jun2) end jun2,case when sum(jul2) isnull then 0 else sum(jul2) end jul2, '+
  ' case when sum(ags2) ISNULL then 0 else sum(ags2) end ags2,case when sum(sep2) isnull then 0 else sum(sep2) end sep2,'+
  ' case when sum(okt2) ISNULL then 0 else sum(okt2) end okt2,case when sum(nov2) ISNULL then 0 else sum(nov2) end nov2,'+
  ' case when sum(des2) isnull then 0 else sum(des2) end des2 from '+
  ' (select kode,"id",jenis_by,kode_header,tahun, nama_perkiraan,case when bulan=''01'' then total end jan,case when '+
  ' bulan=''02'' then total end feb,case when bulan=''03'' then total end mar,case when bulan=''04'' then total end apr, '+
  ' case when bulan=''05'' then total end mei,case when bulan=''06'' then total end jun,case when bulan=''07'' then total'+
  ' end jul,case when bulan=''08'' then total end ags,case when bulan=''09'' then total end sep,case when bulan=''10'' then'+
  ' total end okt,case when bulan=''11'' then total  end nov,case when bulan=''12'' then total end des,'+
  ' case when bulan=''SPT'' then total end spt,case when bulan=''01'' then persen end jan2,case when bulan=''02'' then persen'+
  ' end feb2,case when bulan=''03'' then persen end mar2,case when bulan=''04'' then persen end apr2, case when bulan=''05'' '+
  ' then persen end mei2,case when  bulan=''06'' then persen end jun2, case when bulan=''07'' then persen end jul2,'+
  ' case when bulan=''08'' then persen end ags2,case when bulan=''09'' then persen end sep2,case when bulan=''10'' then '+
  ' persen end okt2,case when bulan=''11'' then persen  end nov2,case when bulan=''12'' then persen end des2,case when '+
  ' bulan=''SPT'' then persen end spt2 from (select x1.*,x1.db total, db2,(db/NULLIF(db2,0))* 100 persen from (select x.kode_header,'+
  ' x2.bulan, x2.tahun,x2.kd_akun kode,x.nama_perkiraan,x3."id",x3.jenis_by,sum(x2.kredit)kr,sum(x2.debit)db from '+
  ' t_daftar_perkiraan x  LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_neraca a on a.no_in=b.no_in  '+
  ' WHERE tahun='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode INNER JOIN t_jenis_by x3 on x.st_by=x3."id"  '+
  ' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,x3."id",x3.jenis_by '+
  ' union /*SPT Tahun Lalu*/  select x.kode_header,''SPT'' bulan,'+QuotedStr(edth.Text)+' tahun,x2.kd_akun kode,'+
  ' x.nama_perkiraan,x3."id",x3.jenis_by, sum(x2.kredit2) kr,sum(x2.debit2) db from t_daftar_perkiraan x LEFT JOIN '+
  ' (select * from t_neraca_lajur1_det b INNER JOIN  (select * from t_neraca_lajur1 WHERE thn<'+QuotedStr(edth.Text)+' '+
  ' order by periode1 desc limit 1) a on a.notrans=b.notrans )x2 on x2.kd_akun=x.kode INNER JOIN t_jenis_by x3 on '+
  ' x.st_by=x3."id" GROUP BY x.kode_header,x2.kd_akun,x.nama_perkiraan, x3."id",x3.jenis_by )x1 INNER JOIN  '+
  ' (SELECT case when sum(db) > 0 then sum(db) else 1 end db2,id,tahun,bulan from (select x.kode_header,x2.bulan, '+
  ' x2.tahun,x2.kd_akun kode,x.nama_perkiraan,x3."id",x3.jenis_by,sum(x2.kredit)kr,sum(x2.debit)db from '+
  ' t_daftar_perkiraan x LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_neraca a on a.no_in=b.no_in '+
  ' WHERE tahun='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode INNER JOIN t_jenis_by x3 on x.st_by=x3."id"  '+
  ' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,x3."id",x3.jenis_by  union /*SPT Tahun Lalu*/ '+
  ' select x.kode_header,''SPT'' bulan,'+QuotedStr(edth.Text)+' tahun,x2.kd_akun kode,x.nama_perkiraan,x3."id",x3.jenis_by,'+
  ' sum(x2.kredit2) kr,sum(x2.debit2) db from t_daftar_perkiraan x LEFT JOIN (select * from t_neraca_lajur1_det b '+
  ' INNER JOIN (select * from t_neraca_lajur1 WHERE thn<'+QuotedStr(edth.Text)+' order by periode1 desc limit 1) a on '+
  ' a.notrans=b.notrans )x2 on x2.kd_akun=x.kode INNER JOIN t_jenis_by x3 on x.st_by=x3."id" GROUP BY x.kode_header,'+
  ' x2.kd_akun,x.nama_perkiraan,x3."id",x3.jenis_by )x GROUP BY id,tahun,bulan)x2 on x1.id=x2.id and x1.tahun=x2.tahun '+
  ' and x1.bulan=x2.bulan) y) yy GROUP BY kode,jenis_by,kode_header,tahun, nama_perkiraan,"id" ORDER BY "id",kode asc';
  open;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_bythn.fr3');
  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
//  Tfrxmemoview(Rpt.FindObject('MAlamat')).Memo.Text:=(''+alamat+''+alamat2);
  Tfrxmemoview(Rpt.FindObject('Mspt')).Memo.Text:=UpperCase('SPT TH '+inttostr(strtoint(edth.Text)-1));
  Rpt.ShowReport();
end;              }
end;


initialization
RegisterClass(TFRpt_by);

end.
