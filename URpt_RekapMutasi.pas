unit URpt_RekapMutasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  MemTableDataEh, MemTableEh, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCalendar, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, dxBar, cxBarEditItem, cxClasses,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFRpt_RekapMutasi = class(TForm)
    Rpt: TfrxReport;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DtMulai1: TRzDateTimeEdit;
    DtSelesai1: TRzDateTimeEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    QRekap_Mutasi: TUniQuery;
    DbRekap_mutasi: TfrxDBDataset;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    DxPrint: TdxBarLargeButton;
    DxRefresh: TdxBarLargeButton;
    DtMulai: TcxBarEditItem;
    DtSelesai: TcxBarEditItem;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridEh1: TDBGridEh;
    DsRekap_Mutasi: TDataSource;
    procedure BPrintClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RptAfterPrint(Sender: TfrxReportComponent);
    procedure RptBeforePrint(Sender: TfrxReportComponent);
    procedure DxRefreshClick(Sender: TObject);
    procedure DxPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tgl_mulai,tgl_selesai:string;
  end;

Function FRpt_RekapMutasi: TFRpt_RekapMutasi;

implementation

{$R *.dfm}

uses UDataModule;
var
  RealFRpt_RekapMutasi: TFRpt_RekapMutasi;

function FRpt_RekapMutasi: TFRpt_RekapMutasi;
begin
  if RealFRpt_RekapMutasi <> nil then
    FRpt_RekapMutasi:= RealFRpt_RekapMutasi
  else
    Application.CreateForm(TFRpt_RekapMutasi, Result);
end;

procedure TFRpt_RekapMutasi.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFRpt_RekapMutasi.BPrintClick(Sender: TObject);
begin
{MemRekapMutasi.EmptyTable;
with dm.qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_daftar_perkiraan order by kode desc';
  ExecSQL;
end;
DM.Qtemp.Open;
DM.Qtemp.First;
while not dm.Qtemp.Eof do
begin
MemRekapMutasi.insert;
MemRekapMutasi['kd_akun']:=DM.Qtemp['kode'];
MemRekapMutasi['nm_akun']:=DM.Qtemp['nama_perkiraan'];
MemRekapMutasi.Post;
DM.Qtemp.Next;
end;
  MemRekapMutasi.First;
  while not MemRekapMutasi.Eof do
  begin
with QRekap_Mutasi do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from t_item_neraca a INNER JOIN t_item_neraca_det b '+
  ' on a.no_in=b.no_in where a.tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.tgl_in < '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai.Date))+' and b.kd_akun='+QuotedStr(MemRekapMutasi['kd_akun'])+''+
  ' GROUP BY kd_akun order by kd_akun asc';
  ExecSQL;
end;
  QRekap_Mutasi.Open;
    MemRekapMutasi.edit;
    MemRekapMutasi['debit']:=QRekap_Mutasi['db'];
    MemRekapMutasi['kredit']:=QRekap_Mutasi['kd'];
    MemRekapMutasi.Post;
    MemRekapMutasi.Next;
  end;             }
  with QRekap_Mutasi do
  begin
    close;
    sql.Clear;
    sql.Text:='select ab.notr,ab.db,ab.kd,ab.kd_akun,ab.nama_perkiraan,ac.db dbpb,ac.kd kdpb,ac.kd_akun akunpb,ad.db dbpj,ad.kd kdpj,ad.kd_akun akunpj,'+
    ' ae.db dbbop,ae.kd kdbop,ae.kd_akun akunbop,af.db dbadm,af.kd kdadm,af.kd_akun akunadm,ag.db dbkk,ag.kd kdkk,ag.kd_akun akunkk,ah.db dbtk,ah.kd kdtk,'+
    ' ah.kd_akun akuntk from (select sum(b.debit)db,sum(b.kredit)kd,b.kd_akun,c.nama_perkiraan,c.notr from t_item_neraca a INNER JOIN t_item_neraca_det b '+
    ' on a.no_in=b.no_in inner JOIN (select *,case when kode=kode_header then 0 else 1 end notr from t_daftar_perkiraan) c on b.kd_akun=c.kode '+
    ' where tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' '+
    ' and jenis_tr<>''MEMORIAL'' GROUP BY kd_akun,c.nama_perkiraan,c.notr order by kd_akun asc) ab left join LATERAL(select '+
    ' sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where jenis_tr=''PEMBELIAN'' AND '+
    ' tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' and '+
    ' ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc)ac on 1=1 left join LATERAL(select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from '+
    ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where jenis_tr=''PENJUALAN'' AND tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+''+
    ' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' and ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc) ad on 1=1 '+
    ' left join LATERAL(select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where '+
    ' jenis_tr=''IKHTISAR KC BOP'' AND tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+''+
    ' and ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc) ae on 1=1 LEFT JOIN LATERAL(select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from '+
    ' t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where jenis_tr=''IKHTISAR KC ADM'' AND tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+''+
    ' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' and ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc) af on 1=1 '+
    ' LEFT JOIN LATERAL(select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where '+
    ' (jenis_tr=''KELUAR KAS'' OR jenis_tr=''KELUAR BANK'' OR jenis_tr=''KELUAR KAS DAN BANK'') AND tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+''+
    ' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' and ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc) ag on 1=1  '+
    ' LEFT JOIN LATERAL(select sum(b.debit) db, sum(b.kredit) kd, b.kd_akun from t_item_neraca a INNER JOIN t_item_neraca_det b on a.no_in=b.no_in where '+
    ' (jenis_tr=''TERIMA KAS'' or jenis_tr=''TERIMA BANK'' or jenis_tr=''TERIMA KAS DAN  BANK'') AND tgl_in >= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai1.Date))+''+
    ' and tgl_in <= '+QuotedStr(FormatDateTime('yyy-mm-dd',DtSelesai1.Date))+' and ab.kd_akun=b.kd_akun GROUP BY kd_akun order by kd_akun asc) ah on 1=1 ';
    ExecSQL;
  end;
    QRekap_Mutasi.Open;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_RekapMutasi.fr3');
    Tfrxmemoview(Rpt.FindObject('Mtgl')).Memo.Text:='Periode  : '+(FormatDateTime('dd mmmm yyy',DtMulai1.date))+' - '+(FormatDateTime('dd MMMM yyy',DtSelesai1.date));
{    if Rpt.PrintOptions.PageNumbers = '1' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo  : ';
    end;  
   if Rpt.PrintOptions.PageNumbers <> '1' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo Pindahan: ';
    end;   }
    Rpt.ShowReport();
