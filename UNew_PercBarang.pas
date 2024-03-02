unit UNew_PercBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask,
  MemTableDataEh, Data.DB, MemTableEh, MemDS, DBAccess, Uni, DataDriverEh,
  Vcl.Grids, Vcl.Buttons;

type
  TFNew_PercBarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DtPeriode: TRzDateTimeEdit;
    Edno: TRzEdit;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Edjenis: TRzComboBox;
    Qmaterial1: TUniQuery;
    MemMaterial: TMemTableEh;
    DsMaterial: TDataSource;
    QMaster: TUniQuery;
    Label7: TLabel;
    Label8: TLabel;
    QGudang: TUniQuery;
    DsGudang: TDataSource;
    Edkd_material: TEdit;
    EdStatus: TEdit;
    Edno_urut: TEdit;
    EdTimbang: TRzNumericEdit;
    SpeedButton1: TSpeedButton;
    procedure EdjenisSelect(Sender: TObject);
    procedure DBGridEh1Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGridEh1ColEnter(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure EdtimbangChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    st:string;
    Procedure Autonumber;
    Procedure Clear;
    Procedure Load;
  end;

Function FNew_PercBarang: TFNew_PercBarang;
var  nourut,Kode,status,thn,bln,tglno:string;

implementation

{$R *.dfm}

//uses Udatamodule, USearch_KdStok_PermtMat, UPermintaan_Material,UMainmenu,USearch_MatSpkFor;
uses UDataModule,UMainMenu, UPercampuran_Barang, UMaster_PercBarang;

var RealFNew_PercBarang: TFNew_PercBarang;
function FNew_PercBarang: TFNew_PercBarang;
begin
  if RealFNew_PercBarang <> nil then FNew_PercBarang:= RealFNew_PercBarang
  else  Application.CreateForm(TFNew_PercBarang, Result);
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

Procedure TFNew_PercBarang.Load;
begin
  Edjenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select item_name "type" from warehouse.t_mixing_master a inner join t_item b on a.type_code=b.item_code GROUP BY item_name order by item_name asc';
    Execute;
  end;
  DM.Qtemp.First;
  while not DM.Qtemp.Eof do
  begin
    Edjenis.Items.Add(dm.Qtemp['type']);
    DM.Qtemp.Next;
  end;
end;

procedure TFNew_PercBarang.SpeedButton1Click(Sender: TObject);
begin
  FMaster_PercBarang.Show;
end;

procedure TFNew_PercBarang.Autonumber;
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
 DecodeDate(DtPeriode.Date, yy,M,d );
 thn:=formatdatetime('yyy',DtPeriode.Date);
 bln:=formatdatetime('mm',DtPeriode.Date);
 tglno:=formatdatetime('dd',DtPeriode.Date);
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
    sql.Text:='select max(no_urut)as urut from t_permt_material where  thn='+QuotedStr(thn)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
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

Procedure TFNew_PercBarang.Clear;
begin
  Edno.Text:='';
  Edjenis.Text:='';
  Edtimbang.Text:='';
  Edkd_material.Text:='';
  EdStatus.Text:='';
  Edno_urut.Text:='';
  MemMaterial.Close;
  MemMaterial.Open;
  MemMaterial.EmptyTable;
end;

procedure TFNew_PercBarang.BBatalClick(Sender: TObject);
begin
  close;
  FPerc_barang.Show;
  FPerc_barang.ActRoExecute(sender);
end;

procedure TFNew_PercBarang.BEditClick(Sender: TObject);
begin
if EdNo.Text='' then
begin
  MessageDlg('No. Permintaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNo.SetFocus;
  Exit;
end;
if Edjenis.Text='' then
begin
  MessageDlg('Jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edjenis.SetFocus;
  Exit;
end;
if DtPeriode.Text='' then
begin
  MessageDlg('Periode Tidak boleh Kosong ',MtWarning,[MbOk],0);
  DtPeriode.SetFocus;
  Exit;
end;
if Edtimbang.Text='0' then
begin
  MessageDlg('Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
  Edtimbang.SetFocus;
  Exit;
end;
if not dm.koneksi.InTransaction then
dm.koneksi.StartTransaction;
try
begin
with dm.Qtemp do
begin
  Close;
  sql.Clear;
  sql.Text:='delete from t_permt_material where no_permintaan='+QuotedStr(Edno.Text);
  Execsql;
end;

MemMaterial.First;
while not MemMaterial.Eof do
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
 sql.Text:='insert into t_permt_material(kd_material_stok, qty,satuan, keterangan,periode,gudang,jenis,'+
            ' no_permintaan,kd_stok,status,no_urut,kd_material,jmlh_timbang,total_Permt,total_terima,'+
            ' timbang,status_trans,kd_sbu,thn,bln,tgl_no)values(:parkd_material_stok, :parqty,'+
            ' :parsatuan, :parketerangan,:parperiode,:pargudang,:parjenis, :parno_permintaan,'+
            ' :parkd_stok,:parstatus,:parno_urut,:parkd_material,:parjmlh_timbang,:partotal_Permt,'+
            ' :partotal_terima,:partimbang,:parstatus_trans,:parsbu,:parthn,:parbln,:partglno)';
            ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material'];
            ParamByName('parqty').Value:=MemMaterial['qty'];
            parambyname('parsatuan').Value:=MemMaterial['satuan'];
            ParamByName('parketerangan').Value:=MemMaterial['ket'];
            ParamByName('parperiode').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
            Parambyname('pargudang').Value:=MemMaterial['gudang'];
            ParamByName('parjenis').Value:=Edjenis.Text;
            ParamByName('parno_permintaan').Value:=Edno.Text;
            Parambyname('parkd_stok').Value:=MemMaterial['kd_stok'];
            ParamByName('parstatus').Value:='Created';
            ParamByName('parno_urut').Value:=Edno_urut.Text;
            ParamByName('parkd_material').Value:=Kode;
            ParamByName('parjmlh_timbang').Value:=edtimbang.Value;
            ParamByName('partotal_Permt').value:=MemMaterial['total'];
            ParamByName('partotal_terima').Value:='0';
            ParamByName('partimbang').Value:=MemMaterial['timbang'];
            ParamByName('parstatus_trans').Value:=st;
            ParamByName('parsbu').AsString:=loksbu;
            ParamByName('parthn').Value:=thn;
            ParamByName('parsbln').Value:=bln;
            ParamByName('partglno').AsString:=tglno;
  ExecSQL;
end;
MemMaterial.Next;
end;
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
end;

procedure TFNew_PercBarang.BSimpanClick(Sender: TObject);
begin
Autonumber;
 if messageDlg ('Yakin Simpan ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    if EdNo.Text='' then
    begin
      MessageDlg('No. Permintaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNo.SetFocus;
      Exit;
    end;
    if Edjenis.Text='' then
    begin
      MessageDlg('Jenis Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edjenis.SetFocus;
      Exit;
    end;
    if DtPeriode.Text='' then
    begin
      MessageDlg('Periode Tidak boleh Kosong ',MtWarning,[MbOk],0);
      DtPeriode.SetFocus;
      Exit;
    end;
    if Edtimbang.Text='0' then
    begin
      MessageDlg('Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edtimbang.SetFocus;
      Exit;
    end;
    MemMaterial.First;
    while not MemMaterial.Eof do
    begin
    if MemMaterial['total_stok'] < MemMaterial['Total'] then
    begin
       ShowMessage(''+MemMaterial['nm_material']+ '  Stok Tidak Mencukupi');
       Exit;
    end;
      MemMaterial.Next;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
      with dm.Qtemp do
        begin
          Close;
          sql.Clear;
          sql.Text:='select * from t_permt_material';
          Execsql;
        end;
        MemMaterial.First;
        while not MemMaterial.Eof do
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='insert into t_permt_material(kd_material_stok, qty,satuan, keterangan,periode,gudang,jenis,'+
                      ' no_permintaan,kd_stok,status,no_urut,kd_material,jmlh_timbang,total_Permt,total_terima,'+
                      ' timbang,status_trans,kd_sbu,thn,bln,tgl_no)values(:parkd_material_stok, :parqty,'+
                      ' :parsatuan, :parketerangan,:parperiode,:pargudang,:parjenis, :parno_permintaan,'+
                      ' :parkd_stok,:parstatus,:parno_urut,:parkd_material,:parjmlh_timbang,:partotal_Permt,'+
                      ' :partotal_terima,:partimbang,:parstatus_trans,:parsbu,:parthn,:parbln,:partglno)';
                      ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material'];
                      ParamByName('parqty').ASfloat:=MemMaterial['qty'];
                      parambyname('parsatuan').Value:=MemMaterial['satuan'];
                      ParamByName('parketerangan').Value:=MemMaterial['ket'];
                      ParamByName('parperiode').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
                      Parambyname('pargudang').Value:=MemMaterial['gudang'];
                      ParamByName('parjenis').Value:=Edjenis.Text;
                      ParamByName('parno_permintaan').Value:=Edno.Text;
                      Parambyname('parkd_stok').Value:=MemMaterial['kd_stok'];
                      ParamByName('parstatus').Value:='Created';
                      ParamByName('parno_urut').Value:=nourut;
                      ParamByName('parkd_material').Value:=Kode;
                      ParamByName('parjmlh_timbang').Value:=edtimbang.Value;
                      ParamByName('partotal_Permt').value:=MemMaterial['total'];
                      ParamByName('partotal_terima').Value:='0';
                      ParamByName('partimbang').Value:=MemMaterial['timbang'];
                      ParamByName('parstatus_trans').Value:='1';
                      ParamByName('parsbu').AsString:=loksbu;
                      ParamByName('parthn').Value:=thn;
                      ParamByName('parbln').Value:=bln;
                      ParamByName('partglno').AsString:=tglno;
            ExecSQL;
          end;
          MemMaterial.Next;
        end;
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
  end;
end;

procedure TFNew_PercBarang.DBGridEh1CellClick(Column: TColumnEh);
begin
MemMaterial.Edit;
MemMaterial['timbang']:=MemMaterial['total']/MemMaterial['qty'];
MemMaterial['ttl']:=Edtimbang.Value*MemMaterial['qty'];
if MemMaterial['total_stok'] < MemMaterial['Total'] then
begin
   ShowMessage(''+MemMaterial['nm_material']+ '  Stok Tidak Mencukupi');
   Exit;
end;
MemMaterial.Post;
end;

procedure TFNew_PercBarang.DBGridEh1ColEnter(Sender: TObject);
begin
MemMaterial.Edit;
MemMaterial['timbang']:=MemMaterial['total']/MemMaterial['qty'];
MemMaterial['ttl']:=Edtimbang.Value*MemMaterial['qty'];
if MemMaterial['total_stok'] < MemMaterial['Total'] then
begin
   ShowMessage(''+MemMaterial['nm_material']+ '  Stok Tidak Mencukupi');
   Exit;
end;
MemMaterial.Post;
end;

procedure TFNew_PercBarang.DBGridEh1Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
//  FSearch_MatSPKFor.Show;
//  FSearch_MatSPKFor.jenistrans:='PermintaanMat';
end;

procedure TFNew_PercBarang.DBGridEh1Columns1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
if loksbu='' then
begin
{  FSearch_KdStok_Permt_Mat.Show;
  with FSearch_KdStok_Permt_Mat.QSupplier do
  begin
    close;
    sql.Clear;
    sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C."Outstanding" as qty, '+
              ' B.kd_material,B.satuan, C.Gudang, D.konversi '+
              ' from t_supplier A inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
              ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
              ' inner join t_konversi_material D on D.kd_material=B.kd_material'+
              ' where B.kd_material='+QuotedStr(MemMaterial['kd_material'])+' and C."Outstanding" > 0'+
              ' order by c.iddetail,c.kd_stok asc' ;
    ExecSQL;
  end;    }
end;
if loksbu <> '' then
begin
{  FSearch_KdStok_Permt_Mat.Show;
  with FSearch_KdStok_Permt_Mat.QSupplier do
  begin
    close;
    sql.Clear;
    sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok,C."Outstanding" as qty, '+
              ' B.kd_material,B.satuan, C.Gudang, D.konversi '+
              ' from t_supplier A inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
              ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
              ' inner join t_konversi_material D on D.kd_material=B.kd_material'+
              ' inner join t_gudang e on c.gudang =e.nm_gudang'+
              ' where B.kd_material='+QuotedStr(MemMaterial['kd_material'])+' and e.kd_sbu='+QuotedStr(loksbu)+''+
              '  and C."Outstanding" > 0 order by c.iddetail,c.kd_stok asc' ;
    ExecSQL;
  end;
end; }
end;
end;

procedure TFNew_PercBarang.EdjenisSelect(Sender: TObject);
var i : Integer;
begin
{  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from warehouse.t_item_stock where item_name='+QuotedStr(Edjenis.Text);
    ExecSQL;
  end;
  Kode:=Dm.Qtemp['item_stock_code'];
  Edkd_material.Text:=Dm.Qtemp['item_stock_code'];
  MemMaterial.EmptyTable;
    with QMaster do
    begin
      close;
      sql.Clear;
      sql.Text:='select A.*,B.item_name from t_mixing_master A inner join t_item B on A.item_code=B.item_code where a.type='+QuotedStr(Edjenis.Text);
      ExecSQL;
    end;
    QMaster.Open;
    QMaster.First;
    while not QMaster.Eof do
    begin
      MemMaterial.Insert;
      MemMaterial['nm_material']:=QMaster['item_name'];
      MemMaterial['kd_material']:=QMaster['item_code'];
      MemMaterial['kd_stok']:=QMaster['item_code'];
      MemMaterial['total']:=0;
      MemMaterial['total_stok']:=0;
      MemMaterial['satuan']:='KG';
      MemMaterial['gudang']:='';
      MemMaterial['ket']:='';
      MemMaterial['qty']:=QMaster['qty'];
      MemMaterial.Post;
      QMaster.Next;
    end;   }
end;

procedure TFNew_PercBarang.EdtimbangChange(Sender: TObject);
begin
if Edtimbang.Text='' then Edtimbang.Text:='0';
MemMaterial.First;
while not MemMaterial.Eof do
begin
  DBGridEh1ColEnter(sender);
  MemMaterial.Next;
end;
end;

procedure TFNew_PercBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_PercBarang.FormCreate(Sender: TObject);
 var i:integer;
begin
 {  sg.Cells[0,0] := 'Kode Barang';
   sg.Cells[1,0] := 'Nama Barang';
   sg.Cells[2,0] := 'Kode Stok';
   sg.Cells[3,0] := 'Index';
   sg.Cells[4,0] := 'Total';
   sg.Cells[5,0] := 'Total Stok';
   sg.Cells[6,0] := 'Satuan';
   sg.Cells[7,0] := 'Timbang';
   sg.Cells[10,0] := 'Gudang';     }

 //  for i:=1 to 100 do
   //   stringgrid1.Cells[0,i] := inttostr(i);
   RealFNew_PercBarang:=self;
end;

procedure TFNew_PercBarang.FormDestroy(Sender: TObject);
begin
   RealFNew_PercBarang:=nil;
end;

procedure TFNew_PercBarang.FormShow(Sender: TObject);
begin
  Qmaterial1.Close;
  Qmaterial1.Close;
  QMaster.Close;
  QMaster.open;
  QGudang.Close;
  QGudang.Open;
end;

end.


