unit UNew_SPKTimbangProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzTabs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  MemTableDataEh, Data.DB, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ComCtrls, RzEdit, RzCmboBx, Vcl.Mask, MemDS, DBAccess, Uni,
  Vcl.Buttons;

type
  TFNew_SpkTimbangProd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    EdNoSPk: TRzEdit;
    EdNo_formula: TRzEdit;
    EdMesin: TRzComboBox;
    EdNotes: TMemo;
    DtSelasai: TRzDateTimeEdit;
    DtMulai: TRzDateTimeEdit;
    Edtimbang: TRzEdit;
    Edkarton: TRzEdit;
    Label17: TLabel;
    Label18: TLabel;
    MemKimia: TMemTableEh;
    DsMemKimia: TDataSource;
    MemBaku: TMemTableEh;
    DsMemBaku: TDataSource;
    MemKemasan: TMemTableEh;
    DsKemasan: TDataSource;
    EdProduk: TRzComboBox;
    edno1: TEdit;
    PageControl1: TPageControl;
    TabBaku: TTabSheet;
    DBGridBaku: TDBGridEh;
    TabKimia: TTabSheet;
    DBGridKimia: TDBGridEh;
    TabKemasan: TTabSheet;
    DBGridKemasan: TDBGridEh;
    Qkimia: TUniQuery;
    Qkemasan: TUniQuery;
    QBaku: TUniQuery;
    MemKemasan2: TMemTableEh;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    MemBon: TMemTableEh;
    DsBon: TDataSource;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    MemDetailbon: TMemTableEh;
    DsDetailBon: TDataSource;
    Timer1: TTimer;
    Label19: TLabel;
    Label20: TLabel;
    CbGudang: TRzComboBox;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGridKemasanCellClick(Column: TColumnEh);
    procedure DBGridKimiaCellClick(Column: TColumnEh);
    procedure DBGridBakuCellClick(Column: TColumnEh);
    procedure DBGridKemasanColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdtimbangChange(Sender: TObject);
    procedure EdkartonChange(Sender: TObject);
    procedure DBGridKemasanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridKimiaColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridBakuColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridKimiaColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridBakuColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdNo_formulaChange(Sender: TObject);
    procedure DtSelasaiChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridKemasanColExit(Sender: TObject);
    procedure DBGridKimiaColExit(Sender: TObject);
    procedure DBGridBakuColExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Clear;
    Procedure DataBaku;
    Procedure DataKimia;
    Procedure DataKemasan;
    Procedure Autonumber;
    Procedure Autonumberbon;
    procedure load;
  end;

//var
 Function FNew_SpkTimbangProd: TFNew_SpkTimbangProd;
var  nobon,code:string;
     maxmy  : string;

implementation

{$R *.dfm}

uses UDatamodule, UNew_SPKProduksi, USearch_SuppSPKProd,UMainmenu,
  USearch_MatSPKProd;
var
  realfNew_spktmbng : TFNew_SpkTimbangProd;
// implementasi function
function fNew_SPKTimbangProd: TFNew_SpkTimbangProd;
begin
  if realfNew_spktmbng <> nil then
    FNew_SpkTimbangProd:= realfNew_spktmbng
  else
    Application.CreateForm(TFNew_SpkTimbangProd, Result);
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

PROCEDURE TFNew_SpkTimbangProd.load;
begin
EdMesin.Clear;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_mesin where kd_sbu='+QuotedStr(loksbu);
    ExecSQL;
  end;
Dm.Qtemp.First;
while not dm.Qtemp.Eof do
begin
EdMesin.Items.Add(Dm.Qtemp.FieldByName('mc').AsString);
Dm.Qtemp.Next;
end;
CbGudang.Clear;
with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_gudang where (category=''BAHAN KEMASAN'' OR category=''LAIN-LAIN'') and kd_sbu='+QuotedStr(loksbu);
    ExecSQL;
  end;
Dm.Qtemp2.First;
while not dm.Qtemp2.Eof do
begin
  CbGudang.Items.Add(Dm.Qtemp2.FieldByName('nm_gudang').AsString);
Dm.Qtemp2.Next;
end;
end;

procedure TFNew_spkTimbangprod.Clear;
begin
  EdNoSPk.Text:='';
  EdNo_formula.Text:='';
  Edproduk.Text:='';
  EdMesin.Text:='';
  EdNotes.Text:='';
  DtMulai.Text:='';
  DtSelasai.Text:='';
  MemKimia.EmptyTable;
  MemBaku.EmptyTable;
  MemKemasan.EmptyTable;
