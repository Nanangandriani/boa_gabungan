unit URpt_BukuHarianPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  RzButton, Vcl.ExtCtrls, RzCmboBx, frxClass, frxDBSet, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Mask, RzEdit, MemTableDataEh, MemTableEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh,ComCtrls, RzBtnEdt;

type
  TFRpt_BukuHarianPembelian = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Bprint: TRzBitBtn;
    Rpt: TfrxReport;
    DbRptSP: TfrxDBDataset;
    DtMulai: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    Label3: TLabel;
    QRptBHP: TUniQuery;
    MemBHP: TMemTableEh;
    dsbph: TDataSource;
    QCategory: TUniQuery;
    RzBitBtn2: TRzBitBtn;
    QRptBHPNon: TUniQuery;
    DbRptBHPNon: TfrxDBDataset;
    BBatal: TRzBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    edkd_akun: TRzEdit;
    Ednm_akun: TRzButtonEdit;
    CKUm: TCheckBox;
    QRptBHPDet: TUniQuery;
    DbRptSPdet: TfrxDBDataset;
    BPrint2: TRzBitBtn;
    Rpt_BHP: TfrxDBDataset;
    BPrint11: TRzBitBtn;
    procedure BprintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Ednm_akunButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RptGetValue(const VarName: string; var Value: Variant);
    procedure Panel1Click(Sender: TObject);
    procedure BPrint2Click(Sender: TObject);
    procedure BPrint11Click(Sender: TObject);
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
edkd_akun.Clear;
Ednm_akun.Clear;
DtMulai.Clear;
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
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.DesignReport();
end;

procedure TFRpt_BukuHarianPembelian.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFRpt_BukuHarianPembelian.BprintClick(Sender: TObject);
var subquery,subqr:string;
begin
MemBHP.EmptyTable;
subqr:='select d.nofaktur,(A.subtotal*d.nilai_valas)as subtotal,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,    '+
' c.jenis from t_terima_material_det a inner join t_material_stok b on a.kd_material_stok=b.kd_material_stok inner join     '+
' t_material c on b.kd_material=c.kd_material inner JOIN t_terima_material d on a.no_terima=d.no_terima where';
//totalppn
subquery:='SELECT DISTINCT a.jmlh-b.ppn-c.pphrp total,tm.tgl_terima,tm.kd_sbu from t_terima_material tm left JOIN      '+
  ' (SELECT sum(jumlah) AS jmlh,d.tgl_terima FROM t_detail_bayar_real "a" INNER JOIN tkas AS b ON a.nobk=b.voucher   '+
  ' INNER JOIN t_po AS "c" ON a.no_voucher=c.nopo INNER JOIN (SELECT	b.nopo,a.tgl_terima	FROM t_terima_material AS a'+
  ' INNER JOIN t_terima_material_det AS b	ON a.no_terima=b.no_terima WHERE a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' GROUP BY b.nopo,a.tgl_terima) d ON c.nopo=d.nopo WHERE b.subvoucher=''0'' AND c.status_um=''1'' GROUP BY d.tgl_terima) a on tm.tgl_terima=a.tgl_terima'+
  // uang muka
  ' Left Join (SELECT sum(jumlah) AS ppn,d.tgl_terima FROM t_detail_bayar_real AS "a" INNER JOIN tkas AS b ON a.nobk=b.voucher '+
  ' INNER JOIN t_po AS "c" ON a.no_voucher = c.nopo INNER JOIN (SELECT	b.nopo,a.tgl_terima	FROM t_terima_material "a"	'+
  ' INNER JOIN t_terima_material_det AS b	ON a.no_terima = b.no_terima WHERE a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' GROUP BY b.nopo,a.tgl_terima) AS d ON c.nopo = d.nopo WHERE b.kodesp=''1211'' AND c.status_um=''1'' GROUP BY '+
  ' d.tgl_terima) b on a.tgl_terima=b.tgl_terima'+
  // ppn
  ' Left join (select sum(b.pph_rp) pphrp,a.tgl_terima from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um = ''1'' GROUP BY tgl_terima) c on a.tgl_terima=b.tgl_terima '+
  // pph 23
{  ' (select sum(b.pph_rp) pph,a.tgl_terima from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um <> ''1'' GROUP BY tgl_terima) d on tm.tgl_terima=d.tgl_terima'+
 } ' where tm.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date));
if loksbu='' then
begin
with dm.QTemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' select a.total-b.pph total,b.pph,a.tgl_terima,a.kd_sbu from '+'('+subquery+')'+' a left join (select sum(b.pph_rp) pph,a.tgl_terima from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um <> ''1'' GROUP BY tgl_terima) b on a.tgl_terima=b.tgl_terima' ;
  open;
end;
end;
if loksbu<>'' then
begin
with dm.QTemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' select a.total-b.pph total,b.pph,a.tgl_terima,a.kd_sbu from '+'('+subquery+')'+' a left join (select sum(b.pph_rp) pph,a.tgl_terima,a.kd_sbu from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um <> ''1'' and a.kd_sbu='+QuotedStr(loksbu)+' GROUP BY tgl_terima,a.kd_sbu) b on a.tgl_terima=b.tgl_terima where a.kd_sbu='+QuotedStr(loksbu);
  open;
end;
end;

if edkd_akun.Text<>'' then
begin
if loksbu='' then
begin
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:='select d.kd_akunpph,c.nm_supplier AS supp,d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
    ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn_rp ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
  ' union '+
  'select d.kd_akunpph,c.nm_supplier AS supp,d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , 0 ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:=' select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,tgl_terima from (select c.nm_supplier '+
  ' supp,d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn_rp ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
  ' union '+
  'select c.nm_supplier AS supp,d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , 0 ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima';
  ExecSQL;
end;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:=' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
   ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
   ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'and a.jenis_po=''LOKAL'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:=' select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,'+
  ' tgl_terima from ( select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'and a.jenis_po=''LOKAL'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
END;
if QRptBHP.RecordCount<>0 then
begin
QRptBHP.First;
while not QRptBHP.Eof do
begin
  MemBHP.Insert;
  MemBHP['kd_material']:=QRptBHP['kd_material_stok'];
  MemBHP['nofaktur']:=QRptBHP['nofaktur'];
  MemBHP['supplier']:=QRptBHP['supp'];
  MemBHP['nm_material']:=QRptBHP['nm_material'];
  MemBHP['subtotal']:=QRptBHP['subtotal']*QRptBHP['nilai_valas'];
  MemBHP['grandtotal']:=QRptBHP['jmlh_hutang'];
//  MemBHP['grandtotal']:=(QRptBHP['jmlh_hutang']*QRptBHP['nilai_valas'])-QRptBHP['pph_rp'];
  MemBHP['ppn']:=QRptBHP['ppn_rp'];
  MemBHP['kd_akun']:=QRptBHP['no_perk'];
  MemBHP['nm_akun']:=QRptBHP['nm_perk'];
//  MemBHP['jmlh']:=QRptBHP['jmlh'];
  MemBHP['ppn2']:=QRptBHP['ppn2'];
  MemBHP['Qty']:=QRptBHP['qty'];
  MemBHP['kd_akun2']:=QRptBHP['kd_akun'];
  MemBHP['pph_rp']:=QRptBHP['pph_rp'];
  MemBHP['kd_akunpph']:=QRptBHP['kd_akunpph'];
  MemBHP['nilai_um']:=QRptBHP['nilai_um'];
  MemBHP['kd_akunum']:=QRptBHP['kd_akunum'];
 // MemBHP['total']:=QRptBHPDet['hutang']*QRptBHP['nilai_valas'];
  MemBHP['noterima']:=QRptBHP['no_terima'];
  MemBHP['nopo']:=QRptBHP['nopo'];
  MemBHP['nilaium2']:=QRptBHP['nilai_um'];
  MemBHP['ppn22']:=QRptBHP['ppn2'];
  MemBHP.Post;
  QRptBHP.Next;
end;
MemBHP.First;
while not MemBHP.Eof do
begin
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN KEMASAN'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
//QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Bahan_kms']:=QCategory['subtotal'];
MemBHP.Post;
//end;
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN BAKU'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN BAKU''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
 }
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Bahan_baku']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;

