unit UNew_SPKProduksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, DBGridEh, DBCtrlsEh,
  DBLookupEh, MemTableEh, MemDS, DBAccess, Uni, DataDriverEh, RzEdit,
  Vcl.StdCtrls, Vcl.Mask, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.ExtCtrls,
  RzPanel, RzTabs, RzButton, RzCmboBx;

type
  TFNew_SPKProduksi = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSPKProduksi: TRzTabSheet;
    TabTimbang: TRzTabSheet;
    RzPanel1: TRzPanel;
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
    DBGridProduksi: TDBGridEh;
    Edno_spk: TRzEdit;
    DtMulai: TRzDateTimeEdit;
    DtSelasai: TRzDateTimeEdit;
    DBGridTimbang: TDBGridEh;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Qproduk: TUniQuery;
    DsProduk: TDataSource;
    MemSPkProd: TMemTableEh;
    DsSPKProd: TDataSource;
    Ednourut: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdNotes: TMemo;
    DsTimbang: TDataSource;
    MemTimbang: TMemTableEh;
    QTimbang: TUniQuery;
    DsdTimbang: TDataSetDriverEh;
    DBGridBaku: TDBGridEh;
    DBGridKimia: TDBGridEh;
    DBGridKemasan: TDBGridEh;
    QBaku: TUniQuery;
    DsBaku: TDataSource;
    QKimia: TUniQuery;
    DsKimia: TDataSource;
    DsKemasan: TDataSource;
    QKemasan: TUniQuery;
    EdNoFormula: TRzComboBox;
    TabSheet4: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridbaku2: TDBGridEh;
    DsBaku2: TDataSource;
    DsKimia2: TDataSource;
    DsKemasan2: TDataSource;
    MemBaku: TMemTableEh;
    Qkemasan2: TUniQuery;
    UniQuery1: TUniQuery;
    Qbaku2: TUniQuery;
    MemKimia: TMemTableEh;
    MemKemasan: TMemTableEh;
    EdNo_spktemp: TRzEdit;
    procedure BBatalClick(Sender: TObject);
    procedure DBGridTimbangColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSimpanClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGridTimbangDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNoFormulaSelect(Sender: TObject);
    procedure DBGridProduksiCellClick(Column: TColumnEh);
    procedure DBGridProduksiColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Autonumber;
    Procedure Timbang;
    Procedure Load;
    Procedure Autonumber2;
  end;

//var
Function FNew_SPKProduksi: TFNew_SPKProduksi;
var  kd_produk,thn,bln,nourut,tglno:string;

implementation

{$R *.dfm}

uses USPK_Produksi, UNew_SpkTimbangProd, UMainmenu, UDataModule;
var
  realfNew_spkprod : TFNew_SPKProduksi;
// implementasi function
function fNew_SPKproduksi: TFNew_SPKProduksi;
begin
  if realfNew_spkprod <> nil then
    FNew_SPKProduksi:= realfNew_spkprod
  else
    Application.CreateForm(TFNew_SPKProduksi, Result);
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

Procedure TFNew_spkProduksi.Autonumber2;
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='insert into t_spk_prodtemp(kd_sbu,pic,tgl)values(:parsbu,:parpic,:partgl)';
      ParamByName('parsbu').AsString:=loksbu;
      ParamByName('parpic').AsString:=Nm;
      ParamByName('partgl').AsString:=FormatDateTime('yyy-mm-dd',Now());
     // ParamByName('parnospk').AsString:=EdNo_spktemp.Text;
    Execute;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select Max(nospk)as urut from t_spk_prodtemp';
    Execute;
  end;
   EdNo_spktemp.Text:=dm.Qtemp['urut'];
end;

