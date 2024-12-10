unit UNew_ResultFormula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, DataDriverEh, MemDS, DBAccess,
  Uni, DBLookupEh, Vcl.DBCtrls, DBCtrlsEh, Vcl.Mask, RzCmboBx, DBVertGridsEh,
  Vcl.Grids, RzEdit, RzButton, Vcl.ExtCtrls;

type
  TFNew_resultFormula = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGridEh1: TDBGridEh;
    MemResult_for: TMemTableEh;
    DsResult_For: TDataSource;
    EdKesimpulan: TComboBox;
    edPersetujuan: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edket: TMemo;
    EdNo_Formula: TRzComboBox;
    Memresult1: TMemTableEh;
    Dsresult: TDataSource;
    EdNo_spk: TRzComboBox;
    Label12: TLabel;
    Label13: TLabel;
    DtTrial: TRzDateTimeEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdProduk: TRzComboBox;
    Label9: TLabel;
    Label14: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    procedure EdNo_spkSelect(Sender: TObject);
    procedure EdProdukChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure Load;
    Procedure Clear;
  end;

Function FNew_resultFormula: TFNew_resultFormula;
var  EditNo,yr,thn,bln,tglno,nourut : string;

implementation

{$R *.dfm}

uses UDatamodule, UResult_Formula, UMainmenu;
var RealFNew_resultFormula: TFNew_resultFormula;
function FNew_resultFormula: TFNew_resultFormula;
begin
  if RealFNew_resultFormula <> nil then FNew_resultFormula:= RealFNew_resultFormula
  else  Application.CreateForm(TFNew_resultFormula, Result);
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

procedure TFNew_ResultFormula.Autonumber;
  var i      : integer;
    urut   : integer;
    mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(dtTrial.Date, yy,M,d );
 thn:=FormatDateTime('yyy',DtTrial.Date);
 bln:=FormatDateTime('mm',DtTrial.Date);
 tglno:=FormatDateTime('dd',DtTrial.Date);
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (tglno+'/'+IntToRoman(strToint(mt)))+'/'+yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_result_formula where tahun='+QuotedStr(yr)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp.RecordCount+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
    nourut:=code;
 //   EditNo:=CODE+ '/'+maxmy + '/' + Kd_SBU;
end;

Procedure TFNew_ResultFormula.Load;
begin
  EdNo_spk.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_spk_formula WHERE spk_no in (select spk_no from t_spk_formula EXCEPT select spk_no from t_result_formula) and sbu_code='+QuotedStr(loksbu)+'';
    //sql.Text:='select * from t_spk_formula WHERE status=''1''';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    EdNo_spk.Items.Add(Dm.Qtemp['spk_no']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFNew_resultFormula.BBatalClick(Sender: TObject);
begin
 close;
 FResult_Formula.Show;
 FResult_Formula.ActROExecute(sender);
end;

procedure TFNew_resultFormula.BEditClick(Sender: TObject);
begin
  if EdNo_spk.Text='' then
