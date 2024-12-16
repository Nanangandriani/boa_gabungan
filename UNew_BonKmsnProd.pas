unit UNew_BonKmsnProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, MemDS, DBAccess, Uni, MemTableEh, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_BonKmsnProd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdNo: TRzEdit;
    DtTanggal: TRzDateTimeEdit;
    EdNo_SPk: TRzComboBox;
    EdTimbang: TRzEdit;
    DBGridKemasan: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    DsKemasan: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    EdKarton: TRzEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdShift: TRzComboBox;
    MemKemasan: TMemTableEh;
    QGudang: TUniQuery;
    DsGudang: TDataSource;
    Label23: TLabel;
    Label24: TLabel;
    CbGudang: TComboBox;
    Button1: TButton;
    MemKemasan2: TMemTableEh;
    procedure EdShiftSelect(Sender: TObject);
    procedure EdNo_SPkSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNo_FormulaChange(Sender: TObject);
    procedure DBGridKemasanCellClick(Column: TColumnEh);
    procedure DBGridKemasanColEnter(Sender: TObject);
    procedure EdKartonChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure EdNo_HasilSelect(Sender: TObject);
    procedure DBGridKemasanColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridKemasanColExit(Sender: TObject);
    procedure CbGudangChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridKemasanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Load;
    Procedure Clear;
    Procedure SimpanMaterial;
  end;

//var
Function  FNew_BonKmsnProd: TFNew_BonKmsnProd;
var
status,bln,thn:string;
implementation

{$R *.dfm}

uses UDatamodule, UBon_KmsnProd, UMainmenu, USearch_SuppSPKProd, USearch_MatSPKProd;
var
  realfNew_Bonkms : TFNew_BonKmsnprod;
// implementasi function
function fnew_bonkmsnprod : TFNew_BonKmsnProd;
begin
  if realfnew_bonkms <> nil then
    FNew_bonKmsnprod:= realfNew_bonkms
  else
    Application.CreateForm(TFNew_bonkmsnprod, Result);
end;

function IntToRoman(Value : Longint):String;  // fungsi
    const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
    Var  i :integer;
    begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