if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' AND subtotal='+QuotedStr(MemBHP['subtotal'])+' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' AND subtotal='+QuotedStr(MemBHP['subtotal']);
         // ' and jenis<>''PRODUKSI''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;   }
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Lain2']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and (category=''KIMIA'' or category=''KIMIA 2'') group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and (category=''KIMIA'' or category=''KIMIA 2'')';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Kimia']:=QCategory['subtotal'];
MemBHP.Post;
//end;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN PENOLONG'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN PENOLONG''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if MemBHP['Bahan_penolong']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_penolong']:='0';
MemBHP.Post;
end else    }
MemBHP.Edit;
MemBHP['Bahan_penolong']:=QCategory['subtotal'];
MemBHP.Post;
//end;
//MemBHP.Next;
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo where a.no_voucher='+QuotedStr(MemBHP['nopo'])+' and kodesp=''1211'' '+
  ' and c.nilai_um > ''0'' GROUP BY a.no_voucher ' ;
  ExecSQL;
end;
DM.Qtemp.Open;
if dm.Qtemp.RecordCount <> 0 then
begin
MemBHP.Edit;
MemBHP['ppnkk']:=dm.Qtemp['jmlh'];
MemBHP['nilai_um']:=MemBHP['nilai_um'];//-dm.Qtemp['jmlh'];
MemBHP['ppn2']:=MemBHP['ppn2'];//-dm.Qtemp['jmlh'];
MemBHP.Post;
end;
MemBHP.Next;
end;
{with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:=' SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo INNER JOIN (select b.* from t_terima_material a '+
  ' INNER JOIN t_terima_material_det	b on a.no_terima=b.no_terima where '+
  ' a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+') d on c.nopo=d.nopo where'+
  ' kodesp=''1211''  and c.status_um=''1'' GROUP BY a.no_voucher' ;
  ExecSQL;
end;}
DM.Qtemp.Open;
{if CKUm.Checked=false then
begin
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb2.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
end;
if CKUm.Checked=True then
begin}
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
  SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
//end;
end else
  Messagedlg('Data Kosong',MtInformation,[Mbok],0);
end;
if loksbu<>'' then
begin
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:='select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,'+
  ' d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''LOKAL'' '+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , d.ppn_rp+d.ppn_pembulatan ppn_rp ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'  and a.kd_sbu='+QuotedStr(loksbu)+'and a.jenis_po=''LOKAL'''+
  ' Union '+
  'select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''IMPORT'' '+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal,0,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'  and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,tgl_terima from (select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,'+
  ' d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''LOKAL'' '+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , d.ppn_rp+d.ppn_pembulatan ppn_rp ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'  and a.kd_sbu='+QuotedStr(loksbu)+'and a.jenis_po=''LOKAL'''+
  ' Union '+
  'select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''IMPORT'' '+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal,0,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+'  and a.kd_sbu='+QuotedStr(loksbu)+' and a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc )a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
  ExecSQL;
end;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:=' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+ ' and a.kd_sbu='+QuotedStr(loksbu)+'AND a.jenis_po=''LOKAL'''+
  ' UNION '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+ ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,'+
  ' tgl_terima from (select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+ ' and a.kd_sbu='+QuotedStr(loksbu)+'AND a.jenis_po=''LOKAL'''+
  ' UNION '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+ ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
  ExecSQL;
end;
END;
if QRptBHP.RecordCount<>0 then
begin
QRptBHP.First;
while not QRptBHP.Eof do
begin
  MemBHP.Insert;
  MemBHP['kd_material']:=QRptBHP['kd_material_stok'];
  MemBHP['nofaktur']:=QRptBHP['nofaktur'];
  MemBHP['supplier']:=QRptBHP['supp'];
  MemBHP['nm_material']:=QRptBHP['nm_material'];
  MemBHP['subtotal']:=QRptBHP['subtotal']*QRptBHP['nilai_valas'];
  MemBHP['grandtotal']:=QRptBHP['jmlh_hutang'];//*QRptBHP['nilai_valas'])-QRptBHP['pph_rp'];
  MemBHP['ppn']:=QRptBHP['ppn_rp'];
  MemBHP['kd_akun']:=QRptBHP['no_perk'];
  MemBHP['nm_akun']:=QRptBHP['nm_perk'];
//  MemBHP['jmlh']:=QRptBHP['jmlh'];
  MemBHP['ppn2']:=QRptBHP['ppn2'];
  MemBHP['Qty']:=QRptBHP['qty'];
  MemBHP['kd_akun2']:=QRptBHP['kd_akun'];
  MemBHP['pph_rp']:=QRptBHP['pph_rp'];
  MemBHP['kd_akunpph']:=QRptBHP['kd_akunpph'];
  MemBHP['nilai_um']:=QRptBHP['nilai_um'];
  MemBHP['kd_akunum']:=QRptBHP['kd_akunum'];
  MemBHP['total']:=(QRptBHP['Grandtotal']-QRptBHP['nilai_um'])*QRptBHP['nilai_valas'];
  MemBHP['noterima']:=QRptBHP['no_terima'];
  MemBHP['nopo']:=QRptBHP['nopo'];
  MemBHP['nilaium2']:=QRptBHP['nilai_um'];
  MemBHP['ppn22']:=QRptBHP['ppn2'];
  MemBHP.Post;
  QRptBHP.Next;
end;
MemBHP.First;
while not MemBHP.Eof do
begin
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN KEMASAN'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima = '+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN KEMASAN''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }

MemBHP.Edit;
MemBHP['Bahan_kms']:=QCategory['subtotal'];
MemBHP.Post;
//end;
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN BAKU'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN BAKU''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_baku']:='0';
MemBHP.Post;   }
MemBHP.Edit;
MemBHP['Bahan_baku']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material']);
       //   ' AND subtotal='+QuotedStr(MemBHP['subtotal']);
         // ' and jenis<>''PRODUKSI''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Lain2']:=0;
MemBHP.Post;
end else }
MemBHP.Edit;
MemBHP['Lain2']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and (category=''KIMIA'' or category=''KIMIA 2'') group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and (category=''KIMIA'' or category=''KIMIA 2'')';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Kimia']:='0';
MemBHP.Post;
end else     }

MemBHP.Edit;
MemBHP['Kimia']:=QCategory['subtotal'];
MemBHP.Post;
//end;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN PENOLONG'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN PENOLONG''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if MemBHP['Bahan_penolong']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_penolong']:='0';
MemBHP.Post;
end else    }

MemBHP.Edit;
MemBHP['Bahan_penolong']:=QCategory['subtotal'];
MemBHP.Post;
//end;
//MemBHP.Next;
{with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo where a.no_voucher='+QuotedStr(MemBHP['nopo'])+' and kodesp=''1211'' '+
  ' and c.nilai_um > ''0'' GROUP BY a.no_voucher ' ;
  ExecSQL;
end;   }
DM.Qtemp.Open;
if dm.Qtemp.RecordCount <> 0 then
begin
MemBHP.Edit;
MemBHP['ppnkk']:=dm.Qtemp['jmlh'];
MemBHP['nilai_um']:=MemBHP['nilai_um'];//-dm.Qtemp['jmlh'];
MemBHP['ppn2']:=MemBHP['ppn2'];//-dm.Qtemp['jmlh'];
MemBHP.Post;
end;
MemBHP.Next;
end;
{with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:=' SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo INNER JOIN (select b.* from t_terima_material a '+
  ' INNER JOIN t_terima_material_det	b on a.no_terima=b.no_terima where '+
  ' a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+') d on c.nopo=d.nopo where'+
  ' kodesp=''1211''  and c.status_um=''1'' GROUP BY a.no_voucher' ;
  ExecSQL;