procedure TFNew_SPKProduksi.Autonumber;
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
 DecodeDate(DtMulai.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 thn:=FormatDateTime('yyy',DtMulai.Date);
 bln:=FormatDateTime('mm',DtMulai.Date);
 tglno:=FormatDateTime('dd',DtMulai.Date);
 maxmy:= (tglno+'/'+IntToRoman(strToint(mt)))+'/'+yn;

with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(no_urut)as urut from t_spk_prod where thn='+QuotedStr(thn)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp.FieldByName('urut').Value+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  Edno_spk.Text:= EditComplete+ '/'+maxmy + '/' + Kd_SBU;
  Ednourut.Text:=code;
end;

Procedure TFNew_SPKProduksi.Timbang;
begin
with QTimbang do
begin
  Close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_tmbng where no_spk_prod='+QuotedStr(EdNo_spktemp.Text);
  ExecSQL;
end;
QTimbang.Close;
QTimbang.Open;
MemTimbang.Close;
MemTimbang.Open;
end;

Procedure TFNew_SPKProduksi.Load;
begin
EdNoFormula.Clear;
if loksbu='' then
begin
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_master_formula where status=''True'' order by no_formula desc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    EdNoFormula.Items.Add(Dm.Qtemp['no_formula']);
    Dm.Qtemp.Next;
  end;
end;
if loksbu<>'' then
begin
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_master_formula where status=''True'' and  kd_sbu='+QuotedStr(loksbu)+' order by no_formula desc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    EdNoFormula.Items.Add(Dm.Qtemp['no_formula']);
    Dm.Qtemp.Next;
  end;
end;
end;

procedure TFNew_SPKProduksi.BBatalClick(Sender: TObject);
begin
  FSPK_Produksi.Show;
  FSPK_Produksi.dxBarrefreshClick(sender);
  close;
end;

procedure TFNew_SPKProduksi.BEditClick(Sender: TObject);
begin
if Edno_spk.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno_spk.SetFocus;
  Exit;
end;
if EdNoFormula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNoFormula.SetFocus;
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
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_spk_prod';
    ExecSQL;
  end;
    with dm.Qtemp do
    begin
      close;
      sql.Text;
      sql.Text:='delete from t_spk_prod where no_spk_prod='+QuotedStr(Edno_spk.Text);
      ExecSQL;
    end;
  MemSPkProd.First;
  while not MemSPkProd.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Text;
      sql.Text:='insert into t_spk_prod(shift, jumlah_timbang, tgl_mulai, tgl_selesai, '+
                ' jumlah_karton, nm_produk,no_spk_prod,no_formula,no_urut,notes,kd_sbu,thn,bln,tgl_no)'+
                ' values('+QuotedStr(MemSPkProd['regu'])+','+
                ''+QuotedStr(MemSPkProd['Timbang'])+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.date))+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelasai.date))+',''0'','+
                ''+QuotedStr(MemSPkProd['Produk'])+','+QuotedStr(Edno_spk.Text)+','+
                ''+QuotedStr(EdNoFormula.Text)+','+QuotedStr(Ednourut.Text)+','+
                ''+QuotedStr(EdNotes.Text)+','+QuotedStr(loksbu)+','+QuotedStr(thn)+','+QuotedStr(bln)+','+QuotedStr(tglno)+')';
      ExecSQL;
      MemSPkProd.Next;
    end;
  end;
 { MemSPkProd.First;
  while not MemSPkProd.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Text;
      sql.Text:='Update t_spk_prod set shift='+QuotedStr(MemSPkProd['regu'])+','+
                ' jumlah_timbang='+QuotedStr(MemSPkProd['Timbang'])+','+
                ' tgl_mulai='+QuotedStr(FormatDateTime('mm/dd/yyyy',DtMulai.date))+','+
                ' tgl_selesai='+QuotedStr(FormatDateTime('mm/dd/yyyy',DtSelasai.date))+','+
                ' jumlah_karton=''0'', nm_produk='+QuotedStr(MemSPkProd['Produk'])+','+
                ' no_spk_prod='+QuotedStr(Edno.Text)+','+
                ' no_formula='+QuotedStr(EdNoFormula.Text);
      ExecSQL;
      MemSPkProd.Next;
    end;
  end;  }
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

