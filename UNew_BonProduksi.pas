unit UNew_BonProduksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBGridEh, MemTableDataEh, Data.DB, MemDS,
  DBAccess, Uni, DataDriverEh, MemTableEh, RzDBEdit, RzButton, Vcl.ExtCtrls,
  DBCtrlsEh, DBLookupEh, EhLibVCL, GridsEh, DBAxisGridsEh, Vcl.ComCtrls, RzEdit,
  Vcl.StdCtrls, Vcl.Mask, RzCmboBx, RzDTP, RzBtnEdt;

type
  TFNew_BonProduksi = class(TForm)
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
    PageControl1: TPageControl;
    TabBaku: TTabSheet;
    DBGridBaku: TDBGridEh;
    TabKimia: TTabSheet;
    DBGridKimia: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    MemKemasan2: TMemTableEh;
    DsMemKimia: TDataSource;
    DsMemBaku: TDataSource;
    DsKemasan: TDataSource;
    Qkimia: TUniQuery;
    QBaku: TUniQuery;
    Qkemasan: TUniQuery;
    MemBaku: TMemTableEh;
    MemTableEh1: TMemTableEh;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    MemKimia: TMemTableEh;
    Label4: TLabel;
    Label8: TLabel;
    EdNo_SPk: TRzComboBox;
    EdNo_Formula: TRzComboBox;
    EdTimbang: TRzEdit;
    QGudang: TUniQuery;
    DsGudang: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    Edgroup: TRzEdit;
    Label13: TLabel;
    Label14: TLabel;
    edproduk: TRzEdit;
    Label15: TLabel;
    Label16: TLabel;
    edmesin: TRzEdit;
    TabKemasan: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    EdKarton: TRzEdit;
    DBGridKemasan: TDBGridEh;
    MemKemasan: TMemTableEh;
    CbGudang: TComboBox;
    CbGudang2: TComboBox;
    CbGudang3: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    CbSpk_Timbang: TRzButtonEdit;
    Button1: TButton;
    Label27: TLabel;
    Label28: TLabel;
    EdTimbang2: TRzNumericEdit;
    EdSisa: TRzNumericEdit;
    Label29: TLabel;
    Label30: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EdTimbangChange(Sender: TObject);
    procedure EdNo_FormulaChange(Sender: TObject);
    procedure DBGridBakuColEnter(Sender: TObject);
    procedure DBGridKimiaColEnter(Sender: TObject);
    procedure DBGridBakuCellClick(Column: TColumnEh);
    procedure DBGridKimiaCellClick(Column: TColumnEh);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGridKemasanColEnter(Sender: TObject);
    procedure DBGridKemasanCellClick(Column: TColumnEh);
    procedure EdKartonChange(Sender: TObject);
    procedure CbGudangChange(Sender: TObject);
    procedure CbGudang2Change(Sender: TObject);
    procedure CbGudang3Change(Sender: TObject);
    procedure CbSpk_TimbangSelect(Sender: TObject);
    procedure DBGridBakuColExit(Sender: TObject);
    procedure DBGridKimiaColExit(Sender: TObject);
    procedure CbSpk_TimbangButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdSisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Load;
    Procedure Clear;
    Procedure SimpanMaterial;
  end;


Function  FNew_BonProduksi: TFNew_BonProduksi;
var
  Status, notimbang,bln,thn,pakaitb,nourut:string;
  statustrans:integer;

implementation

{$R *.dfm}

uses UDatamodule, UBon_Produksi, umainmenu, USearch_SpkTimbang;
var
  realfNewBonProd : TFNew_BonProduksi;
// implementasi function
function fNew_bonProduksi: TFNew_BonProduksi;
begin
  if realfNewBonProd <> nil then
    FNew_BonProduksi:= realfNewBonProd
  else
    Application.CreateForm(TFNew_BonProduksi, Result);
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

procedure TFNew_BonProduksi.Autonumber;
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
 maxmy:= (IntToRoman(strToint(mt)))+'/'+yn;
 bln:=FormatDateTime('mm',DtTanggal.Date);
 thn:=yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(nourut) urut from t_spk_prod_bon where bln='+QuotedStr(bln)+' and thn='+QuotedStr(thn);
    open;
  end;
   if dm.Qtemp['urut'] = '' then
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
  EdNo.Text:= EditComplete+ '/'+maxmy + '/'+ kd_sbu;
end;

procedure TFNew_BonProduksi.CbGudang2Change(Sender: TObject);
begin
MemKimia.First;
while not MemKimia.Eof do
begin
  MemKimia.Edit;
  MemKimia['gudangtransit']:=CbGudang2.Text;
  MemKimia.Post;
  MemKimia.Next;
