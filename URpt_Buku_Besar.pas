unit URpt_Buku_Besar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzEdit, RzBtnEdt, Data.DB, MemDS,
  DBAccess, Uni, frxClass, frxDBSet, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFRpt_Buku_Besar = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    Rpt: TfrxReport;
    PnPerAkun: TPanel;
    Label3: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    DtMulai: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    EdNm_akun: TRzComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Edkd_akun: TRzButtonEdit;
    Label2: TLabel;
    PnPeriode: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    DtMulai2: TRzDateTimeEdit;
    DtSelesai2: TRzDateTimeEdit;
    BPrint2: TRzBitBtn;
    BRpt: TRzBitBtn;
    QRpt_Buku_Besar: TUniQuery;
    DBBuku_Besar: TfrxDBDataset;
    procedure Edkd_akunButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BRptClick(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
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

procedure TFRpt_Buku_Besar.BRptClick(Sender: TObject);
var tgl,tgl2:string;
begin
tgl:=FormatDateTime('yyy-mm-dd',DtMulai.Date);
tgl2:=FormatDateTime('yyy-mm-dd',DtSelesai.Date);
//selesihthn:=FloatToStr(FormatDateTime('yyyy',DtSelesai.Date)-FormatDateTime('yyyy',DtMulai.Date));
//if selesihthn='0' then
//begin
      if Edkd_akun.Text='' then
    begin
      MessageDlg('Kode Akun Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edkd_akun.SetFocus;
      Exit;
    end;

    if DtMulai.Text='' then
    begin
      MessageDlg('Tanggal Mulai Perkiraan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtMulai.SetFocus;
      Exit;
    end;
    if DtSelesai.Text='' then
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
        ' (select case when b.debit is Null  then 0 else b.debit end sa,0 db,0 kd,CAST('+QuotedStr(Edkd_akun.Text)+' AS VARCHAR) kode,'+
        ' CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)  kd_modul,now() tgl from t_neraca_lajur1 a left join t_neraca_lajur1_det b '+
        ' on a.notrans=b.notrans where b.kd_akun='+QuotedStr(Edkd_akun.Text)+'  AND to_char(a.periode2,''yyyy-mm'')<'+QuotedStr(tgl)+''+
        ' order by a.periode2 desc limit 1)x '+
        ' UNION  /* Debit */ '+
        ' select 1 nomor,0 sa,sum(debit) db,0 kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from '+
        ' t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN '+
        ' t_modul_mutasi d on a.jenis_tr=d.nama_modul  WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+''+
        ' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND debit<>0  group by kode,d.kd_modul,A.jenis_tr,a.bulan  '+
        ' union /* Kredit */ '+
        ' select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from t_item_neraca a INNER JOIN '+
        ' t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+''+
        ' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';}
       { sql.Text:='Select y.nama_perkiraan,x.*,case when x.posisi_dk=''D'' then SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) else SUM(sa-db+kd) OVER '+
        ' (order by bln,nomor,kd_modul ASC) end saldo from (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'''' bln ,'+QuotedStr(FormatDateTime('yyyy',DtMulai.date))+' tgl,posisi_dk '+
        ' from (select case when posisi_dk=''D'' then case when b.debit is Null  then 0 else b.debit end else case when b.kredit is Null  then 0 else b.kredit end end sa,0 db,0 kd,'+
        ' CAST('+QuotedStr(Edkd_akun.Text)+' AS VARCHAR) kode, CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)kd_modul,now() tgl,posisi_dk from t_neraca_lajur1 a left join'+
        ' t_neraca_lajur1_det b on a.notrans=b.notrans INNER JOIN t_daftar_perkiraan c on b.kd_akun=c.kode where b.kd_akun='+QuotedStr(Edkd_akun.Text)+' AND a.periode2<'+QuotedStr(tgl)+' order by a.periode2 desc limit 1)x '+
        ' UNION /* Debit */  select nomor,sum(sa)sa,sum(db)db,sum(kd) kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk from (select 1 nomor,0 sa,sum(debit)db,0 kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari) tgl,posisi_dk '+
        ' from t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul'+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND debit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,a.tgl_in,posisi_dk) x'+
        ' group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk '+
        ' union /* Kredit */ select nomor,sum(sa)sa,sum(db)db,sum(kd)kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk FROM(select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari)tgl,posisi_dk from'+
        ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,'+
        ' a.tgl_in,posisi_dk)x  group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';

         sql.Text:='select * from "VBuku_Besar" where account_code='+QuotedStr(Edkd_akun.Text);
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
        ' (select case when b.debit is Null  then 0 else b.debit end sa,0 db,0 kd,CAST('+QuotedStr(Edkd_akun.Text)+' AS VARCHAR) kode,'+
        ' CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)  kd_modul,now() tgl from t_neraca_lajur1 a left join t_neraca_lajur1_det b '+
        ' on a.notrans=b.notrans where b.kd_akun='+QuotedStr(Edkd_akun.Text)+'  AND to_char(a.periode2,''yyyy-mm'')<'+QuotedStr(tgl)+''+
        ' order by a.periode2 desc limit 1)x '+
        ' UNION  /* Debit */ '+
        ' select 1 nomor,0 sa,sum(debit) db,0 kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from '+
        ' t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN '+
        ' t_modul_mutasi d on a.jenis_tr=d.nama_modul  WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+''+
        ' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND debit<>0  group by kode,d.kd_modul,A.jenis_tr,a.bulan  '+
        ' union /* Kredit */ '+
        ' select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode, concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan from t_item_neraca a INNER JOIN '+
        ' t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE to_char(a.tgl_in,''yyyy-mm'')>='+QuotedStr(tgl)+' and to_char(a.tgl_in,''yyyy-mm'')<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+''+
        ' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';}
      {  sql.Text:='Select y.nama_perkiraan,x.*,case when x.posisi_dk=''D'' then SUM(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) else SUM(sa-db+kd) OVER '+
        ' (order by bln,nomor,kd_modul ASC) end saldo from (select 0 as nomor,sa,db,kd,kode,modul,kd_modul,'''' bln ,'+QuotedStr(FormatDateTime('yyyy',DtMulai.date))+' tgl,posisi_dk '+
        ' from (select case when posisi_dk=''D'' then case when b.debit is Null  then 0 else b.debit end else case when b.kredit is Null  then 0 else b.kredit end end sa,0 db,0 kd,'+
        ' CAST('+QuotedStr(Edkd_akun.Text)+' AS VARCHAR) kode, CAST(''SALDO AWAL'' AS VARCHAR) modul,CAST('''' AS VARCHAR)kd_modul,now() tgl,posisi_dk from t_neraca_lajur1 a left join'+
        ' t_neraca_lajur1_det b on a.notrans=b.notrans INNER JOIN t_daftar_perkiraan c on b.kd_akun=c.kode where b.kd_akun='+QuotedStr(Edkd_akun.Text)+' AND a.periode2<'+QuotedStr(tgl)+' order by a.periode2 desc limit 1)x '+
        ' UNION /* Debit */  select nomor,sum(sa)sa,sum(db)db,sum(kd) kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk from (select 2 nomor,0 sa,sum(debit)db,0 kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr ) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari) tgl,posisi_dk '+
        ' from t_item_neraca a INNER JOIN  t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul'+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND debit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,a.tgl_in,posisi_dk) x'+
        ' group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk '+
        ' union /* Kredit */ select nomor,sum(sa)sa,sum(db)db,sum(kd)kd,kode,modul,kd_modul,bulan,to_char(tgl,''dd'') tg,posisi_dk FROM(select 1 nomor,0 sa,0 db,sum(kredit) kd,c.kode,'+
        ' concat(''MENURUT BUKU HARIAN '',A.jenis_tr) modul,d.kd_modul,a.bulan,(SELECT (date_trunc(''MONTH'', tgl_in ) + INTERVAL ''1 MONTH - 1 day'')::date as hari)tgl,posisi_dk from'+
        ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.kd_akun=C.kode INNER JOIN t_modul_mutasi d on a.jenis_tr=d.nama_modul '+
        ' WHERE a.tgl_in>='+QuotedStr(tgl)+' and a.tgl_in<='+QuotedStr(tgl2)+' AND kd_akun='+QuotedStr(Edkd_akun.Text)+' AND kredit<>0 group by kode,d.kd_modul,A.jenis_tr,a.bulan,'+
        ' a.tgl_in,posisi_dk)x  group by kode,kd_modul,bulan,tgl,modul,nomor,posisi_dk ORDER BY bln,nomor,kd_modul asc)x INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,nomor,kd_modul asc';
         }
        with QRpt_Buku_Besar do
        begin
          close;
          sql.Clear;
         sql.Text:='SELECT xx.module_id,xx.ket,xx.trans_date,xx.trans_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,xx.created_at,'''' bln,'+
         ' CASE WHEN yy.posisi_dk::text = ''D''::text THEN sum(xx.sa::numeric + xx.db - xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul)'+
         ' ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER (ORDER BY xx.trans_date, xx.trans_no, xx.modul) '+
         ' END AS saldo FROM (/*saldo awal*/SELECT	module_id, ket, date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.Date))+' trans_date,trans_no,modul,account_code,account_name,sa,db,kd,date '+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.Date))+'created_at'+
         ' FROM	"VBuku_BesarSA" where trans_year<='+QuotedStr(FormatDateTime('yyyy',DtMulai.Date))+''+
         ' and trans_month <'+QuotedStr(FormatDateTime('mm',DtMulai.Date))+''+
         ' UNION  /*Transaksi*/'+
         '  SELECT	module_id,ket,trans_date,trans_no,modul,account_code,account_name,sa,db,kd,created_at FROM	"VBuku_Besar"'+
         ' where trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.date))+'and trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.date))+')xx'+
         '  JOIN t_ak_account yy ON xx.account_code::text = yy.code::text  where account_code='+QuotedStr(Edkd_akun.Text);
         Open;
      end;
      QRpt_Buku_Besar.Open;

    if QRpt_Buku_Besar.RecordCount<>0  then
    begin
      Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Besar.Fr3');
      Tfrxmemoview(Rpt.FindObject('MPeriod')).Memo.Text:='Periode  : '+FormatDateTime('dd MMMM yyy',DtMulai.Date)+' - '+FormatDateTime('dd MMMM yyy',DtSelesai.Date);
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

procedure TFRpt_Buku_Besar.Edkd_akunButtonClick(Sender: TObject);
begin
with  FAkun_Perkiraan_TerimaMat do
begin
  statustr:='buku_besar';
  Show;
  if QAkun.Active=false then QAkun.Active:=True;
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
