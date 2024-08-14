unit UNew_ForTestBakar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzCmboBx,
  MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, MemDS, DBAccess, Uni,
  DBCtrlsEh, DBLookupEh;

type
  TFNew_ForTestBakar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Mesin: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    EdProduk: TRzComboBox;
    edregu: TRzComboBox;
    EdMesin: TRzComboBox;
    DtTest: TRzDateTimeEdit;
    EdKet: TMemo;
    DBGridDetail: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    MemBakarDet: TMemTableEh;
    DsBakarDet: TDataSource;
    Edno: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    EdNo_Spk: TRzComboBox;
    EdNo_Formula: TRzComboBox;
    DtPMulai: TRzDateTimeEdit;
    DtPSelesai: TRzDateTimeEdit;
    Label20: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    DtProduksi: TRzDateTimeEdit;
    procedure BSimpanClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridDetailColEnter(Sender: TObject);
    procedure DBGridDetailCellClick(Column: TColumnEh);
    procedure DBGridDetailSumListAfterRecalcAll(Sender: TObject);
    procedure MemBakarDetAfterInsert(DataSet: TDataSet);
    procedure EdNo_SpkSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    thn,st,bln,tglno,nourut:string;
    procedure Autonumber;
    Procedure load;
    Procedure Clear;
  end;

Function FNew_ForTestBakar: TFNew_ForTestBakar;

implementation

{$R *.dfm}

uses UDatamodule, UFor_TestBakar, UMainmenu;
var
  RealFNew_ForTestBakar: TFNew_ForTestBakar;
function FNew_ForTestBakar: TFNew_ForTestBakar;
begin
  if RealFNew_ForTestBakar <> nil then
    FNew_ForTestBakar:= RealFNew_ForTestBakar
  else
    Application.CreateForm(TFNew_ForTestBakar, Result);
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

procedure TFNew_ForTestBakar.Autonumber;
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
 DecodeDate(DtProduksi.Date, yy,M,d );
 thn:=FormatDateTime('yyy',DtProduksi.Date);
 bln:=FormatDateTime('mm',DtProduksi.Date);
 tglno:=FormatDateTime('dd',DtProduksi.Date);
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
    sql.Text:='select max(nourut)as notest from t_formula_testbakar where thn='+QuotedStr(thn)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
    open;
  end;
   if dm.Qtemp['notest']= '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['notest']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  nourut:=code;
//  EdNo.Text:= EditComplete+ '/'+maxmy + '/' + Kd_SBU;
  //thn:=yn;
end;

Procedure TFNew_ForTestBakar.Clear;
begin
  MemBakarDet.Close;
  MemBakarDet.Open;
  EdProduk.Text:='';
  edregu.Text:='';
  EdMesin.Text:='';
  EdKet.Text:='';
  Edno.Text:='';
  EdNo_Formula.Text:='';
  DtTest.Text:='';
  MemBakarDet.EmptyTable;
end;

procedure TFNew_ForTestBakar.DBGridDetailCellClick(Column: TColumnEh);
begin
try
  begin
  MemBakarDet.Edit;
{  MemBakarDet['keterangan']:='Oven besar atas';
  MemBakarDet['warna_abu']:='Putih';
  MemBakarDet['bentuk_api']:='Segitiga';
  MemBakarDet['bentuk_abu']:='Putus2';
 } MemBakarDet['ket_rata2']:=(MemBakarDet['ket1']+ MemBakarDet['ket2']+MemBakarDet['ket3']+MemBakarDet['ket4'])/4;
//  MemBakarDet['lama_bakar']:=(24*(MemBakarDet['jam_mati']-MemBakarDet['jam_mulai']));//+'.'+(trunc((MemBakarDet['jam_mati']-MemBakarDet['jam_mulai'])*24*60));
  MemBakarDet['lama1']:=(MemBakarDet['jam_mati']-MemBakarDet['jam_mulai']);//)+'.'+(trunc((MemBakarDet['jam_mati']-MemBakarDet['jam_mulai'])*24*60));
  MemBakarDet['lama2']:= FormatDateTime('hh.mm',MemBakarDet['lama1']);
  MemBakarDet['lama_bakar']:= FormatDateTime('hh'+','+'mm',MemBakarDet['lama1']);
  MemBakarDet.Post;
  end;
Except;
end;
end;

procedure TFNew_ForTestBakar.DBGridDetailColEnter(Sender: TObject);
begin
try
  begin
  MemBakarDet.Edit;
{  MemBakarDet['keterangan']:='Oven besar atas';
  MemBakarDet['warna_abu']:='Putih';
  MemBakarDet['bentuk_api']:='Segitiga';
  MemBakarDet['bentuk_abu']:='Putus2';
 } MemBakarDet['ket_rata2']:=(MemBakarDet['ket1']+ MemBakarDet['ket2']+MemBakarDet['ket3']+MemBakarDet['ket4'])/4;
