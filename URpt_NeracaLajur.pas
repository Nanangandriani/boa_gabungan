unit URpt_NeracaLajur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, MemTableDataEh, Data.DB, frxClass, MemTableEh, MemDS,
  DBAccess, Uni, frxDBSet, Vcl.ComCtrls, Vcl.Samples.Gauges, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxCalendar, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxBar, cxBarEditItem, cxClasses, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  cxDropDownEdit, cxSpinEdit, cxLabel,DateUtils;

type
  TFRpt_NeracaLajur = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    DbNeraca_lajur: TfrxDBDataset;
    QNeraca_lajur: TUniQuery;
    MemNeraca_lajur: TMemTableEh;
    Rpt: TfrxReport;
    GProses: TGauge;
    ProgressBar1: TProgressBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    spTahun: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    DsNeraca_lajur: TDataSource;
    CbBulan: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure DxRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
  end;

//var
Function  FRpt_NeracaLajur: TFRpt_NeracaLajur;
var  EditNo,yr,Status,bln,thn,periode1,periode2,prd1,prd2: string;

implementation

{$R *.dfm}

uses UDataModule, UMainmenu;

var
//  FPakai_BahanPersbu: TFPakai_BahanPersbu;
  RealFrpt_NeracaLajur: TFRpt_NeracaLajur;

function FRpt_NeracaLajur: TFRpt_NeracaLajur;
begin
  if RealFrpt_NeracaLajur <> nil then
    FRpt_NeracaLajur:= RealFrpt_NeracaLajur
  else
    Application.CreateForm(TFRpt_NeracaLajur, Result);
end;