procedure TFNew_BonKmsnProd.Autonumber;
  var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(DtTanggal.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (IntToRoman(strToint(mt)))+'/'+EdShift.Text+'/'+yn;
 bln:=FormatDateTime('mm',DtTanggal.Date);
 thn:=yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(left(no_bon,3))as urut from t_spk_prod_bon_kmsn where bln='+QuotedStr(bln)+' and thn='+QuotedStr(thn);
    open;
  end;
   if dm.Qtemp['urut']= '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  EdNo.Text:= EditComplete+ '/'+maxmy + '/' + Kd_SBU;
end;

Procedure TFNew_BonKmsnProd.SimpanMaterial;
begin
MemKemasan.First;
while not MemKemasan.Eof do
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_material_stok_prod_det where ' +
            'kd_material_stok='+QuotedStr(MemKemasan['kd_material_stok'])+''+
            ' and kd_stok='+QuotedStr(MemKemasan['kd_stok']);
  Execute;
end;
if dm.Qtemp.RecordCount > 0 then
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='	Update t_material_stok_prod_det set qty= qty + :parqty  '+
              '  where kd_material_stok=:parkd_material_stok and kd_stok=:parkd_stok';
              ParamByName('parqty').Value:=MemKemasan['totalterima'];
              ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
    Execute;
  end;
end else
if dm.Qtemp.RecordCount=0 then
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='	INSERT INTO t_material_stok_prod_det(kd_material_stok,kd_stok,qty,'+
              ' satuan,qtyout,gudang)VALUES(:parkd_material_stok,:parkd_stok,:parqty,'+
              ' :parsatuan,:parqtyout,:pargudang)';
              ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
              ParamByName('parqty').Value:=MemKemasan['totalterima'];
              ParamByName('parsatuan').Value:=MemKemasan['satuan'];
              ParamByName('parqtyout').Value:=0;
              ParamByName('pargudang').Value:=MemKemasan['gudang'];
    Execute;
  end;
end;
 MemKemasan.Next;
end;
end;

procedure TFNew_BonKmsnProd.CbGudangChange(Sender: TObject);
begin
MemKemasan.First;
while not MemKemasan.Eof do
begin
  MemKemasan.Edit;
  MemKemasan['gudangtransit']:=CbGudang.Text;
  MemKemasan.Post;
  MemKemasan.Next;
end;
end;

Procedure TFNew_BonKmsnProd.Clear;
begin
  MemKemasan2.Close;
  MemKemasan2.Open;
  MemKemasan.Close;
  MemKemasan.Open;
  MemKemasan.EmptyTable;
  EdNo.Text:='';
  EdNo_SPk.Text:='';
  EdTimbang.Text:='';
  EdKarton.Text:='';
  EdShift.Text:='';
  DtTanggal.Date:=now;
end;

procedure TFNew_BonKmsnProd.BBatalClick(Sender: TObject);
begin
close;
FBon_Kmsn_prod.Show;
FBon_Kmsn_prod.dxBarRefreshClick(sender);
end;

procedure TFNew_BonKmsnProd.BEditClick(Sender: TObject);
begin
if EdShift.Text='' then
begin
  MessageDlg('Regu Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdShift.SetFocus;
  Exit;
end;
if DtTanggal.Text='' then
begin
  MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdShift.SetFocus;
  Exit;
end;
if EdTimbang.Text='0' then
begin
  MessageDlg('Jumlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdTimbang.SetFocus;
  Exit;
end;
if status<>'Created' then
begin
if CbGudang.Text='0' then
begin
  MessageDlg('Gudang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  CbGudang.SetFocus;
  Exit;
end;
end;
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_bon';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' update t_spk_prod_bon_kmsn set no_spk_prod=:Parno_spk_prod,tanggal=:partanggal,'+
            ' jmlh_karton=:parjmlh_karton,status=:parstatus,shift=:parshift,'+//bln=:parbln,thn=:parthn, '+
            ' nohasil=:parnohasil,kd_sbu=:parkd_sbu,gudang=:pargudang where no_bon=:parno_bon ';
            ParamByName('parno_bon').Value:=EdNo.Text;
            ParamByName('parno_spk_prod').Value:=EdNo_SPk.Text;
     //       ParamByName('parnohasil').Value:=EdNo_Hasil.Text;
            ParamByName('partanggal').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
            ParamByName('parjmlh_karton').Value:=EdKarton.Text;
            ParamByName('parstatus').Value:=status;
            ParamByName('parshift').Value:=EdShift.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
        //    ParamByName('parbln').Value:=bln;
          //  ParamByName('parthn').Value:=thn;
            ParamByName('pargudang').Value:=CbGudang.Text;
            ParamByName('pargudang').Value:=CbGudang.Text;
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='Delete from t_spk_prod_bon_kmsn_det where no_bon='+QuotedStr(EdNo.Text);
  ExecSQL;
end;
MemKemasan.First;
while not MemKemasan.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_kmsn_det(no_bon,gudang,kd_material_stok,kd_stok,'+
            ' "index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan,satuankemasan,'+
            ' index2,totalterima,totalberi,gudangtransit,status,total_kb)values(:parno_bon,:pargudang,'+
            ' :parkd_material_stok,:parkd_stok,:parindex,:parsatuan,:parkd_supplier,'+
            ' :parttlberat,:parqtyperkemasan,:partotalkemasan,:parsatuankemasan,:parindex2,'+
            ' :partotalterima,:partotalberi,:pargudangtransit,:parstatus,:partotal_kb)';
            ParamByName('parno_bon').Value:=Edno.Text;
            ParamByName('pargudang').Value:=MemKemasan['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
            ParamByName('parindex').Value:=MemKemasan['index'];
            ParamByName('parsatuan').Value:=MemKemasan['satuan'];
            ParamByName('parkd_supplier').Value:=MemKemasan['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKemasan['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemKemasan['qtyperkemasan'];
            ParamByName('partotalkemasan').Value:=MemKemasan['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKemasan['satuankemasan'];
            ParamByName('parindex2').Value:=MemKemasan['index2'];
            ParamByName('partotalterima').Value:=MemKemasan['totalterima'];
            ParamByName('partotalberi').Value:=MemKemasan['totalberi'];
            ParamByName('pargudangtransit').Value:=MemKemasan['gudangtransit'];
            ParamByName('parstatus').Value:=status;
            ParamByName('partotal_kb').Value:=MemKemasan['total_kb'];
  ExecSQL;
end;
  MemKemasan.Next;
end;
SimpanMaterial;
dm.koneksi.Commit;
Messagedlg('Data Behasil Disimpan',MtInformation,[Mbok],0);
end
Except
on E :Exception do
begin
MessageDlg(E.Message,mtError,[MBok],0);
dm.koneksi.Rollback;
end;
end;
  BBatalClick(sender);
end;

procedure TFNew_BonKmsnProd.BSimpanClick(Sender: TObject);
begin
if EdShift.Text='' then
begin
  MessageDlg('Regu Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdShift.SetFocus;
  Exit;
end;
if DtTanggal.Text='' then
begin
  MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdShift.SetFocus;
  Exit;
end;
if EdTimbang.Text='0' then
begin
  MessageDlg('Jumlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdTimbang.SetFocus;
  Exit;
end;
MemKemasan.First;
while not MemKemasan.Eof do
begin
  DBGridKemasanColEnter(sender);
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_material_stok_det where kd_material_stok='+QuotedStr(MemKemasan['kd_material_stok'])+' and kd_stok='+QuotedStr(MemKemasan['kd_stok']);
    Execute;
  end;
if dm.Qtemp['Outstanding']< MemKemasan['ttlberat'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Kuantum '+MemKemasan['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
exit;
end;
  MemKemasan.Next;
end;
Autonumber;
if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_kmsn(no_bon,no_spk_prod,nohasil,tanggal,'+
            ' jmlh_karton,status,Shift,kd_sbu,bln,thn) '+
            ' values(:parno_bon,:parno_spk_prod,:parnohasil,:partanggal,'+
            ' :parjmlh_karton,:parstatus,:parShift,:parkd_sbu,:parbln,:parthn)';
            ParamByName('parno_bon').Value:=EdNo.Text;
            ParamByName('parno_spk_prod').Value:=EdNo_SPk.Text;
          //  ParamByName('parnohasil').Value:=EdNo_Hasil.Text;
         //   ''+quotedstr(EdNo_formula.Text)+','+
            ParamByName('partanggal').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
            ParamByName('parjmlh_karton').Value:=EdKarton.Text;
            ParamByName('parstatus').Value:='Created';
            ParamByName('parshift').Value:=EdShift.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
            ParamByName('parbln').Value:=bln;
            ParamByName('parthn').Value:=thn;
  ExecSQL;
end;
{with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_bon_det';
  ExecSQL;
end;        }
MemKemasan.First;
while not MemKemasan.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
    sql.Text:=' insert into t_spk_prod_bon_kmsn_det(no_bon,gudang,kd_material_stok,kd_stok,'+
              ' "index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan,satuankemasan,'+
              ' index2,totalterima,totalberi,gudangtransit,total_kb)values(:parno_bon,:pargudang,'+
              ' :parkd_material_stok,:parkd_stok,:parindex,:parsatuan,:parkd_supplier,'+
              ' :parttlberat,:parqtyperkemasan,:partotalkemasan,:parsatuankemasan,:parindex2,'+
              ' :partotalterima,:partotalberi,:pargudangtransit,:partotal_kb)';
            ParamByName('parno_bon').Value:=Edno.Text;
            ParamByName('pargudang').Value:=MemKemasan['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
            ParamByName('parindex').Value:=MemKemasan['index'];
            ParamByName('parsatuan').Value:=MemKemasan['satuan'];
            ParamByName('parkd_supplier').Value:=MemKemasan['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKemasan['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemKemasan['qtyperkemasan'];
            ParamByName('partotalkemasan').Value:=MemKemasan['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKemasan['satuankemasan'];
            ParamByName('parindex2').Value:=MemKemasan['index2'];
            ParamByName('partotalterima').Value:='0';
            ParamByName('partotalberi').Value:=0;
            ParamByName('pargudangtransit').Value:='';
            ParamByName('partotal_kb').Value:=MemKemasan['total_kb'];
  ExecSQL;
end;
  MemKemasan.Next;
end;
  dm.koneksi.Commit;
  Messagedlg('Data Behasil Disimpan',MtInformation,[Mbok],0);
  BBatalClick(sender);
end
Except
on E :Exception do
begin
MessageDlg(E.Message,mtError,[MBok],0);
dm.koneksi.Rollback;
end;
end;
end;
end;

procedure TFNew_BonKmsnProd.Button1Click(Sender: TObject);
begin
  Autonumber;
end;

procedure TFNew_BonKmsnProd.DBGridKemasanCellClick(Column: TColumnEh);
begin
try
  MemKemasan.Edit;
//  MemKemasan['ttlberat']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['total_kb']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['jmlh_kt']:=MemKemasan['ttlberat']/MemKemasan['index2'];
  MemKemasan['totalkemasan']:=(MemKemasan['ttlberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
//  CbGudang.Text:=MemKemasan['gudangtransit'];
except;
end;
end;

procedure TFNew_BonKmsnProd.DBGridKemasanColEnter(Sender: TObject);
begin
try
  MemKemasan.Edit;
  if MemKemasan['index']='1/320' then
   begin
   MemKemasan['index2']:='0,1875';
  // MemKemasan['index2']:=60/320;
   MemKemasan['qtyperkemasan']:='50';
   end;
  if MemKemasan['index']='1/430' then
  begin
  // MemKemasan['index2']:=60/430;
   MemKemasan['index2']:='0,1395';
   MemKemasan['qtyperkemasan']:='40';
  end;
  //MemKemasan['ttlberat']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['total_kb']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['jmlh_kt']:=MemKemasan['ttlberat']/MemKemasan['index2'];
  MemKemasan['totalkemasan']:=(MemKemasan['ttlberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
except;
end;
end;

procedure TFNew_BonKmsnProd.DBGridKemasanColExit(Sender: TObject);
begin
try
  MemKemasan.Edit;
  if MemKemasan['index']='1/320' then
   begin
   MemKemasan['index2']:='0,1875';
  // MemKemasan['index2']:=60/320;
   MemKemasan['qtyperkemasan']:='50';
   end;
  if MemKemasan['index']='1/430' then
  begin
  // MemKemasan['index2']:=60/430;
   MemKemasan['index2']:='0,1395';
   MemKemasan['qtyperkemasan']:='40';
  end;
 // MemKemasan['ttlberat']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['total_kb']:=MemKemasan['index2']*strtofloat(EdKarton.Text);
  MemKemasan['jmlh_kt']:=MemKemasan['ttlberat']/MemKemasan['index2'];
  MemKemasan['totalkemasan']:=(MemKemasan['ttlberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
 // CbGudang.Text:=MemKemasan['gudangtransit'];
 // CbGudangChange(Sender);
 except;
end;
end;

procedure TFNew_BonKmsnProd.DBGridKemasanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
with FSearch_MatSPKProd do
begin
  Show;
  statustr:='bonkms';
  with FSearch_MatSPKProd.Qmaterial do
begin
  close;
  sql.Clear;
  sql.Text:='select kd_material,nm_material,no_urut from t_material '+
            ' where category=''BAHAN KEMASAN'' order by no_urut ASC ';
  ExecSQL;
end;
  Qmaterial.Open;
  DBGridBaku.Visible:=False;
  DBGridKimia.Visible:=False;
  DBGridKemasan.Visible:=True;
end;
end;

procedure TFNew_BonKmsnProd.DBGridKemasanColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_SuppSPKProd.Show;
if loksbu='' then
begin
  with FSearch_SuppSPKProd.QSupplier do
begin
  close;
  sql.Clear;
  sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C."Outstanding" as qty,'+
            ' B.satuan, C.Gudang ,D.konversi from t_supplier A '+
            ' inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
            ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
            ' inner join t_konversi_material D on B.kd_material=D.kd_material'+
            ' where  C."Outstanding">''0'' and B.kd_material='+QuotedStr(MemKemasan['kd_material_stok']);
  ExecSQL;
end;
    FSearch_SuppSPKProd.QSupplier.Open;
end;
if loksbu<>'' then
begin
  with FSearch_SuppSPKProd.QSupplier do
begin
  close;
  sql.Clear;
  sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C."Outstanding" as qty,'+
            ' B.satuan, C.Gudang ,D.konversi from t_supplier A '+
            ' inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
            ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
            ' inner join t_konversi_material D on B.kd_material=D.kd_material'+
            ' Left join t_gudang e on c.gudang = e.nm_gudang '+
            ' where  C."Outstanding">''0'' and B.kd_material='+QuotedStr(MemKemasan['kd_material_stok'])+' and e.kd_sbu='+QuotedStr(loksbu) ;
  ExecSQL;
end;
  FSearch_SuppSPKProd.QSupplier.Open;
end;
  FSearch_SuppSPKProd.DBGridKemasan.Visible:=True;
  FSearch_SuppSPKProd.DBGridBaku.Visible:=False;
  FSearch_SuppSPKProd.DBGridKimia.Visible:=False;
end;

procedure TFNew_BonKmsnProd.EdKartonChange(Sender: TObject);
begin
if EdKarton.Text='' then EdKarton.Text:='0';
MemKemasan.First;
while not MemKemasan.Eof do
begin
  DBGridKemasanColEnter(sender);
  MemKemasan.Next;
end;
end;

procedure TFNew_BonKmsnProd.EdNo_FormulaChange(Sender: TObject);
begin
MemKemasan.EmptyTable;
{with QKemasan1 do
begin
  sql.Clear;
  sql.Text:='select 	a.no_formula,a.gudang,a.kd_material_stok,a.kd_stok,a."index",a.satuan,'+
            ' a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,'+
            ' a.satuankemasan,C.nm_material, C.Category, D.nm_supplier,A.iddetail from '+
            '  t_spk_prod_tmbng_det A '+
            ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
            ' inner join t_material C on B.kd_material=C.kd_material '+
            ' Left join t_supplier D on B.kd_supplier=D.kd_supplier'+
    //        ' where C.category=''Bahan Kemasan'' and A.no_formula='+QuotedStr(EdNo_formula.Text)+''+
            ' Group by a.no_formula,a.gudang,a.kd_material_stok,a.kd_stok,a."index",a.satuan,'+
            ' a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jmlhkemasan,a.no_timbang,a.index2,'+
            ' a.satuankemasan,C.nm_material, C.Category, D.nm_supplier,A.iddetail '+
            ' order by iddetail ASC';
   Execute;
end;
QKemasan1.Open;
QKemasan1.First;
while not QKemasan1.Eof do
begin
MemKemasan.Insert;
MemKemasan['kd_material_stok']:=QKemasan1['kd_material_stok'];
MemKemasan['nm_material']:=QKemasan1['nm_material'];
MemKemasan['kd_supplier']:=QKemasan1['kd_supplier'];
MemKemasan['nm_supplier']:=QKemasan1['nm_supplier'];
MemKemasan['kd_stok']:=QKemasan1['kd_stok'];
MemKemasan['index']:=QKemasan1['index'];
MemKemasan['index2']:=QKemasan1['index2'];
MemKemasan['qtyperkemasan']:=QKemasan1['qtyperkemasan'];
MemKemasan['gudang']:=QKemasan1['gudang'];
MemKemasan['satuankemasan']:=QKemasan1['satuankemasan'];
MemKemasan['satuan']:=QKemasan1['satuan'];
MemKemasan['gudangtransit']:='';
MemKemasan['totalberi']:='0';
MemKemasan['totalterima']:='0';
MemKemasan.Post;
QKemasan1.Next;
end;}
end;

procedure TFNew_BonKmsnProd.EdNo_HasilSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  //sql.Text:='select * from t_hasil_produksi where nohasil='+QuotedStr(EdNo_Hasil.Text);
  ExecSQL;
end;
EdNo_SPk.Text:=Dm.Qtemp['no_spk_prod'];
EdShift.Text:=Dm.Qtemp['shift'];
EdKarton.Text:=dm.Qtemp['barang_jadi'];
Autonumber;
MemKemasan.Active:=true;
MemKemasan.EmptyTable;
MemKemasan2.First;
while not MemKemasan2.Eof do
begin
  MemKemasan.Insert;
  MemKemasan['kd_material_stok']:=MemKemasan2['kd_material'];
  MemKemasan['nm_material']:=MemKemasan2['nm_material'];
  MemKemasan['index']:=MemKemasan2['index2'];
  MemKemasan['index2']:=MemKemasan2['index'];
  MemKemasan['qtyperkemasan']:=MemKemasan2['qtyperkemasan'];
  MemKemasan.Post;
  MemKemasan2.Next;
end;
MemKemasan.First;
while not MemKemasan.Eof do
begin
  DBGridKemasanColEnter(sender);
  MemKemasan.Next;
end;
end;

procedure TFNew_BonKmsnProd.EdNo_SPkSelect(Sender: TObject);
begin
{with dm.Qtemp do
begin
  sql.Clear;
  sql.Text:='select Sum(jmlh_karton)as total ,no_spk_prod,no_formula from t_spk_prod_tmbng where no_spk_prod='+QuotedStr(EdNo_SPk.Text)+''+
            ' Group by no_spk_prod,no_formula';
  Execute;
end;
EdNo_FormulaChange(sender);
EdKarton.Text:=dm.Qtemp['total'];}
{with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='SELECT b.kd_material_stok,c.nm_material,e.nm_supplier,a.nm_produk,b.kd_stok,'+
            ' b."index",b.index2,b.qtyperkemasan,b.gudang,a.no_spk_prod,a.no_formula,a.notes,'+
            ' a.tgl_selesai,a.tgl_mulai,b.satuan,b.kd_supplier FROM t_spk_prod_tmbng AS "a" '+
            '	INNER JOIN t_spk_prod_tmbng_det AS b ON a.no_timbang = b.no_timbang '+
            '	INNER JOIN t_material_stok AS "c" ON b.kd_material_stok = c.kd_material_stok '+
	          ' INNER JOIN t_material AS d ON	c.kd_material = d.kd_material '+
            '	LEFT JOIN t_supplier e on b.kd_supplier=e.kd_supplier WHERE d.category = ''BAHAN KEMASAN'''+
            ' and a.no_spk_prod='+QuotedStr(EdNo_SPk.Text)+''+
            ' GROUP BY b.kd_material_stok,c.nm_material,e.nm_supplier,a.nm_produk,b.kd_stok,'+
            ' b."index",b.index2,b.qtyperkemasan,b.gudang,a.no_spk_prod,a.no_formula,a.notes,'+
            ' a.tgl_selesai,a.tgl_mulai,b.satuan,b.kd_supplier';
  ExecSQL;
end;
DM.Qtemp.First;
while not DM.Qtemp.Eof do
begin
  MemKemasan.Insert;
  MemKemasan['kd_material_stok']:=DM.Qtemp['kd_material_stok'];
  MemKemasan['nm_material']:=DM.Qtemp['nm_material'];
  MemKemasan['nm_supplier']:=DM.Qtemp['nm_supplier'];
  MemKemasan['kd_supplier']:=DM.Qtemp['kd_supplier'];
  MemKemasan['kd_stok']:=DM.Qtemp['kd_stok'];
  MemKemasan['index']:=DM.Qtemp['index'];
  MemKemasan['index2']:=DM.Qtemp['index2'];
  MemKemasan['qtyperkemasan']:=DM.Qtemp['qtyperkemasan'];
  MemKemasan['gudang']:=DM.Qtemp['gudang'];
  MemKemasan['satuan']:=DM.Qtemp['satuan'];
  MemKemasan.Post;
  DM.Qtemp.Next;
end;}
end;

procedure TFNew_BonKmsnProd.EdShiftSelect(Sender: TObject);
begin
//  Self.Autonumber;
end;

procedure TFNew_BonKmsnProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFNew_BonKmsnProd.FormCreate(Sender: TObject);
begin
  realfNew_bonkms:=self;
end;

procedure TFNew_BonKmsnProd.FormDestroy(Sender: TObject);
begin
realfnew_bonkms:=nil;
end;

procedure TFNew_BonKmsnProd.FormShow(Sender: TObject);
begin
  Self.Load;
 { QGudang.Close;
  QGudang.Open;}
end;

Procedure TFNew_BonKmsnProd.Load;
begin
EdNo_SPk.Clear;
if loksbu<>'' then
begin
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select no_spk_prod,no_formula from t_spk_prod where kd_sbu='+QuotedStr(loksbu)+' and status1=''1'' '+
              ' Group by no_spk_prod,no_formula order by no_spk_prod Asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNo_SPk.Items.Add(Dm.Qtemp['no_spk_prod']);
    Dm.Qtemp.Next;
  end;
//EdNo_Hasil.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_hasil_produksi where kd_sbu='+QuotedStr(loksbu)+' order by nohasil asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  //  EdNo_Hasil.Items.Add(Dm.Qtemp['nohasil']);
    Dm.Qtemp.Next;
  end;
  CbGudang.Clear;
with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_gudang where (category=''BAHAN KEMASAN'') and kd_sbu='+QuotedStr(loksbu)+' order by nm_gudang Asc';
    ExecSQL;
  end;
Dm.Qtemp2.First;
while not dm.Qtemp2.Eof do
begin
  CbGudang.Items.Add(Dm.Qtemp2.FieldByName('nm_gudang').AsString);
  Dm.Qtemp2.Next;
end;
end;
if loksbu='' then
begin
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select no_spk_prod,no_formula from t_spk_prod where status1=''1'''+
              ' Group by no_spk_prod,no_formula order by no_spk_prod Asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNo_SPk.Items.Add(Dm.Qtemp['no_spk_prod']);
    Dm.Qtemp.Next;
  end;
//EdNo_Hasil.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_hasil_produksi';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  //  EdNo_Hasil.Items.Add(Dm.Qtemp['nohasil']);
    Dm.Qtemp.Next;
  end;
  CbGudang.Clear;
with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_gudang where (category=''BAHAN KEMASAN'') order by nm_gudang Asc';
    ExecSQL;
  end;
Dm.Qtemp2.First;
while not dm.Qtemp2.Eof do
begin
  CbGudang.Items.Add(Dm.Qtemp2.FieldByName('nm_gudang').AsString);
  Dm.Qtemp2.Next;
end;
end;
end;
end.