end;
end;

procedure TFNew_BonProduksi.CbGudang3Change(Sender: TObject);
begin
MemKemasan.First;
while not MemKemasan.Eof do
begin
  MemKemasan.Edit;
  MemKemasan['gudangtransit']:=CbGudang3.Text;
  MemKemasan.Post;
  MemKemasan.Next;
end;
end;

procedure TFNew_BonProduksi.CbGudangChange(Sender: TObject);
begin
MemBaku.First;
while not MemBaku.Eof do
begin
  MemBaku.Edit;
  MemBaku['gudangtransit']:=CbGudang.Text;
  MemBaku.Post;
  MemBaku.Next;
end;
end;

procedure TFNew_BonProduksi.CbSpk_TimbangSelect(Sender: TObject);
begin
//if statustrans=1 then
//begin
{with dm.Qtemp do
begin
  sql.Clear;
  sql.Text:='select Sum(jmlh_timbang)as total,no_spk_prod,no_formula,nm_produk,no_timbang,mc from t_spk_prod_tmbng where no_timbang='+QuotedStr(CbSpk_Timbang.Text)+''+
            ' Group by no_spk_prod,no_formula,nm_produk,no_timbang,mc';
  Execute;
end;
EdNo_SPk.Text:=DM.Qtemp['no_spk_prod'];
edmesin.Text:= dm.Qtemp['mc'];
edproduk.Text:=DM.Qtemp['nm_produk'];
EdNo_Formula.Text:=Dm.Qtemp['no_formula'];
EdTimbang.Text:=dm.Qtemp['total'];       }
EdNo_FormulaChange(sender);
//end else
//CbSpk_Timbang.Text:=FBon_Produksi.MemBonProduksi['no_timbang'];
end;

Procedure TFNew_BonProduksi.Clear;
begin
  MemBaku.Active:=false;
  MemBaku.Active:=true;
  MemKimia.Active:=false;
  MemKimia.Active:=true;
   EdNo.Text:='';
   EdNo_SPk.Text:='';
   EdNo_Formula.Text:='';
   EdTimbang.Text:='0';
   DtTanggal.Date:=now;
   MemBaku.EmptyTable;
   MemKimia.EmptyTable;
   MemKemasan.EmptyTable;
end;

Procedure TFnew_BonProduksi.SimpanMaterial;
begin
MemBaku.First;
while not membaku.Eof do
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_material_stok_prod_det where ' +
            'kd_material_stok='+QuotedStr(MemBaku['kd_material_stok'])+''+
            ' and kd_stok='+QuotedStr(MemBaku['kd_stok']);
  Execute;
end;
if dm.Qtemp.RecordCount > 0 then
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='	Update t_material_stok_prod_det set qty=qty + :parqty  '+
              ' where kd_material_stok=:parkd_material_stok and kd_stok=:parkd_stok';
              ParamByName('parqty').Value:=Membaku['totalterima'];
              ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
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
              ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
              ParamByName('parqty').Value:=MemBaku['totalterima'];
              ParamByName('parsatuan').Value:=MemBaku['satuan'];
              ParamByName('parqtyout').Value:=0;
              ParamByName('pargudang').Value:=MemBaku['gudang'];
    Execute;
  end;
end;
 MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_material_stok_prod_det where ' +
            'kd_material_stok='+QuotedStr(MemKimia['kd_material_stok'])+''+
            ' and kd_stok='+QuotedStr(MemKimia['kd_stok']);
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
              ParamByName('parqty').Value:=MemKimia['totalterima'];
              ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];;
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
              ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
              ParamByName('parqty').Value:=MemKimia['totalterima'];
              ParamByName('parsatuan').Value:=MemKimia['satuan'];
              ParamByName('parqtyout').Value:=0;
              ParamByName('pargudang').Value:=MemKimia['gudang'];
    Execute;
  end;
end;
 MemKimia.Next;
end;
{MemKemasan.First;
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
end;     }
end;

procedure TFNew_BonProduksi.BBatalClick(Sender: TObject);
begin
CLOSE;
FBon_Produksi.dxBarRefreshClick(sender);
end;