end;

procedure TFRpt_RekapMutasi.DxPrintClick(Sender: TObject);
begin
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
    tgl_mulai:=FormatDateTime('yyyy-mm-dd',DtMulai.EditValue);
    tgl_selesai:=FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue);
      WITH QRekap_Mutasi DO
      BEGIN
        Close;
        SQL.Clear;
        SQL.Text:='select * from "VRekap_Mutasi" where trans_date >= '+QuotedStr(tgl_mulai)+' and trans_date <= '+QuotedStr(tgl_selesai);
        Execute;
      END;
        QRekap_Mutasi.Open;
        Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\rpt_rekapmutasi.fr3');
        Tfrxmemoview(Rpt.FindObject('Mtgl')).Memo.Text:='Periode  : '+(FormatDateTime('dd mmmm yyy',DtMulai.EditValue))+' - '+(FormatDateTime('dd MMMM yyy',DtSelesai.EditValue));
        Rpt.ShowReport();
end;

procedure TFRpt_RekapMutasi.DxRefreshClick(Sender: TObject);
begin
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
tgl_mulai:=FormatDateTime('yyyy-mm-dd',DtMulai.EditValue);
tgl_selesai:=FormatDateTime('yyyy-mm-dd',DtSelesai.EditValue);
  WITH QRekap_Mutasi DO
  BEGIN
    Close;
    SQL.Clear;
    SQL.Text:='select * from "VRekap_Mutasi" where trans_date >= '+QuotedStr(tgl_mulai)+' and trans_date <= '+QuotedStr(tgl_selesai);
    Execute;
  END;
  QRekap_Mutasi.Open;
end;

procedure TFRpt_RekapMutasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFRpt_RekapMutasi.FormCreate(Sender: TObject);
begin
  RealFRpt_RekapMutasi:=self;
end;

procedure TFRpt_RekapMutasi.FormDestroy(Sender: TObject);
begin
  RealFRpt_RekapMutasi:=nil;
end;

procedure TFRpt_RekapMutasi.FormShow(Sender: TObject);
begin
//  MemRekapMutasi.EmptyTable;
 // MemRekapMutasi.Close;
 // MemRekapMutasi.Open;
end;

procedure TFRpt_RekapMutasi.RptAfterPrint(Sender: TfrxReportComponent);
begin
  {  if Rpt.PrintOptions.PageNumbers = '0' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo  : ';
    end;
    if Rpt.PrintOptions.PageNumbers <> '0' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo Pindahan: ';
    end;}
end;

procedure TFRpt_RekapMutasi.RptBeforePrint(Sender: TfrxReportComponent);
begin
{    if Rpt.PrintOptions.PageNumbers = '1' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo  : ';
    end;
    if Rpt.PrintOptions.PageNumbers <> '1' then
    begin
        Tfrxmemoview(Rpt.FindObject('memo58')).Memo.Text:='Saldo Pindahan: ';
    end;   }
end;


initialization
RegisterClass(TFRpt_RekapMutasi);

end.