end;
DM.Qtemp.Open;  }
{if CKUm.Checked=false then
begin
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb2.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
end;
if CKUm.Checked=True then
begin  }
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
//end;
end else
  Messagedlg('Data Kosong',MtInformation,[Mbok],0);
end;
end;
// filter akun perkiraan

if edkd_akun.Text='' then
begin
if loksbu='' then
begin
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:='select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,d.ppn_rp+d.ppn_pembulatan ppn_rp,'+
  ' d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''LOKAL'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , d.ppn_rp+d.ppn_pembulatan,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''LOKAL'''+
  ' UNION'+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''IMPORT'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , '+
  ' d.ppn_rp+d.ppn_pembulatan ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,'+
  ' tgl_terima from (select c.nm_supplier AS supp, d.qty,d.subtotal,a.sisa_hutang as jmlh_hutang,a.nilai_um,d.ppn_rp+d.ppn_pembulatan ppn_rp,'+
  ' d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''LOKAL'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , d.ppn_rp+d.ppn_pembulatan,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''LOKAL'''+
  ' UNION'+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.sisa_hutang as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''IMPORT'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , '+
  ' d.ppn_rp+d.ppn_pembulatan ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima)a Group by tgl_terima ';
  ExecSQL;
end;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:=' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,'+
  ' a.status,a.valas,a.nilai_valas,  a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND A.jenis_po=''LOKAL'''+
//  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' UNION '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND A.jenis_po=''IMPORT'''+
//  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,'+
  ' tgl_terima from ( select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,'+
  ' a.status,a.valas,a.nilai_valas,  a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND A.jenis_po=''LOKAL'''+
//  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' UNION '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' AND A.jenis_po=''IMPORT'''+
//  ' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima)a Group by tgl_terima ';
  ExecSQL;
end;
END;
if QRptBHP.RecordCount<>0 then
begin
QRptBHP.First;
while not QRptBHP.Eof do
begin
  MemBHP.Insert;
  MemBHP['kd_material']:=QRptBHP['kd_material_stok'];
  MemBHP['nofaktur']:=QRptBHP['nofaktur'];
  MemBHP['supplier']:=QRptBHP['supp'];
  MemBHP['nm_material']:=QRptBHP['nm_material'];
  MemBHP['subtotal']:=QRptBHP['subtotal']*QRptBHP['nilai_valas'];
  MemBHP['grandtotal']:=QRptBHP['jmlh_hutang'];//*QRptBHP['nilai_valas'])-QRptBHP['pph_rp'];
  MemBHP['ppn']:=QRptBHP['ppn_rp'];
  MemBHP['kd_akun']:=QRptBHP['no_perk'];
  MemBHP['nm_akun']:=QRptBHP['nm_perk'];
//  MemBHP['jmlh']:=QRptBHP['jmlh'];
  MemBHP['ppn2']:=QRptBHP['ppn2'];
  MemBHP['Qty']:=QRptBHP['qty'];
  MemBHP['kd_akun2']:=QRptBHP['kd_akun'];
  MemBHP['pph_rp']:=QRptBHP['pph_rp'];
  MemBHP['kd_akunpph']:=QRptBHP['kd_akunpph'];
  MemBHP['nilai_um']:=QRptBHP['nilai_um'];
  MemBHP['kd_akunum']:=QRptBHP['kd_akunum'];
  MemBHP['total']:=(QRptBHP['Grandtotal']-QRptBHP['nilai_um'])*QRptBHP['nilai_valas'];
  MemBHP['noterima']:=QRptBHP['no_terima'];
  MemBHP['nopo']:=QRptBHP['nopo'];
  MemBHP['nilaium2']:=QRptBHP['nilai_um'];
  MemBHP['ppn22']:=QRptBHP['ppn2'];
  MemBHP.Post;
  QRptBHP.Next;
end;
MemBHP.First;
while not MemBHP.Eof do
begin
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN KEMASAN'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN KEMASAN''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Bahan_kms']:=QCategory['subtotal'];
MemBHP.Post;
//end;
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN BAKU'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN BAKU''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_baku']:='0';
MemBHP.Post;
end else  }
MemBHP.Edit;
MemBHP['Bahan_baku']:=QCategory['subtotal'];
MemBHP.Post;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material']);//+''+
      //    ' AND subtotal='+QuotedStr(MemBHP['subtotal']);
         // ' and jenis<>''PRODUKSI''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Lain2']:=0;
MemBHP.Post;
end else }
MemBHP.Edit;
MemBHP['Lain2']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and (category=''KIMIA'' or category=''KIMIA 2'') group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and (category=''KIMIA'' or category=''KIMIA 2'')';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Kimia']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Kimia']:=QCategory['subtotal'];
MemBHP.Post;
//end;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN PENOLONG'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN PENOLONG''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if MemBHP['Bahan_penolong']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_penolong']:='0';
MemBHP.Post;
end else    }
MemBHP.Edit;
MemBHP['Bahan_penolong']:=QCategory['subtotal'];
MemBHP.Post;
//end;
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo where a.no_voucher='+QuotedStr(MemBHP['nopo'])+' and kodesp=''1211'' '+
  ' and c.nilai_um > ''0'' GROUP BY a.no_voucher ' ;
  ExecSQL;
end;
DM.Qtemp.Open;
if dm.Qtemp.RecordCount <> 0 then
begin
MemBHP.Edit;
MemBHP['ppnkk']:=dm.Qtemp['jmlh'];
MemBHP['nilai_um']:=MemBHP['nilai_um'];//-dm.Qtemp['jmlh'];
MemBHP['ppn2']:=MemBHP['ppn2'];//-dm.Qtemp['jmlh'];
MemBHP.Post;
end;
//MemBHP.Next;
MemBHP.Next;
end;
{with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:=' SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo INNER JOIN (select b.* from t_terima_material a '+
  ' INNER JOIN t_terima_material_det	b on a.no_terima=b.no_terima where '+
  ' a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+') d on c.nopo=d.nopo where'+
  ' kodesp=''1211''  and c.status_um=''1'' GROUP BY a.no_voucher' ;
  ExecSQL;
end;
DM.Qtemp.Open;  }
{if CKUm.Checked=false then
begin
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb2.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
end;
if CKUm.Checked=True then
begin
 } Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
//end;
end else
  Messagedlg('Data Kosong',MtInformation,[Mbok],0);