procedure TFNew_BonProduksi.BEditClick(Sender: TObject);
begin
if Edno.Text='' then
begin
  MessageDlg('No Bon Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno.SetFocus;
  Exit;
end;
if DtTanggal.Text='' then
begin
  MessageDlg('Tanggal BON Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTanggal.SetFocus;
  Exit;
end;
if Edgroup.Text='' then
begin
  MessageDlg('Group Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edgroup.SetFocus;
  Exit;
end;
if edproduk.Text='' then
begin
  MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edproduk.SetFocus;
  Exit;
end;
if edmesin.Text='' then
begin
  MessageDlg('Mesin Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edmesin.SetFocus;
  Exit;
end;
if EdNo_SPk.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_SPk.SetFocus;
  Exit;
end;
if EdNo_formula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_formula.SetFocus;
  Exit;
end;
if Edtimbang.Text='0' then
begin
  MessageDlg('JUmlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edtimbang.SetFocus;
  Exit;
end;
if Edkarton.Text='' then
begin
  MessageDlg('Jumlah Karton Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edkarton.SetFocus;
  Exit;
end;
if status<>'Created' then
begin
if CbGudang.Text='' then
begin
  MessageDlg('Gudang Transit Bahan Baku Tidak boleh Kosong ',MtWarning,[MbOk],0);
  CbGudang.SetFocus;
  Exit;
end;
if CbGudang2.Text='' then
begin
  MessageDlg('Gudang Transit Bahan Kimia Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Cbgudang2.SetFocus;
  Exit;
end;
end;
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
{with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_bon';
  ExecSQL;
end;       }
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' update t_spk_prod_bon set no_timbang=:parno_timbang,tgl_bon=:partgl_bon,'+
            ' jmlh_timbang=:parjmlh_timbang,jmlh_karton=:parjmlh_karton,status=:parstatus,'+
            ' kd_sbu=:parkd_sbu,'+//,bln=:parbln,thn=:parthn,
            ' gudang=:pargudang,gudang2=:pargudang2,pakaitb=:parpakaitb,sisatb=:parsisatb,'+
            ' qtytb=:parqtytb where no_bon=:parno_bon';
            ParamByName('parno_timbang').Value:=CbSpk_Timbang.Text;
            ParamByName('parjmlh_karton').Value:=EdKarton.Text;
            ParamByName('partgl_bon').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
            ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
            ParamByName('parstatus').Value:=status;
          //  ParamByName('parshift').Value:=Edgroup.Text;
            ParamByName('parno_bon').Value:=EdNo.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
          //  ParamByName('parbln').Value:=bln;
           // ParamByName('parthn').Value:=thn;
            ParamByName('pargudang').Value:=CbGudang.Text;
            ParamByName('pargudang2').Value:=CbGudang2.Text;
            ParamByName('parsisatb').Value:=EdSisa.Value;
            ParamByName('parpakaitb').value:=pakaitb;
            ParamByName('parqtytb').Value:=Edtimbang2.value;
  ExecSQL;
end;
{with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_bon_det';
  ExecSQL;
end; }

with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='Delete from t_spk_prod_bon_det where no_bon='+QuotedStr(EdNo.Text);
  ExecSQL;
end;
MemBaku.First;
while not MemBaku.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,shift,gudang,kd_material_stok,'+
              ' kd_stok,"index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan,'+
              ' satuankemasan,totalberi,totalterima,gudangtransit,status) '+    //
              ' values(:parno_bon,:parno_formula,:parshift,:pargudang,:parkd_material_stok,'+
              ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
              ' :partotalkemasan,:parsatuankemasan,:partotalberi,:partotalterima,'+
              ' :pargudangtransit,:parstatus)';
              ParamByName('parno_bon').Value:=Edno.Text;
              ParamByName('parno_formula').Value:=EdNo_formula.Text;
              ParamByName('parshift').Value:=Edgroup.Text;
              ParamByName('pargudang').Value:=MemBaku['Gudang'];
              ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
              ParamByName('parindex').Value:=MemBaku['index'];
              ParamByName('parsatuan').Value:=MemBaku['satuan'];
              ParamByName('parkd_supplier').Value:=MemBaku['kd_supplier'];
              ParamByName('parttlberat').Value:=MemBaku['ttlberat'];
              ParamByName('parqtyperkemasan').Value:=MemBaku['qtyperkemasan'];
              ParamByName('partotalkemasan').Value:=MemBaku['totalkemasan'];
              ParamByName('parsatuankemasan').Value:=MemBaku['satuankemasan'];
              ParamByName('partotalberi').Value:=MemBaku['totalberi'];
              ParamByName('partotalterima').Value:=MemBaku['totalterima'];
              ParamByName('pargudangtransit').Value:=MemBaku['gudangtransit'];
              ParamByName('parstatus').Value:=Status;

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
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,shift,gudang,kd_material_stok,'+
            ' kd_stok,"index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan,'+
            ' satuankemasan,totalberi,totalterima,gudangtransit,status) '+    //
            ' values(:parno_bon,:parno_formula,:parshift,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :partotalkemasan,:parsatuankemasan,:partotalberi,:partotalterima,'+
            ' :pargudangtransit,:parstatus)';
              ParamByName('parno_bon').Value:=Edno.Text;
              ParamByName('parno_formula').Value:=EdNo_formula.Text;
              ParamByName('parshift').Value:=Edgroup.Text;
              ParamByName('pargudang').Value:=MemKimia['Gudang'];
              ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
              ParamByName('parindex').Value:=MemKimia['index'];
              ParamByName('parsatuan').Value:=MemKimia['satuan'];
              ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
              ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
              ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
              ParamByName('partotalkemasan').Value:=MemKimia['totalkemasan'];
              ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
              ParamByName('partotalberi').Value:=MemKimia['totalberi'];
              ParamByName('partotalterima').Value:=MemKimia['totalterima'];
              ParamByName('pargudangtransit').Value:=MemKimia['gudangtransit'];
              ParamByName('parstatus').Value:=Status;
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
  sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,shift,gudang,kd_material_stok,'+
            ' kd_stok,"index",satuan,kd_supplier,ttlberat,qtyperkemasan,totalkemasan,'+
            ' satuankemasan,totalberi,totalterima,gudangtransit,status,index2) '+    //
            ' values(:parno_bon,:parno_formula,:parshift,:pargudang,:parkd_material_stok,'+
            ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
            ' :partotalkemasan,:parsatuankemasan,:partotalberi,:partotalterima,'+
            ' :pargudangtransit,:parstatus,:parindex2)';
              ParamByName('parno_bon').Value:=Edno.Text;
              ParamByName('parno_formula').Value:=EdNo_formula.Text;
              ParamByName('parshift').Value:=Edgroup.Text;
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
              ParamByName('partotalberi').Value:=MemKemasan['totalberi'];
              ParamByName('partotalterima').Value:=MemKemasan['totalterima'];
              ParamByName('pargudangtransit').Value:=MemKemasan['gudangtransit'];
              ParamByName('parstatus').Value:=Status;
              ParamByName('parindex2').Value:=MemKemasan['index2'];
  ExecSQL;
end;
  MemKemasan.Next;
end;}
SimpanMaterial;
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

procedure TFNew_BonProduksi.BSimpanClick(Sender: TObject);
begin
Autonumber;
if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
if Edno.Text='' then
begin
  MessageDlg('No Bon Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edno.SetFocus;
  Exit;
end;
if DtTanggal.Text='' then
begin
  MessageDlg('Tanggal BON Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTanggal.SetFocus;
  Exit;
end;
if Edgroup.Text='' then
begin
  MessageDlg('Group Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edgroup.SetFocus;
  Exit;
end;
if edproduk.Text='' then
begin
  MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edproduk.SetFocus;
  Exit;
end;
if edmesin.Text='' then
begin
  MessageDlg('Mesin Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edmesin.SetFocus;
  Exit;
end;
if EdNo_SPk.Text='' then
begin
  MessageDlg('No SPK Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_SPk.SetFocus;
  Exit;
end;
if EdNo_formula.Text='' then
begin
  MessageDlg('No. Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_formula.SetFocus;
  Exit;
end;
if Edtimbang.Text='0' then
begin
  MessageDlg('JUmlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edtimbang.SetFocus;
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
  sql.Text:='select * from t_spk_prod_bon';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_spk_prod_bon(no_bon,no_timbang,tgl_bon,jmlh_timbang,status,kd_sbu,gudang,gudang2,bln,thn,'+
            ' sisatb,pakaitb,qtytb,nourut) '+
            ' values(:parno_bon,:parno_timbang,:partanggal,:parjmlh_timbang,:parstatus,:parkd_sbu,:pargudang,:pargudang2,'+
            ' :parbln,:parthn,:parsisatb,:parpakaitb,:parqtytb,:parurut)';
            ParamByName('parno_bon').Value:=EdNo.Text;
            ParamByName('parno_timbang').Value:=CbSpk_Timbang.Text;
         // ParamByName('parno_formula').Value:=EdNo_formula.Text;
            ParamByName('partanggal').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
            ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
            ParamByName('parstatus').Value:='Created';
            ParamByname('parkd_sbu').Value:=loksbu;
            ParamByName('pargudang').Value:=CbGudang.Text;
            ParamByName('pargudang2').Value:=CbGudang2.Text;
            ParamByName('parbln').Value:=bln;
            ParamByName('parthn').Value:=thn;
            ParamByName('parsisatb').Value:=EdTimbang2.Value;
            ParamByName('parpakaitb').Value:=0;
            ParamByName('parqtytb').Value:=EdTimbang2.Value;
            ParamByName('parurut').Value:=nourut;
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_spk_prod_bon_det';
  ExecSQL;
end;
MemBaku.First;
while not MemBaku.Eof do
begin
 with dm.Qtemp2 do
begin
  close;
  sql.Clear;
    sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang, '+
              ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
              ' qtyperkemasan , totalkemasan,satuankemasan,totalterima,totalberi,gudangtransit) '+    //
              ' values(:parno_bon,:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,'+
              ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan, '+
              ' :partotalkemasan,:parsatuankemasan,:partotalterima,:partotalberi,:pargudangtransit)';
              ParamByName('parno_bon').Value:=Edno.Text;
              ParamByName('parno_formula').Value:=EdNo_formula.Text;
              ParamByName('pargudang').Value:=MemBaku['Gudang'];
              ParamByName('parkd_material_stok').Value:=MemBaku['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemBaku['kd_stok'];
              ParamByName('parindex').Value:=MemBaku['index'];
              ParamByName('parsatuan').Value:=MemBaku['satuan'];
              ParamByName('parkd_supplier').Value:=MemBaku['kd_supplier'];
              ParamByName('parttlberat').Value:=MemBaku['ttlberat'];
              ParamByName('parqtyperkemasan').Value:=MemBaku['qtyperkemasan'];
              ParamByName('partotalkemasan').Value:=MemBaku['totalkemasan'];
              ParamByName('parsatuankemasan').Value:=MemBaku['satuankemasan'];
              ParamByName('partotalterima').Value:=MemBaku['totalterima'];
              ParamByName('partotalberi').Value:=MemBaku['totalberi'];
              ParamByName('pargudangtransit').Value:='0';
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
    sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang, '+
              ' kd_material_stok,kd_stok, "index",satuan,kd_supplier, ttlberat, '+
              ' qtyperkemasan , totalkemasan,satuankemasan,totalterima,totalberi,gudangtransit) '+    //
              ' values(:parno_bon,:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,'+
              ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan, '+
              ' :partotalkemasan,:parsatuankemasan,:partotalterima,:partotalberi,:pargudangtransit)';
              ParamByName('parno_bon').Value:=Edno.Text;
              ParamByName('parno_formula').Value:=EdNo_formula.Text;
              ParamByName('pargudang').Value:=MemKimia['Gudang'];
              ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
              ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
              ParamByName('parindex').Value:=MemKimia['index'];
              ParamByName('parsatuan').Value:=MemKimia['satuan'];
              ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
              ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
              ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
              ParamByName('partotalkemasan').Value:=MemKimia['totalkemasan'];
              ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
              ParamByName('partotalterima').Value:=MemKimia['totalterima'];
              ParamByName('partotalberi').Value:=MemKimia['totalberi'];
              ParamByName('pargudangtransit').Value:='0';
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
    sql.Text:=' insert into t_spk_prod_bon_det(no_bon,no_formula,gudang, '+
              ' kd_material_stok,kd_stok, "index",satuan,kd_supplier,ttlberat, '+
              ' qtyperkemasan,totalkemasan,satuankemasan,index2,totalterima,totalberi,'+
              ' gudangtransit) '+
            ' values('+quotedstr(Edno.Text)+','+
            ''+quotedstr(EdNo_formula.Text)+','+
            ''+quotedstr(MemKemasan['Gudang'])+','+
            ''+QuotedStr(MemKemasan['kd_material'])+','+
            ''+QuotedStr(MemKemasan['kd_stok'])+','+
            ''+QuotedStr(MemKemasan['index'])+','+
            ''+QuotedStr(MemKemasan['satuan'])+','+
            ''+QuotedStr(MemKemasan['kd_supplier'])+','+
            ''+QuotedStr(MemKemasan['ttlberat'])+','+
            ''+QuotedStr(MemKemasan['qtyperkemasan'])+','+
            ''+QuotedStr(MemKemasan['totalkemasan'])+','+
            ''+QuotedStr(MemKemasan['satuankemasan'])+','+
            ''+QuotedStr(MemKemasan['index2'])+','+
            '''0'','+
            '''0'',''Created'')';
  ExecSQL;
end;
  MemKemasan.Next;
end;        }
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

procedure TFNew_BonProduksi.Button1Click(Sender: TObject);
begin
Autonumber;
end;

procedure TFNew_BonProduksi.DBGridBakuCellClick(Column: TColumnEh);
begin
if statustrans=2 then
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku['sisa']:=MemBaku['index']*StrToFloat(EdSisa.Text);
  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang.Text:=MemBaku['gudangtransit'];
  MemBaku.Post;
 // CbGudangChange(sender);
end;
if statustrans<>2 then
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku['sisa']:=MemBaku['index']*StrToFloat(EdSisa.Text);
//  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang.Text:=MemBaku['gudangtransit'];
  MemBaku.Post;
 // CbGudangChange(sender);
end;
end;

procedure TFNew_BonProduksi.DBGridBakuColEnter(Sender: TObject);
begin
if statustrans=2 then
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku['sisa']:=MemBaku['index']*StrToFloat(EdSisa.Text);
  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang.Text:=MemBaku['gudangtransit'];
  MemBaku.Post;
 // CbGudangChange(sender);
end;
if statustrans<>2 then
begin
  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku['sisa']:=MemBaku['index']*StrToFloat(EdSisa.Text);
//  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang.Text:=MemBaku['gudangtransit'];
  MemBaku.Post;
 // CbGudangChange(sender);
end;
end;

procedure TFNew_BonProduksi.DBGridBakuColExit(Sender: TObject);
begin
{  MemBaku.Edit;
  MemBaku['ttlberat']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  MemBaku['totalkemasan']:=(MemBaku['ttlberat'])/(MemBaku['qtyperkemasan']);
  MemBaku.Post;
  CbGudang3.Text:=MemKemasan['gudangtransit'];
  CbGudang3Change(sender);
}end;

procedure TFNew_BonProduksi.DBGridKemasanCellClick(Column: TColumnEh);
begin
  MemKemasan.Edit;
  MemKemasan['ttlberat']:=MemKemasan['index']*StrToFloat(EdKarton.Text);
  MemKemasan['totalkemasan']:=(MemKemasan['ttlberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
  CbGudang3.Text:=MemKemasan['gudangtransit'];
end;

procedure TFNew_BonProduksi.DBGridKemasanColEnter(Sender: TObject);
begin
  MemKemasan.Edit;
  MemKemasan['ttlberat']:=MemKemasan['index']*StrToFloat(EdKarton.Text);
  MemKemasan['totalkemasan']:=(MemKemasan['ttlberat'])/(MemKemasan['qtyperkemasan']);
  MemKemasan.Post;
end;

procedure TFNew_BonProduksi.DBGridKimiaCellClick(Column: TColumnEh);
begin
if statustrans=2 then
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia['sisa']:=MemKimia['index']*StrToFloat(EdSisa.Text);
  MemKimia['totalberi']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  CbGudang2.Text:=MemKimia['gudangtransit'];
  MemKimia.Post;
end;
if statustrans<>2 then
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia['sisa']:=MemKimia['index']*StrToFloat(EdSisa.Text);
//  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang2.Text:=MemKimia['gudangtransit'];
  MemKimia.Post;
end;
end;

procedure TFNew_BonProduksi.DBGridKimiaColEnter(Sender: TObject);
begin
if statustrans=2 then
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia['sisa']:=MemKimia['index']*StrToFloat(EdSisa.Text);
  MemKimia['totalberi']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  CbGudang2.Text:=MemKimia['gudangtransit'];
  MemKimia.Post;
end;
if statustrans<>2 then
begin
  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia['sisa']:=MemKimia['index']*StrToFloat(EdSisa.Text);
//  MemBaku['totalberi']:=MemBaku['index']*StrToFloat(EdTimbang.Text);
  CbGudang2.Text:=MemKimia['gudangtransit'];
  MemKimia.Post;
end;
end;

procedure TFNew_BonProduksi.DBGridKimiaColExit(Sender: TObject);
begin
{  MemKimia.Edit;
  MemKimia['ttlberat']:=MemKimia['index']*StrToFloat(EdTimbang.Text);
  MemKimia['totalkemasan']:=(MemKimia['ttlberat'])/(MemKimia['qtyperkemasan']);
  MemKimia['sisa']:=MemKimia['index']*StrToFloat(EdSisa.Text);
  CbGudang2.Text:=MemKimia['gudangtransit'];
  MemKimia.Post;
  CbGudang2Change(sender); }
end;

procedure TFNew_BonProduksi.EdKartonChange(Sender: TObject);
begin
if EdKarton.Text='' then EdKarton.Text:='0';
{MemKemasan.First;
while not MemKemasan.Eof do
begin
  DBGridKemasanColEnter(sender);
  MemKemasan.Next;
end; }
end;

procedure TFNew_BonProduksi.EdNo_FormulaChange(Sender: TObject);
begin
MemBaku.EmptyTable;
MemKimia.EmptyTable;
with QBaku do
begin
  sql.Clear;
  sql.Text:='select A.*,C.nm_material, C.Category, D.nm_supplier from t_master_formula_det A '+
            ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok  ' +
            ' inner join t_material C on B.kd_material=C.kd_material   '+
            ' Left join t_supplier D on B.kd_supplier=D.kd_supplier '+
            ' where C.category=''BAHAN BAKU'' AND A.no_formula='+QuotedStr(EdNo_formula.Text)+''+
            ' order by iddetail ASC';
   Execute;
end;
QBaku.Open;
QBaku.First;
while not QBaku.Eof do
begin
MemBaku.Insert;
MemBaku['kd_material_stok']:=QBaku['kd_material_stok'];
MemBaku['nm_material']:=QBaku['nm_material'];
MemBaku['kd_supplier']:=QBaku['kd_supplier'];
MemBaku['nm_supplier']:=QBaku['nm_supplier'];
MemBaku['kd_stok']:=QBaku['kd_stok'];
MemBaku['index']:=QBaku['index'];
MemBaku['qtyperkemasan']:=QBaku['qtyperkemasan'];
Membaku['gudang']:=QBaku['gudang'];
MemBaku['satuankemasan']:=QBaku['satuankemasan'];
Membaku['satuan']:=QBaku['satuan'];
Membaku['gudangtransit']:='';
MemBaku['totalberi']:='0';
Membaku['totalterima']:='0';
MemBaku.Post;
DBGridBakuColEnter(sender);
QBaku.Next;
end;
with Qkimia do
begin
  sql.Clear;
  sql.Text:='select A.*,C.nm_material, C.Category, D.nm_supplier from t_master_formula_det A '+
            ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok  ' +
            ' inner join t_material C on B.kd_material=C.kd_material   '+
            ' Left join t_supplier D on B.kd_supplier=D.kd_supplier '+
            ' where C.category=''KIMIA'' AND A.no_formula='+QuotedStr(EdNo_formula.Text)+''+
            ' order by iddetail ASC';
   Execute;
end;
Qkimia.Open;
Qkimia.First;
while not Qkimia.Eof do
begin
MemKimia.Insert;
MemKimia['kd_material_stok']:=Qkimia['kd_material_stok'];
MemKimia['nm_material']:=Qkimia['nm_material'];
MemKimia['kd_supplier']:=Qkimia['kd_supplier'];
MemKimia['nm_supplier']:=Qkimia['nm_supplier'];
MemKimia['kd_stok']:=Qkimia['kd_stok'];
MemKimia['index']:=Qkimia['index'];
MemKimia['qtyperkemasan']:=Qkimia['qtyperkemasan'];
MemKimia['gudang']:=Qkimia['gudang'];
MemKimia['satuankemasan']:=Qkimia['satuankemasan'];
MemKimia['satuan']:=Qkimia['satuan'];
MemKimia['gudangtransit']:='';
MemKimia['totalberi']:='0';
MemKimia['totalterima']:='0';
MemKimia.Post;
DBGridKimiaColEnter(sender);
Qkimia.Next;
end;
end;

procedure TFNew_BonProduksi.EdSisaChange(Sender: TObject);
begin
EdTimbang2.Value:=EdSisa.Value+StrToFloat(EdTimbang.Text);
MemKimia.First;
while not MemKimia.Eof do
begin
  DBGridKimiaColEnter(sender);
  MemKimia.Next;
end;
MemBaku.First;
while not MemBaku.Eof do
begin
  DBGridBakuColEnter(sender);
  MemBaku.Next;
end;
end;

procedure TFNew_BonProduksi.EdTimbangChange(Sender: TObject);
begin
EdTimbang2.Value:=EdSisa.Value+StrToFloat(EdTimbang.Text);
if edtimbang.Text='' then EdTimbang.Text:='0';
//if statustrans=0 then
if statustrans=1 then
begin
MemBaku.First;
while not MemBaku.Eof do
begin
  DBGridBakuColEnter(sender);
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_material_stok_det where kd_material_stok='+QuotedStr(MemBaku['kd_material_stok'])+' and kd_stok='+QuotedStr(MemBaku['kd_stok']);
    Execute;
  end;
if dm.Qtemp['Outstanding']< MemBaku['ttlberat'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Kuantum '+MemBaku['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
exit;
end;
  MemBaku.Next;
end;
MemKimia.First;
while not MemKimia.Eof do
begin
  DBGridKimiaColEnter(sender);
    with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_material_stok_det where kd_material_stok='+QuotedStr(MemKimia['kd_material_stok'])+' and kd_stok='+QuotedStr(MemKimia['kd_stok']);
    Execute;
  end;
if dm.Qtemp['Outstanding'] < MemKimia['ttlberat'] then
begin
//messageDlg ('Stok '+MemBaku['nm_material']+' '+ ' Tidak Cukup', mtInformation,  [mbYes]+[mbNo],0) = mrYes;
Messagedlg('Kuantum '+MemKimia['nm_material']+' Tidak Cukup',mtWarning,[Mbok],0);
exit;
end;
  MemKimia.Next;
end;
end;
end;

procedure TFNew_BonProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree
end;

procedure TFNew_BonProduksi.FormCreate(Sender: TObject);
begin
realfNewBonProd:=self;
end;

procedure TFNew_BonProduksi.FormDestroy(Sender: TObject);
begin
realfNewBonProd:=nil;
end;

procedure TFNew_BonProduksi.FormShow(Sender: TObject);
begin
  MemBaku.Active:=false;
  MemBaku.Active:=true;
  MemKimia.Active:=false;
  MemKimia.Active:=true;
  CbSpk_Timbang.Clear;
  EdNo_Formula.Clear;
  EdTimbang.Text:='0';
  DtTanggal.Date:=now;
  edproduk.Clear;
  edmesin.Clear;
  CbGudang.Clear;
  CbGudang2.Clear;
  CbGudang3.Clear;
  Self.Load;
//  if QBaku.Active=false then QBaku.Active:=true;
 // if Qkimia.Active=false then Qkimia.Active:=true;
 // if Qkemasan.Active=false then Qkemasan.Active:=true;
 // if QGudang.Active=false then QGudang.Active:=true;
 // if MemKemasan2.Active=false then MemKemasan2.Active:=true;
 // if MemKemasan.Active=false then MemKemasan.Active:=true;
end;

Procedure TFNew_BonProduksi.Load;
begin
{CbSpk_Timbang.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select no_spk_prod,no_formula,no_timbang from t_spk_prod_tmbng '+
              ' Group by no_spk_prod,no_formula,no_timbang order by no_timbang Asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbSpk_Timbang.Items.Add(Dm.Qtemp['no_timbang']);
    Dm.Qtemp.Next;
  end;              }
  if loksbu='' then
  begin
  CbGudang.Clear;
  CbGudang2.Clear;
  CbGudang3.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_gudang order by no_urut Asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang2.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang3.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
    EdNo_SPk.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:=' select no_spk_prod from t_spk_prod where kd_sbu='+QuotedStr(loksbu)+' and status1=''1'' group by no_spk_prod '+
              ' order by no_spk_prod Desc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNo_SPk.Items.Add(Dm.Qtemp['no_spk_prod']);
    Dm.Qtemp.Next;
  end;
end;
  if loksbu<>'' then
  begin
  CbGudang.Clear;
  CbGudang2.Clear;
  CbGudang3.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select * from t_gudang where kd_sbu='+QuotedStr(loksbu)+' order by no_urut Asc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang2.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbGudang3.Items.Add(Dm.Qtemp['nm_gudang']);
    Dm.Qtemp.Next;
  end;
  EdNo_SPk.Clear;
  with dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:=' select no_spk_prod from t_spk_prod where kd_sbu='+QuotedStr(loksbu)+' and status1=''1'' group by no_spk_prod '+
              ' order by no_spk_prod Desc';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNo_SPk.Items.Add(Dm.Qtemp['no_spk_prod']);
    Dm.Qtemp.Next;
  end;
end;
end;

procedure TFNew_BonProduksi.CbSpk_TimbangButtonClick(Sender: TObject);
begin
  with FSearch_SpkTimbang do
  begin
    show;
    statustr:='bonproduksi';
    if loksbu='' then
    begin
    with Qspktimbang do
    begin
      close;
      sql.clear;
      sql.text:='select Sum(jmlh_timbang)as total,no_spk_prod,no_formula,nm_produk,no_timbang,mc,tgl_mulai,tgl_selesai,sisatb from t_spk_prod_tmbng '+
                ' where no_spk_prod='+QuotedStr(EdNo_SPk.Text)+''+
                ' Group by no_spk_prod,no_formula,nm_produk,no_timbang,mc,tgl_mulai,tgl_selesai,sisatb order by no_timbang asc';
       ExecSQL;
    end;
    Qspktimbang.Open;
    end;
    if loksbu<>'' then
    begin
    with Qspktimbang do
    begin
      close;
      sql.clear;
      sql.text:='select Sum(jmlh_timbang)as total,no_spk_prod,no_formula,nm_produk,no_timbang,mc,tgl_mulai,tgl_selesai,sisatb from t_spk_prod_tmbng '+
                ' where kd_sbu='+QuotedStr(loksbu)+' and no_spk_prod='+QuotedStr(EdNo_SPk.Text)+''+
                ' Group by no_spk_prod,no_formula,nm_produk,no_timbang,mc,tgl_mulai,tgl_selesai,sisatb order by no_timbang asc';
       ExecSQL;
    end;
    Qspktimbang.Open;
  end;
end;
end;

end.