//  MemBakarDet['lama_bakar']:=(24*(MemBakarDet['jam_mati']-MemBakarDet['jam_mulai']));//+'.'+(trunc((MemBakarDet['jam_mati']-MemBakarDet['jam_mulai'])*24*60));
  MemBakarDet['lama1']:=(MemBakarDet['jam_mati']-MemBakarDet['jam_mulai']);//)+'.'+(trunc((MemBakarDet['jam_mati']-MemBakarDet['jam_mulai'])*24*60));
  MemBakarDet['lama2']:= FormatDateTime('hh.mm',MemBakarDet['lama1']);
  MemBakarDet['lama_bakar']:= FormatDateTime('hh'+','+'mm',MemBakarDet['lamal']);
  MemBakarDet.Post;
  end;
Except;
end;
end;

procedure TFNew_ForTestBakar.DBGridDetailSumListAfterRecalcAll(Sender: TObject);
begin
DBGridDetail.SumList.Active:=true;
end;

procedure TFNew_ForTestBakar.EdNo_SpkSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  sql.Clear;
  sql.Text:='select * from t_spk_formula where no_spk='+QuotedStr(EdNo_Spk.Text);
  Execute;
end;
  EdNo_Formula.Text:=Dm.Qtemp['no_formula'];
  EdProduk.Text:=Dm.Qtemp['nm_produk'];
  edregu.Text:=Dm.Qtemp['shift'];
  edmesin.Text:=Dm.Qtemp['mc'];
  DtPMulai.Date:=Dm.Qtemp['tgl_mulai_prod'];
  DtPSelesai.Date:=dm.Qtemp['tgl_selesai_prod'];
  DtTest.Text:=dm.Qtemp['tgl_trial'];
end;

procedure TFNew_ForTestBakar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_ForTestBakar.FormCreate(Sender: TObject);
begin
  RealFNew_ForTestBakar:=self;
end;

procedure TFNew_ForTestBakar.FormDestroy(Sender: TObject);
begin
  RealFNew_ForTestBakar:=nil;
end;

procedure TFNew_ForTestBakar.FormShow(Sender: TObject);
begin
  MemBakarDet.Close;
  MemBakarDet.Open;
end;

procedure TFNew_ForTestBakar.BBatalClick(Sender: TObject);
begin
  FFor_Testbakar.Show;
  FFor_Testbakar.ActROExecute(sender);
  Close;
end;