end;
if loksbu<>'' then
begin
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:='select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,'+
  ' d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''LOKAL'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal, d.ppn_rp+d.ppn_pembulatan'+
  ' ,g.category,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''LOKAL'''+
  ' UNION '+
  'select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' union '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , 0 ,g.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:='select sum(hutang)htng,sum(um) um FROM (select avg(sisa_hutang*a.nilai_valas) hutang,avg(nilai_um*a.nilai_valas) um, no_terima,nofaktur,tgl_terima from (select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,'+
  ' d.ppn_rp+d.ppn_pembulatan ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''LOKAL'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal, d.ppn_rp+d.ppn_pembulatan'+
  ' ,g.category,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''LOKAL'''+
  ' UNION '+
  'select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,  '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update,''''as no_perk,'''' as nm_perk,d.grandtotal,0 as ppn2,f.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima  '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok  '+
  ' left join t_material f on e.kd_material=f.kd_material and e.no_material=f.no_material '+
  ' where a.jenis_pembelian=''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' union '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , 0 ,g.category '+
  ' ,d.pph_rp,d.ppn_pembulatan from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.jenis_pembelian<>''PRODUKSI'' and  a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima)a Group by tgl_terima';
  ExecSQL;
end;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QRptBHP do
begin
  close;
  sql.Clear;
  sql.Text:=' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
   ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+'AND a.jenis_po=''LOKAL'' '+
  ' UNION '+
  ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas) as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp,d.ppn_pembulatan  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc';
  ExecSQL;
 { Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;   }
end;
with QRptBHPdet do
begin
  close;
  sql.Clear;
  sql.Text:=' select sum(hutang)htng,sum(um) um FROM ( select avg(sisa_hutang) hutang,avg(nilai_um) um, no_terima,'+
  ' nofaktur,tgl_terima from (select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+'AND a.jenis_po=''LOKAL'' '+
  ' UNION '+
  ' select c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,a.sisa_hutang as jmlh_hutang,a.nilai_um,0 as ppn_rp ,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,0,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun as no_perk, f.nama_perkiraan as nm_perk,'+
  ' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn2 ,g.category,d.pph_rp,d.ppn_pembulatan  '+
  ' from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+''+
  ' and a.kd_sbu='+QuotedStr(loksbu)+' AND a.jenis_po=''IMPORT'''+
  ' order by no_terima,tgl_terima Desc)a GROUP BY no_terima,nofaktur,tgl_terima) a Group by tgl_terima';
  ExecSQL;
end;
END;
if QRptBHP.RecordCount<>0 then
begin
QRptBHP.First;
while not QRptBHP.Eof do
begin
  MemBHP.Insert;
MemBHP['kd_material']:=QRptBHP['kd_material_stok'];
  MemBHP['nofaktur']:=QRptBHP['nofaktur'];
  MemBHP['supplier']:=QRptBHP['supp'];
  MemBHP['nm_material']:=QRptBHP['nm_material'];
  MemBHP['subtotal']:=QRptBHP['subtotal']*QRptBHP['nilai_valas'];
  MemBHP['grandtotal']:=QRptBHP['jmlh_hutang'];//*QRptBHP['nilai_valas'])-QRptBHP['pph_rp'];
  MemBHP['ppn']:=QRptBHP['ppn_rp'];
  MemBHP['kd_akun']:=QRptBHP['no_perk'];
  MemBHP['nm_akun']:=QRptBHP['nm_perk'];
//  MemBHP['jmlh']:=QRptBHP['jmlh'];
  MemBHP['ppn2']:=QRptBHP['ppn2'];
  MemBHP['Qty']:=QRptBHP['qty'];
  MemBHP['kd_akun2']:=QRptBHP['kd_akun'];
  MemBHP['pph_rp']:=QRptBHP['pph_rp'];
  MemBHP['kd_akunpph']:=QRptBHP['kd_akunpph'];
  MemBHP['nilai_um']:=QRptBHP['nilai_um'];
  MemBHP['kd_akunum']:=QRptBHP['kd_akunum'];
  MemBHP['total']:=(QRptBHP['Grandtotal']-QRptBHP['nilai_um'])*QRptBHP['nilai_valas'];
  MemBHP['noterima']:=QRptBHP['no_terima'];
  MemBHP['nilaium2']:=QRptBHP['nilai_um'];
  MemBHP['ppn22']:=QRptBHP['ppn2'];
   MemBHP.Post;
  QRptBHP.Next;
end;
MemBHP.First;
while not MemBHP.Eof do
begin
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN KEMASAN'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima = '+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN KEMASAN''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_kms']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Bahan_kms']:=QCategory['subtotal'];
MemBHP.Post;
//end;
if Ednm_akun.Text='HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and c.category=''BAHAN BAKU'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;
{with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN BAKU''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_baku']:='0';
MemBHP.Post;
end else  }
MemBHP.Edit;
MemBHP['Bahan_baku']:=QCategory['subtotal'];
MemBHP.Post;
END;
if Ednm_akun.Text<>'HUTANG DAGANG' then
BEGIN
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' AND subtotal='+QuotedStr(MemBHP['subtotal'])+' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;{
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' AND subtotal='+QuotedStr(MemBHP['subtotal']);
         // ' and jenis<>''PRODUKSI''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Lain2']:=0;
MemBHP.Post;
end else }

MemBHP.Edit;
MemBHP['Lain2']:=QCategory['subtotal'];
MemBHP.Post;
//end;
END;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and (C.category=''KIMIA'' or C.category=''KIMIA 2'') group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end;   {
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and (category=''KIMIA'' or category=''KIMIA 2'')';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if QCategory['subtotal']='' then
begin
MemBHP.Edit;
MemBHP['Kimia']:='0';
MemBHP.Post;
end else     }
MemBHP.Edit;
MemBHP['Kimia']:=QCategory['subtotal'];
MemBHP.Post;
//end;
with QCategory do
begin
  close;
  sql.Clear;
  sql.Text:= subqr+'  a.no_terima='+QuotedStr(MemBHP['noterima'])+' and b.kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
  ' and C.category=''BAHAN PENOLONG'' group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok,c.Category,c.jenis,(A.subtotal*d.nilai_valas)';
  Open;
end; {
with QCategory do
begin
  Filtered:=false;
  Filter:=' no_terima='+QuotedStr(MemBHP['noterima'])+''+
          ' and kd_material_stok='+QuotedStr(MemBHP['kd_material'])+''+
          ' and category=''BAHAN PENOLONG''';
   FilterOptions:=[];
   Filtered:=True;
end;
QCategory.Open;
{if MemBHP['Bahan_penolong']='' then
begin
MemBHP.Edit;
MemBHP['Bahan_penolong']:='0';
MemBHP.Post;
end else    }
MemBHP.Edit;
MemBHP['Bahan_penolong']:=QCategory['subtotal'];
MemBHP.Post;
//MemBHP.Next;
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo where a.no_voucher='+QuotedStr(MemBHP['nopo'])+' and kodesp=''1211'' '+
  ' and c.nilai_um > ''0'' GROUP BY a.no_voucher ';
  Execute;
end;
DM.Qtemp.Open;
if dm.Qtemp.RecordCount<>0 then
begin
MemBHP.Edit;
MemBHP['ppnkk']:=dm.Qtemp['jmlh'];
MemBHP['nilai_um']:=MemBHP['nilai_um'];//-dm.Qtemp['jmlh'];
MemBHP['ppn2']:=MemBHP['ppn2'];//-dm.Qtemp['jmlh'];
MemBHP.Post;
end;
MemBHP.Next;
end;
{with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:=' SELECT sum(jumlah) jmlh FROM t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher '+
  ' INNER join t_po c on a.no_voucher=c.nopo INNER JOIN (select b.* from t_terima_material a '+
  ' INNER JOIN t_terima_material_det	b on a.no_terima=b.no_terima where '+
  ' a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+') d on c.nopo=d.nopo where'+
  ' kodesp=''1211''  and c.status_um=''1'' GROUP BY a.no_voucher' ;
  ExecSQL;
end;
DM.Qtemp.Open;   }
{if CKUm.Checked=false then
begin
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb2.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
end;
if CKUm.Checked=True then
begin
 } Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
   SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
//end;
end else
  Messagedlg('Data Kosong',MtInformation,[Mbok],0);
end;
end;
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
if edkd_akun.Text<>'' then
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
    ' from purchase.t_purchase_invoice a INNER JOIN  purchase.t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from warehouse.t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where a.account_code='+QuotedStr(edkd_akun.Text)+' and a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.date))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.date));
    Execute;
  end;
end;
if edkd_akun.Text='' then
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
    ' from purchase.t_purchase_invoice a INNER JOIN  purchase.t_purchase_invoice_det b on a.trans_no=b.trans_no  '+
    ' INNER JOIN (select a.*,c.group_name from warehouse.t_item_stock a INNER JOIN t_item b on a.item_code=b.item_code'+
    ' INNER JOIN t_item_group c on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_code '+
    ' INNER JOIN t_ak_account d on a.account_code=d.code '+
    ' INNER JOIN t_ak_account E on b.account_code=e.code '+
    ' LEFT JOIN t_ak_account F on b.ppn_account=f.code  '+
    ' LEFT JOIN t_ak_account g on a.account_um_code=g.code '+
    ' INNER JOIN t_supplier h on a.supplier_code=h.supplier_code'+
    ' where a.trans_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.date))+' and a.trans_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.date));
    Execute;
  end;