procedure TFRpt_NeracaLajur.Autonumber;
  var i      : integer;
    urut   : integer;
    mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(DtMulai.EditValue, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 //maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
 thn:=FormatDateTime('yyy',DtMulai.EditValue);
 bln:=FormatDateTime('mm',DtMulai.EditValue);
 with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(LEFT(notrans,3)) urut from t_neraca_lajur1 where thn='+QuotedStr(thn);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditNo:=CODE+ '/'+yn+'/' + Kd_SBU;
 // EdNo_ST.Text:=EditNo;
end;

procedure TFRpt_NeracaLajur.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_NeracaLajur.BPrintClick(Sender: TObject);
var
row: integer; number:real;
periode1,periode2,subquery,subquery2,th,prd1,prd2:string;
begin
 if cbbulan.Text= '' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbulan.SetFocus;
      Exit;
    end;
    if spTahun.EditValue= null then
    begin
      MessageDlg('Tahun Tidak boleh Kosong ',MtWarning,[MbOk],0);
      spTahun.SetFocus;
      Exit;
    end;
  periode1:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
  periode2:=FormatDateTime('yyy-mm-dd',spTahun.EditValue);
  prd1:=formatdatetime('yyyy-mm',DtMulai.EditValue);
//  prd2:=formatdatetime('yyyy-mm',DtSelesai.EditValue);
  if prd1<prd2 then
  begin
      MessageDlg('Periode Tidak boleh Kosong lebih dari 1 bulan',MtWarning,[MbOk],0);
  //    spsaSelesai.SetFocus;
      Exit;
  end;
//  number:=DtSelesai.editvalue-DtMulai.editvalue;
 subquery:='select kelompok_akun,kd_akun, case when notr = 0 then concat('''',nama_perkiraan) else nama_perkiraan end nama_perkiraan,debit,kredit,db,kd,dbpy,kdpy,dbnr,kdnr,dbnr2,kdnr2,dbnr3,kdnr3,dblr,kdlr,notr from '+
  '/*Tambahan baru di atas*/'+
 '(select xxx.*,case when yy.kode_header is null then 0 else 1 end notr,yy.kode_header from ('+
 ' select * ,case when (kelompok_akun=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,case when (kelompok_akun=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,case when (kelompok_akun=2 and dbnr2 >0) then dbnr2 else 0 end dblr, case when (kelompok_akun=2 '+
 ' and kdnr2>0) then kdnr2 else 0 end kdlr from (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from(select *,case when '+
 ' debit-kredit+db-kd>0 then debit-kredit+db-kd else 0 end dbnr,case when kredit-debit+kd-db > 0 then kredit-debit+kd-db else 0 end kdnr from (select kelompok_akun,kd_akun,nama_perkiraan,case when debit ISNULL then 0 else debit end debit,case when kredit '+
 ' ISNULL then 0 else kredit end kredit,case when db isnull then 0 else db end db,case when kd ISNULL then 0 else kd end kd,case when dbpy isnull then 0 else dbpy end dbpy,case when kdpy ISNULL then 0 else kdpy end kdpy FROM /* HEADER */ '+
 ' (SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit ISNULL then 0 else aa.debit end debit,case when aa.kredit>0 then aa.kredit else null end kredit,case when  b.db>0 then b.db else null end db, case when b.kd>0 then b.kd else null '+
 ' end kd,case when c.db>0 then c.db else null end dbpy,case when c.kd>0 then c.kd else null end kdpy FROM (SELECT c.kode kd_akun,c.kode_header,c.nama_perkiraan, c.kelompok_akun,d.debit,d.kredit from (SELECT DISTINCT kode,kode_header,nama_perkiraan,'+
 ' status_neraca,kelompok_akun from t_daftar_perkiraan WHERE status_neraca=''1'' and kode=kode_header)c INNER JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+' order by periode2 desc limit 1)a '+
 ' INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d on c.kode=d.kd_akun GROUP BY c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit,c.kelompok_akun ORDER BY c.kode ASC) AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd,b.kode_header from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode_header=aa.kd_akun and c.jenis_tr <>''MEMORIAL'''+
 ' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') and (kode_header<>''5400'' and kode_header<>''5500'') GROUP BY b.kode_header) b on 1=1'+
 ' LEFT JOIN LATERAL (select sum(a.debit) db,sum(a.kredit) kd,b.kode_header from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c  on a.no_in=c.no_in where  b.kode_header=aa.kd_akun and c.jenis_tr=''MEMORIAL'''+
 ' and (tgl_in >='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+')and (kode_header<>''5400'' and kode_header<>''5500'') GROUP BY b.kode_header) c on 1=1 '+
 ' /* detail <>ihtisar */ '+
 ' UNION SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit>0 then aa.debit else NULL end debit,case when aa.kredit is NULL then 0 else aa.kredit end kredit,case when b.db is NULL then 0 else b.db end db,case when b.kd is null then 0'+
 ' else b.kd end kd,case when c.db is null then 0 else  c.db end dbpy,case when c.kd is null then 0 else c.kd end kdpy from (SELECT c.kode kd_akun,c.kode_header,c.kelompok_akun,c.nama_perkiraan,d.debit,d.kredit from (SELECT DISTINCT kelompok_akun,kode,'+
 ' kode_header,nama_perkiraan,status_neraca from t_daftar_perkiraan WHERE status_neraca=''1'' and kode<>kode_header and kode_header<>''5400'')c inner JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+''+
 ' order by periode2 desc limit 1) a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d  on c.kode=d.kd_akun GROUP BY c.kelompok_akun,c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit ORDER BY  c.kode ASC)AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and  c.jenis_tr<>''MEMORIAL'''+
 ' and (tgl_in >='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') GROUP BY b.kode)b on 1=1 '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join  t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and b.kode<>''1112.01'' and '+
 ' c.jenis_tr=''MEMORIAL'' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+') GROUP BY b.kode)c on 1=1 order by kd_akun ASC)xx)xx2)xx3 '+
 ' union select kelompok_akun,kd_akun,nama_perkiraan,debit,kredit,db,kd,dbpy,kdpy,dbnr,kdnr,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 '+
 ' end kdnr2 from (/*bop pecah dari total*/select kelompok_akun,kd_akun,nama_perkiraan,debit,kredit,db,kd,case when (kdnr+kdpy)>0 then (kdnr+kdpy) when dbpy>0 then dbpy else 0 end dbpy,case when (dbnr+dbpy)>0 then (dbnr+dbpy) when kdpy>0 then kdpy '+
 ' else 0 end kdpy,dbnr,kdnr,'+
 ' 0 dbnr2,0 kdnr2 from (select *,case when debit-kredit+db-kd>0 then debit-kredit+db-kd else 0 end dbnr,case when kredit-debit+kd-db > 0 then kredit-debit+kd-db else 0 end kdnr from (select kelompok_akun,kd_akun,nama_perkiraan,case when debit ISNULL '+
 ' then 0 else debit end debit,case when kredit ISNULL then 0 else kredit end kredit,case when db isnull then 0 else db end db, case when kd ISNULL then 0 else kd end kd,case when dbpy isnull then 0 else dbpy end dbpy,case when kdpy ISNULL then 0 else'+
 ' kdpy end kdpy from(SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit>0 then aa.debit else NULL end debit,case when aa.kredit>0 then aa.kredit else null end kredit,case when b.db>0 then b.db else null end db,case when b.kd>0 then'+
 ' b.kd else null end kd, case when c.db>0 then c.db else null end dbpy,case when c.kd>0 then c.kd else null end kdpy from (SELECT c.kode kd_akun,c.kode_header,c.kelompok_akun,c.nama_perkiraan,d.debit,d.kredit from (SELECT DISTINCT kelompok_akun,kode,'+
 ' kode_header, nama_perkiraan,status_neraca from t_daftar_perkiraan WHERE status_neraca=''1'' and kode<>kode_header and kode_header=''5400'')c INNER JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+''+
 ' order by periode2 desc limit 1) a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d  on c.kode=d.kd_akun GROUP BY c.kelompok_akun,c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit ORDER BY  c.kode ASC)AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and  c.jenis_tr<>''MEMORIAL'' and '+
 ' (tgl_in >='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') GROUP BY b.kode)b on 1=1 '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join  t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and b.kode<>''1112.01'' and '+
 ' c.jenis_tr=''MEMORIAL'' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+') GROUP BY b.kode)c on 1=1 order by kd_akun ASC)xx)xx2)xx3)xx31)xx4 order by kd_akun)XXX'+
 ' /*Tambahan baru di atas*/'+
 ' left JOIN t_header_perkiraan yy on xxx.kd_akun=yy.kode_header) w';
 subquery2:='select kelompok_akun,kd_akun, case when notr = 0 then concat('''',nama_perkiraan) else nama_perkiraan end nama_perkiraan,debit,kredit,db,kd,dbpy,kdpy,dbnr,kdnr,dbnr2,kdnr2,dbnr3,kdnr3,dblr,kdlr,notr from '+
  '/*Tambahan baru di atas*/'+
 '(select xxx.*,case when yy.kode_header is null then 0 else 1 end notr,yy.kode_header from ('+
 ' select * ,case when (kelompok_akun=1 and dbnr2>0) then dbnr2 else 0 end dbnr3,case when (kelompok_akun=1 and kdnr2>0 ) then kdnr2 else 0 end kdnr3,case when (kelompok_akun=2 and dbnr2 >0) then dbnr2 else 0 end dblr, case when (kelompok_akun=2 '+
 ' and kdnr2>0) then kdnr2 else 0 end kdlr from (select *,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 end kdnr2 from(select *,case when '+
 ' debit-kredit+db-kd>0 then debit-kredit+db-kd else 0 end dbnr,case when kredit-debit+kd-db > 0 then kredit-debit+kd-db else 0 end kdnr from (select kelompok_akun,kd_akun,nama_perkiraan,case when debit ISNULL then 0 else debit end debit,case when kredit '+
 ' ISNULL then 0 else kredit end kredit,case when db isnull then 0 else db end db,case when kd ISNULL then 0 else kd end kd,case when dbpy isnull then 0 else dbpy end dbpy,case when kdpy ISNULL then 0 else kdpy end kdpy FROM /* HEADER */ '+
 ' (SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit ISNULL then 0 else aa.debit end debit,case when aa.kredit>0 then aa.kredit else null end kredit,case when  b.db>0 then b.db else null end db, case when b.kd>0 then b.kd else null '+
 ' end kd,case when c.db>0 then c.db else null end dbpy,case when c.kd>0 then c.kd else null end kdpy FROM (SELECT c.kode kd_akun,c.kode_header,c.nama_perkiraan, c.kelompok_akun,d.debit,d.kredit from (SELECT DISTINCT kode,kode_header,nama_perkiraan,'+
 ' status_neraca,kelompok_akun from t_daftar_perkiraan WHERE status_neraca=''1'' and kode=kode_header)c INNER JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+' order by periode2 desc limit 1)a '+
 ' INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d on c.kode=d.kd_akun GROUP BY c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit,c.kelompok_akun ORDER BY c.kode ASC) AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd,b.kode_header from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode_header=aa.kd_akun and c.jenis_tr <>''MEMORIAL'''+
 ' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') and (kode_header<>''5400'' and kode_header<>''5500'') GROUP BY b.kode_header) b on 1=1'+
 ' LEFT JOIN LATERAL (select sum(a.debit) db,sum(a.kredit) kd,b.kode_header from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c  on a.no_in=c.no_in where  b.kode_header=aa.kd_akun and c.jenis_tr=''MEMORIAL'''+
 ' and (tgl_in >='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+')and (kode_header<>''5400'' and kode_header<>''5500'') GROUP BY b.kode_header) c on 1=1 '+
 ' /* detail <>ihtisar */ '+
 ' UNION SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit>0 then aa.debit else NULL end debit,case when aa.kredit is NULL then 0 else aa.kredit end kredit,case when b.db is NULL then 0 else b.db end db,case when b.kd is null then 0'+
 ' else b.kd end kd,case when c.db is null then 0 else  c.db end dbpy,case when c.kd is null then 0 else c.kd end kdpy from (SELECT c.kode kd_akun,c.kode_header,c.kelompok_akun,c.nama_perkiraan,d.debit,d.kredit from (SELECT DISTINCT kelompok_akun,kode,'+
 ' kode_header,nama_perkiraan,status_neraca from t_daftar_perkiraan WHERE status_neraca=''1'' and kode<>kode_header and kode_header<>''5400'')c inner JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+''+
 ' order by periode2 desc limit 1) a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d  on c.kode=d.kd_akun GROUP BY c.kelompok_akun,c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit ORDER BY  c.kode ASC)AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and  c.jenis_tr<>''MEMORIAL'''+
 ' and (tgl_in >='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') GROUP BY b.kode)b on 1=1 '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join  t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and b.kode<>''1112.01'' and '+
 ' c.jenis_tr=''MEMORIAL'' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+') GROUP BY b.kode)c on 1=1 order by kd_akun ASC)xx)xx2)xx3 '+
 ' union select kelompok_akun,kd_akun,nama_perkiraan,debit,kredit,db,kd,dbpy,kdpy,dbnr,kdnr,case when (dbnr-kdnr)+(dbpy-kdpy)>0 then (dbnr-kdnr)+(dbpy-kdpy) else 0 end dbnr2,case when (kdnr-dbnr)+(kdpy-dbpy)>0 then (kdnr-dbnr)+(kdpy-dbpy) else 0 '+
 ' end kdnr2 from (/*bop detail*/select kelompok_akun,kd_akun,nama_perkiraan,debit,kredit,db,kd,dbpy,kdpy,dbnr,kdnr,'+
 ' 0 dbnr2,0 kdnr2 from (select *,case when debit-kredit+db-kd>0 then debit-kredit+db-kd else 0 end dbnr,case when kredit-debit+kd-db > 0 then kredit-debit+kd-db else 0 end kdnr from (select kelompok_akun,kd_akun,nama_perkiraan,case when debit ISNULL '+
 ' then 0 else debit end debit,case when kredit ISNULL then 0 else kredit end kredit,case when db isnull then 0 else db end db, case when kd ISNULL then 0 else kd end kd,case when dbpy isnull then 0 else dbpy end dbpy,case when kdpy ISNULL then 0 else'+
 ' kdpy end kdpy from(SELECT aa.kelompok_akun,aa.kd_akun,aa.nama_perkiraan,case when aa.debit>0 then aa.debit else NULL end debit,case when aa.kredit>0 then aa.kredit else null end kredit,case when b.db>0 then b.db else null end db,case when b.kd>0 then'+
 ' b.kd else null end kd, case when c.db>0 then c.db else null end dbpy,case when c.kd>0 then c.kd else null end kdpy from (SELECT c.kode kd_akun,c.kode_header,c.kelompok_akun,c.nama_perkiraan,d.debit,d.kredit from (SELECT DISTINCT kelompok_akun,kode,'+
 ' kode_header, nama_perkiraan,status_neraca from t_daftar_perkiraan WHERE status_neraca=''1'' and kode<>kode_header and kode_header=''5400'')c INNER JOIN (select a.*,b.debit,b.kredit,kd_akun from (select * from t_neraca_lajur1 WHERE periode2<'+QuotedStr(periode1)+''+
 ' order by periode2 desc limit 1) a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.notrans)d  on c.kode=d.kd_akun GROUP BY c.kelompok_akun,c.kode,c.kode_header,c.nama_perkiraan,d.debit,d.kredit ORDER BY  c.kode ASC)AA '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and  c.jenis_tr<>''MEMORIAL'' and '+
 ' (tgl_in >='+QuotedStr(periode1)+' and tgl_in<='+QuotedStr(periode2)+') GROUP BY b.kode)b on 1=1 '+
 ' LEFT JOIN LATERAL(select sum(a.debit) db,sum(a.kredit) kd, b.kode from t_item_neraca_det a inner join  t_daftar_perkiraan b on a.kd_akun=b.kode INNER JOIN t_item_neraca c on a.no_in=c.no_in where b.kode=aa.kd_akun and b.kode<>''1112.01'' and '+
 ' c.jenis_tr=''MEMORIAL'' and (tgl_in>='+QuotedStr(periode1)+' and tgl_in <='+QuotedStr(periode2)+') GROUP BY b.kode)c on 1=1 order by kd_akun ASC)xx)xx2)xx3)xx31)xx4 order by kd_akun)XXX'+
 ' /*Tambahan baru di atas*/'+
 ' left JOIN t_header_perkiraan yy on xxx.kd_akun=yy.kode_header) w';
 th:=FormatDateTime('yyyy',dtmulai.editvalue);
  ProgressBar1.Visible:=true;
  QNeraca_lajur.Close;
  if th <='2022' then
  begin
    with QNeraca_lajur do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery;
    Open;
    end;
  end;
  if th > '2022' then
  begin
    with QNeraca_lajur do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery2;
    Open;
    end;
  end;
  if number < 8 then
  begin
  // neraca lajur
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_neraca_lajur1 where periode1='+QuotedStr(periode1)+' and periode2='+QuotedStr(periode2);
      ExecSQL;
    end;
    if DM.QTemp2.RecordCount>0 then
    begin
      EditNo:=dm.qtemp2['notrans'];
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Update t_neraca_lajur1 set tgl_update=:tgl_up,pic=:pic where notrans=:notrans' ;//periode1=:periode1 and periode2=:periode2';
                  ParamByName('tgl_up').AsDate:=now();
                  ParamByName('notrans').AsString:=EditNo;
                 // ParamByName('periode1').AsString:=periode1;
                 // ParamByName('periode2').AsString:=periode2;
                  ParamByName('pic').AsString:=nm;
        ExecSQL;
      end;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='delete from t_neraca_lajur1_det where notrans='+QuotedStr(editno);//periode1='+QuotedStr(periode1)+' and periode2='+QuotedStr(periode2);
        ExecSQL;
      end;
    end;
    if DM.QTemp2.RecordCount=0 then
    begin
      Autonumber;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into t_neraca_lajur1(tgl_update,periode1,periode2,tgl_input,thn,bln,pic,notrans)'+
                  ' values(:tgl_up,:periode1,:periode2,:tgl_in,:thn,:bln,:pic,:notrans)';
                  ParamByName('tgl_up').AsDate:=now();
                  ParamByName('tgl_in').AsDate:=now();
                  ParamByName('periode1').AsString:=periode1;
                  ParamByName('periode2').AsString:=periode2;
                  ParamByName('thn').AsString:=FormatDateTime('yyy',DtMulai.editvalue);
                  ParamByName('bln').AsString:=FormatDateTime('mm',DtMulai.editvalue);
                  ParamByName('pic').AsString:=nm;
                  ParamByName('notrans').AsString:=EditNo;
        ExecSQL;
      end;
    end;
    QNeraca_lajur.First;
    row:=0;
    ProgressBar1.Min := 0;
    ProgressBar1.Max := QNeraca_lajur.RecordCount;
    while not QNeraca_lajur.eof do
      begin
      with dm.qtemp do
        begin
          close;
          sql.clear;
          sql.text:='INSERT INTO t_neraca_lajur1_det(notrans,kd_akun,debit,kredit,periode1,periode2,thn,debit2,kredit2)VALUES'+
          '(:notrans,:kd_akun,:db_nr,:kr_nr,:periode1,:periode2,:thn,:debit2,:kredit2)';
          ParamByName('kd_akun').AsString:=QNeraca_lajur['kd_akun'];
          ParamByName('db_nr').AsString:=QNeraca_lajur['dbnr3'];
          ParamByName('kr_nr').AsString:=QNeraca_lajur['kdnr3'];
          ParamByName('periode1').AsString:=FormatDateTime('yyy-mm-dd',DtMulai.editvalue);
     //     ParamByName('periode2').AsString:=FormatDateTime('yyy-mm-dd',DtSelesai.editvalue);
       //   ParamByName('thn').AsString:=FormatDateTime('yyy',DtSelesai.editvalue);
          ParamByName('notrans').AsString:=EditNo;
          ParamByName('debit2').AsString:=QNeraca_lajur['dblr'];
          ParamByName('kredit2').AsString:=QNeraca_lajur['kdlr'];
          ExecSQL;
        end;
        ProgressBar1.Position:=row;
        QNeraca_lajur.Next;
        row:=row+10;
      end;
      if th < '2023' then
      begin
        with dm.Qtemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='select  sum(kdlr)-sum(dblr) saldo from ('+subquery+') xx WHERE kelompok_akun=''2''';
          Execute;
        end;
      end;
      if th >='2023' then
      begin
        with dm.Qtemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='select  sum(kdlr)-sum(dblr) saldo from ('+subquery2+') xx WHERE kelompok_akun=''2''';
          Execute;
        end;
      end;
      with dm.Qtemp3 do
      begin
        close;
        sql.Clear;
        sql.Text:='select kredit-debit kredit from t_neraca_lajur1_det where periode1='+QuotedStr(periode1)+' and periode2='+QuotedStr(periode2)+' and kd_akun=''3004''';
        ExecSQL;
      end;
          with dm.qtemp do
            begin
              close;
              sql.clear;
              sql.text:='update t_neraca_lajur1_det set debit=:db_nr,kredit=:kr_nr,thn=:thn where kd_akun=:kd_akun and notrans=:notrans' ;//periode1=:periode1 and periode2=:periode2';
              ParamByName('kd_akun').AsString:='3004';
              ParamByName('db_nr').AsString:='0';
              ParamByName('kr_nr').AsString:=dm.QTemp2['saldo']+DM.QTemp3['kredit'];
              ParamByName('notrans').AsString:=EditNo;
            //  ParamByName('periode1').AsString:=FormatDateTime('yyy-mm-dd',DtMulai.editvalue);
              //ParamByName('periode2').AsString:=FormatDateTime('yyy-mm-dd',DtSelesai.editvalue);
    //          ParamByName('thn').AsString:=FormatDateTime('yyy',DtSelesai.editvalue);
              ExecSQL;
            end;
  end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\rpt_neracalajur.fr3');
  Tfrxmemoview(Rpt.FindObject('Mtgl')).Memo.Text:='Periode : '+FormatDateTime('dd MMMM yyy',DtMulai.editvalue)+' - '+FormatDateTime('dd MMMM yyy',sptahun.editvalue);
  GProses.Progress:=row+100;
  Rpt.ShowReport();
  ProgressBar1.Visible:=false;