end;

Procedure TFNEw_spkTimbangprod.Autonumber;
var no:string;
  i:Integer;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(no_timbang)as no from t_spk_prod_tmbng';
    ExecSQL;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      no := '1'
   else
      no:= IntToStr(dm.Qtemp['no']+ 1);
   if length(no) < 10 then
    begin
     for i := length(no) to 2 do
      no := '0' + no;
    end;
  edno1.Text:=no;
end;

Procedure TFNEw_spkTimbangprod.Autonumberbon;
{begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(nobon)as no from t_spk_prod_bon';
    ExecSQL;
  end;
  if dm.Qtemp['no']=Null then nobon:='1'
  else
  nobon:=inttostr(Dm.Qtemp['no']+1); }
    var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
//    code   : string;
    //urutan   : string;
    EditComplete : string;
//    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(now, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(nobon)as no from t_spk_prod_bon';
    open;
  end;
   if dm.Qtemp['no'] = null then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['no']+ 1);
 {  if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;      }
  EditComplete:=CODE;
  nobon:= EditComplete+ '/'+maxmy + '/' + kd_sbu;
end;

procedure TFNew_spkTimbangprod.DataBaku;
begin
with QBaku do
begin
  Close;
  sql.clear;
  sql.Text:='select A.*,C.nm_material, C.Category, D.nm_supplier, B.kd_material from '+
            ' t_master_formula_det A '+
            ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
            ' inner join t_material C on B.kd_material=C.kd_material '+
            ' Left join t_supplier D on B.kd_supplier=D.kd_supplier  '+
            ' where C.category=''BAHAN BAKU'' and A.no_formula='+QuotedStr(EdNo_formula.Text)+''+
            ' order by iddetail Desc ';
  ExecSQL;
end;
QBaku.Close;
QBaku.Open;
MemBaku.Active:=True;
MemBaku.EmptyTable;
QBaku.First;
while not QBaku.Eof do
begin
  Membaku.Insert;
  MemBaku['kd_material_stok']:=QBaku.FieldByName('kd_material_stok').AsString;
  MemBaku['nm_material']:=QBaku.FieldByName('nm_material').AsString;
  MemBaku['kd_stok']:=QBaku.FieldByName('kd_stok').AsString;
  MemBaku['nm_supplier']:=QBaku.FieldByName('nm_supplier').AsString;
  MemBaku['kd_supplier']:=QBaku.FieldByName('kd_supplier').AsString;
  MemBaku['gudang']:=QBaku.FieldByName('gudang').AsString;
  MemBaku['index']:=QBaku.FieldByName('index').AsString;
  MemBaku['qtyperkemasan']:=QBaku.FieldByName('qtyperkemasan').AsString;
  MemBaku['satuan']:=QBaku.FieldByName('satuan').AsString;
  MemBaku['satuankemasan']:=QBaku.FieldByName('satuankemasan').AsString;
  MemBaku.Post;
  QBaku.Next;
end;
end;

procedure TFNew_SpkTimbangProd.DataKimia;
begin
 with Qkimia do
begin
  Close;
  sql.clear;
  sql.Text:='select A.*,C.nm_material, C.Category, D.nm_supplier, B.kd_material from '+
            ' t_master_formula_det A '+
            ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok '+
            ' inner join t_material C on B.kd_material=C.kd_material '+
            ' Left join t_supplier D on B.kd_supplier=D.kd_supplier  '+
            ' where C.category=''KIMIA'' and A.no_formula='+QuotedStr(EdNo_formula.Text)+''+
            ' order by iddetail Desc ';
  ExecSQL;
end;
Qkimia.Close;
Qkimia.Open;
MemKimia.Active:=True;
MemKimia.EmptyTable;
Qkimia.First;
while not Qkimia.Eof do
begin
  MemKimia.Insert;
  MemKimia['kd_material_stok']:=Qkimia['kd_material_stok'];
  MemKimia['nm_material']:=Qkimia['nm_material'];
  MemKimia['index']:=Qkimia['index'];
  MemKimia['qtyperkemasan']:=Qkimia['qtyperkemasan'];
  MemKimia['kd_stok']:=Qkimia.FieldByName('kd_stok').AsString;
  MemKimia['nm_supplier']:=Qkimia.FieldByName('nm_supplier').AsString;
  MemKimia['kd_supplier']:=Qkimia.FieldByName('kd_supplier').AsString;
  MemKimia['gudang']:=Qkimia.FieldByName('gudang').AsString;
  MemKimia['satuan']:=Qkimia.FieldByName('satuan').AsString;
  MemKimia['satuankemasan']:=Qkimia.FieldByName('satuankemasan').AsString;
  MemKimia.Post;
  Qkimia.Next;