end;
    Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_Buku_Harian_Pembelian.Fr3');
  // Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
    SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  //  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  //  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
    rpt.ShowReport();
end;

procedure TFRpt_BukuHarianPembelian.BPrint2Click(Sender: TObject);
var subqr,subqr2,subqr3,subqr4:string;
begin
MemBHP.EmptyTable;
MemBHP.Close;
MemBHP.Open;
  subqr:=' select supp,qty,subtotalrp,kd_akunum,sisa_hutang,um,ppnrp,nm_material,kd_material_stok,tgl_terima,no_terima,ket,nosj,nofaktur,'+
  ' kd_supplier,kd_akun,jenis_pembelian,jmlh_bayar,valas,nilai_valas,NULL no_perk,NULL nm_perk,grandtotal,category,pph_rp,totalbaku,totalkm,'+
  ' totalpnl,totalkms,0 total2,0 ppnrp2,(sisa_hutang*nilai_valas) hutang,kd_sbu,"id", null ppn2,kdakunpph from (select c.nm_supplier supp,d.qty, '+
  ' d.subtotalrp,a.kd_akunum,a.sisa_hutang,a.nilai_um,d.ppnrp,d.nm_material,d.kd_material_stok,a.tgl_terima,a.no_terima,a.ket,a.nosj,a.nofaktur,'+
  ' a.kd_supplier,a.kd_akun,a.jenis_pembelian,a.jmlh_bayar,a.valas,a.nilai_valas,'''' no_perk,'''' nm_perk,d.grandtotal,d.category,d.pph_rp,'+
  ' ab.subtotal totalbaku,ab2.subtotal totalkm,ab3.subtotal totalpnl,ab4.subtotal totalkms,0 total2,0 ppnrp2,a.kd_sbu,d."id",d.kd_material,kdakunpph from'+
  ' t_terima_material a inner join t_supplier c on a.kd_supplier=c.Kd_supplier inner join (SELECT a1.qty,a1.subtotalrp,a1.ppn_rp+a1.ppn_pembulatan ppnrp,'+
  ' a1.nopo,b1.nm_material,b1.kd_material_stok,a1.no_terima,a1.grandtotal,c1.category,a1.pph_rp,a1."id",c1.kd_material,'+
  ' /*case when kd_akunpph=''2148'' then kd_akunpph else '''' end*/ kd_akunpph kdakunpph from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok '+
  ' left join t_material c1 on b1.kd_material=c1.kd_material and b1.no_material=c1.no_material ORDER BY a1."id" DESC) d on a.no_terima=d.no_terima '+
  //-- BAKU
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN BAKU'' and b1.kd_material<>''007'')AB ON 1=1 '+
  // --PENOLONG
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and (c1.category=''KIMIA'' or c1.category=''KIMIA 2''))AB2 ON 1=1 '+
  //--KIMIA
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN PENOLONG'')AB3 ON 1=1 '+
  //--KEMASAN
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN KEMASAN'')AB4 ON 1=1 ';
  //where a.jenis_pembelian='PRODUKSI' and  a.tgl_terima='2022-08-01' and a.kd_akun='2110') a
 subqr2:='select supp,qty,subtotalrp,kd_akunum,sisa_hutang,um,null ppnrp,nm_material,kd_material_stok,tgl_terima,no_terima,ket,nosj,nofaktur,kd_supplier,'+
  ' kd_akun,jenis_pembelian,jmlh_bayar,valas,nilai_valas,NULL no_perk,NULL nm_perk,grandtotal,category,0 pph_rp,totalbaku,totalkm,totalpnl,totalkms,0 total2,'+
  ' 0 ppnrp2,case when nilai_um > 0 then (sisa_hutang*nilai_valas) else (select sum(subtotalrp) from t_terima_material_det where no_terima=c.no_terima GROUP BY no_terima) end hutang '+
  ' ,kd_sbu,"id",0 ppn2,kdakunpph from (select c.nm_supplier supp,d.qty,d.subtotalrp,a.kd_akunum,a.sisa_hutang,a.nilai_um,d.ppnrp,d.nm_material,d.kd_material_stok,a.tgl_terima,'+
  ' a.no_terima,a.ket,a.nosj,a.nofaktur,a.kd_supplier,a.kd_akun,a.jenis_pembelian,a.jmlh_bayar,a.valas,a.nilai_valas,''''as no_perk,'''' as nm_perk,d.grandtotal,null ppn2,d.category,d.pph_rp,ab.subtotal totalbaku,'+
  ' ab2.subtotal totalkm, ab3.subtotal totalpnl,ab4.subtotal totalkms,null total2,null ppnrp2,a.kd_sbu,d."id",d.kd_material,kdakunpph from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier inner join '+
  ' (SELECT a1.qty,a1.subtotalrp,a1.ppn_rp+a1.ppn_pembulatan ppnrp, a1.nopo,b1.nm_material,b1.kd_material_stok,a1.no_terima,c1.kd_material,a1.grandtotal,c1.category,a1.pph_rp,a1."id",'+
  ' /*case when kd_akunpph=''2148'' then kd_akunpph else '''' end*/ kd_akunpph kdakunpph from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material '+
  ' and b1.no_material=c1.no_material) d on a.no_terima=d.no_terima '+
  //-- BAKU
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN BAKU'' and b1.kd_material<>''007'')AB ON 1=1 '+
  // --PENOLONG
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and (c1.category=''KIMIA'' or c1.category=''KIMIA 2''))AB2 ON 1=1 '+
  //--KIMIA
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN PENOLONG'')AB3 ON 1=1 '+
  //--KEMASAN
  ' LEFT JOIN LATERAL(SELECT a1.subtotalrp subtotal from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material where a1.no_terima=A.no_terima and b1.kd_material_stok=d.kd_material_stok and c1.category=''BAHAN KEMASAN'')AB4 ON 1=1 ';
  //where a.jenis_pembelian='PRODUKSI' and  a.tgl_terima='2022-08-01' and a.kd_akun='2110') a
  subqr3:='select supp,qty,subtotalrp,kd_akunum,sisa_hutang,(nilai_um*nilai_valas) nilai_um,NULL ppnrp,nm_material,kd_material_stok,tgl_terima,ab.no_terima,ket,nosj,nofaktur,kd_supplier,kd_akun,jenis_pembelian,jmlh_bayar,valas,nilai_valas,'+
  ' no_perk,nm_perk,grandtotal,category,pph_rp,NULL totalbaku,NULL totalkm,NULL totalpnl,NULL totalkms,subtotalrp total2,case when (sisa_hutang*nilai_valas) =0 then 0 when counttr = 1 then ppnsisa else ppnrp end ppnrp2,(sisa_hutang*nilai_valas) hutang,'+
  ' kd_sbu,"id",um,ppnsisa,kdakunpph from   '+
  ' (select c.nm_supplier supp,d.qty,d.subtotalrp,a.kd_akunum,a.sisa_hutang,a.nilai_um,d.ppnrp,d.nm_material,d.kd_material_stok,a.tgl_terima,a.no_terima,a.ket,a.nosj,a.nofaktur,a.kd_supplier,a.kd_akun,a.jenis_pembelian,'+
  ' a.jmlh_bayar,a.valas,a.nilai_valas,a.pic_update,a.tgl_update,d.kd_akun no_perk,f.nama_perkiraan nm_perk,d.grandtotal,d.category,d.pph_rp,a.kd_sbu,d."id",kdakunpph from t_terima_material a inner join t_supplier C on   '+
  ' a.kd_supplier=c.Kd_supplier inner join (SELECT a1.qty,a1.subtotalrp,a1.ppn_rp+a1.ppn_pembulatan ppnrp, a1.nopo,b1.nm_material,b1.kd_material_stok,a1.no_terima,a1.grandtotal,c1.category,a1.pph_rp,a1.kd_akun, '+
  ' a1."id",/*case when kd_akunpph=''2148'' then kd_akunpph else '''' end*/ kd_akunpph  kdakunpph from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on '+
  ' b1.kd_material=c1.kd_material and b1.no_material=c1.no_material ORDER BY a1."id" DESC) d on '+
  ' a.no_terima=d.no_terima INNER join t_daftar_perkiraan F on F.kode=d.kd_akun ';
  subqr4:='select supp,qty,subtotalrp,kd_akunum,sisa_hutang,(nilai_um*nilai_valas) nilai_um,NULL ppnrp,nm_material,kd_material_stok,tgl_terima,no_terima,ket,nosj,nofaktur,kd_supplier,kd_akun,jenis_pembelian,jmlh_bayar,valas,nilai_valas,'+
  ' no_perk,nm_perk,grandtotal,category,pph_rp,NULL totalbaku,NULL totalkm,NULL totalpnl,NULL totalkms,subtotalrp total2,case when (sisa_hutang*nilai_valas) =0 then 0 else ppnrp end ppnrp2,case when nilai_um > 0 then (sisa_hutang*nilai_valas) else '+
  ' (select sum(subtotalrp) from t_terima_material_det where no_terima=d.no_terima GROUP BY no_terima) end hutang,kd_sbu,"id",(nilai_um*nilai_valas) um,0 pprp,kdakunpph from   '+
  ' (select c.nm_supplier supp,d.qty,d.subtotalrp,a.kd_akunum,a.sisa_hutang,a.nilai_um,d.ppnrp,d.nm_material,d.kd_material_stok,a.tgl_terima,a.no_terima,a.ket,a.nosj,a.nofaktur,a.kd_supplier, A.kd_akun,a.jenis_pembelian,'+
  ' a.jmlh_bayar,a.valas,a.nilai_valas,a.pic_update,a.tgl_update,d.kd_akun no_perk,f.nama_perkiraan nm_perk,d.grandtotal,d.category,d.pph_rp,a.kd_sbu,d."id",kdakunpph from t_terima_material a inner join t_supplier C on    '+
  ' a.kd_supplier=c.Kd_supplier inner join (SELECT a1.qty,a1.subtotalrp,a1.ppn_rp+a1.ppn_pembulatan ppnrp, a1.nopo,b1.nm_material,b1.kd_material_stok,a1.no_terima,a1.grandtotal,c1.category,a1.pph_rp,a1.kd_akun,a1."id",'+
  ' /*case when kd_akunpph=''2148'' then kd_akunpph else '''' end*/ kd_akunpph kdakunpph from t_terima_material_det a1 left join t_material_stok b1 on a1.kd_material_stok=b1.kd_material_stok left join t_material c1 on b1.kd_material=c1.kd_material'+
  ' and b1.no_material=c1.no_material ORDER BY a1."id" DESC) d on a.no_terima=d.no_terima INNER join t_daftar_perkiraan F on F.kode=d.kd_akun ';
 //where a.jenis_pembelian<>'PRODUKSI' and  a.tgl_terima='2022-08-01' and a.kd_akun='2110') b ORDER BY no_terima,tgl_terima DESC