procedure TFNew_SPKProduksi.BSimpanClick(Sender: TObject);
begin
Autonumber;
if messageDlg ('Yakin Simpan ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
if Edno_spk.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno_spk.SetFocus;
  Exit;
end;
if EdNoFormula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNoFormula.SetFocus;
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
{MemBaku.First;
while not MemBaku.Eof do
begin
  if MemBaku['stok']< MemBaku['qty'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Stok '+MemBaku['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
Exit;
end;
MemBaku.Next;
end; }
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_spk_prod';
    ExecSQL;
  end;
  MemSPkProd.First;
  while not MemSPkProd.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Text;
      sql.Text:='insert into t_spk_prod(shift, jumlah_timbang, tgl_mulai, tgl_selesai, '+
                ' jumlah_karton, nm_produk,no_spk_prod,no_formula,no_urut,notes,kd_sbu,thn,bln,tgl_no,nourut,pic)'+
                ' values('+QuotedStr(MemSPkProd['regu'])+','+
                ''+QuotedStr(MemSPkProd['Timbang'])+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.date))+','+
                ''+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelasai.date))+',''0'','+
                ''+QuotedStr(MemSPkProd['Produk'])+','+QuotedStr(Edno_spk.Text)+','+
                ''+QuotedStr(EdNoFormula.Text)+','+QuotedStr(Ednourut.Text)+','+
                ''+QuotedStr(EdNotes.Text)+','+QuotedStr(loksbu)+','+QuotedStr(thn)+','+QuotedStr(bln)+','+
                ''+QuotedStr(tglno)+','+QuotedStr(nourut)+','+QuotedStr(nm)+')';
      ExecSQL;
      MemSPkProd.Next;
    end;
  end;
  with dm.QTemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='update t_spk_prod_tmbng set no_spk_prod='+QuotedStr(Edno_spk.Text)+' where no_spk_prod='+QuotedStr(EdNo_spktemp.Text);
    ExecSQL;
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
end;

