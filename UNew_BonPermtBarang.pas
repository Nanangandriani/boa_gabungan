unit UNew_BonPermtBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, MemDS,
  DBAccess, Uni, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzEdit, Vcl.Mask;

type
  TFNew_BonPermtBarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DtPeriode: TRzDateTimeEdit;
    Edno: TRzEdit;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    EdStatus: TEdit;
    Edno_urut: TEdit;
    MemMaterial: TMemTableEh;
    DsMaterial: TDataSource;
    procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status:integer;
    thn,bln,tgl,nourut:string;
    procedure simpan;
    procedure update;
    procedure Autonumber;
  end;

//var
function FNew_BonPermtBarang: TFNew_BonPermtBarang;

implementation

{$R *.dfm}

uses umainmenu,UBonPermt_Barang, UCari_Barang, UDataModule;
 var
  RealFNew_BonPermtBarang: TFNew_BonPermtBarang;
function FNew_BonPermtBarang: TFNew_BonPermtBarang;
begin
  if RealFNew_BonPermtBarang <> nil then
    FNew_BonPermtBarang:= RealFNew_BonPermtBarang
  else
    Application.CreateForm(TFNew_BonPermtBarang, Result);
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

procedure TFNew_BonPermtBarang.Autonumber;
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
  thn:=FormatDateTime('yyyy',DtPeriode.Date);
  bln:=FormatDateTime('mm',DtPeriode.Date);
  tgl:=FormatDateTime('dd',DtPeriode.Date);
 DecodeDate(DtPeriode.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= tgl+'/'+(IntToRoman(strToint(mt)))+'/'+yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(order_no)as urut from t_item_request where trans_year='+QuotedStr(thn)+' and trans_month='+QuotedStr(bln)+' and date_no='+QuotedStr(tgl);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  nourut:=code;
  EdNo.Text:= EditComplete+ '/'+maxmy + '/'+ kdsbu;
end;

procedure TFNew_BonPermtBarang.BBatalClick(Sender: TObject);
begin
  FBonPermt_Barang.ActRoExecute(sender);
  close;
end;

procedure TFNew_BonPermtBarang.BSimpanClick(Sender: TObject);
begin
//ShowMessage(QuotedStr(IntToStr(status)));
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      if status=0 then
      begin
        simpan;
      end;
      if status=1 then
      begin
        update;
      end;
      MemMaterial.EmptyTable;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
      BBatalClick(sender);
    end
    Except
    on E :Exception do
      begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
      end;
  end;
  close;
end;

procedure TFNew_BonPermtBarang.DBGridEh1Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_Barang do
  begin
    Show;
    QBarang.Close;
    QBarang.open;
    status_tr:='BonBarang';
  end;
end;

procedure TFNew_BonPermtBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_BonPermtBarang.FormCreate(Sender: TObject);
begin
  RealFNew_BonPermtBarang:=Self;
end;

procedure TFNew_BonPermtBarang.FormDestroy(Sender: TObject);
begin
  RealFNew_BonPermtBarang:=nil;
end;

procedure TFNew_BonPermtBarang.FormShow(Sender: TObject);
begin
  MemMaterial.Close;
  MemMaterial.Open;
end;

Procedure TFNew_BonPermtBarang.Simpan;
begin
  Autonumber;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='insert into t_item_request(trans_date,trans_no,status,status_app,order_no,kdsbu,date_no,trans_year,trans_month,created_by)'+
              ' values(:tgl,:notrans,:status,:status_app,:urut,:kdsbu,:tgl_no,:thn,:bln,:pic)';
              ParamByName('tgl').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
              ParamByName('notrans').Value:=Edno.Text;
              Parambyname('status').Value:='0';
              ParamByName('status_app').Value:='0';
              ParamByName('kdsbu').value:=loksbu;
              ParamByName('urut').Value:=nourut;
              ParamByName('tgl_no').Value:=tgl;
              ParamByName('thn').Value:=thn;
              ParamByName('bln').Value:=bln;
              ParamByName('pic').Value:=nm;
    ExecSQL;
  end;
  MemMaterial.First;
  while not MemMaterial.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_item_request_det(item_code,qty,trans_no,unit,note)'+
                ' values(:kd_material,:qty,:notrans,:satuan,:ket)';
                ParamByName('kd_material').Value:=MemMaterial['kd_material'];
                ParamByName('qty').Value:=MemMaterial['qty'];
                ParamByName('notrans').Value:=Edno.Text;
                Parambyname('satuan').Value:=MemMaterial['satuan'];
                Parambyname('ket').Value:=MemMaterial['ket'];
      ExecSQL;
    end;
    MemMaterial.Next;
  end;
end;

Procedure TFNew_BonPermtBarang.Update;
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='update t_permt_barang2 set tgl_permt=:tgl_permt,pic=:pic where notrans=:notrans';
            ParamByName('tgl_permt').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
            ParamByName('notrans').Value:=Edno.Text;
            ParamByName('pic').Value:=nm;
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='delete from t_permt_barang2_det where notrans='+QuotedStr(Edno.Text);
  ExecSQL;
end;
MemMaterial.First;
while not MemMaterial.Eof do
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_permt_barang2_det(kd_material,qty,notrans,satuan,ket)'+
            ' values(:kd_material,:qty,:notrans,:satuan,:ket)';
            ParamByName('kd_material').Value:=MemMaterial['kd_material'];
            ParamByName('qty').Value:=MemMaterial['qty'];
            ParamByName('notrans').Value:=Edno.Text;
            Parambyname('satuan').Value:=MemMaterial['satuan'];
            Parambyname('ket').Value:=MemMaterial['ket'];
  ExecSQL;
end;
  MemMaterial.Next;
end;
end;
end.