if edkd_akun.Text='' then
begin
  if loksbu='' then
  begin
     with QRptBHP do
     begin
       close;
       sql.Clear;
       sql.Text:= subqr+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''LOKAL'')a'+
       ' UNION '+subqr3+' where jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''LOKAL'') b'+
       ' UNION '+subqr2+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''IMPORT'') c'+
       ' UNION '+subqr4+' where jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''IMPORT'') d ORDER BY no_terima,tgl_terima,"id" DESC ';
       open;
     end;
     with QRptBHPDet do
     begin
       close;
       sql.Clear;
       sql.Text:=' select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(nilai_um) um, no_terima,nofaktur,tgl_terima from ('+
       ' '+subqr+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''LOKAL'')a'+
       ' UNION '+subqr3+' where jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''LOKAL'') b'+
       ' UNION '+subqr2+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''IMPORT'') c'+
       ' UNION '+subqr4+' where jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''IMPORT'') d'+
       ' ORDER BY no_terima,tgl_terima DESC ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
        open;
     end;
  end;
  if loksbu <> '' then
  begin
     with QRptBHP do
     begin
       close;
       sql.Clear;
       sql.Text:= subqr+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''LOKAL'')a'+
       ' UNION '+subqr3+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''LOKAL'') b'+
       ' UNION '+subqr2+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''IMPORT'') c'+
       ' UNION '+subqr4+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''IMPORT'') d ORDER BY no_terima,tgl_terima,"id" DESC ';
       open;
     end;
     with QRptBHPDet do
     begin
       close;
       sql.Clear;
       sql.Text:='  select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(nilai_um) um, no_terima,nofaktur,tgl_terima from ('+
       ' '+subqr+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''LOKAL'')a'+
       ' UNION '+subqr3+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''LOKAL'') b'+
       ' UNION '+subqr2+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+'  and jenis_po=''IMPORT'') c'+
       ' UNION '+subqr4+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian<>''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and jenis_po=''IMPORT'') d'+
       ' ORDER BY no_terima,tgl_terima DESC ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
        open;
     end;
  end;
