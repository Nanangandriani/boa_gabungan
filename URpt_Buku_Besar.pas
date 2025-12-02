unit URpt_Buku_Besar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzEdit, RzBtnEdt, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls, Vcl.Mask, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, cxGraphics, cxControls,
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
  dxRibbonCustomizationForm, cxCalendar, cxDropDownEdit, dxBar, cxBarEditItem,
  cxClasses, dxRibbon, cxButtonEdit, cxTextEdit;

type
  TFRpt_Buku_Besar = class(TForm)
    Rpt: TfrxReport;
    QRpt_Buku_Besar: TUniQuery;
    DBBuku_Besar: TfrxDBDataset;
    DBGridEh1: TDBGridEh;
    DsBuku_Besar: TDataSource;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    dtMulai: TcxBarEditItem;
    dtSelesai: TcxBarEditItem;
    EdAkun: TcxBarEditItem;
    Ednm_akun: TcxBarEditItem;
    BPrint_Rincian: TdxBarLargeButton;
    BRingkasan: TdxBarLargeButton;
    QTotal_Buku_Besar: TUniQuery;
    DbTotal_Buku_besar: TfrxDBDataset;
    procedure Edkd_akun2ButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BRptClick(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure BCarriClick(Sender: TObject);
    procedure DxRefreshClick(Sender: TObject);
    procedure CbAkunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure EdAkunPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BPrint_RincianClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BRingkasanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    posisidk,selesihthn:string;
  end;

//var
Function  FRpt_Buku_Besar: TFRpt_Buku_Besar;

implementation

{$R *.dfm}

uses UAkun_Perkiraan_TerimaMat,umainmenu, UDataModule, UMy_Function;
var
  realfrptbbp : TFRpt_Buku_Besar;
// implementasi function
function FRpt_Buku_Besar: TFRpt_Buku_Besar;
begin
  if realfrptbbp<> nil then
    FRpt_Buku_Besar:= realfrptbbp
  else
    Application.CreateForm(TFRpt_Buku_Besar, Result);
end;

procedure TFRpt_Buku_Besar.BBatalClick(Sender: TObject);
begin
Close;
end;

procedure TFRpt_Buku_Besar.BCarriClick(Sender: TObject);
begin
  if Edakun.editvalue='' then
    begin
      MessageDlg('Kode Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edakun.SetFocus;
      Exit;
    end;

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
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+''+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.account_code::text = yy.code::text  where account_code='+QuotedStr(Edakun.EditValue);
         Open;
      end;
      QRpt_Buku_Besar.Open;
end;

procedure TFRpt_Buku_Besar.BPrint_RincianClick(Sender: TObject);
begin
   if DtMulai.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue = null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
      with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='select a.header_name,b.*  from t_ak_header a inner join (SELECT yy.header_code,xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         '  CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (PARTITION BY xx.account_code ORDER BY xx.trans_date,xx.created_at)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (PARTITION BY  xx.account_code ORDER BY  xx.trans_date,xx.created_at)  END AS saldo FROM '+
         ' (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+''+
         ' UNION  /*Transaksi*/'+
         ' SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         ' JOIN t_ak_account yy ON xx.account_code::text = yy.code::text) b on  a.header_code=b.header_code '+
         ' Where account_code='+QuotedStr(EdAkun.EditValue)+''+
         ' ORDER BY b.header_code,b.created_at ASC ';//where account_code='+QuotedStr(Edakun.EditValue);
         Open;
      end;
      QRpt_Buku_Besar.Open;

    if QRpt_Buku_Besar.RecordCount<>0  then
    begin                                                          // Rpt_Rincian_Buku_Besar.fr3
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Rincian_Buku_Besar.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:='Dari '+FormatDateTime('dd MMM yyy',DtMulai.EditValue)+' s/d '+FormatDateTime('dd MMM yyy',DtSelesai.EditValue);
      Rpt.ShowReport();
    end else
    ShowMessage('Maaf data kosong');
end;

procedure TFRpt_Buku_Besar.BRingkasanClick(Sender: TObject);
var
  subquery,subquery2:string;
begin
   if DtMulai.EditValue = null then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue = null then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
    subquery:=' select yy.header_name,x5.*,'''' bln from (SELECT x4.header_code,x4.posisi_dk,x4.account_code,x4.account_name,sum(x4.sa) sa,sum(x4.db) db,sum(x4.kd) kd,'+
           ' case when x4.posisi_dk=''D'' then sum(x4.sa+x4.db-x4.kd) else sum(x4.sa-x4.db+x4.kd) end saldo from (select x3.header_code,x3.posisi_dk,x3.account_code,'+
           ' x3.account_name,CASE WHEN x3.posisi_dk::text =''D''::text THEN  sum(x3.sa+x3.db-x3.kd) ELSE sum(x3.sa-x3.db+x3.kd) END AS sa ,0 db, 0 kd from (   '+
           ' SELECT yy.posisi_dk,yy.header_code,xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
           ' CASE WHEN yy.posisi_dk::text=''D''::text THEN sum(xx.sa+xx.db-xx.kd) OVER (PARTITION BY xx.account_code ORDER BY xx.trans_date,xx.created_at) ELSE  '+
           ' sum(xx.sa-xx.db+xx.kd) OVER (PARTITION BY xx.account_code ORDER BY xx.trans_date,xx.created_at) END AS saldo FROM (/*saldo awal tabel sa*/SELECT module_id,ket,'+
           ' date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,account_code,account_name,sa,db,kd,'+
           ' date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' created_at FROM	"VBuku_BesarSA" where concat(trans_year,''-'',trans_month)<'+QuotedStr(FormatDateTime('yyyy-mm',DtMulai.EditValue))+''+
  //  subquery:=
           ' UNION /* saldo awal di periode berjalan dari Transaksi*/ SELECT module_id,ket,trans_date,trans_no,modul,account_code,account_name, sa,db,kd,created_at FROM '+
           ' "VBuku_Besar" where to_char(trans_date, ''yyyy-mm'')>='+QuotedStr(FormatDateTime('yyyy-mm',DtMulai.EditValue))+' and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+')xx '+
           ' JOIN t_ak_account yy ON xx.account_code::text=yy.code::text ORDER BY xx.account_code ASC )x3 GROUP BY x3.header_code,x3.account_code,x3.account_name,x3.posisi_dk '+
           ' UNION SELECT b.header_code,b.posisi_dk,a.account_code,a.account_name,0 sa,sum(db) db,sum(kd) kd FROM	"VBuku_Besar" a INNER join t_ak_account b on a.account_code=b.code'+
           ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtSelesai.EditValue))+''+
           ' GROUP BY b.header_code,a.account_code,a.account_name,b.posisi_dk ORDER BY account_code) x4 GROUP BY x4.header_code,x4.posisi_dk,x4.account_code,x4.account_name) x5'+
           ' inner join t_ak_header yy on  x5.header_code=yy.header_code';

      with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
      {    sql.Text:=subqery +' union select header_name,header_code,'''' posisi_dk,'''' account_code,'''' account_name,sum(sa) sa,sum(db) db,sum(kd) kd,sum(saldo) saldo, '''' bln'+
           ' FROM  ('+subqery+' )x6 GROUP BY header_code,header_name,posisi_dk ORDER BY  header_code ASC'; }
          sql.Text:='select x5.*,y.sahd,y.dbhd,y.kdhd,y.saldohd from ('+subquery+')x5 left join '+
                    '(select header_name,header_code,sum(sa) sahd,sum(db) dbhd,sum(kd) kdhd,sum(saldo) saldohd'+
                    ' FROM ('+subquery+' )x6 GROUP BY header_code,header_name)y on x5.header_code=y.header_code ORDER BY  account_code ASC ' ;
         Open;
      end;
      QRpt_Buku_Besar.Open;
      with QTotal_Buku_Besar do
        begin
          close;
          sql.Clear;
          sql.Text:=' select header_name,header_code,'''' posisi_dk,'''' account_code,'''' account_name,sum(sa) sa,sum(db) db,sum(kd) kd,sum(saldo) saldo, '''' bln'+
           ' FROM  ('+subquery+' )x6 GROUP BY header_code,header_name,posisi_dk ORDER BY  header_code ASC';
          //sql.Text:=subquery;
         Open;
      end;
      QTotal_Buku_Besar.Open;
    if QRpt_Buku_Besar.RecordCount<>0  then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Ringkasan_Buku_Besar.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriode')).Memo.Text:='Dari   '+FormatDateTime('dd MMM yyy',DtMulai.EditValue)+' s/d '+FormatDateTime('dd MMM yyy',DtSelesai.EditValue);
      Rpt.ShowReport();
    end else
    ShowMessage('Maaf data kosong');
end;

procedure TFRpt_Buku_Besar.BRptClick(Sender: TObject);
var tgl,tgl2:string;
begin
tgl:=FormatDateTime('yyy-mm-dd',DtMulai.EditValue);
tgl2:=FormatDateTime('yyy-mm-dd',DtSelesai.EditValue);
//selesihthn:=FloatToStr(FormatDateTime('yyyy',DtSelesai.Date)-FormatDateTime('yyyy',DtMulai.Date));
//if selesihthn='0' then
//begin
      if Edakun.EditValue='' then
    begin
      MessageDlg('Kode Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edakun.SetFocus;
      Exit;
    end;

    if DtMulai.EditValue='' then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.EditValue='' then
    begin
      MessageDlg('Tanggal Selesai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtSelesai.SetFocus;
      Exit;
    end;
  {  if posisidk='D' then
    begin
      with QRpt_Buku_Besar do
      begin
        close;
        sql.Clear;
    {   sql.Text:='Select y.nama_perkiraan,x.*,SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) saldo from '+
        ' (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'+QuotedStr(FormatDateTime('mm',DtMulai.date))+' bln from '+
        ' (select case when b.debit is Null  then 0 else b.debit end sa,0 db,0 kd,CAST('+QuotedStr(Edakun.editvalue)+' AS VARCHAR) kode,'+
        ' CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)  kd_modul,now() tgl from t_neraca_lajur1 a left join t_neraca_lajur1_det b '+
        ' on a.notrans=b.notrans where b.kd_akun='+QuotedStr(Edakun.editvalue)+'  AND to_char(a.periode2,''yyyy-mm'')<'+QuotedStr(tgl)+''+
        ' order by a.periode2 desc limit 1)x '+
        ' UNION  /* Debit */ '+
        ' select 1 nomor,0 sa,sum(debit) db,0 kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from '+
        ' t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN '+
        ' t_modul_mutasi d on a.jenis_tr=d.nama_modul  WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+''+
        ' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND debit<>0  group by kode,d.kd_modul,A.jenis_tr,a.bulan  '+
        ' union /* Kredit */ '+
        ' select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from t_item_neraca a INNER JOIN '+
        ' t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+''+
        ' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';}
       { sql.Text:='Select y.nama_perkiraan,x.*,case when x.posisi_dk=''D'' then SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) else SUM(sa-db+kd) OVER '+
        ' (order by bln,nomor,kd_modul ASC) end saldo from (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'''' bln ,'+QuotedStr(FormatDateTime('yyyy',DtMulai.date))+' tgl,posisi_dk '+
        ' from (select case when posisi_dk=''D'' then case when b.debit is Null  then 0 else b.debit end else case when b.kredit is Null  then 0 else b.kredit end end sa,0 db,0 kd,'+
        ' CAST('+QuotedStr(Edakun.editvalue)+' AS VARCHAR) kode, CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)kd_modul,now() tgl,posisi_dk from t_neraca_lajur1 a left join'+
        ' t_neraca_lajur1_det b on a.notrans=b.notrans INNER JOIN t_daftar_perkiraan c on b.kd_akun=c.kode where b.kd_akun='+QuotedStr(Edakun.editvalue)+' AND a.periode2<'+QuotedStr(tgl)+' order by a.periode2 desc limit 1)x '+
        ' UNION /* Debit */  select nomor,sum(sa)sa,sum(db)db,sum(kd) kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk from (select 1 nomor,0 sa,sum(debit)db,0 kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari) tgl,posisi_dk '+
        ' from t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul'+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND debit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,a.tgl_in,posisi_dk) x'+
        ' group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk '+
        ' union /* Kredit */ select nomor,sum(sa)sa,sum(db)db,sum(kd)kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk FROM(select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari)tgl,posisi_dk from'+
        ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,'+
        ' a.tgl_in,posisi_dk)x  group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';

         sql.Text:='select * from "VBuku_Besar" where account_code='+QuotedStr(Edakun.editvalue);
         Open;
      end;
      QRpt_Buku_Besar.Open;
    end;

   { if posisidk='K' then
    begin
      with QRpt_Buku_Besar do
      begin
        close;
        sql.Clear;
    {   sql.Text:='Select y.nama_perkiraan,x.*,SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) saldo from '+
        ' (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'+QuotedStr(FormatDateTime('mm',DtMulai.date))+' bln from '+
        ' (select case when b.debit is Null  then 0 else b.debit end sa,0 db,0 kd,CAST('+QuotedStr(Edakun.editvalue)+' AS VARCHAR) kode,'+
        ' CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)  kd_modul,now() tgl from t_neraca_lajur1 a left join t_neraca_lajur1_det b '+
        ' on a.notrans=b.notrans where b.kd_akun='+QuotedStr(Edakun.editvalue)+'  AND to_char(a.periode2,''yyyy-mm'')<'+QuotedStr(tgl)+''+
        ' order by a.periode2 desc limit 1)x '+
        ' UNION  /* Debit */ '+
        ' select 1 nomor,0 sa,sum(debit) db,0 kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from '+
        ' t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN '+
        ' t_modul_mutasi d on a.jenis_tr=d.nama_modul  WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+''+
        ' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND debit<>0  group by kode,d.kd_modul,A.jenis_tr,a.bulan  '+
        ' union /* Kredit */ '+
        ' select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from t_item_neraca a INNER JOIN '+
        ' t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+''+
        ' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';}
      {  sql.Text:='Select y.nama_perkiraan,x.*,case when x.posisi_dk=''D'' then SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) else SUM(sa-db+kd) OVER '+
        ' (order by bln,nomor,kd_modul ASC) end saldo from (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'''' bln ,'+QuotedStr(FormatDateTime('yyyy',DtMulai.date))+' tgl,posisi_dk '+
        ' from (select case when posisi_dk=''D'' then case when b.debit is Null  then 0 else b.debit end else case when b.kredit is Null  then 0 else b.kredit end end sa,0 db,0 kd,'+
        ' CAST('+QuotedStr(Edakun.editvalue)+' AS VARCHAR) kode, CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)kd_modul,now() tgl,posisi_dk from t_neraca_lajur1 a left join'+
        ' t_neraca_lajur1_det b on a.notrans=b.notrans INNER JOIN t_daftar_perkiraan c on b.kd_akun=c.kode where b.kd_akun='+QuotedStr(Edakun.editvalue)+' AND a.periode2<'+QuotedStr(tgl)+' order by a.periode2 desc limit 1)x '+
        ' UNION /* Debit */  select nomor,sum(sa)sa,sum(db)db,sum(kd) kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk from (select 2 nomor,0 sa,sum(debit)db,0 kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari) tgl,posisi_dk '+
        ' from t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul'+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND debit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,a.tgl_in,posisi_dk) x'+
        ' group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk '+
        ' union /* Kredit */ select nomor,sum(sa)sa,sum(db)db,sum(kd)kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk FROM(select 1 nomor,0 sa,0 db,sum(kredit) kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari)tgl,posisi_dk from'+
        ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edakun.editvalue)+' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,'+
        ' a.tgl_in,posisi_dk)x  group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';
         }
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+''+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.account_code::text = yy.code::text  where account_code='+QuotedStr(Edakun.EditValue);
         Open;
      end;
      QRpt_Buku_Besar.Open;

    if QRpt_Buku_Besar.RecordCount<>0  then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Besar.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.EditValue)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.EditValue);
     // Tfrxmemoview(Rpt.FindObject('Mtgl_saldo')).Memo.Text:=''+FormatDateTime('dd/MM/yyy',DtMulai.Date-1);
      Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
      // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
      Rpt.ShowReport();
    end else
    ShowMessage('Maaf data kosong');
//end;   if selesihthn='1' then    begin ShowMessage('Maaf periode yang anda pilih lebih dari 1 tahun'); end;
end;

procedure TFRpt_Buku_Besar.CbAkunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with  FAkun_Perkiraan_TerimaMat do
  begin
    statustr:='buku_besar';
    Show;
    if QAkun.Active=false then QAkun.Active:=True;
  end;
end;

procedure TFRpt_Buku_Besar.dxBarLargeButton1Click(Sender: TObject);
var tgl,tgl2:string;
begin
 if Edakun.editvalue=null then
    begin
      MessageDlg('Kode Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edakun.SetFocus;
      Exit;
    end;
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
    with dm.qtemp do
     begin
       close;
       sql.clear;
       SQL.Text:='SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,code,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+' and account_code='+QuotedStr(Edakun.editvalue);
       ExecSQL;
     end;
    if dm.Qtemp.RecordCount<>0 then
    begin
    //showmessage('test');
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,'+
         ' trans_no,modul,code account_code,account_name,sum(sa) sa,sum(db) db,sum(kd)kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+''+
         ' group by module_id, ket, trans_no,modul,code,account_name '+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.account_code::text = yy.code::text  where account_code='+QuotedStr(Edakun.editvalue);
         Open;
      end;
    end;
        if dm.Qtemp.RecordCount=0 then
    begin
    //showmessage('test 2');
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.code account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+''+
         ' trans_date,trans_no,modul,code,account_name,sum(sa) sa,sum(db) db,sum(kd)kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year='+QuotedStr(inttostr(strtoint(FormatDateTime('yyyy',DtMulai.EditValue))-1))+''+
         ' and trans_month <=''12'' group by module_id, ket, trans_no,modul,code,account_name'+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.code::text = yy.code::text  where xx.code='+QuotedStr(Edakun.editvalue);
         Open;
      end;
    end;
      QRpt_Buku_Besar.Open;

    if QRpt_Buku_Besar.RecordCount<>0  then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Besar.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.EditValue)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.EditValue);
     // Tfrxmemoview(Rpt.FindObject('Mtgl_saldo')).Memo.Text:=''+FormatDateTime('dd/MM/yyy',DtMulai.Date-1);
      Tfrxmemoview(Rpt.FindObject('Mpt')).Memo.Text:=''+SBU;
      // TfrxPictureView(RptPO.FindObject('Picture1')).Picture.loadfromfile('Report\Logo.jpg');
    //  SetMemo(Rpt,'MPT',' '+SBU+' ');
      //SetMemo(Rpt,'MPeriode',' '++' Rupiah ');
      Rpt.ShowReport();
    end else
    ShowMessage('Maaf data kosong');
end;

procedure TFRpt_Buku_Besar.DxRefreshClick(Sender: TObject);
begin
 if Edakun.editvalue=null then
    begin
      MessageDlg('Kode Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edakun.SetFocus;
      Exit;
    end;
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
    with dm.qtemp do
     begin
       close;
       sql.clear;
       SQL.Text:='SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,trans_no,modul,code,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+' and account_code='+QuotedStr(Edakun.editvalue);
       ExecSQL;
     end;
    if dm.Qtemp.RecordCount<>0 then
    begin
    //showmessage('test');
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' trans_date,'+
         ' trans_no,modul,code account_code,account_name,sum(sa) sa,sum(db) db,sum(kd)kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.EditValue))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.EditValue))+''+
         ' group by module_id, ket, trans_no,modul,code,account_name '+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.account_code::text = yy.code::text  where account_code='+QuotedStr(Edakun.editvalue);
         Open;
      end;
    end;
        if dm.Qtemp.RecordCount=0 then
    begin
    //showmessage('test 2');
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.code account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+' '+
         ' trans_date,trans_no,modul,code,account_name,sum(sa) sa,sum(db) db,sum(kd)kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year='+QuotedStr(inttostr(strtoint(FormatDateTime('yyyy',DtMulai.EditValue))-1))+''+
         ' and trans_month <=''12'' group by module_id, ket, trans_no,modul,code,account_name'+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.EditValue))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue))+')xx'+
         '  JOIN t_ak_account yy ON xx.code::text = yy.code::text  where xx.code='+QuotedStr(Edakun.editvalue);
         Open;
      end;
    end;
      if QRpt_Buku_Besar.RecordCount=0 then
      ShowMessage('Data yang dipilih kosong')
      else
      QRpt_Buku_Besar.Open;
end;

procedure TFRpt_Buku_Besar.EdAkunPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  with  FAkun_Perkiraan_TerimaMat do
  begin
    statustr:='buku_besar';
    Show;
    with QAkun do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_Search_Account2"';
      Execute;
    end;
    QAkun.Active:=True;
  end;
end;

procedure TFRpt_Buku_Besar.Edkd_akun2ButtonClick(Sender: TObject);
begin
  with  FAkun_Perkiraan_TerimaMat do
  begin
    statustr:='buku_besar';
    Show;
    with QAkun do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from "V_Search_Account2"';
      Execute;
    end;
    QAkun.Active:=True;
  end;
end;

procedure TFRpt_Buku_Besar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFRpt_Buku_Besar.FormCreate(Sender: TObject);
begin
  realfrptbbp:=self;
end;

procedure TFRpt_Buku_Besar.FormDestroy(Sender: TObject);
begin
  realfrptbbp:=nil;
end;

procedure TFRpt_Buku_Besar.FormShow(Sender: TObject);
begin
    DtMulai.EditValue:=date;
    DtSelesai.EditValue:=date;
end;

procedure TFRpt_Buku_Besar.RptGetValue(const VarName: string;
  var Value: Variant);
  var bulan1,bulan:string;
begin
  bulan1:=QRpt_Buku_Besar['bln'];
  if bulan1= '01' then
  bulan:=' Jan '
  else if bulan1= '02' then
  bulan:=' Feb '
  else if bulan1= '03' then
  bulan:=' Mar '
  else if bulan1= '04' then
  bulan:=' Apr '
  else if bulan1= '05' then
  bulan:=' Mei '
  else if bulan1= '06' then
  bulan:=' Jun '
  else if bulan1= '07' then
  bulan:=' Jul '
  else if bulan1= '08' then
  bulan:=' Agu '
  else if bulan1= '09' then
  bulan:=' Sep '
  else if bulan1= '10' then
  bulan:=' Okt '
  else if bulan1= '11' then
  bulan:=' Nov '
  else if bulan1= '12' then
  bulan:=' Des ';
  if CompareText(VarName, 'vBulan') = 0 then
  Value := bulan;
end;

initialization
RegisterClass(TFRpt_Buku_Besar);

end.