begin
  MessageDlg('SPK Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_spk.SetFocus;
  Exit;
end;
if DtTrial.Text='' then
begin
  MessageDlg('Tanggal Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTrial.SetFocus;
  Exit;
end;
if EdKesimpulan.Text='' then
begin
  messagedlg('Kesimpulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdKesimpulan.SetFocus;
  Exit;
end;
{if edPersetujuan.Text='' then
begin
  MessageDlg('Persetujuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edPersetujuan.SetFocus;
  Exit;
end;   }
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='Update t_result_formula set spk_no='+QuotedStr(EdNo_spk.Text)+','+
            ' formula_no='+QuotedStr(EdNo_Formula.Text)+','+
            ' product_name='+QuotedStr(EdProduk.Text)+','+
            ' conclusion='+QuotedStr(EdKesimpulan.Text)+','+
	          ' agreement='+QuotedStr(edPersetujuan.Text)+','+
            ' trans_date='+QuotedStr(FormatDateTime('mm-dd-yyy',DtTrial.date))+','+
            ' notes='+QuotedStr(Edket.Text)+', trans_year='+QuotedStr(yr)+','+
            ' sbu_code='+QuotedStr(loksbu)+''+
            ' where result_no='+QuotedStr(EditNo);
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='Delete from t_result_formula_det where result_no='+QuotedStr(EditNo);
  ExecSQL;
end;

MemResult_for.First;
while not MemResult_for.Eof do
begin
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_result_formula_det(result_no,code,deskription,standard,trial)values'+
            '('+QuotedStr(EditNo)+','+QuotedStr(MemResult_for['Kode'])+','+
            ''+QuotedStr(MemResult_for['Deskripsi'])+','+
            ''+QuotedStr(MemResult_for['standard'])+','+
            ''+QuotedStr(MemResult_for['trial'])+')';
  ExecSQL;
end;
MemResult_for.Next;
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

procedure TFNew_resultFormula.BSimpanClick(Sender: TObject);
begin
Autonumber;
if MessageDlg('Yakin Simpan ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
begin
  if EdNo_spk.Text='' then
begin
  MessageDlg('SPK Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_spk.SetFocus;
  Exit;
end;
if DtTrial.Text='' then
begin
  MessageDlg('Tanggal Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTrial.SetFocus;
  Exit;
end;
if EdKesimpulan.Text='' then
begin
  messagedlg('Kesimpulan Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdKesimpulan.SetFocus;
  Exit;
end;
{if edPersetujuan.Text='' then
begin
  MessageDlg('Persetujuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edPersetujuan.SetFocus;
  Exit;
end;    }
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_result_formula(result_no,spk_no,formula_no,product_name,conclusion,'+
	          ' agreement,trans_date,note,trasn_year,sbu_code,trans_month,trans_day,order_no)values('+QuotedStr(EditNo)+','+
            ''+QuotedStr(EdNo_spk.Text)+','+QuotedStr(EdNo_Formula.Text)+','+
            ''+QuotedStr(EdProduk.Text)+','+QuotedStr(EdKesimpulan.Text)+','+
            ''+QuotedStr(edPersetujuan.Text)+','+QuotedStr(FormatDateTime('mm-dd-yyy',DtTrial.date))+','+
            ''+QuotedStr(Edket.Text)+','+QuotedStr(yr)+','+QuotedStr(loksbu)+','+QuotedStr(bln)+','+''+
            ''+QuotedStr(tglno)+','+QuotedStr(nourut)+')';
  ExecSQL;
end;
MemResult_for.First;
while not MemResult_for.Eof do
begin
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_result_formula_det(result_no,code,description,standard,trial)values'+
            '('+QuotedStr(EditNo)+','+QuotedStr(MemResult_for['Kode'])+','+
            ''+QuotedStr(MemResult_for['Deskripsi'])+','+
            ''+QuotedStr(MemResult_for['standard'])+','+
            ''+QuotedStr(MemResult_for['trial'])+')';
  ExecSQL;
end;
MemResult_for.Next;
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

Procedure TFNew_resultFormula.Clear;
begin
  Memresult1.Close;
  MemResult1.Open;
  MemResult_for.Close;
  MemResult_for.Open;
  EdKesimpulan.Text:='';
  edPersetujuan.Text:='';
  Edket.Text:='';
  EdNo_Formula.Text:='';
  EdNo_spk.Text:='';
  EdProduk.Text:='';
  MemResult_for.EmptyTable;
  Load;
end;

procedure TFNew_resultFormula.EdNo_spkSelect(Sender: TObject);
begin
  MemResult_for.EmptyTable;
  with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_spk_formula where spk_no='+QuotedStr(EdNo_spk.Text);
      ExecSQL;
    end;
  EdNo_Formula.Text:=dm.Qtemp['formula_no'];
  EdProduk.Text:=dm.Qtemp['product_code'];
  DtTrial.Date:=dm.Qtemp['trial_date'];
  EdProdukChange(sender);
end;

procedure TFNew_resultFormula.EdProdukChange(Sender: TObject);
begin
{with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_standard_test where kd_produk='+QuotedStr(EdProduk.Text)+''+
            ' order by idtest Desc';
  ExecSQL;
end;
Dm.Qtemp.First;
while not dm.Qtemp.Eof do
begin
  MemResult_for.Insert;
  MemResult_for['kode']:=dm.Qtemp['kode'];
  MemResult_for['Deskripsi']:=dm.Qtemp['deskripsi'];
  MemResult_for['Standard']:=Dm.Qtemp['standard'];
  MemResult_for.Post;
  Dm.Qtemp.Next;
end;
with dm.Qtemp do
begin
  sql.Clear;
  sql.Text:='SELECt round(avg(berat::numeric),2) as Brt, round(avg(lama_bakar::numeric),2) '+
            'as lama, avg(tensile) as tens, round(avg(strength::numeric),2) as st,'+
            ' Round(avg(ket_rata2::numeric),1) as  tebal , round(avg(kadar_air)) as kadar '+
            ' FROM t_formula_testbakar_det A INNER JOIN t_formula_testbakar B on '+
            ' A.no_test=B.no_test where B.no_spk='+QuotedStr(EdNo_spk.Text);//+''+
          //  ' and B.nm_produk='+QuotedStr(EdProduk.Text);
  ExecSQL;
end;
MemResult_for.First;
while not MemResult_for.Eof do
begin
MemResult_for.Edit;
if MemResult_for['Kode']='B' then MemResult_for['Trial']:=dm.Qtemp['brt'];
if MemResult_for['Kode']='L' then MemResult_for['Trial']:=Dm.Qtemp['lama'];
if MemResult_for['Kode']='K' then MemResult_for['Trial']:=Dm.Qtemp['kadar'];
if MemResult_for['Kode']='T' then MemResult_for['Trial']:=dm.Qtemp['tens'];
if MemResult_for['Kode']='S' then MemResult_for['Trial']:=Dm.Qtemp['st'];
if MemResult_for['Kode']='KT' then MemResult_for['Trial']:=Dm.Qtemp['tebal'];
if MemResult_for['Kode']='' then MemResult_for['Trial']:=MemResult_for['Standard'];
MemResult_for.Post;
MemResult_for.Next;
end;       }
end;

procedure TFNew_resultFormula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_resultFormula.FormCreate(Sender: TObject);
begin
  RealFNew_resultFormula:=self;
end;

procedure TFNew_resultFormula.FormDestroy(Sender: TObject);
begin
  RealFNew_resultFormula:=nil;
end;

procedure TFNew_resultFormula.FormShow(Sender: TObject);
begin
  MemResult_for.Close;
  MemResult_for.Open;
  Memresult1.Close;
  Memresult1.Open;
  Load;
end;

end.