procedure TFNew_ForTestBakar.BEditClick(Sender: TObject);
begin
if EdNo_Spk.Text='' then
begin
  MessageDlg('No SPK Test  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_Spk.SetFocus;
  Exit;
end;
if EdNo_Formula.Text='' then
begin
  MessageDlg('No Formula  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_Formula.SetFocus;
  Exit;
end;
if edregu.Text='' then
begin
  MessageDlg('Regu Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edregu.SetFocus;
  Exit;
end;
if EdMesin.Text='' then
begin
  MessageDlg('Mesin  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdMesin.SetFocus;
  Exit;
end;
if DtTest.Text='' then
begin
  MessageDlg('Tanggal Test  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTest.SetFocus;
  Exit;
end;
if DtPMulai.Text='' then
begin
  MessageDlg('Tanggal Perkiraan Produksi  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtPMulai.SetFocus;
  Exit;
end;
if DtPSelesai.Text='' then
begin
  MessageDlg('Tanggal Perkiraan Produksi  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtPSelesai.SetFocus;
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
  sql.Text:='select * from t_formula_testbakar';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' update t_formula_testbakar set no_formula=:parno_formula,tgl_test=:partgl_test,'+
            ' regu=:parregu,mc=:parmc,notes=:parnotes,pic=:parpic,nm_produk=:parnm_produk,'+
            ' no_spk=:parno_spk,tgl_mulai_prod=:partgl_mulai_prod,tgl_selesai_prod='+
            ' :partgl_selesai_prod,kd_sbu=:parkd_sbu,thn=:parthn,status=:parst, '+
            ' tgl_prod=:partgl_prod where no_test=:parno_test';
            ParamByName('parno_formula').Value:=EdNo_Formula.Text;
            ParamByName('partgl_test').Value:=FormatDateTime('yyy-mm-dd',DtTest.date);
            ParamByName('parregu').Value:=edregu.Text;
            ParamByName('parmc').Value:=EdMesin.Text;
            ParamByName('parnotes').Value:=edket.Text;
            ParamByName('parpic').Value:=nm;
            ParamByName('parnm_produk').Value:=EdProduk.Text;
            ParamByName('parno_spk').Value:=EdNo_Spk.Text;
            ParamByName('partgl_mulai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPMulai.date);
            ParamByName('partgl_selesai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPSelesai.date);
            ParamByName('parno_test').Value:=Edno.Text;
            ParamByName('parkd_sbu').Value:=loksbu;
            ParamByName('parthn').AsString:=thn;
            ParamByName('parst').AsString:=st;
            ParamByName('partgl_prod').Value:=FormatDateTime('yyy-mm-dd',DtProduksi.date);
  ExecSQL;
end;

with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='delete from t_formula_testbakar_det where no_test='+QuotedStr(Edno.Text);
  ExecSQL;
end;

with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_formula_testbakar_det';
  ExecSQL;
end;

MemBakarDet.First;
while not MemBakarDet.Eof do
begin
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_formula_testbakar_det(no_test,no_gotrok,berat,kadar_air,jam_mulai,'+
            ' jam_mati,lama_bakar,keterangan,warna_abu,bentuk_api,bentuk_abu,tensile, '+
            ' strength,ket1,ket2,ket3,ket4,ket_rata2)values(:parno_test,:parno_gotrok,'+
            ' :parberat,:parkadar_air,:parjam_mulai,:parjam_mati,:parlama_bakar,:parketerangan,'+
            ' :parwarna_abu,:parbentuk_api,:parbentuk_abu,:partensile,:parstrength,:parket1,'+
            ' :parket2,:parket3,:parket4,:parket_rata2)';
            ParamByName('parno_test').Value:=Edno.Text;
            ParamByName('parno_gotrok').Value:=MemBakarDet['no_gotrok'];
            ParamByName('parberat').Value:=MemBakarDet['berat'];
            ParamByName('parkadar_air').Value:=MemBakarDet['kadar_air'];
            ParamByName('parjam_mulai').Value:=MemBakarDet['jam_mulai'];
            ParamByName('parjam_mati').Value:=MemBakarDet['jam_mati'];
            ParamByName('parlama_bakar').Value:=MemBakarDet['lama_bakar'];
            ParamByName('parketerangan').Value:=MemBakarDet['keterangan'];
            ParamByName('parwarna_abu').Value:=MemBakarDet['warna_abu'];
            ParamByName('parbentuk_api').Value:=MemBakarDet['bentuk_api'];
            ParamByName('parbentuk_abu').Value:=MemBakarDet['bentuk_abu'];
            ParamByName('partensile').Value:=MemBakarDet['tensile'];
            ParamByName('parstrength').Value:=MemBakarDet['strength'];
            ParamByName('parket1').Value:=MemBakarDet['ket1'];
            ParamByName('parket2').Value:=MemBakarDet['ket2'];
            ParamByName('parket3').Value:=MemBakarDet['ket3'];
            ParamByName('parket4').Value:=MemBakarDet['ket4'];
            ParamByName('parket_rata2').Value:=MemBakarDet['ket_rata2'];
  ExecSQL;
  MemBakarDet.Next;
end;
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

procedure TFNew_ForTestBakar.BSimpanClick(Sender: TObject);
begin
Autonumber;
if messageDlg ('Anda Yakin Simpan No.'+EdNo.text+' '+'?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
if EdNo_Spk.Text='' then
begin
  MessageDlg('No SPK Test  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_Spk.SetFocus;
  Exit;
end;
if EdNo_Formula.Text='' then
begin
  MessageDlg('No Formula  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo_Formula.SetFocus;
  Exit;
end;
if edregu.Text='' then
begin
  MessageDlg('Regu Tidak boleh Kosong ',MtWarning,[MbOk],0);
  edregu.SetFocus;
  Exit;
end;
if EdMesin.Text='' then
begin
  MessageDlg('Mesin  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdMesin.SetFocus;
  Exit;
end;
if DtTest.Text='' then
begin
  MessageDlg('Tanggal Test  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtTest.SetFocus;
  Exit;
end;
if DtPMulai.Text='' then
begin
  MessageDlg('Tanggal Perkiraan Produksi  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtPMulai.SetFocus;
  Exit;
end;
if DtPSelesai.Text='' then
begin
  MessageDlg('Tanggal Perkiraan Produksi  Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtPSelesai.SetFocus;
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
  sql.Text:='select * from t_formula_testbakar';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:=' insert into t_formula_testbakar(no_formula,no_test,tgl_test,regu,mc,notes,pic,'+
            ' nm_produk,no_spk,tgl_mulai_prod,tgl_selesai_prod,kd_sbu,thn,status,tgl_prod,bln,tgl_no,nourut)'+
            ' values(:parno_formula,:parno_test,:partgl_test,:parregu,:parmc,:parnotes,:parpic,'+
            ' :parnm_produk,:parno_spk,:partgl_mulai_prod,:partgl_selesai_prod,:parkd_sbu,'+
            ' :parthn,:parstatus,:partgl_prod,:parbln,:partglno,:parnourut)';
            ParamByName('parno_formula').Value:=EdNo_Formula.Text;
            ParamByName('parno_test').Value:=Edno.Text;
            ParamByName('partgl_test').Value:=FormatDateTime('yyy-mm-dd',DtTest.date);
            ParamByName('parregu').Value:=edregu.Text;
            ParamByName('parmc').Value:=EdMesin.Text;
            ParamByName('parnotes').Value:=edket.Text;
            ParamByName('parpic').Value:=nm;
            ParamByName('parnm_produk').Value:=EdProduk.Text;
            ParamByName('parno_spk').Value:=EdNo_Spk.Text;
            ParamByName('partgl_mulai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPMulai.date);
            ParamByName('partgl_selesai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPSelesai.date);
            ParamByName('parkd_sbu').Value:=loksbu;
            ParamByName('parthn').value:=thn;
            ParamByName('parstatus').Value:='1';
            ParamByName('partgl_prod').Value:=FormatDateTime('yyy-mm-dd',DtProduksi.date);
            ParamByName('parbln').Value:=bln;
            ParamByName('partglno').Value:=tglno;
            ParamByName('parnourut').Value:=nourut;
  ExecSQL;
end;
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_formula_testbakar_det';
  ExecSQL;
end;
MemBakarDet.First;
while not MemBakarDet.Eof do
begin
with dm.Qtemp2 do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_formula_testbakar_det(no_test,no_gotrok,berat,kadar_air,jam_mulai,'+
            ' jam_mati,lama_bakar,keterangan,warna_abu,bentuk_api,bentuk_abu,tensile, '+
            ' strength,ket1,ket2,ket3,ket4,ket_rata2)values(:parno_test,:parno_gotrok,'+
            ' :parberat,:parkadar_air,:parjam_mulai,:parjam_mati,:parlama_bakar,:parketerangan,'+
            ' :parwarna_abu,:parbentuk_api,:parbentuk_abu,:partensile,:parstrength,:parket1,'+
            ' :parket2,:parket3,:parket4,:parket_rata2)';
            ParamByName('parno_test').Value:=Edno.Text;
            ParamByName('parno_gotrok').Value:=MemBakarDet['no_gotrok'];
            ParamByName('parberat').Value:=MemBakarDet['berat'];
            ParamByName('parkadar_air').Value:=MemBakarDet['kadar_air'];
            ParamByName('parjam_mulai').Value:=MemBakarDet['jam_mulai'];
            ParamByName('parjam_mati').Value:=MemBakarDet['jam_mati'];
            ParamByName('parlama_bakar').Value:=MemBakarDet['lama_bakar'];
            ParamByName('parketerangan').Value:=MemBakarDet['keterangan'];
            ParamByName('parwarna_abu').Value:=MemBakarDet['warna_abu'];
            ParamByName('parbentuk_api').Value:=MemBakarDet['bentuk_api'];
            ParamByName('parbentuk_abu').Value:=MemBakarDet['bentuk_abu'];
            ParamByName('partensile').Value:=MemBakarDet['tensile'];
            ParamByName('parstrength').Value:=MemBakarDet['strength'];
            ParamByName('parket1').Value:=MemBakarDet['ket1'];
            ParamByName('parket2').Value:=MemBakarDet['ket2'];
            ParamByName('parket3').Value:=MemBakarDet['ket3'];
            ParamByName('parket4').Value:=MemBakarDet['ket4'];
            ParamByName('parket_rata2').Value:=MemBakarDet['ket_rata2'];
  ExecSQL;
  MemBakarDet.Next;
end;
end;
with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='update t_material_pakai_for set Status=''0'' where no_spk='+QuotedStr(EdNo_Spk.Text);
  ExecSQL;
end;
Dm.koneksi.Commit;
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

procedure TFNew_forTestBakar.load;
begin
EdProduk.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Select * from t_produk';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  EdProduk.Items.Add(Dm.Qtemp['nm_produk']);
  Dm.Qtemp.Next;
  end;
EdNo_Spk.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Select * from t_material_pakai_for where status=''1''';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  EdNo_Spk.Items.Add(Dm.Qtemp['no_spk']);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNew_ForTestBakar.MemBakarDetAfterInsert(DataSet: TDataSet);
begin
{ MemBakarDet.Edit;
  MemBakarDet['keterangan']:='Oven besar atas';
  MemBakarDet['warna_abu']:='Putih';
  MemBakarDet['bentuk_api']:='Segitiga';
  MemBakarDet['bentuk_abu']:='Putus-putus';
  MemBakarDet['jam_mulai']:='00:00:00';
  MemBakarDet['jam_mati']:='00:00:00';
  MemBakarDet['no_gotrok']:='20';
  MemBakarDet['tensile']:='90';
  MemBakarDet.Post;  }
end;

end.
