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
    Procedure Simpan;
    Procedure Update;
  end;

Function FNew_PercBarang: TFNew_PercBarang;
var  nourut,Kode,status,thn,bln,tglno:string;

implementation

{$R *.dfm}

//uses Udatamodule, USearch_KdStok_PermtMat, UPermintaan_Material,UMainmenu,USearch_MatSpkFor;
uses UDataModule,UMainMenu, UPercampuran_Barang, UMaster_PercBarang,
  UCari_Barang, UMy_Function, UCari_Barang2;

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

Procedure TFNew_PercBarang.Simpan;
begin
  idmenu:='M04006';
  strday2:=DtPeriode.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_mixing','');
  with dm.Qtemp do
   begin
    Close;
    sql.Clear;
    sql.Text:='select * from warehouse.t_item_mixing';
    Execsql;
   end;
   MemMaterial.First;
   while not MemMaterial.Eof do
    begin
     with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='insert into warehouse.t_item_mixing(item_stock_code,qty,unit,note,periode,wh_code,"type",mixing_no,'+
        ' stock_code,status,order_no,item_code,weigh_amount,total_request,total_received,weigh,trans_status,'+
        ' sbu_code,trans_year,trans_month,trans_day)values(:parkd_material_stok,:parqty,:parsatuan, '+
        ' :parketerangan,:parperiode,:pargudang,:parjenis,:parno_permintaan,:parkd_stok,:parstatus, '+
        ' :parno_urut,:parkd_material,:parjmlh_timbang,:partotal_Permt,:partotal_terima,:partimbang,'+
        ' :parstatus_trans,:parsbu,:parthn,:parbln,:partglno)';
        ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material'];
        ParamByName('parqty').Value:=MemMaterial['qty'];
        parambyname('parsatuan').Value:=MemMaterial['satuan'];
        ParamByName('parketerangan').Value:=MemMaterial['ket'];
        ParamByName('parperiode').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
        Parambyname('pargudang').Value:=MemMaterial['kd_gudang'];
        ParamByName('parjenis').Value:=Edjenis.Text;
        ParamByName('parno_permintaan').Value:=Edno.Text;
        Parambyname('parkd_stok').Value:=MemMaterial['kd_stok'];
        ParamByName('parstatus').Value:='Created';
        ParamByName('parno_urut').Value:=order_no;
        ParamByName('parkd_material').Value:=Kode;
        ParamByName('parjmlh_timbang').Value:=edtimbang.Value;
        ParamByName('partotal_Permt').value:=MemMaterial['total'];
        ParamByName('partotal_terima').Value:='0';
        ParamByName('partimbang').Value:=MemMaterial['timbang'];
        ParamByName('parstatus_trans').Value:='0';//st;
        ParamByName('parsbu').AsString:=loksbu;
        ParamByName('parthn').Value:=vthn;
        ParamByName('parbln').Value:=vbln;
        ParamByName('partglno').AsString:=vtgl;
        execSQL;
      end;
        MemMaterial.Next;
    end;
end;

Procedure TFNew_PercBarang.Update;
begin
  with dm.Qtemp do
  begin
   Close;
   sql.Clear;
   sql.Text:='delete from warehouse.t_item_mixing where mixing_no='+QuotedStr(Edno.Text);
   Execsql;
  end;
  MemMaterial.First;
  while not MemMaterial.Eof do
  begin
   with dm.Qtemp do
   begin
    close;
    sql.Clear;
    sql.Text:='insert into warehouse.t_item_mixing(item_stock_code,qty,unit,note,periode,wh_code,"type",mixing_no,'+
    ' stock_code,status,order_no,item_code,weigh_amount,total_request,total_received,weigh,trans_status,'+
    ' sbu_code,trans_year,trans_month,trans_day)values(:parkd_material_stok,:parqty,:parsatuan, '+
    ' :parketerangan,:parperiode,:pargudang,:parjenis,:parno_permintaan,:parkd_stok,:parstatus, '+
    ' :parno_urut,:parkd_material,:parjmlh_timbang,:partotal_Permt,:partotal_terima,:partimbang,'+
    ' :parstatus_trans,:parsbu,:parthn,:parbln,:partglno)';
    ParamByName('parkd_material_stok').Value:=MemMaterial['kd_material'];
    ParamByName('parqty').Value:=MemMaterial['qty'];
    parambyname('parsatuan').Value:=MemMaterial['satuan'];
    ParamByName('parketerangan').Value:=MemMaterial['ket'];
    ParamByName('parperiode').Value:=FormatDateTime('yyy-mm-dd',DtPeriode.Date);
    Parambyname('pargudang').Value:=MemMaterial['kd_gudang'];
    ParamByName('parjenis').Value:=Edjenis.Text;
    ParamByName('parno_permintaan').Value:=Edno.Text;
    Parambyname('parkd_stok').Value:=MemMaterial['kd_stok'];
    ParamByName('parstatus').Value:='Created';
    ParamByName('parno_urut').Value:=order_no;
    ParamByName('parkd_material').Value:=Kode;
    ParamByName('parjmlh_timbang').Value:=edtimbang.Value;
    ParamByName('partotal_Permt').value:=MemMaterial['total'];
    ParamByName('partotal_terima').Value:='0';
    ParamByName('partimbang').Value:=MemMaterial['timbang'];
    ParamByName('parstatus_trans').Value:='0';//st;
    ParamByName('parsbu').AsString:=loksbu;
    ParamByName('parthn').Value:=vthn;
    ParamByName('parbln').Value:=vbln;
    ParamByName('partglno').AsString:=vtgl;
    ParamByName('parkd_material').asstring:=Edkd_material.Text;
    execSQL;
   end;
   MemMaterial.Next;
  end;