end;
{begin
  MemKimia.Insert;
  MemKimia['kd_material_stok']:=Qkimia.FieldByName('kd_material').AsString;
  MemKimia['nm_material']:=Qkimia.FieldByName('nm_material').AsString;
  MemKimia['index']:=Qkimia.FieldByName('index').AsString;
  MemKimia['qtyperkemasan']:=Qkimia.FieldByName('qtyperkemasan').AsString;
  MemKimia.Post;
  Qkimia.Next;
end;}
end;

procedure TFNew_SpkTimbangProd.DataKemasan;
begin
MemKemasan.Active:=true;
MemKemasan.EmptyTable;
MemKemasan2.First;
while not MemKemasan2.Eof do
begin
  MemKemasan.Insert;
  MemKemasan['kd_material']:=MemKemasan2['kd_material'];
  MemKemasan['nm_material']:=MemKemasan2['nm_material'];
  MemKemasan['index']:=MemKemasan2['index'];
  MemKemasan['index2']:=MemKemasan2['index2'];
  MemKemasan['qtyperkemasan']:=MemKemasan2['qtyperkemasan'];
  MemKemasan.Post;
  MemKemasan2.Next;
end;
end;

procedure TFNew_SpkTimbangProd.DBGridBakuCellClick(Column: TColumnEh);
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridBakuColExit(Sender: TObject);
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridBakuColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_MatSPKProd.Show;
  with FSearch_MatSPKProd.qmaterial do
