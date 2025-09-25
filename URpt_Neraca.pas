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
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxLabel, cxMaskEdit, cxSpinEdit,DateUtils;

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
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    DBGridEh1: TDBGridEh;
    DSNeraca: TDataSource;
    cxBarEditItem1: TcxBarEditItem;
    SpTahun: TcxBarEditItem;
    CbBulan2: TComboBox;
    procedure BBatalClick(Sender: TObject);
    procedure BPrintClick(Sender: TObject);
    procedure cbbulan2Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure CbBulan2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    bln,statustr:string;
  end;

//var
function  FRpt_Neraca: TFRpt_Neraca;

implementation

{$R *.dfm}

uses UMainmenu;
var
//  FPakai_BahanPersbu: TFPakai_BahanPersbu;
RealFRpt_Neraca: TFRpt_Neraca;

function FRpt_Neraca: TFRpt_Neraca;
begin
  if RealFRpt_Neraca <> nil then
    FRpt_Neraca:= RealFRpt_Neraca
  else
    Application.CreateForm(TFRpt_Neraca, Result);
end;

procedure TFRpt_Neraca.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFRpt_Neraca.BPrintClick(Sender: TObject);
var tgl,tgl2,periode1,periode2:string;
begin
{  if dtmulai.EditValue = null then
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
  end;         }
//  tgl:=FormatDateTime('yyy-mm-dd',dtmulai.editvalue);
 // tgl2:=FormatDateTime('yyy-mm-dd',dtselesai.editvalue);
  // neraca per periode