end;

procedure TFNew_PercBarang.SpeedButton1Click(Sender: TObject);
begin
  with FMaster_PercBarang do
  begin
    Show;
    clear;
    PnlNew.visible:=false;
    Pnllist.visible:=true;
  end;
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

procedure TFNew_PercBarang.BSimpanClick(Sender: TObject);
begin
//Autonumber;
 if messageDlg ('Yakin Simpan ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
 {   if EdNo.Text='' then
    begin
      MessageDlg('No. Permintaan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdNo.SetFocus;
      Exit;
    end;   }
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
      if statustr=0 then
      begin
        simpan;
        dm.koneksi.Commit;
      end;
      if statustr=1 then
      begin
        Update;
        dm.koneksi.Commit;
      end;
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
  if MemMaterial['total_stok'] < MemMaterial['ttl'] then
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
  if MemMaterial['total_stok'] < MemMaterial['ttl'] then
  begin
     ShowMessage(''+MemMaterial['nm_material']+ '  Stok Tidak Mencukupi');
     Exit;
  end;
  MemMaterial.Post;
end;

procedure TFNew_PercBarang.DBGridEh1Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FCari_Barang.Show;
  Vmenu:='7';
  FCari_Barang.QBarang.Close;
  FCari_Barang.QBarang.Open;
end;

procedure TFNew_PercBarang.DBGridEh1Columns1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if loksbu='' then
  begin
    VMenu:='1';
    FCari_Barang2.Show;
    with FCari_Barang2.Qbarang do
    begin
      close;
      sql.Clear;
      sql.Text:=' Select a.*,b.item_name,c.supplier_name,d.wh_name from warehouse.t_item_stock_det a INNER JOIN warehouse.t_item_stock b on a.item_stock_code=b.item_stock_code'+
      ' INNER JOIN t_supplier c on b.supplier_code=c.supplier_code left join t_wh d on a.wh_code=d.wh_code'+
      ' where b.item_code='+QuotedStr(MemMaterial['kd_material'])+' and a."outstanding" > 0' ;
      ExecSQL;
    end;
  end;
  if loksbu <> '' then
  begin
    VMenu:='1';
    FCari_Barang2.Show;
    with FCari_Barang2.Qbarang do
    begin
      close;
      sql.Clear;
      sql.Text:=' Select a.*,b.item_name,c.supplier_name,d.wh_name from warehouse.t_item_stock_det a INNER JOIN warehouse.t_item_stock b on a.item_stock_code=b.item_stock_code'+
      ' INNER JOIN t_supplier c on b.supplier_code=c.supplier_code left join t_wh d on a.wh_code=d.wh_code'+
      ' where b.item_code='+QuotedStr(MemMaterial['kd_material'])+' and a."outstanding" > 0'+
      ' and d.sbu_code='+QuotedStr(loksbu);
      ExecSQL;
    end;
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
  with dm.Qtemp do
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
      sql.Text:='select A.*,B.item_name,b.unit,c.item_name tp from warehouse.t_mixing_master A inner join t_item B on A.item_code=B.item_code  inner join t_item c on A. type_code=c.item_code where c.item_name='+QuotedStr(Edjenis.Text);
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
      MemMaterial['satuan']:=QMaster['unit'];
      MemMaterial['gudang']:='';
      MemMaterial['ket']:='';
      MemMaterial['qty']:=QMaster['qty'];
      MemMaterial.Post;
      QMaster.Next;
    end;
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