end;

procedure TFRpt_NeracaLajur.DxRefreshClick(Sender: TObject);
begin
 {if cbbulan.Text= '' then
    begin
      MessageDlg('Bulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbulan.SetFocus;
      Exit;
    end;
    if spTahun.EditValue= null then
    begin
      MessageDlg('Tahun Tidak boleh Kosong ',MtWarning,[MbOk],0);
      spTahun.SetFocus;
      Exit;
    end;
  periode1:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
 // periode2:=FormatDateTime('yyy-mm-dd',DtSelesai.EditValue);
  prd1:=formatdatetime('yyyy-mm',DtMulai.EditValue);
 // prd2:=formatdatetime('yyyy-mm',DtSelesai.EditValue);
 { if prd1<prd2 then
  begin
      MessageDlg('Periode Tidak boleh Kosong lebih dari 1 bulan',MtWarning,[MbOk],0);
   //   DtSelesai.SetFocus;
      Exit;
  end;}
  MemNeraca_lajur.Close;
  QNeraca_lajur.Close;
  QNeraca_lajur.Open;
  MemNeraca_lajur.Open;
end;

procedure TFRpt_NeracaLajur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_NeracaLajur.FormCreate(Sender: TObject);
begin
  RealFrpt_NeracaLajur:=self;
end;

procedure TFRpt_NeracaLajur.FormDestroy(Sender: TObject);
begin
  RealFrpt_NeracaLajur:=nil;
end;

procedure TFRpt_NeracaLajur.FormShow(Sender: TObject);
begin
  spTahun.EditValue := YearOf(Now);
  cbBulan.ItemIndex:= MonthOf(Now);
end;

procedure TFRpt_NeracaLajur.RptGetValue(const VarName: string;
  var Value: Variant);
begin
//if QNeraca_lajur['notr']=0 then  memo30.Fill.color=clblue;
end;

initialization
RegisterClass(TFRpt_NeracaLajur);

end.
