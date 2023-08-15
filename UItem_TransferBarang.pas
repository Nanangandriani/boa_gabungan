unit UItem_TransferBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, RzEdit;

type
  TFItem_TransferBarang = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Qbarang: TUniQuery;
    DsBarang: TDataSource;
    procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      statustr,category:string;
    Procedure Autonumber;
  end;

var
  FItem_TransferBarang: TFItem_TransferBarang;
  category,nourut:string;

implementation

{$R *.dfm}

uses UNew_TransferBarang, UMainmenu, UDataModule;

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

Procedure TFItem_TransferBarang.Autonumber;
  var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
    kd_mat :string;
begin
(*Find encode of the date*)
 DecodeDate(now, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
 with FNew_TransferBarang do
 begin
 Memdetail.First;
 while not Memdetail.Eof do
 begin
 kd_mat:=Memdetail['kd_material'];
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select "max"(nourut) as no_urut from t_terima_material_det '+
              ' where kd_material_stok='+QuotedStr(kd_mat)+''+
              ' and tahun='+QuotedStr(yr);
    open;
  end;
   if dm.Qtemp['no_urut']= '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['no_urut'] + 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  Memdetail.Edit;
  Memdetail['kd_stok_baru']:= Memdetail['no_material']+ '/'+Qbarang['kd_supplier']+'/'+EditComplete+'/'+kd_gdng+'/'+yn;
  Memdetail['nourut']:=EditComplete;
  Memdetail.Post;
  Memdetail.Next;
 end;
 end;
end;


procedure TFItem_TransferBarang.BBatalClick(Sender: TObject);
begin
   close;
end;

procedure TFItem_TransferBarang.BSimpanClick(Sender: TObject);
VAR I :integer;
begin
if DBGridEh1.SelectedRows.Count > 0 then
begin
with DBGridEh1.DataSource.DataSet do
begin
for i := 0 to DBGridEh1.SelectedRows.Count-1 do
begin
//GotoBookmark(Pointer(DBGridEh1.SelectedRows.Items[i]));
with FNew_TransferBarang do
begin
  Memdetail.Insert;
  Memdetail['kd_material']:=Qbarang.FieldByName('kd_material_stok').AsString;
  Memdetail['nm_material']:=Qbarang.FieldByName('nm_material').AsString;
  Memdetail['kd_stok_lama']:=Qbarang.FieldByName('kd_stok').AsString;
  Memdetail['satuan']:=Qbarang.FieldByName('satuan').AsString;
  Memdetail['qty']:=Qbarang.FieldByName('qty').AsString;
  Memdetail['no_material']:=Qbarang.FieldByName('no_material').AsString;
//  Memdetail['kd_stok_baru']:=autonumber;
 // Memdetail['ppn']:='10';
  Memdetail.Post;
end;
end;
end;
end;
Close;
FNew_TransferBarang.Memdetail.First;
while not FNew_TransferBarang.Memdetail.Eof do
begin
if FNew_TransferBarang.DBGriddetail.Fields[0].AsString='' then
begin
FNew_TransferBarang.Memdetail.Delete
  end;
  FNew_TransferBarang.Memdetail.Next;
end;
with FNew_TransferBarang do
begin
Memdetail.First;
while not Memdetail.Eof do
begin
with Dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select A.*,B.kd_material_stok from t_material A  inner join t_material_stok B '+
            ' on A.kd_material=B.kd_material where B.kd_material_stok='+QuotedStr(Memdetail['kd_material']);
  ExecSQL;
end;
category:=Dm.Qtemp['type'];
if category='2' then
begin
  Memdetail.Edit;
  Memdetail['kd_stok_baru']:=Memdetail['kd_material'];
  Memdetail.Post;
end else
Self.Autonumber;
Memdetail.Next;
end;
end;
end;

procedure TFItem_TransferBarang.DBGridEh1DblClick(Sender: TObject);
begin
with FNew_TransferBarang do
begin
  Memdetail.Insert;
  Memdetail['kd_material']:=Qbarang.FieldByName('kd_material_stok').AsString;
  Memdetail['nm_material']:=Qbarang.FieldByName('nm_material').AsString;
  Memdetail['kd_stok_lama']:=Qbarang.FieldByName('kd_stok').AsString;
  Memdetail['satuan']:=Qbarang.FieldByName('satuan').AsString;
  Memdetail['qty']:=Qbarang.FieldByName('qty').AsString;
  Memdetail['no_material']:=Qbarang.FieldByName('no_material').AsString;
//  Memdetail['kd_stok_baru']:=autonumber;
 // Memdetail['ppn']:='10';
  Memdetail.Post;
end;
Close;
FNew_TransferBarang.Memdetail.First;
while not FNew_TransferBarang.Memdetail.Eof do
begin
if FNew_TransferBarang.DBGriddetail.Fields[0].AsString='' then
begin
FNew_TransferBarang.Memdetail.Delete
  end;
  FNew_TransferBarang.Memdetail.Next;
end;
with FNew_TransferBarang do
begin
Memdetail.First;
while not Memdetail.Eof do
begin
{with Dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select A.*,B.kd_material_stok from t_material A  inner join t_material_stok B '+
            ' on A.kd_material=B.kd_material where B.kd_material_stok='+QuotedStr(Memdetail['kd_material']);
  ExecSQL;
end;
category:=Dm.Qtemp['type'];
if category='2' then
begin
  Memdetail.Edit;
  Memdetail['kd_stok_baru']:=Memdetail['kd_material'];
  Memdetail.Post;
end else  }
Self.Autonumber;
Memdetail.Next;
end;
end;
end;

end.