begin
  close;
  sql.Clear;
  sql.Text:='select item_code,item_name from t_item where group_id='''''+//''Bahan Baku''
  ' order by order_no ASC ';
  ExecSQL;
end;
  FSearch_MatSPKProd.Qmaterial.Open;
  FSearch_MatSPKProd.DBGridBaku.Visible:=True;
  FSearch_MatSPKProd.DBGridKimia.Visible:=False;
  FSearch_MatSPKProd.DBGridKemasan.Visible:=False;
end;

procedure TFNew_SpkTimbangProd.DBGridBakuColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_SuppSPKProd.Show;
  with FSearch_SuppSPKProd.QSupplier do
begin
  close;
  sql.Clear;
  sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C.qty,'+
            ' B.satuan, C.Gudang ,D.konversi from t_supplier A '+
            ' inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
            ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
            ' inner join t_konversi_material D on B.kd_material=D.kd_material'+
            ' where B.kd_material='+QuotedStr(MemBaku['kd_material_stok']);
  ExecSQL;
end;
  FSearch_SuppSPKProd.QSupplier.Open;
  FSearch_SuppSPKProd.DBGridKemasan.Visible:=false;
  FSearch_SuppSPKProd.DBGridBaku.Visible:=True;
  FSearch_SuppSPKProd.DBGridKimia.Visible:=False;
end;

procedure TFNew_SpkTimbangProd.DBGridKemasanCellClick(Column: TColumnEh);
begin
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
  MemKemasan['totalberat']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['totalkemasan']:=(MemKemasan['totalberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridKemasanColExit(Sender: TObject);
begin
   MemKemasan.Edit;
  if MemKemasan['index']='1/320' then
   begin
   MemKemasan['index2']:='0,1875';
   MemKemasan['qtyperkemasan']:='50';
   end;
  if MemKemasan['index']='1/430' then
  begin
   MemKemasan['index2']:='0,1395';
   MemKemasan['qtyperkemasan']:='40';
  end;
  MemKemasan['totalberat']:=MemKemasan['index2']*StrToFloat(EdKarton.Text);
  MemKemasan['totalkemasan']:=(MemKemasan['totalberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridKemasanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_MatSPKProd.Show;
  with FSearch_MatSPKProd.Qmaterial do
begin
  close;
  sql.Clear;
  sql.Text:='select kd_material,nm_material,no_urut from t_material '+
            ' where category=''BAHAN KEMASAN'' order by no_urut ASC ';
  ExecSQL;
end;
  FSearch_MatSPKProd.Qmaterial.Open;
  FSearch_MatSPKProd.DBGridBaku.Visible:=False;
  FSearch_MatSPKProd.DBGridKimia.Visible:=False;
  FSearch_MatSPKProd.DBGridKemasan.Visible:=True;
end;

procedure TFNew_SpkTimbangProd.DBGridKemasanColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_SuppSPKProd.Show;
  with FSearch_SuppSPKProd.QSupplier do
begin
  close;
  sql.Clear;
  sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok,C.qty,'+
            ' B.satuan,C.Gudang,D.konversi from t_supplier A '+
            ' inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
            ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
            ' inner join t_konversi_material D on B.kd_material=D.kd_material'+
            ' inner JOIN t_material e on b.kd_material=e.kd_material and b.no_material=e.no_material'+
            ' where B.kd_material='+QuotedStr(MemKemasan['kd_material'])+' and c.gudang='+QuotedStr(CbGudang.Text)+''+
            ' Order by c.iddetail,kd_stok asc';
  ExecSQL;
end;
  FSearch_SuppSPKProd.QSupplier.Open;
  FSearch_SuppSPKProd.DBGridKemasan.Visible:=True;
  FSearch_SuppSPKProd.DBGridBaku.Visible:=False;
  FSearch_SuppSPKProd.DBGridKimia.Visible:=False;
end;

procedure TFNew_SpkTimbangProd.DBGridKimiaCellClick(Column: TColumnEh);
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridKimiaColExit(Sender: TObject);
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia.Post;
end;

procedure TFNew_SpkTimbangProd.DBGridKimiaColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_MatSPKProd.Show;
  with FSearch_MatSPKProd.Qmaterial do
begin
  close;
  sql.Clear;
  sql.Text:='select kd_material,nm_material,no_urut from t_material'+
            ' where category=''Kimia'' order by no_urut ASC ';
  ExecSQL;
end;
  FSearch_MatSPKProd.Qmaterial.Open;
  FSearch_MatSPKProd.DBGridBaku.Visible:=False;
  FSearch_MatSPKProd.DBGridKimia.Visible:=True;
  FSearch_MatSPKProd.DBGridKemasan.Visible:=False;
end;

procedure TFNew_SpkTimbangProd.DBGridKimiaColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FSearch_SuppSPKProd.Show;
  with FSearch_SuppSPKProd.QSupplier do
begin
  close;
  sql.Clear;
  sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C.qty,'+
            ' B.satuan, C.Gudang ,D.konversi from t_supplier A '+
            ' inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
            ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
            ' inner join t_konversi_material D on B.kd_material=D.kd_material'+
            ' where B.kd_material='+QuotedStr(MemKimia['kd_material_stok']);
  ExecSQL;
end;
  FSearch_SuppSPKProd.QSupplier.Open;
  FSearch_SuppSPKProd.DBGridKemasan.Visible:=false;
  FSearch_SuppSPKProd.DBGridBaku.Visible:=False;
  FSearch_SuppSPKProd.DBGridKimia.Visible:=True;
end;

procedure TFNew_SpkTimbangProd.DtSelasaiChange(Sender: TObject);
begin
//MemBon.First;
//while not MemBon.Eof do
//begin
{  MemBon.Active:=True;     dinonaktifkan ds 16/08-21
  MemBon.EmptyTable;
  Autonumberbon;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.Date;
  MemBon['no_bon']:=Code+ '/'+maxmy + '/' + kd_sbu ;
  MemBon['nobon']:=Code;
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+1;
  MemBon['no_bon']:=inttostr(StrToInt(code)+1)+ '/'+maxmy + '/'+ kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+1);
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+2;
  MemBon['no_bon']:=inttostr(StrToInt(code)+2)+ '/'+maxmy + '/'+ kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+2);
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+3;
  MemBon['no_bon']:=inttostr(StrToInt(code)+3)+ '/'+maxmy + '/'+ kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+3);
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+4;
  MemBon['no_bon']:=inttostr(StrToInt(code)+4)+ '/'+maxmy + '/' + kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+4);
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+5;
  MemBon['no_bon']:=inttostr(StrToInt(code)+5)+ '/'+maxmy + '/' + kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+5);
  MemBon.Post;
  MemBon.insert;
  MemBon['tgl_bon']:=DtMulai.date+6;
  MemBon['no_bon']:=inttostr(StrToInt(code)+6)+ '/'+maxmy + '/' + kd_sbu;
  MemBon['nobon']:=inttostr(StrToInt(code)+6);
  MemBon.Post;    }
//  MemBon.Next;
//end;
end;

procedure TFNew_SpkTimbangProd.EdkartonChange(Sender: TObject);
begin
if Edkarton.Text='' then Edkarton.Text:='0';
MemKemasan.First;
while not MemKemasan.Eof do
begin
  DBGridKemasanColExit(sender);
  MemKemasan.Next;
end;
{MemDetailbon.First;
while not MemDetailbon.Eof do
begin
  MemDetailbon.edit;
  MemDetailbon['jmlh_timbang']:=FloatToStr((StrToFloat(Edtimbang.Text)/7)/3);
  MemDetailbon['jmlh_karton']:=FloatToStr((StrToFloat(Edkarton.Text)/7)/3);
  MemDetailbon.Post;
  MemDetailbon.Next;
end;  }
end;

procedure TFNew_SpkTimbangProd.EdNo_formulaChange(Sender: TObject);
begin
DataBaku;
DataKimia;
DataKemasan;
Edtimbang.Text:='0';
Edkarton.Text:='0';
end;

procedure TFNew_SpkTimbangProd.EdtimbangChange(Sender: TObject);
begin
if Edtimbang.Text='' then Edtimbang.Text:='0';
MemBaku.First;
while not MemBaku.Eof do
begin
  DBGridBakuColExit(Sender);
  MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
  DBGridKimiaColExit(Sender);
  MemKimia.Next;
end;
{MemBon.First;
while not MemBon.Eof do
begin
  MemBon.edit;
  MemBon['jmlh_timbang']:=FloatToStr(StrToFloat(Edtimbang.Text)/7);
  MemBon.Post;
  MemBon.Next;
end;   }
// nonaktif ds 16-08-2021
{MemDetailbon.First;
while not MemDetailbon.Eof do
begin
  MemDetailbon.edit;
  MemDetailbon['jmlh_timbang']:=FloatToStr((StrToFloat(Edtimbang.Text)/7));
  MemDetailbon['jmlh_karton']:=FloatToStr((StrToFloat(Edkarton.Text)/7));
  MemDetailbon.Post;
  MemDetailbon.Next;
end;         }
end;

procedure TFNew_SpkTimbangProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_SpkTimbangProd.FormCreate(Sender: TObject);
begin
  realfNew_spktmbng:=self;
end;

procedure TFNew_SpkTimbangProd.FormDestroy(Sender: TObject);
begin
  realfNew_spktmbng:=nil;
end;

procedure TFNew_SpkTimbangProd.FormShow(Sender: TObject);
begin
//  MemBon.Close;
 // Membon.Open;
 MemKemasan2.Close;
 MemKemasan2.Open;
 MemBaku.Close;
 MemBaku.Open;
 MemKimia.Close;
 MemKimia.Open;
 MemKemasan.Close;
 MemKemasan.Open;
 load;
end;

procedure TFNew_SpkTimbangProd.BBatalClick(Sender: TObject);
begin
  Close;
  FNew_SPKProduksi.Show;
  FNew_SPKProduksi.Timbang;
  MemBon.Active:=false;
  Membon.Active:=True;
end;

procedure TFNew_SpkTimbangProd.BEditClick(Sender: TObject);
begin
if Edno1.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno1.SetFocus;
  Exit;
end;
if EdNo_formula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_formula.SetFocus;
  Exit;
end;
if EdProduk.Text='' then
begin
  MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdProduk.SetFocus;
  Exit;
end;
if Edtimbang.Text='0' then
begin
  MessageDlg('JUmlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edtimbang.SetFocus;
  Exit;
end;
if DtMulai.Text='' then
begin
  messagedlg('Tanggal Mulai Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtMulai.SetFocus;
  Exit;
end;
if DtSelasai.Text='' then
begin
  MessageDlg('Tanggal selesai Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtSelasai.SetFocus;
  Exit;
end;
{if Edkarton.Text='' then
begin
  MessageDlg('Jumlah Karton Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edkarton.SetFocus;
  Exit;
end; }
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_tmbng';
  ExecSQL;
end;

with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' update t_spk_prod_tmbng set nm_produk=:parnm_produk,no_spk_prod=:parno_spk_prod,'+
            ' no_formula=:parno_formula,tgl_mulai=:partgl_mulai,tgl_selesai=:partgl_selesai,'+
            ' jmlh_timbang=:parjmlh_timbang,jmlh_karton=:parjmlh_karton,notes=:parnotes,'+
            ' mc=:parmc,kd_sbu=:parkd_sbu where no_timbang=:parno_timbang';
            ParamByName('Parnm_produk').Value:=EdProduk.Text;
            ParamByName('parno_spk_prod').Value:=EdNoSPk.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('partgl_mulai').Value:=FormatDateTime('yyyy-mm-dd',DtMulai.date);
            ParamByName('partgl_selesai').Value:=FormatDateTime('yyyy-mm-dd',DtSelasai.date);
            ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
            ParamByName('parjmlh_karton').Value:=EdKarton.Text;
            ParamByName('parnotes').Value:=EdNotes.Text;
            ParamByName('parmc').Value:=EdMesin.Text;
            ParamByName('parno_timbang').Value:=edno1.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
  ExecSQL;
end;

with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_tmbng_det';
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='delete from t_spk_prod_tmbng_det where no_timbang='+QuotedStr(edno1.Text);
  ExecSQL;
end;
MemBaku.First;
while not MemBaku.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan) '+    //
            ' values(:parno_timbang,:parno_formula,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :parjmlhkemasan,:parsatuankemasan)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemBaku['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
            ParamByName('parindex').Value:=MemBaku['index'];
            ParamByName('parsatuan').Value:=MemBaku['satuan'];
            ParamByName('parkd_supplier').Value:=MemBaku['kd_supplier'];
            ParamByName('parttlberat').Value:=MemBaku['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemBaku['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemBaku['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemBaku['satuankemasan'];
  ExecSQL;
end;
  MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan) '+    //
            ' values(:parno_timbang,:parno_formula,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :parjmlhkemasan,:parsatuankemasan)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemKimia['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
            ParamByName('parindex').Value:=MemKimia['index'];
            ParamByName('parsatuan').Value:=MemKimia['satuan'];
            ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemKimia['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
  ExecSQL;
end;
  MemKimia.Next;
end;
MemKemasan.First;
while not MemKemasan.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan,index2) '+    //
            ' values(:parno_timbang,:parno_formula,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :parjmlhkemasan,:parsatuankemasan,:parindex2)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemKemasan['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material'];
            ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
            ParamByName('parindex').Value:=MemKemasan['index'];
            ParamByName('parsatuan').Value:=MemKemasan['satuan'];
            ParamByName('parkd_supplier').Value:=MemKemasan['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKemasan['totalberat'];
            ParamByName('parqtyperkemasan').Value:=MemKemasan['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemKemasan['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKemasan['satuankemasan'];
            ParamByName('parindex2').Value:=MemKemasan['index2'];
  ExecSQL;
end;
  MemKemasan.Next;
end;
 dm.koneksi.Commit;
Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
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

procedure TFNew_SpkTimbangProd.BSimpanClick(Sender: TObject);
begin
Autonumber;
if Edno1.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno1.SetFocus;
  Exit;
end;
if EdNo_formula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_formula.SetFocus;
  Exit;
end;
if EdProduk.Text='' then
begin
  MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdProduk.SetFocus;
  Exit;
end;
if Edtimbang.Text='0' then
begin
  MessageDlg('JUmlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edtimbang.SetFocus;
  Exit;
end;
if DtMulai.Text='' then
begin
  messagedlg('Tanggal Mulai Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtMulai.SetFocus;
  Exit;
end;
if DtSelasai.Text='' then
begin
  MessageDlg('Tanggal selesai Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtSelasai.SetFocus;
  Exit;
end;
if Edkarton.Text='' then
begin
  MessageDlg('Jumlah Karton Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edkarton.SetFocus;
  Exit;
end;
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_tmbng';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng(nm_produk,no_spk_prod,no_formula,tgl_mulai,'+
            ' tgl_selesai,jmlh_timbang,jmlh_karton,notes,mc,no_timbang,kd_sbu)values'+
            '(:parnm_produk,:parno_spk_prod,:parno_formula,:partgl_mulai,:partgl_selesai,'+
            ' :parjmlh_timbang,:parjmlh_karton,:parnotes,:parmc,:parno_timbang,:parkd_sbu)';
            ParamByName('Parnm_produk').Value:=EdProduk.Text;
            ParamByName('parno_spk_prod').Value:=EdNoSPk.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('partgl_mulai').Value:=FormatDateTime('yyyy-mm-dd',DtMulai.date);
            ParamByName('partgl_selesai').Value:=FormatDateTime('yyyy-mm-dd',DtSelasai.date);
            ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
            ParamByName('parjmlh_karton').Value:=EdKarton.Text;
            ParamByName('parnotes').Value:=EdNotes.Text;
            ParamByName('parmc').Value:=EdMesin.Text;
            ParamByName('parno_timbang').Value:=edno1.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
       //     ParamByName('parnospk').Value:='';
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_tmbng_det';
  ExecSQL;
end;
MemBaku.First;
while not MemBaku.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan) values(:parno_timbang,'+
            ' :parno_formula,:pargudang,:parkd_material_stok, :parkd_stok,:parindex,'+
            ' :parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :parjmlhkemasan,:parsatuankemasan)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemBaku['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
            ParamByName('parindex').Value:=MemBaku['index'];
            ParamByName('parsatuan').Value:=MemBaku['satuan'];
            ParamByName('parkd_supplier').Value:=MemBaku['kd_supplier'];
            ParamByName('parttlberat').Value:=MemBaku['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemBaku['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemBaku['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemBaku['satuankemasan'];
  ExecSQL;
end;
  MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan) '+    //
            ' values(:parno_timbang,:parno_formula,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,   '+
            ' :parqtyperkemasan,:parjmlhkemasan,:parsatuankemasan)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemKimia['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
            ParamByName('parindex').Value:=MemKimia['index'];
            ParamByName('parsatuan').Value:=MemKimia['satuan'];
            ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
            ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemKimia['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
  ExecSQL;
end;
  MemKimia.Next;
end;
{MemKemasan.First;
while not MemKemasan.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_tmbng_det(no_timbang,no_formula,gudang, '+
            ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
            ' qtyperkemasan , jmlhkemasan,satuankemasan,index2) '+    //
            ' values(:parno_timbang,:parno_formula,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :parjmlhkemasan,:parsatuankemasan,:parindex2)';
            ParamByName('parno_timbang').Value:=Edno1.Text;
            ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('pargudang').Value:=MemKemasan['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material'];
            ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
            ParamByName('parindex').Value:=MemKemasan['index'];
            ParamByName('parsatuan').Value:=MemKemasan['satuan'];
            ParamByName('parkd_supplier').Value:=MemKemasan['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKemasan['totalberat'];
            ParamByName('parqtyperkemasan').Value:=MemKemasan['qtyperkemasan'];
            ParamByName('parjmlhkemasan').Value:=MemKemasan['totalkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKemasan['satuankemasan'];
            ParamByName('parindex2').Value:=MemKemasan['index2'];
  ExecSQL;
end;
  MemKemasan.Next;
end;    }
{MemBon.First;
while not MemBon.Eof do
begin
MemDetailbon.First;
while not MemDetailbon.Eof do
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
  sql.Text:=' insert into t_spk_prod_bon(no_timbang,tgl_bon,jmlh_timbang,jmlh_karton,shift,'+
            ' no_bon,nobon,status) '+
            ' values(:parno_timbang,:partgl_bon,:parjmlh_timbang,:parjmlh_karton,:parshift,'+
            ' :parno_bon,:parnobon,:parstatus)';
            ParamByName('parno_timbang').value:=EdNo1.Text;
            ParamByName('partgl_bon').Value:=FormatDateTime('yyyy-mm-dd',MemBon['tgl_bon']);
            ParamByName('parjmlh_timbang').Value:=MemDetailbon['jmlh_timbang'];
            ParamByName('parjmlh_karton').Value:=MemDetailbon['jmlh_karton'];
            ParamByName('parshift').Value:=MemDetailbon['shift'];
            ParamByName('parno_bon').Value:=MemBon['no_bon'];
            ParamByName('parnobon').Value:=MemBon['nobon'];
            ParamByName('parstatus').Value:='Created';
  ExecSQL;
end;
  MemDetailbon.Next;
end;
  MemBon.Next;
end;
MemBon.First;
while not MemBon.Eof do
begin
MemDetailbon.First;
while not MemDetailbon.Eof do
begin
MemBaku.First;
while not MemBaku.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang,kd_material_stok,'+
            ' kd_stok, "index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan, '+
            ' satuankemasan,totalterima,totalberi,gudangtransit,shift)'+
            ' values(:parno_bon,:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,'+
            ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :partotalkemasan,:parsatuankemasan,:partotalterima,:partotalberi,   '+
            ' :pargudangtransit,:parshift)';
            ParamByName('parno_bon').Value:=MemBon['no_bon'];
            ParamByName('parno_formula').Value:=edNo_formula.Text;
            ParamByName('pargudang').Value:=MemBaku['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
            ParamByName('parindex').Value:=MemBaku['index'];
            ParamByName('parsatuan').Value:=MemBaku['satuan'];
            ParamByName('parkd_supplier').Value:=MemBaku['kd_supplier'];
            ParamByName('parttlberat').Value:=MemBaku['index']*MemDetailbon['jmlh_timbang'];
            ParamByName('parqtyperkemasan').Value:=MemBaku['qtyperkemasan'];
            ParamByName('partotalkemasan').Value:=(MemBaku['index']*MemDetailbon['jmlh_timbang'])/MemBaku['qtyperkemasan'];
            ParamByName('parsatuankemasan').Value:=MemBaku['satuankemasan'];
            ParamByName('partotalterima').Value:=0;
            ParamByName('partotalberi').Value:=0;
            ParamByName('pargudangtransit').Value:='';
            ParamByName('parshift').Value:=MemDetailbon['shift'];
  ExecSQL;
end;
  MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang,kd_material_stok,'+
            ' kd_stok, "index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan, '+
            ' satuankemasan,totalterima,totalberi,gudangtransit,shift)'+
            ' values(:parno_bon,:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,'+
            ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :partotalkemasan,:parsatuankemasan,:partotalterima,:partotalberi,   '+
            ' :pargudangtransit,:parshift)';
            ParamByName('parno_bon').Value:=MemBon['no_bon'];
            ParamByName('parno_formula').Value:=edNo_formula.Text;
            ParamByName('pargudang').Value:=MemKimia['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
            ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
            ParamByName('parindex').Value:=MemKimia['index'];
            ParamByName('parsatuan').Value:=MemKimia['satuan'];
            ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKimia['index']*MemDetailbon['jmlh_timbang'];
            ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
            ParamByName('partotalkemasan').Value:=(MemKimia['index']*MemDetailbon['jmlh_timbang'])/MemBaku['qtyperkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
            ParamByName('partotalterima').Value:=0;
            ParamByName('partotalberi').Value:=0;
            ParamByName('pargudangtransit').Value:='';
            ParamByName('parshift').Value:=MemDetailbon['shift'];
  ExecSQL;
end;
  MemKimia.Next;
end;
MemKemasan.First;
while not MemKemasan.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang,kd_material_stok,'+
            ' kd_stok, "index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan, '+
            ' satuankemasan,totalterima,totalberi,gudangtransit,shift,"index2")'+
            ' values(:parno_bon,:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,'+
            ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :partotalkemasan,:parsatuankemasan,:partotalterima,:partotalberi,   '+
            ' :pargudangtransit,:parshift,:parindex2)';
            ParamByName('parno_bon').Value:=MemBon['no_bon'];
            ParamByName('parno_formula').Value:=edNo_formula.Text;
            ParamByName('pargudang').Value:=MemKemasan['Gudang'];
            ParamByName('parkd_material_stok').Value:=MemKemasan['kd_material'];
            ParamByName('parkd_stok').Value:=MemKemasan['kd_stok'];
            ParamByName('parindex').Value:=MemKemasan['index2'];
            ParamByName('parsatuan').Value:=MemKemasan['satuan'];
            ParamByName('parkd_supplier').Value:=MemKemasan['kd_supplier'];
            ParamByName('parttlberat').Value:=MemKemasan['index2']*MemDetailbon['jmlh_timbang'];
            ParamByName('parqtyperkemasan').Value:=MemKemasan['qtyperkemasan'];
            ParamByName('partotalkemasan').Value:=(MemKemasan['index2']*MemDetailbon['jmlh_timbang'])/MemBaku['qtyperkemasan'];
            ParamByName('parsatuankemasan').Value:=MemKemasan['satuankemasan'];
            ParamByName('partotalterima').Value:=0;
            ParamByName('partotalberi').Value:=0;
            ParamByName('pargudangtransit').Value:='';
            ParamByName('parshift').Value:=MemDetailbon['shift'];
            ParamByName('parindex2').Value:=MemKemasan['index'];
  ExecSQL;
end;
  MemKemasan.Next;
end;
  MemDetailbon.Next;
end;
  MemBon.Next;
end;                }
 dm.koneksi.Commit;
Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
BBatalClick(sender);
end
Except
on E :Exception do
begin
MessageDlg(E.Message,mtError,[MBok],0);
dm.koneksi.Rollback;
end;
end;
//Timer1Timer(sender);
end;

end.