procedure TFNew_SPKProduksi.DBGridProduksiCellClick(Column: TColumnEh);
begin
MemBaku.First;
while not MemBaku.Eof do
begin
MemBaku.Edit;
MemBaku['qty']:=MemBaku['index']*DBGridProduksi.Columns[2].Footer.sumvalue;
MemBaku.Post;
MemBaku.Next;
end;
{MemBaku.First;
while not MemBaku.Eof do
begin
  if MemBaku['stok']< MemBaku['qty'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Stok '+MemBaku['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
BSimpan.Enabled:=false;
end;
  if MemBaku['stok'] > MemBaku['qty'] then
begin
  BSimpan.Enabled:=True;
end;
MemBaku.Next;
end;       }
end;

procedure TFNew_SPKProduksi.DBGridProduksiColEnter(Sender: TObject);
begin
MemBaku.First;
while not MemBaku.Eof do
begin
MemBaku.Edit;
MemBaku['qty']:=MemBaku['index']*DBGridProduksi.Columns[2].Footer.sumvalue;
MemBaku.Post;
MemBaku.Next;
end;
{MemBaku.First;
while not MemBaku.Eof do
begin
  if MemBaku['stok']< MemBaku['qty'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Stok '+MemBaku['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
BSimpan.Enabled:=false;
end;
  if MemBaku['stok'] > MemBaku['qty'] then
begin
  BSimpan.Enabled:=True;
end;
MemBaku.Next;
end;     }
end;

procedure TFNew_SPKProduksi.DBGridTimbangColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
try
with FNew_SpkTimbangProd do
begin
  Clear;
  Show;
  EdNoSPk.Text:=EdNo_spktemp.Text;
  EdNo_formula.Text:=EdNoFormula.Text;
  BEdit.Visible:=False;
  BSimpan.Visible:=True;
{  MemBaku.EmptyTable;
  MemKimia.EmptyTable;
  MemKemasan.EmptyTable;
  MemKimia.Active:=False;
  MemBaku.Active:=False;
  MemKemasan.Active:=False;
  MemKimia.Active:=true;
  MemBaku.Active:=true;
  MemKemasan.Active:=true; }
  //FNew_SpkTimbangProd.Autonumber;
  FNew_SpkTimbangProd.DtMulai.Text:=FNew_SPKProduksi.DtMulai.Text;
  FNew_SpkTimbangProd.DtSelasai.Text:=FNew_SPKProduksi.DtSelasai.Text;
  FNew_SpkTimbangProd.EdProduk.Text:=kd_produk;
end;
except;
end;
end;

procedure TFNew_SPKProduksi.DBGridTimbangDblClick(Sender: TObject);
begin
  FNew_SpkTimbangProd.Show;
  FNew_SpkTimbangProd.EdProduk.Text:=MemTimbang['nm_produk'];
  FNew_SpkTimbangProd.Edkarton.Text:=MemTimbang['jmlh_karton'];
  FNew_SpkTimbangProd.EdNotes.Text:=MemTimbang['notes'];
  FNew_SpkTimbangProd.EdMesin.Text:=MemTimbang['mc'];
  FNew_SpkTimbangProd.EdNoSPk.Text:=MemTimbang['no_spk_prod'];
  FNew_SpkTimbangProd.Edtimbang.Text:=MemTimbang['jmlh_timbang'];
  FNew_SpkTimbangProd.EdNo_formula.Text:=MemTimbang['no_formula'];
  FNew_SpkTimbangProd.edno1.Text:=MemTimbang['no_timbang'];
  FNew_SpkTimbangProd.DtMulai.Text:=MemTimbang['tgl_mulai'];
  FNew_SpkTimbangProd.DtSelasai.Text:=MemTimbang['tgl_selesai'];
  FNew_SpkTimbangProd.BEdit.Visible:=true;
  FNew_SpkTimbangProd.BSimpan.Visible:=false;
if DBGridBaku.Fields[0].AsString='' then
begin
  FNew_SpkTimbangProd.DataBaku;
end else
 FNew_SpkTimbangProd.MemBaku.EmptyTable;
  QBaku.First;
  while not QBaku.Eof do
  begin
  with QBaku do
  begin
    FNew_SpkTimbangProd.MemBaku.Insert;
    FNew_SpkTimbangProd.MemBaku['Gudang']:=QBaku.FieldByName('Gudang').AsString;
    FNew_SpkTimbangProd.MemBaku['kd_material_stok']:=QBaku.FieldByName('kd_material_stok').AsString;
    FNew_SpkTimbangProd.MemBaku['nm_material']:=QBaku.FieldByName('nm_material').AsString;
    FNew_SpkTimbangProd.MemBaku['kd_stok']:=QBaku.FieldByName('kd_stok').AsString;
    FNew_SpkTimbangProd.MemBaku['index']:=QBaku.FieldByName('index').AsString;
    FNew_SpkTimbangProd.MemBaku['satuan']:=QBaku.FieldByName('satuan').AsString;
    FNew_SpkTimbangProd.MemBaku['kd_supplier']:=QBaku.FieldByName('kd_supplier').AsString;
    FNew_SpkTimbangProd.MemBaku['nm_supplier']:=QBaku.FieldByName('nm_supplier').AsString;
    FNew_SpkTimbangProd.MemBaku['ttlberat']:=QBaku.FieldByName('ttlberat').AsString;
    FNew_SpkTimbangProd.MemBaku['qtyperkemasan']:=QBaku.FieldByName('qtyperkemasan').AsString;
    FNew_SpkTimbangProd.MemBaku['totalkemasan']:=QBaku.FieldByName('jmlhkemasan').AsString;
    FNew_SpkTimbangProd.MemBaku['satuankemasan']:=QBaku.FieldByName('satuankemasan').AsString;
    FNew_SpkTimbangProd.MemBaku.Post;
    QBaku.Next;
  end;
  end;
if DBGridKimia.Fields[0].AsString='' then
begin
  FNew_SpkTimbangProd.DataKimia;
end else
  FNew_SpkTimbangProd.MemKimia.EmptyTable;
  QKimia.First;
  while not QKimia.Eof do
  begin
  with QBaku do
  begin
    FNew_SpkTimbangProd.MemKimia.Insert;
    FNew_SpkTimbangProd.MemKimia['Gudang']:=QKimia.FieldByName('Gudang').AsString;
    FNew_SpkTimbangProd.MemKimia['kd_material_stok']:=QKimia.FieldByName('kd_material_stok').AsString;
    FNew_SpkTimbangProd.MemKimia['nm_material']:=QKimia.FieldByName('nm_material').AsString;
    FNew_SpkTimbangProd.MemKimia['kd_stok']:=QKimia.FieldByName('kd_stok').AsString;
    FNew_SpkTimbangProd.MemKimia['index']:=QKimia.FieldByName('index').AsString;
    FNew_SpkTimbangProd.MemKimia['satuan']:=QKimia.FieldByName('satuan').AsString;
    FNew_SpkTimbangProd.MemKimia['kd_supplier']:=QKimia.FieldByName('kd_supplier').AsString;
    FNew_SpkTimbangProd.MemKimia['nm_supplier']:=QKimia.FieldByName('nm_supplier').AsString;
    FNew_SpkTimbangProd.MemKimia['ttlberat']:=QKimia.FieldByName('ttlberat').AsString;
    FNew_SpkTimbangProd.MemKimia['qtyperkemasan']:=QKimia.FieldByName('qtyperkemasan').AsString;
    FNew_SpkTimbangProd.MemKimia['totalkemasan']:=QKimia.FieldByName('jmlhkemasan').AsString;
    FNew_SpkTimbangProd.MemKimia['satuankemasan']:=QKimia.FieldByName('satuankemasan').AsString;
    FNew_SpkTimbangProd.MemKimia.Post;
    QKimia.Next;
  end;
  end;
if DBGridKemasan.Fields[0].AsString='' then
begin
  FNew_SpkTimbangProd.DataKemasan;
end else
  FNew_SpkTimbangProd.MemKemasan.EmptyTable;
  Qkemasan.First;
  while not Qkemasan.Eof do
  begin
  with Qkemasan do
  begin
    FNew_SpkTimbangProd.MemKemasan.Insert;
    FNew_SpkTimbangProd.MemKemasan['Gudang']:=Qkemasan.FieldByName('Gudang').AsString;
    FNew_SpkTimbangProd.MemKemasan['kd_material']:=Qkemasan.FieldByName('kd_material_stok').AsString;
    FNew_SpkTimbangProd.MemKemasan['nm_material']:=Qkemasan.FieldByName('nm_material').AsString;
    FNew_SpkTimbangProd.MemKemasan['kd_stok']:=Qkemasan.FieldByName('kd_stok').AsString;
    FNew_SpkTimbangProd.MemKemasan['index']:=Qkemasan.FieldByName('index').AsString;
    FNew_SpkTimbangProd.MemKemasan['index2']:=Qkemasan.FieldByName('index2').AsString;
    FNew_SpkTimbangProd.MemKemasan['satuan']:=Qkemasan.FieldByName('satuan').AsString;
    FNew_SpkTimbangProd.MemKemasan['kd_supplier']:=Qkemasan.FieldByName('kd_supplier').AsString;
    FNew_SpkTimbangProd.MemKemasan['nm_supplier']:=Qkemasan.FieldByName('nm_supplier').AsString;
    FNew_SpkTimbangProd.MemKemasan['totalberat']:=Qkemasan.FieldByName('ttlberat').AsString;
    FNew_SpkTimbangProd.MemKemasan['qtyperkemasan']:=Qkemasan.FieldByName('qtyperkemasan').AsString;
    FNew_SpkTimbangProd.MemKemasan['totalkemasan']:=Qkemasan.FieldByName('jmlhkemasan').AsString;
    FNew_SpkTimbangProd.MemKemasan['satuankemasan']:=QBaku.FieldByName('satuankemasan').AsString;
    FNew_SpkTimbangProd.MemKemasan.Post;
    Qkemasan.Next;
  end;
  end;
// FNew_SpkTimbangProd.OnShow(sender);
end;

procedure TFNew_SPKProduksi.EdNoFormulaSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_master_formula_test where no_formula='+QuotedStr(EdNoFormula.Text);
  ExecSQL;
end;
DtMulai.Date:=Dm.Qtemp['tgl_mulai_prod'];
DtSelasai.Date:=Dm.Qtemp['tgl_selesai_prod'];
kd_produk:=Dm.Qtemp['kd_produk'];
with Qproduk do
begin
  Close;
  SQL.Clear;
  sql.Text:='select * from t_produk where kd_produk='+QuotedStr(kd_produk);
  ExecSQL;
end;
MemBaku.EmptyTable;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' SELECT A.*,B."Outstanding" as stok,d.category,c.nm_material FROM t_master_formula_det a '+
            ' INNER JOIN t_material_stok_det b on a.kd_material_stok=b.kd_material_stok and '+
            ' a.kd_stok=b.kd_stok INNER JOIN t_material_stok c on b.kd_material_stok=c.kd_material_stok '+
            ' INNER JOIN t_material d on c.kd_material=d.kd_material '+
            ' WHERE no_formula='+QuotedStr(EdNoFormula.Text);//+'// and d.category=''BAHAN BAKU''';
  ExecSQL;
end;
DM.Qtemp.First;
while not DM.Qtemp.Eof do
begin
  MemBaku.Insert;
  MemBaku['kd_material']:=DM.Qtemp['kd_material_stok'];
  MemBaku['nm_material']:=dm.Qtemp['nm_material'];
  MemBaku['stok']:=dm.Qtemp['stok'];
  MemBaku['index']:=dm.Qtemp['index'];
  MemBaku.Post;
  DM.Qtemp.Next;
end;
end;

procedure TFNew_SPKProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_SPKProduksi.FormCreate(Sender: TObject);
begin
  realfNew_spkprod:=self;
end;

procedure TFNew_SPKProduksi.FormDestroy(Sender: TObject);
begin
realfNew_spkprod:=nil;
end;

procedure TFNew_SPKProduksi.FormShow(Sender: TObject);
begin
//MemTimbang.EmptyTable;
Self.Load;
Qproduk.Active:=False;
Qproduk.Active:=True;
QTimbang.Active:=False;
QTimbang.Active:=True;
MemTimbang.Active:=False;
MemTimbang.Active:=True;
QBaku.Active:=False;
QBaku.Active:=true;
QKimia.Active:=False;
QKimia.Active:=True;
QKemasan.Active:=False;
QKemasan.Active:=True;
MemSPkProd.Active:=False;
MemSPkProd.Active:=True;
MemBaku.Close;
MemBaku.Open;
MemKimia.Close;
MemKimia.Open;
MemKemasan.Close;
MemKemasan.Open;
{if Qproduk.Active=False then Qproduk.Active:=True;
if QTimbang.Active=False then QTimbang.Active:=True;
if QBaku.Active=False then QBaku.Active:=true;
if QKimia.Active=False Then QKimia.Active:=True;
if QKemasan.Active=false then QKemasan.Active:=True;
if MemSPkProd.Active=false then MemSPkProd.Active:=True;
if MemTimbang.Active=false then MemTimbang.Active:=True; }
end;

end.
