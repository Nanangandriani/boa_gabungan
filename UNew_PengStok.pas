unit UNew_PengStok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzBtnEdt,
  Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons;

type
  TFNew_PengStok = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGriddetail: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Edno: TRzEdit;
    DtTransfer: TRzDateTimeEdit;
    EdKet: TMemo;
    CbGudang: TRzComboBox;
    Edkd_stok: TEdit;
    Edkd_Barang: TRzEdit;
    EdNm_Barang: TRzButtonEdit;
    Memdetail: TMemTableEh;
    DsDetail: TDataSource;
    edkdbr: TRzEdit;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure EdNm_BarangButtonClick(Sender: TObject);
    procedure DBGriddetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSimpanClick(Sender: TObject);
    procedure CbGudangSelect(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure Edkd_BarangChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    satuan:string;
    th,sp,kdgd,nogd,nama,bln,tglno,nourut,nourut2:string;
    status:Integer;
    Procedure simpan;
    Procedure Update;
  end;

Function FNew_PengStok: TFNew_PengStok;

implementation

{$R *.dfm}

uses  UItem_TransferBarang,UPeng_stok,Umainmenu, UDataModule, UMy_Function,
  UCari_Barang2;
var
  RealFNew_PengStok: TFNew_PengStok;

function FNew_PengStok: TFNew_PengStok;
begin
  if RealFNew_PengStok <> nil then
    FNew_PengStok:= RealFNew_PengStok
  else
    Application.CreateForm(TFNew_PengStok, Result);
end;

procedure TFNew_PengStok.simpan;
begin
//Autonumber;
  idmenu:='M4105';
  strday2:=DtTransfer.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_comb','');
if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
//  Autonumber2;
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Insert into warehouse.t_item_comb(trans_no,wh_code,item_code,trans_date,note,trans_year,sbu_code,qty,unit,stock_code,created_by,trans_month,trans_day,order_no,order_no2)'+
              'values(:parno,:parkd_gd,:parkd_mat,:partgl,:parket,:parth,:parkd_sbu,:parqty,:parsatuan,:parkd_stok,:parpic,:parbln,:partglno,:parnourut,:parnourut2)';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_gd').asstring:=nogd;
     parambyname('parkd_mat').asstring:=Edkd_Barang.Text;
     parambyname('partgl').asstring:=formatdatetime('yyy-mm-dd',dttransfer.date);
     parambyname('parket').asstring:=edket.text;
     parambyname('parth').asstring:=th;
     parambyname('parkd_sbu').asstring:=loksbu;
     parambyname('parqty').asstring:=DBGriddetail.Columns[3].Footer.sumvalue;
     parambyname('parsatuan').asstring:=satuan;
     parambyname('parkd_stok').asstring:=Edkd_stok.Text;
     parambyname('parpic').asstring:=nama;
     parambyname('parbln').asstring:=bln;
     parambyname('partglno').asstring:=tglno;
     parambyname('parnourut').asstring:=nourut;
     parambyname('parnourut2').asstring:=nourut2;
    ExecSQL;
  end;
  Memdetail.First;
  while not Memdetail.Eof do
  begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Insert into warehouse.t_item_comb_det(item_stock_code,stock_code_old,qty,unit,trans_no)'+
              'values(:parkd_mat,:parkd_stok,:parqty,:parsatuan,:parno)';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_mat').asstring:=Memdetail['kd_material'];
     parambyname('parqty').asstring:=Memdetail['qty'];
     parambyname('parsatuan').asstring:=Memdetail['satuan'];
     parambyname('parkd_stok').asstring:=Memdetail['kd_stok'];
    ExecSQL;
  end;
    Memdetail.Next;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;
end;

procedure TFNew_PengStok.Update;
begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Update t_pengabungan_stok set kd_gudang=:parkd_gd,kd_material=:parkd_mat,tgl=:partgl,'+
    ' ket=:parket,kd_sbu=:parkd_sbu,qty=:parqty,satuan=:parsatuan,kd_stok=:parkd_stok,pic=:parpic'+
    ' where no_trans=:parno';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_gd').asstring:=nogd;
     parambyname('parkd_mat').asstring:=Edkd_Barang.Text;
     parambyname('partgl').asstring:=formatdatetime('yyy-mm-dd',dttransfer.date);
     parambyname('parket').asstring:=edket.text;
     parambyname('parkd_sbu').asstring:=loksbu;
     parambyname('parqty').asstring:=DBGriddetail.Columns[3].Footer.sumvalue;
     parambyname('parsatuan').asstring:=satuan;
     parambyname('parkd_stok').asstring:=Edkd_stok.Text;
     parambyname('parpic').asstring:=nama;
    ExecSQL;
  end;
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='delete from t_pengabungan_stokdet where no_trans='+QuotedStr(edno.Text);
    ExecSQL;
  end;
  Memdetail.First;
  while not Memdetail.Eof do
  begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Insert into t_pengabungan_stokdet(kd_material_stok,kd_stok_lama,qty,satuan,no_trans)'+
              'values(:parkd_mat,:parkd_stok,:parqty,:parsatuan,:parno)';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_mat').asstring:=Memdetail['kd_material'];
     parambyname('parqty').asstring:=Memdetail['qty'];
     parambyname('parsatuan').asstring:=Memdetail['satuan'];
     parambyname('parkd_stok').asstring:=Memdetail['kd_stok'];
    ExecSQL;
  end;
    Memdetail.Next;
  end;
  MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFNew_PengStok.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFNew_PengStok.BitBtn1Click(Sender: TObject);
begin
  idmenu:='M4105';
  strday2:=DtTransfer.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_comb','');
end;

procedure TFNew_PengStok.BSimpanClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    if DtTransfer.text='' then
    begin
      MessageDlg('Tanggal Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      DtTransfer.SetFocus;
      Exit;
    end;
    if CbGudang.Text='' then
    begin
      MessageDlg('Gudang Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      CbGudang.SetFocus;
      Exit;
    end;
    if EdNm_Barang.Text='' then
    begin
      MessageDlg('Barang Tidak Boleh Kosong ',MtWarning,[MbOk],0);
      EdNm_Barang.SetFocus;
      Exit;
    end;
    if statustr=0 then
    begin
      simpan;
      Dm.Koneksi.Commit;
    end;
    if statustr=1 then
    begin
      update;
      Dm.Koneksi.Commit;
    end;
    FPeng_Stok.ActRoExecute(sender);
    Except on E :Exception do
    begin
       begin
    //  MessageDlg('Silahkan ulangi proses simpan..!!', MtError,[mbok],0);
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
   close;
  idmenu:='M4105';
  strday2:=DtTransfer.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_transfer','');
end;

procedure TFNew_PengStok.CbGudangSelect(Sender: TObject);
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='select * from t_wh where wh_name='+QuotedStr(CbGudang.Text);
  Execute;
end;
  kdgd:=dm.Qtemp['wh_code'];
  nogd:=dm.Qtemp['code'];
end;

procedure TFNew_PengStok.DBGriddetailColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
 with FItem_TransferBarang do
 begin
    Show;
     statustr:='ps';
     if loksbu='' then
     begin
      with Qbarang do
       begin
         close;
         sql.Clear;
         sql.Text:='select a.*,b.*,c.supplier_name from warehouse.t_item_stock_det a inner join warehouse.t_item_stock b on '+
              ' a.item_stock_code=b.item_stock_code inner join t_supplier c on '+
              ' b.supplier_code=c.supplier_code '+
              ' INNER JOIN t_wh d on a.wh_code=d.code '+
              ' where a."outstanding" > 0 and b.Item_code='+QuotedStr(edkdbr.Text);
         ExecSQL;
       end;
     end;
     if loksbu<>'' then
     begin
            with Qbarang do
     begin
       close;
       sql.Clear;
       sql.Text:='select a.*,b.*,c.supplier_name from warehouse.t_item_stock_det a inner join warehouse.t_item_stock b on '+
            ' a.item_stock_code=b.item_stock_code inner join t_supplier c on '+
            ' b.supplier_code=c.supplier_code '+
            ' INNER JOIN t_wh d on a.wh_code=d.code '+
            ' where a."outstanding" > 0 and d.kd_sbu='+QuotedStr(loksbu)+' AND b.Item_code='+QuotedStr(edkdbr.Text);
       ExecSQL;
     end;
     end;
 end;
end;

procedure TFNew_PengStok.Edkd_BarangChange(Sender: TObject);
begin
//  Autonumber2;
end;

procedure TFNew_PengStok.EdNm_BarangButtonClick(Sender: TObject);
begin
  FSearch_Barang.show;
end;

procedure TFNew_PengStok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_PengStok.FormCreate(Sender: TObject);
begin
  RealFNew_PengStok:=self;
end;

procedure TFNew_PengStok.FormDestroy(Sender: TObject);
begin
  RealFNew_PengStok:=nil;
end;

procedure TFNew_PengStok.FormShow(Sender: TObject);
begin
  Memdetail.Close;
  Memdetail.Open;
  Memdetail.EmptyTable;
  DtTransfer.Date:=now;
  Edno.Clear;
  Edkd_Barang.Clear;
  EdNm_Barang.Clear;
  EdKet.Clear;
  Edkd_stok.Clear;
  CbGudang.Clear;
  if loksbu='' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh order by wh_name asc';
      Execute;
    end;
    dm.Qtemp.First;
    while not dm.Qtemp.eof do
    begin
      CbGudang.Items.Add(dm.Qtemp['wh_name']);
      dm.Qtemp.Next;
    end;
  end;
  if loksbu<>'' then
  begin
      with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh where kd_sbu='+QuotedStr(loksbu)+' order by wh_name asc';
      Execute;
    end;
    dm.Qtemp.First;
    while not dm.Qtemp.eof do
    begin
      CbGudang.Items.Add(dm.Qtemp['wh_name']);
      dm.Qtemp.Next;
    end;
  end;
end;

end.