//  if statustr='0' then
//  begin
  {  WITH QRpt_Neraca do
    begin
    {  close;
      sql.Clear;
      sql.Text:=' select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,sum(total) total from ( /* Aktiva tetap dan lancar*/ '+
      ' select jenis,jenis_nr,kode_header,bulan,xx.tahun,xx.kd_akun kode,nama_perkiraan,case when (db-kr) isnull  then 0 else (db-kr) end total from'+
      ' (select x.kode_header,x2.bulan,x2.tahun,x.kode kd_akun,x.nama_perkiraan,b.jenis,b.jenis_nr,sum(x2.kredit)kr,sum(x2.debit)db from  '+
      ' t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b'+
      ' INNER JOIN t_neraca_lajur1 a on a.notrans=b.notrans WHERE a.bln='+QuotedStr(bln)+' and a.thn='+QuotedStr(edth.Text)+' and (a.periode1 >='+QuotedStr(tgl)+''+
      ' and a.periode2 <='+QuotedStr(tgl2)+'))x2 on x2.kd_akun=x.kode WHERE x.status_neraca=''1'' and  posisi_dk=''D'' GROUP BY x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr)xx '+
      ' UNION /* Aktiva Lancar dan Pasiva*/ '+
      ' select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,case when jenis_nr=''AKM. PENYUSUTAN'' then -(case when (kr-db) isnull then '+
      ' 0 else (kr-db) end) else (case when (kr-db) isnull then 0 else (kr-db) end) end total'+
      ' from (select kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr,sum(kredit)kr,sum(debit)db from (select x.kode_header,x2.bulan,x2.tahun,'+
      ' x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr,x2.kredit,x2.debit from t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" '+
      ' LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN t_neraca_lajur1 a on a.notrans=b.notrans WHERE a.bln='+QuotedStr(bln)+''+
      ' and a.thn='+QuotedStr(edth.Text)+' and  (a.periode1 >='+QuotedStr(tgl)+' and a.periode2 <='+QuotedStr(tgl2)+'))x2 on x2.kd_akun=x.kode WHERE '+
      ' x.status_neraca=''1'' and  posisi_dk=''K'' AND X.st_nr=''1'' UNION '+
      ' select x1.kode_header,xx.bulan,xx.tahun,x1.kode kd_akun,x1.nama_perkiraan,x1.jenis,x1.jenis_nr,xx.kredit,xx.debit from (select x.kode,x.nama_perkiraan,'+
      ' x.kode_header,b.jenis,b.jenis_nr,x.posisi_dk,x.status_neraca from t_daftar_perkiraan x left JOIN t_jenis_neraca b on  x.id_jenis_nr=b."id" where '+
      ' x.status_neraca=''1'' and  x.posisi_dk=''K'' AND X.st_nr=''1'') x1 INNER JOIN (select left(x.kode_header,4) kd_header,x2.bulan,x2.tahun,'+
      ' LEFT(x.kode_header,4) kd_akun,x.nama_perkiraan,x.jenis,x.jenis_nr,x2.kredit,x2.debit from (select x.kode,x.nama_perkiraan,x.kode_header,b.jenis,'+
      ' b.jenis_nr,x.posisi_dk,x.status_neraca from t_daftar_perkiraan x left JOIN t_jenis_neraca b on  x.id_jenis_nr=b."id" where x.status_neraca=''1'''+
      ' and  x.posisi_dk=''K'' AND X.st_nr=''1'') x LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN t_neraca_lajur1 a'+
      ' on a.notrans=b.notrans WHERE  a.bln='+QuotedStr(bln)+' and a.thn='+QuotedStr(edth.Text)+' and  (a.periode1 >='+QuotedStr(tgl)+' and a.periode2 <='+QuotedStr(tgl2)+'))x2'+
      ' on x2.kd_akun=x.kode WHERE   jenis is NULL) xx on x1.kode=xx.kd_akun) xxx GROUP BY kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr)x4'+
      ' ORDER BY jenis,kode asc) xxx GROUP BY jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan ORDER BY jenis,kode asc';
      {sql.Text:='select kode_header,bulan,xx.tahun,xx.kd_akun kode,nama_perkiraan,(x3.debit-x3.kredit)+(db-kr) total from '+
      ' (select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,sum(x2.kredit)kr,sum(x2.debit)db from '+
      ' t_daftar_perkiraan x LEFT JOIN(select * from t_item_neraca_det b INNER JOIN t_item_neraca a on a.no_in=b.no_in WHERE '+
      ' bulan='+QuotedStr(bln)+' and tahun='+QuotedStr(edth.Text)+' and (a.tgl_in >='+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulai.editvalue))+''+
      ' and a.tgl_in <='+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulai.editvalue))+'))x2 on x2.kd_akun=x.kode WHERE x.status_neraca=''1'' and '+
      ' posisi_dk=''D'' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan)xx left JOIN tsa_akundet x3 on xx.kd_akun=x3.kd_akun '+
      ' union ' +
      ' select kode_header,bulan,xx.tahun,xx.kd_akun,nama_perkiraan,(x3.kredit-x3.debit)+(kr-db) total from '+
      ' (select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan,sum(x2.kredit)kr,sum(x2.debit)db from '+
      ' t_daftar_perkiraan x LEFT JOIN(select * from t_item_neraca_det b INNER JOIN t_item_neraca a on a.no_in=b.no_in WHERE '+
      ' bulan='+QuotedStr(bln)+' and tahun='+QuotedStr(edth.Text)+' and (a.tgl_in >='+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulai.editvalue))+''+
      ' and a.tgl_in <='+QuotedStr(FormatDateTime('yyy-mm-dd',dtmulai.editvalue))+'))x2 on x2.kd_akun=x.kode WHERE x.status_neraca=''1'' and '+
      ' posisi_dk=''K'' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan)xx left JOIN tsa_akundet x3 on xx.kd_akun=x3.kd_akun '+
      ' ORDER BY kode asc';
      open; }

 {   if dtmulai.EditValue = null then
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
    periode1:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
    periode2:=FormatDateTime('yyy-mm-dd',DtSelesai.EditValue);
   { with QRpt_Neraca do
    begin
      close;
      sql.Clear;
      sql.Text:='select "type",type_balance,header_code,bulan,tahun,kd_akun,account_name,sum(total) total from ( '+
      ' select "type",type_balance,header_code,bulan,xx.tahun,xx.kd_akun,account_name,case when (db-kr) > 0 then '+
      ' (db-kr) else 0 end total from  (select x.header_code,x2.bulan,x2.tahun,x.code kd_akun,x.account_name,'+
      ' b."type",b.type_balance,sum(x2.kredit)kr,sum(x2.debit)db from  t_ak_account x INNER JOIN t_ak_type_balance b '+
      ' on x.balance_st_id=b."id" LEFT JOIN(select b.*,a.trans_month bulan,a.trans_year tahun from t_neraca_lajur_det b'+
      ' INNER JOIN t_neraca_lajur a on a.trans_no=b.trans_no'+
      ' WHERE a.trans_month='+QuotedStr(bln)+' and a.trans_year='+QuotedStr(SpTahun.EditValue)+' and  '+
      ' (a.periode1 >='+QuotedStr(periode1)+' and a.periode2 <='+QuotedStr(periode2)+'))x2 on x2.account_code=x.code '+
      ' WHERE x.balance_status=''1'' and  posisi_dk=''D'' GROUP BY x.header_code,x2.bulan,x2.tahun,x.code,x.account_name,b."type",b.type_balance)xx '+
      ' UNION '+
      ' select "type","type_balance",header_code,bulan,tahun,kd_akun,account_name,case when type_balance=''AKM. PENYUSUTAN'''+
      ' then -(case when (kr-db) > 0 then (kr-db) else 0 end) else (case when (kr-db) > 0 then (kr-db) else 0 end) end total '+
      ' from (select header_code,bulan,tahun,kd_akun,account_name,"type",type_balance,sum(kredit)kr,sum(debit)db from '+
      ' (select x.header_code,x2.bulan,x2.tahun,x.code kd_akun,x.account_name,b."type",b.type_balance,x2.kredit,x2.debit from  t_ak_account x '+
      ' INNER JOIN t_ak_type_balance b on  x.balance_st_id=b."id"  '+
      ' LEFT JOIN(select b.*,a.trans_month bulan,a.trans_year tahun from t_neraca_lajur_det b INNER JOIN t_neraca_lajur a '+
      ' on a.trans_no=b.trans_no WHERE  a.trans_month='+QuotedStr(bln)+' and a.trans_year='+QuotedStr(SpTahun.EditValue)+''+
      ' and (a.periode1 >='+QuotedStr(periode1)+' and a.periode2 <='+QuotedStr(periode2)+'))x2 on x2.account_code=x.code '+
      ' WHERE x.balance_status=''1'' and  posisi_dk=''K'' AND X.balance_status=''1'') xxx '+
      ' GROUP BY header_code,bulan,tahun,kd_akun,account_name,"type",type_balance)x4 ORDER BY "type",kd_akun asc) xxx '+
      ' GROUP BY "type",type_balance,header_code,bulan,tahun,kd_akun,account_name ORDER BY "type",kd_akun asc';
      Execute;
    end;  }
    QRpt_Neraca.Close;
    QRpt_Neraca.Open;
    //end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neraca.fr3');
  //  Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan2.Text+' '+INTTOSTR(spTahun.EditValue));
  //  Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
 //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='  '+FormatDateTime('dd',dtmulai.editvalue)+' - '+FormatDateTime('dd mmm yyy',dtselesai.editvalue);
    Rpt.ShowReport();
  //end;
  // Neraca 1 tahun
{  if statustr='1' then
  begin
    WITH QRpt_neracathn do
    begin
      close;
      sql.Clear;
      sql.Text:=' select kode,jenis,jenis_nr,kode_header,tahun,nama_perkiraan,sum(spt)spt,sum(jan)jan,sum(feb)feb,sum(mar)mar,sum(apr)apr,sum(mei)mei,sum(jun)jun,sum(jul)jul,'+
      ' sum(ags)ags,sum(sep)sep,sum(okt)okt,sum(nov)nov,sum(des)des from (select kode,jenis,jenis_nr,kode_header,tahun,nama_perkiraan,case when bulan=''01'' '+
      ' then total end jan,case when bulan=''02'' then total end feb,case when bulan=''03'' then total end mar,case when bulan=''04'' then total end apr,'+
      ' case when bulan=''05'' then total end mei,case when bulan=''06'' then total end jun, case when bulan=''07'' then total end jul,case when bulan=''08'''+
      ' then total end ags,case when bulan=''09'' then total end sep,case when bulan=''10'' then total end okt,case when bulan=''11'' then total end nov,'+
      ' case when bulan=''12'' then total end des,case when bulan=''SPT'' then total end spt from (select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,sum(total) total from (   '+
      ' select jenis,jenis_nr,kode_header,bulan,xx.tahun,xx.kd_akun kode,nama_perkiraan,case when (db-kr) isnull  then 0 else (db-kr) end total from  '+
      ' (select x.kode_header,x2.bulan,x2.tahun,x.kode kd_akun,x.nama_perkiraan,b.jenis,b.jenis_nr,sum(x2.kredit)kr,sum(x2.debit)db from t_daftar_perkiraan x '+
      ' INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN '+
      ' (select thn,bln,max(notrans) notrans from t_neraca_lajur1 GROUP BY thn,bln ORDER BY bln,thn) a'+
      ' on a.notrans=b.notrans WHERE  a.thn='+QuotedStr(edthn2.Text)+' union /*SPT Tahun Lalu*/ '+
      ' select b.*,''SPT'' bulan,'+QuotedStr(edthn2.Text)+' tahun from t_neraca_lajur1_det b INNER JOIN (select thn,bln,notrans,periode1,periode2 '+
      ' from t_neraca_lajur1 WHERE thn<'+QuotedStr(edthn2.Text)+' ORDER BY periode2 desc limit 1)a on a.notrans=b.notrans)x2 on x2.kd_akun=x.kode WHERE  x.status_neraca=''1'' and  posisi_dk=''D'''+
      ' GROUP BY x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr)xx'+
      ' UNION '+
      ' select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,case when jenis_nr=''AKM. PENYUSUTAN'' then -(case when (kr-db) isnull then 0 else (kr-db) end)'+
      ' else (case when (kr-db) isnull then 0 else (kr-db) end) end total from (select kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr,sum(kredit)kr,sum(debit)db from '+
      '(select x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr,x2.kredit,x2.debit from  t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on '+
      ' x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN (select thn,bln,max(notrans) notrans from t_neraca_lajur1 '+
      ' GROUP BY thn,bln ORDER BY bln,thn) a on a.notrans=b.notrans WHERE a.thn='+QuotedStr(edthn2.Text)+' union /*SPT Tahun Lalu*/ '+
      ' select b.*,''SPT'' bulan,'+QuotedStr(edthn2.Text)+' tahun from t_neraca_lajur1_det b INNER JOIN (select thn,bln,notrans,periode1,periode2 '+
      ' from t_neraca_lajur1 WHERE thn<'+QuotedStr(edthn2.Text)+' ORDER BY periode2 desc limit 1)a on a.notrans=b.notrans)x2 on x2.kd_akun=x.kode WHERE x.status_neraca=''1'' and posisi_dk=''K'' AND X.st_nr=''1'') xxx'+
      ' GROUP BY kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr)x4 ORDER BY jenis,kode asc) xxx GROUP BY jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan) y)'+
      ' yy GROUP BY kode,jenis,jenis_nr,kode_header,tahun,nama_perkiraan ORDER BY jenis,kode asc';
      open;
    end;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neracathn.fr3');
      Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:='TAHUN  '+edthn2.Text;
      Tfrxmemoview(Rpt.FindObject('Mspt')).Memo.Text:='SPT TH '+FloatToStr(StrToFloat(edthn2.Text)-1);
     // Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
    //  Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='  '+FormatDateTime('dd',dtmulai.editvalue)+' - '+FormatDateTime('dd mmm yyy',dtselesai.editvalue);
      Rpt.ShowReport();
  end;

  // Pos neraca
  if statustr='2' then
  begin
    WITH QRpt_PosNeraca do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT X5.*,X6.st_posnr, CASE WHEN x6.kode=x6.kode_header then 0 else 1 end notr,y.nm_pos FROM ('+
        ' /* Aktiva tetap dan lancar*/ select jenis,jenis_nr,kode_header,bulan,xx.tahun,xx.kd_akun kode,nama_perkiraan,'+
        ' case when db isnull then 0 else db end db ,case when kr isnull then 0 else kr end kr from'+
        ' (select x.kode_header,x2.bulan,x2.tahun,x.kode kd_akun,x.nama_perkiraan,b.jenis,b.jenis_nr,sum(x2.kredit)kr,sum(x2.debit)db from  '+
        ' t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b'+
        ' INNER JOIN (select thn,bln,max(notrans) notrans from t_neraca_lajur1 GROUP BY thn,bln ORDER BY bln,thn) a on a.notrans=b.notrans WHERE a.bln='+QuotedStr(bln)+' and a.thn='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode'+
        ' WHERE x.status_neraca=''1'' and  posisi_dk=''D'' GROUP BY x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr)xx '+
        ' UNION /* Aktiva Lancar dan Pasiva*/ '+
        ' select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,'+
        ' case when jenis_nr=''AKM. PENYUSUTAN'' then -(case when kr isnull then 0 else kr end) else (case when db isnull then 0 else db end) end db,'+
        ' case when jenis_nr=''AKM. PENYUSUTAN'' then -(case when db isnull then 0 else db end) else (case when kr isnull then 0 else kr end) end kr'+
        ' from (select kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr,sum(kredit)kr,sum(debit)db from (select x.kode_header,x2.bulan,x2.tahun,'+
        ' x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr,x2.kredit,x2.debit from t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" '+
        ' LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN (select thn,bln,max(notrans) notrans from t_neraca_lajur1 GROUP BY thn,bln ORDER BY bln,thn)a'+
        ' on a.notrans=b.notrans WHERE a.bln='+QuotedStr(bln)+' and a.thn='+QuotedStr(edth.Text)+')x2 on x2.kd_akun=x.kode WHERE x.status_neraca=''1'' and  posisi_dk=''K'' AND X.st_nr=''1'''+
        ' ) xxx GROUP BY kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr)x4'+
        ' ) X5 INNER JOIN t_daftar_perkiraan X6 ON X5.kode=X6.kode INNER JOIN t_category_pos_neraca y ON x6.st_posnr=y."id" ORDER BY st_posnr,kode asc';
      open;
    end;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_PosNeraca.fr3');
      Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
      Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
     // Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:='';
      Rpt.ShowReport();
   end;
  if statustr='3' then
  begin
    WITH QRpt_Neraca do
    begin
      close;
      sql.Clear;
      sql.Text:= ' select jenis,jenis_nr,kode_header,bulan,xx.tahun,xx.kd_akun kode,nama_perkiraan,case when (db-kr) isnull  then 0 else (db-kr) end total from  '+
      ' (select x.kode_header,x2.bulan,x2.tahun,x.kode kd_akun,x.nama_perkiraan,b.jenis,b.jenis_nr,sum(x2.kredit)kr,sum(x2.debit)db from t_daftar_perkiraan x '+
      ' INNER JOIN t_jenis_neraca b on x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN '+
      ' (select thn,bln,max(notrans) notrans from t_neraca_lajur1 GROUP BY thn,bln ORDER BY bln,thn) a'+
      ' on a.notrans=b.notrans WHERE  a.thn='+QuotedStr(edth.Text)+' and a.bln='+QuotedStr(bln)+')x2 on x2.kd_akun=x.kode WHERE  x.status_neraca=''1'' and  posisi_dk=''D'''+
      ' GROUP BY x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr)xx'+
      ' UNION '+
      ' select jenis,jenis_nr,kode_header,bulan,tahun,kode,nama_perkiraan,case when jenis_nr=''AKM. PENYUSUTAN'' then -(case when (kr-db) isnull then 0 else (kr-db) end)'+
      ' else (case when (kr-db) isnull then 0 else (kr-db) end) end total from (select kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr,sum(kredit)kr,sum(debit)db from '+
      '(select x.kode_header,x2.bulan,x2.tahun,x.kode,x.nama_perkiraan,b.jenis,b.jenis_nr,x2.kredit,x2.debit from  t_daftar_perkiraan x INNER JOIN t_jenis_neraca b on '+
      ' x.id_jenis_nr=b."id" LEFT JOIN(select b.*,a.bln bulan,a.thn tahun from t_neraca_lajur1_det b INNER JOIN (select thn,bln,max(notrans) notrans from t_neraca_lajur1 '+
      ' GROUP BY thn,bln ORDER BY bln,thn) a on a.notrans=b.notrans WHERE a.thn='+QuotedStr(edth.Text)+' and a.bln='+QuotedStr(bln)+')x2 on x2.kd_akun=x.kode '+
      ' WHERE x.status_neraca=''1'' and posisi_dk=''K'' AND X.st_nr=''1'') xxx'+
      ' GROUP BY kode_header,bulan,tahun,kode,nama_perkiraan,jenis,jenis_nr)x4 ORDER BY jenis,kode asc';
      open;
    end;
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Neraca.fr3');
      Tfrxmemoview(Rpt.FindObject('Mbln')).Memo.Text:=UpperCase('Bulan  '+cbbulan.Text+' '+edth.Text);
      Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
      Tfrxmemoview(Rpt.FindObject('Memo7')).Memo.Text:=UpperCase(''+cbbulan.Text);
      Rpt.ShowReport();
  end;         }
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

procedure TFRpt_Neraca.DxRefreshClick(Sender: TObject);
var periode1,periode2:string;
begin
{    if dtmulai.EditValue = null then
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
    periode1:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
    periode2:=FormatDateTime('yyy-mm-dd',DtSelesai.EditValue);
    {with QRpt_Neraca do
    begin
      close;
      sql.Clear;
      sql.Text:='select "type",type_balance,header_code,bulan,tahun,kd_akun,account_name,sum(total) total from ( '+
      ' select "type",type_balance,header_code,bulan,xx.tahun,xx.kd_akun,account_name,case when (db-kr) > 0 then '+
      ' (db-kr) else 0 end total from  (select x.header_code,x2.bulan,x2.tahun,x.code kd_akun,x.account_name,'+
      ' b."type",b.type_balance,sum(x2.kredit)kr,sum(x2.debit)db from  t_ak_account x INNER JOIN t_ak_type_balance b '+
      ' on x.balance_st_id=b."id" LEFT JOIN(select b.*,a.trans_month bulan,a.trans_year tahun from t_neraca_lajur_det b'+
      ' INNER JOIN t_neraca_lajur a on a.trans_no=b.trans_no'+
      ' WHERE a.trans_month='+QuotedStr(bln)+' and a.trans_year='+QuotedStr(SpTahun.EditValue)+' and  '+
      ' (a.periode1 >='+QuotedStr(periode1)+' and a.periode2 <='+QuotedStr(periode2)+'))x2 on x2.account_code=x.code '+
      ' WHERE x.balance_status=''1'' and  posisi_dk=''D'' GROUP BY x.header_code,x2.bulan,x2.tahun,x.code,x.account_name,b."type",b.type_balance)xx '+
      ' UNION '+
      ' select "type","type_balance",header_code,bulan,tahun,kd_akun,account_name,case when type_balance=''AKM. PENYUSUTAN'''+
      ' then -(case when (kr-db) > 0 then (kr-db) else 0 end) else (case when (kr-db) > 0 then (kr-db) else 0 end) end total '+
      ' from (select header_code,bulan,tahun,kd_akun,account_name,"type",type_balance,sum(kredit)kr,sum(debit)db from '+
      ' (select x.header_code,x2.bulan,x2.tahun,x.code kd_akun,x.account_name,b."type",b.type_balance,x2.kredit,x2.debit from  t_ak_account x '+
      ' INNER JOIN t_ak_type_balance b on  x.balance_st_id=b."id"  '+
      ' LEFT JOIN(select b.*,a.trans_month bulan,a.trans_year tahun from t_neraca_lajur_det b INNER JOIN t_neraca_lajur a '+
      ' on a.trans_no=b.trans_no WHERE  a.trans_month='+QuotedStr(bln)+' and a.trans_year='+QuotedStr(SpTahun.EditValue)+''+
      ' and (a.periode1 >='+QuotedStr(periode1)+' and a.periode2 <='+QuotedStr(periode2)+'))x2 on x2.account_code=x.code '+
      ' WHERE x.balance_status=''1'' and  posisi_dk=''K'' AND X.balance_status=''1'') xxx '+
      ' GROUP BY header_code,bulan,tahun,kd_akun,account_name,"type",type_balance)x4 ORDER BY "type",kd_akun asc) xxx '+
      ' GROUP BY "type",type_balance,header_code,bulan,tahun,kd_akun,account_name ORDER BY "type",kd_akun asc';
      Execute;
    end;    }
    QRpt_Neraca.Close;
    QRpt_Neraca.Open;
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
  dtmulai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
  DtSelesai.EditValue:=FormatDateTime('dd-mm-yyy',Now());
end;

initialization
RegisterClass(TFRpt_Neraca);

end.