end;
if ednm_akun.Text<>'HUTANG DAGANG' then
begin
  if loksbu='' then
  begin
     with QRptBHP do
     begin
       close;
       sql.Clear;
 {      sql.Text:= subqr3+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'') ab'+
      ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum from (select a.no_terima,b.nopo from t_terima_material a INNER JOIN  '+
      ' t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
      ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
      ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  WHERE a.no_terima=ab.no_terima) c on 1=1'+
      ' UNION '+subqr4+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') d ORDER BY no_terima,tgl_terima,"id" DESC ';
     }
      sql.Text:= subqr3+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'') ab'+
      ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum,a.ppn_rp-(case when d.totalppn > 0 then d.totalppn else 0 end) ppnsisa from (select a.no_terima,b.nopo,a.ppn_rp from t_terima_material a'+
      ' INNER JOIN  t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo,a.ppn_rp)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
      ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
      ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  '+
      ' left JOIN (select sum(b.jumlah)totalppn,c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' '+
      ' and b.kodesp<>c.kd_akunum AND a.bayar >0 GROUP BY c.nopo)d on a.nopo=d.nopo WHERE a.no_terima=ab.no_terima) c on 1=1'+
      ' INNER JOIN LATERAL(select "count"(kd_material_stok) counttr,no_terima from t_terima_material_det WHERE no_terima=ab.no_terima GROUP BY no_terima)d on 1=1 '+
      ' UNION '+subqr4+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') d ORDER BY no_terima,tgl_terima,"id" DESC ';
      open;
     end;
     with QRptBHPDet do
     begin
       close;
       sql.Clear;
       sql.Text:=' select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(um) um, no_terima,nofaktur,tgl_terima from ('+
       ' '+subqr3+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'') ab'+
      ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum,a.ppn_rp-(case when d.totalppn > 0 then d.totalppn else 0 end) ppnsisa from (select a.no_terima,b.nopo,a.ppn_rp from t_terima_material a'+
      ' INNER JOIN  t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo,a.ppn_rp)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
      ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
      ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  '+
      ' left JOIN (select sum(b.jumlah)totalppn,c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' '+
      ' and b.kodesp<>c.kd_akunum AND  a.bayar >0 GROUP BY c.nopo)d on a.nopo=d.nopo WHERE a.no_terima=ab.no_terima) c on 1=1'+
      ' INNER JOIN LATERAL(select "count"(kd_material_stok) counttr,no_terima from t_terima_material_det WHERE no_terima=ab.no_terima GROUP BY no_terima)d on 1=1 '+
      ' UNION '+subqr4+' where tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') d'+
      ' ORDER BY no_terima,tgl_terima DESC ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
        open;
     end;
  end;
  if loksbu <> '' then
  begin
     with QRptBHP do
     begin
       close;
       sql.Clear;
       sql.Text:= subqr3+' where kd_sbu='+QuotedStr(loksbu)+' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'') ab'+
       ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum,a.ppn_rp-(case when d.totalppn > 0 then d.totalppn else 0 end) ppnsisa from (select a.no_terima,b.nopo,a.ppn_rp from t_terima_material a'+
       ' INNER JOIN  t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo,a.ppn_rp)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
       ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
       ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  '+
       ' left JOIN (select sum(b.jumlah)totalppn,c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' '+
       ' and b.kodesp<>c.kd_akunum AND a.bayar >0 GROUP BY c.nopo)d on a.nopo=d.nopo WHERE a.no_terima=ab.no_terima) c on 1=1'+
       ' INNER JOIN LATERAL(select "count"(kd_material_stok) counttr,no_terima from t_terima_material_det WHERE no_terima=ab.no_terima GROUP BY no_terima)d on 1=1 '+
       ' UNION '+subqr4+' where kd_sbu='+QuotedStr(loksbu)+' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') d ORDER BY no_terima,tgl_terima,"id" DESC ';
       open;
     end;
     with QRptBHPDet do
     begin
       close;
       sql.Clear;
       sql.Text:='  select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(um) um, no_terima,nofaktur,tgl_terima from ('+
       ' '+subqr3+' where kd_sbu='+QuotedStr(loksbu)+' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'') ab'+
       ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum,a.ppn_rp-(case when d.totalppn > 0 then d.totalppn else 0 end) ppnsisa from (select a.no_terima,b.nopo,a.ppn_rp from t_terima_material a'+
       ' INNER JOIN  t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo,a.ppn_rp)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
       ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
       ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  '+
       ' left JOIN (select sum(b.jumlah)totalppn,c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' '+
       ' and b.kodesp<>c.kd_akunum AND a.bayar >0 GROUP BY c.nopo)d on a.nopo=d.nopo WHERE a.no_terima=ab.no_terima) c on 1=1'+
       ' INNER JOIN LATERAL(select "count"(kd_material_stok) counttr,no_terima from t_terima_material_det WHERE no_terima=ab.no_terima GROUP BY no_terima)d on 1=1 '+
       ' UNION '+subqr4+' where kd_sbu='+QuotedStr(loksbu)+' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') d'+
       ' ORDER BY no_terima,tgl_terima DESC ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
        open;
     end;
  end;
end;
if ednm_akun.Text='HUTANG DAGANG' then
begin
    if loksbu='' then
    begin
       with QRptBHP do
       begin
         close;
         sql.Clear;
         sql.Text:= subqr+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'' and kd_material<>''007'')ab'+
         ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum from (select a.no_terima,b.nopo from t_terima_material a INNER JOIN  '+
         ' t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
         ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
         ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  WHERE a.no_terima=ab.no_terima) c on 1=1'+
         ' UNION '+subqr2+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'' and kd_material<>''007'') c'+
         ' LEFT JOIN LATERAL (select case when avg(a.nilai_um) > 0 then avg(a.nilai_um)-sum(b.ppn_rp+b.ppn_pembulatan) '+
         ' else 0 end um from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima WHERE a.no_terima=c.no_terima GROUP BY nofaktur) ac2 on 1=1'+
         ' ORDER BY no_terima,tgl_terima,"id" DESC ';
         open;
       end;
       with QRptBHPDet do
       begin
         close;
         sql.Clear;
         sql.Text:=' select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(um) um, no_terima,nofaktur,tgl_terima from ('+
         ' '+subqr+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'' and kd_material<>''007'')ab'+
         ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum from (select a.no_terima,b.nopo from t_terima_material a INNER JOIN  '+
         ' t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
         ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
         ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  WHERE a.no_terima=ab.no_terima) c on 1=1'+
         ' UNION '+subqr2+' where jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'' and kd_material<>''007'') c'+
         ' LEFT JOIN LATERAL (select case when avg(a.nilai_um) > 0 then avg(a.nilai_um)-sum(b.ppn_rp+b.ppn_pembulatan) else 0'+
         ' end um from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima WHERE a.no_terima=c.no_terima GROUP BY nofaktur) ac2 on 1=1'+
         ' ORDER BY no_terima,tgl_terima DESC) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
          open;
       end;
    end;
    if loksbu <> '' then
    begin
       with QRptBHP do
       begin
         close;
         sql.Clear;
         sql.Text:= subqr+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'')ab'+
         ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum from (select a.no_terima,b.nopo from t_terima_material a INNER JOIN  '+
         ' t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
         ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
         ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  WHERE a.no_terima=ab.no_terima) c on 1=1'+
         ' UNION '+subqr2+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') c'+
         ' LEFT JOIN LATERAL (select case when avg(a.nilai_um) > 0 then avg(a.nilai_um)-sum(b.ppn_rp+b.ppn_pembulatan) else 0 end '+
         ' um from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima WHERE a.no_terima=c.no_terima GROUP BY nofaktur) ac2 on 1=1'+
         ' ORDER BY no_terima,tgl_terima,"id" DESC ';
         open;
       end;
       with QRptBHPDet do
       begin
         close;
         sql.Clear;
         sql.Text:='  select sum(hutang) htng,sum(um) um FROM(select avg(hutang) hutang,avg(um) um, no_terima,nofaktur,tgl_terima from ('+
         ' '+subqr+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''LOKAL'')ab'+
         ' LEFT JOIN LATERAL (select a.nopo,case when b.um > 0 then b.um else 0 end um,c.totalum from (select a.no_terima,b.nopo from t_terima_material a INNER JOIN  '+
         ' t_terima_material_det b on a.no_terima=b.no_terima GROUP BY a.no_terima,b.nopo)a left JOIN (select sum(b.jumlah) um,c.nopo from t_detail_bayar_real a INNER JOIN tkas b'+
         ' on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo and b.kodesp=c.kd_akunum WHERE dk=''D'' GROUP BY c.nopo)b on a.nopo=b.nopo left JOIN (select sum(b.jumlah)totalum,'+
         ' c.nopo from t_detail_bayar_real a INNER JOIN tkas b on a.nobk=b.voucher INNER JOIN t_po c on a.no_voucher=c.nopo WHERE dk=''D'' GROUP BY c.nopo)c on a.nopo=c.nopo  WHERE a.no_terima=ab.no_terima) c on 1=1'+
         ' UNION '+subqr2+' where kd_sbu='+QuotedStr(loksbu)+' and jenis_pembelian=''PRODUKSI'' and tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and jenis_po=''IMPORT'') c'+
         ' LEFT JOIN LATERAL (select case when avg(a.nilai_um) > 0 then avg(a.nilai_um)-sum(b.ppn_rp+b.ppn_pembulatan) else 0 end '+
         ' um from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima WHERE a.no_terima=c.no_terima GROUP BY nofaktur) ac2 on 1=1'+
         ' ORDER BY no_terima,tgl_terima DESC ) a GROUP BY no_terima,nofaktur,tgl_terima)a group by tgl_terima ';
          open;
       end;
    end;
end;
  Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_BHPemb.Fr3');
// Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
  SetMemo(Rpt,'MPeriode',' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  //  TfrxMemoView(Rpt.FindObject('Mpt')).Memo.Text:=' Tanggal :  '+FormatDateTime('dd MMMM yyyy',DtMulai.Date));
  SetMemo(Rpt,'nmsbu',' '+Kd_SBU);
  Rpt.ShowReport();
end;

procedure TFRpt_BukuHarianPembelian.RzBitBtn2Click(Sender: TObject);
var subquery,subquery2,subquery3:string;
begin
{with QRptBHPNon do
begin
  Filtered:=False;
  Filter:='tgl_terima='+QuotedStr(DtMulai.Text);
  FilterOptions:=[];
  Filtered:=True;
end;
 // Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\RptBukuHarianPembelianProduksi.Fr3');
 // SetMemo(Rpt,'MPeriode',' Periode :  '+DtMulai.Text);
  //Rpt.ShowReport();}
MemBHP.EmptyTable;
//totalppn
subquery:='SELECT DISTINCT a.jmlh-b.ppn-c.pphrp total,tm.tgl_terima,tm.kd_sbu from t_terima_material tm left JOIN      '+
  ' (SELECT sum(jumlah) AS jmlh,d.tgl_terima FROM t_detail_bayar_real "a" INNER JOIN tkas AS b ON a.nobk=b.voucher   '+
  ' INNER JOIN t_po AS "c" ON a.no_voucher=c.nopo INNER JOIN (SELECT	b.nopo,a.tgl_terima	FROM t_terima_material AS a'+
  ' INNER JOIN t_terima_material_det AS b	ON a.no_terima=b.no_terima WHERE a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' GROUP BY b.nopo,a.tgl_terima) d ON c.nopo=d.nopo WHERE b.subvoucher=''0'' AND c.status_um=''1'' GROUP BY d.tgl_terima) a on tm.tgl_terima=a.tgl_terima'+
  // uang muka
  ' Left Join (SELECT sum(jumlah) AS ppn,d.tgl_terima FROM t_detail_bayar_real AS "a" INNER JOIN tkas AS b ON a.nobk=b.voucher '+
  ' INNER JOIN t_po AS "c" ON a.no_voucher = c.nopo INNER JOIN (SELECT	b.nopo,a.tgl_terima	FROM t_terima_material "a"	'+
  ' INNER JOIN t_terima_material_det AS b	ON a.no_terima = b.no_terima WHERE a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' GROUP BY b.nopo,a.tgl_terima) AS d ON c.nopo = d.nopo WHERE b.kodesp=''1211'' AND c.status_um=''1'' GROUP BY '+
  ' d.tgl_terima) b on a.tgl_terima=b.tgl_terima'+
  // ppn
  ' Left join (select sum(b.pph_rp) pphrp,a.tgl_terima from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um = ''1'' GROUP BY tgl_terima) c on a.tgl_terima=b.tgl_terima '+
  ' where tm.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date));
if loksbu='' then
begin
with dm.QTemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' select a.total-b.pph total,b.pph,a.tgl_terima,a.kd_sbu from '+'('+subquery+')'+' a left join (select sum(b.pph_rp) pph,a.tgl_terima from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um <> ''1'' GROUP BY tgl_terima) b on a.tgl_terima=b.tgl_terima' ;
  open;
end;

end;
if loksbu<>'' then
begin
with dm.QTemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' select a.total-b.pph total,b.pph,a.tgl_terima,a.kd_sbu from '+'('+subquery+')'+' a left join (select sum(b.pph_rp) pph,a.tgl_terima,a.kd_sbu from t_terima_material a INNER JOIN t_terima_material_det b on a.no_terima=b.no_terima'+
  ' INNER JOIN t_po AS "c" ON b.nopo=c.nopo where a.tgl_terima ='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+''+
  ' AND c.status_um <> ''1'' and a.kd_sbu='+QuotedStr(loksbu)+' GROUP BY tgl_terima,a.kd_sbu) b on a.tgl_terima=b.tgl_terima where a.kd_sbu='+QuotedStr(loksbu);
  open;
end;
end;
subquery2:= ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas)-h.ph as '+
' jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok,a.tgl_terima,a.no_terima,a.no_urut,a.pic,a.ket,a.nospb, '+
' a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo,a.kd_supplier,a.kd_akun,a.jenis_pembelian,a.sisa_hutang as jmlh_hutang, '+
' a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,a.valas,a.nilai_valas,a.pic_update,a.tgl_update,d.kd_akun,f.nama_perkiraan,'+
' d.grandtotal, d.ppn_rp+d.ppn_pembulatan as ppn_rp ,g.category,d.pph_rp from t_terima_material a inner join t_supplier C on '+
' a.kd_supplier=c.Kd_supplier inner join t_terima_material_det d on A.no_terima=d.no_terima left join t_material_stok e on '+
' d.kd_material_stok=E.kd_material_stok LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun left join t_material g on '+
' e.kd_material=g.kd_material and e.no_material=g.no_material left join (select sum(pph_rp) ph,no_terima from t_terima_material_det'+
' group by no_terima) h on a.no_terima=h.no_terima ';
subquery3:= ' select d.kd_akunpph,c.nm_supplier AS supp, d.qty,d.subtotal,a.kd_akunum,(a.sisa_hutang*a.nilai_valas)-h.ph as jmlh_hutang,a.nilai_um,0,d.nopo,e.nm_material,e.kd_material_stok, '+
	' a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.nosj, a.nofaktur,	a.tgl_faktur,a.jatuh_tempo, '+
	' a.kd_supplier, A.kd_akun, a.jenis_pembelian,a.sisa_hutang as jmlh_hutang,a.jmlh_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status,'+
	' a.valas,a.nilai_valas, 	a.pic_update, a.tgl_update, d.kd_akun, f.nama_perkiraan, d.grandtotal , 0 ,g.category '+
  ' ,d.pph_rp from t_terima_material a inner join t_supplier C on a.kd_supplier=c.Kd_supplier  '+
  ' inner join t_terima_material_det d on A.no_terima=d.no_terima '+
  ' left join t_material_stok e on d.kd_material_stok=E.kd_material_stok '+
  ' LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun '+
  ' left join t_material g on e.kd_material=g.kd_material and e.no_material=g.no_material '+
  ' left join (select sum(pph_rp) ph,no_terima from t_terima_material_det group by no_terima) h on a.no_terima=h.no_terima ';
if edkd_akun.Text<>'' then
Begin
  if loksbu='' then
  begin
   if Ednm_akun.Text='HUTANG DAGANG' then
    BEGIN
    with QRptBHP do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery2+' where a.jenis_pembelian=''PRODUKSI''  and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
      ' Union '+subquery2+' where a.jenis_pembelian<>''PRODUKSI'' and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
      ' Union '+subquery3+' where a.jenis_pembelian=''PRODUKSI''  and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
      ' Union '+subquery3+' where a.jenis_pembelian<>''PRODUKSI'' and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
      ' Order by no_terima,tgl_terima Desc';
      ExecSQL;
    end;
    with QRptBHPdet do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery2+' where a.jenis_pembelian=''PRODUKSI''  and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
      ' Union '+subquery2+' where a.jenis_pembelian<>''PRODUKSI'' and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
      ' Union '+subquery3+' where a.jenis_pembelian=''PRODUKSI''  and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
      ' Union '+subquery3+' where a.jenis_pembelian<>''PRODUKSI'' and a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
      ' Order by no_terima,tgl_terima Desc';
      ExecSQL;
    end;
    end;
   if Ednm_akun.Text<>'HUTANG DAGANG' then
    BEGIN
    with QRptBHP do
    begin
      close;
      sql.Clear;
      sql.Text:=subquery2+' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''LOKAL'''+
      ' Union '+subquery3+' where a.tgl_terima='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.Date))+' and a.kd_akun='+QuotedStr(edkd_akun.Text)+' and a.jenis_po=''IMPORT'''+
      ' Order by no_terima,tgl_terima Desc';
      ExecSQL;
    end;
    end;
    end;
  End;
end;

procedure TFRpt_BukuHarianPembelian.Ednm_akunButtonClick(Sender: TObject);
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

// Contoh RegisterClass
Initialization
  RegisterClass(TFRpt_BukuHarianPembelian);

end.
