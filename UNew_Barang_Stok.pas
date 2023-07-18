unit UNew_Barang_Stok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Vcl.StdCtrls,
  RzCmboBx, RzButton, Vcl.ExtCtrls, RzBtnEdt;

type
  TFNew_Barang_stok = class(TForm)
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    qty: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Edmerk: TEdit;
    EdSatuan: TEdit;
    Label8: TLabel;
    Label12: TLabel;
    Edstok: TEdit;
    Edkd: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    EdNm_supp: TRzComboBox;
    EdNm_Material1: TRzComboBox;
    Label3: TLabel;
    EdKd_Material: TEdit;
    EdKd_supp: TEdit;
    DtBln: TRzDateTimeEdit;
    DtTh: TRzDateTimeEdit;
    Edhuruf: TEdit;
    Edno: TRzComboBox;
    Label11: TLabel;
    Label13: TLabel;
    Edcategory: TRzComboBox;
    EdNm_Material: TRzButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure EdNm_Material1Select(Sender: TObject);
    procedure EdNm_suppSelect(Sender: TObject);
    procedure EdnoSelect(Sender: TObject);
    procedure EdhurufChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdNm_Material1Change(Sender: TObject);
    procedure EdstokChange(Sender: TObject);
    procedure EdSatuanChange(Sender: TObject);
    procedure EdKd_MaterialChange(Sender: TObject);
    procedure EdKd_suppChange(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure EdcategorySelect(Sender: TObject);
    procedure EdNm_MaterialButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Load;
  end;

Function FNew_Barang_stok: TFNew_Barang_stok;
var nm_material,no_material:String;

implementation

{$R *.dfm}

uses UCari_Barang,UBarang_Stok, UDataModule;
var
  RealFnew_materialstok: TFnew_barang_stok;
function FNew_Barang_stok: TFNew_Barang_stok;
begin
  if RealFnew_materialstok <> nil then
    Fnew_barang_stok:= RealFnew_materialstok
  else
    Application.CreateForm(TFNew_Barang_stok, Result);
end;

Procedure TFNew_Barang_stok.Load;
begin
Edcategory.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Select * from t_category_material';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  Edcategory.Items.Add(Dm.Qtemp['category']);
  EdNm_supp.Clear;
  Dm.Qtemp.Next;
  end;
    with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Select * from t_supplier';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  EdNm_supp.Items.Add(Dm.Qtemp['nm_supplier']);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Barang_stok.EdNm_MaterialButtonClick(Sender: TObject);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='MatStok';
    with QBarang do
    begin
    Close;
    sql.clear;
    SQL.Text:='select kd_material,nm_material,category,no_material,merk,satuan from t_material '+
              ' where category='+QuotedStr(Edcategory.Text)+''+
              ' Group by kd_material,nm_material,category,no_material,merk,satuan '+
              ' order by category,no_material Asc';
      execute;
    end;
  end;
end;

procedure TFNew_Barang_stok.BBatalClick(Sender: TObject);
begin
  Close;
  FBarang_Stok.Show;
  FBarang_Stok.dxBarRefreshClick(sender);
end;

procedure TFNew_Barang_stok.BEditClick(Sender: TObject);
begin
 with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='Select * from t_material_stok';
  ExecSQL;
end;
 with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:=' Update t_material_stok set kd_material=:parkd_mat,kd_supplier=:kd_supp,qty=:parqty,'+
            ' satuan=:parsatuan,no_urut=:parno_urut,merk=:parmerk,kd_urut=:parkd_urut,'+
            ' nm_material=:parnm_mat,no_material=:parno_mat where kd_material_stok=:parkd_mat_stok';
            ParamByName('parkd_mat').Value:=EdKd_Material.Text;
            ParamByName('kd_supp').Value:=EdKd_supp.Text;
            ParamByName('parqty').Value:=Edstok.Text;
            ParamByName('parsatuan').Value:=EdSatuan.Text;
            ParamByName('parno_urut').Value:=Edno.Text;
            ParamByName('parmerk').Value:=Edmerk.Text;
            ParamByName('parkd_urut').Value:=Edhuruf.Text;
            ParamByName('parnm_mat').Value:=EdNm_Material.Text;
            ParamByName('parno_mat').Value:=no_material;
            ParamByName('parkd_mat_stok').Value:=Edkd.Text;
  ExecSQL;
  end;
 with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:=' Update t_material_stok_prod set kd_material=:parkd_mat,kd_supplier=:kd_supp,qty=:parqty,'+
            ' satuan=:parsatuan,no_urut=:parno_urut,merk=:parmerk,kd_urut=:parkd_urut,'+
            ' nm_material=:parnm_mat,no_material=:parno_mat where kd_material_stok=:parkd_mat_stok';
            ParamByName('parkd_mat').Value:=EdKd_Material.Text;
            ParamByName('kd_supp').Value:=EdKd_supp.Text;
            ParamByName('parqty').Value:=Edstok.Text;
            ParamByName('parsatuan').Value:=EdSatuan.Text;
            ParamByName('parno_urut').Value:=Edno.Text;
            ParamByName('parmerk').Value:=Edmerk.Text;
            ParamByName('parkd_urut').Value:=Edhuruf.Text;
            ParamByName('parnm_mat').Value:=EdNm_Material.Text;
            ParamByName('parno_mat').Value:=no_material;
            ParamByName('parkd_mat_stok').Value:=Edkd.Text;
  ExecSQL;
  end;
 with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:=' Update t_material_stok_test set kd_material=:parkd_mat,kd_supplier=:kd_supp,qty=:parqty,'+
            ' satuan=:parsatuan,no_urut=:parno_urut,merk=:parmerk,kd_urut=:parkd_urut,'+
            ' nm_material=:parnm_mat,no_material=:parno_mat where kd_material_stok=:parkd_mat_stok';
            ParamByName('parkd_mat').Value:=EdKd_Material.Text;
            ParamByName('kd_supp').Value:=EdKd_supp.Text;
            ParamByName('parqty').Value:=Edstok.Text;
            ParamByName('parsatuan').Value:=EdSatuan.Text;
            ParamByName('parno_urut').Value:=Edno.Text;
            ParamByName('parmerk').Value:=Edmerk.Text;
            ParamByName('parkd_urut').Value:=Edhuruf.Text;
            ParamByName('parnm_mat').Value:=EdNm_Material.Text;
            ParamByName('parno_mat').Value:=no_material;
            ParamByName('parkd_mat_stok').Value:=Edkd.Text;
  ExecSQL;
  end;
  ShowMessage('Data Berhasil di Update');
  BBatalClick(sender);
end;

procedure TFNew_Barang_stok.BSimpanClick(Sender: TObject);
begin
if EdNm_Material.Text='' then
begin
  MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
  EdNm_Material.SetFocus;
  Exit;
end;
 with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='Select * from t_material_stok';
  ExecSQL;
end;
with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='insert into t_material_stok(kd_material_stok, kd_material,kd_supplier, qty, satuan, no_urut, merk, kd_urut,nm_material,no_material)'+
            ' values('+QuotedStr(Edkd.Text)+', '+quotedstr(EdKd_Material.Text)+', '+QuotedStr(EdKd_supp.Text)+' '+
            ', '+QuotedStr(Edstok.Text)+', '+QuotedStr(EdSatuan.Text)+', '+QuotedStr(EdNo.Text)+', '+QuotedStr(Edmerk.Text)+','+
            ' '+QuotedStr(Edhuruf.Text)+','+QuotedStr(EdNm_Material.Text)+','+QuotedStr(no_material)+')';
  ExecSQL;
  end;

with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='insert into t_material_stok_prod(kd_material_stok, kd_material,kd_supplier, qty, satuan, no_urut, merk, kd_urut,nm_material,no_material)'+
            ' values('+QuotedStr(Edkd.Text)+', '+quotedstr(EdKd_Material.Text)+', '+QuotedStr(EdKd_supp.Text)+' '+
            ', '+QuotedStr(Edstok.Text)+', '+QuotedStr(EdSatuan.Text)+', '+QuotedStr(EdNo.Text)+', '+QuotedStr(Edmerk.Text)+','+
            ' '+QuotedStr(Edhuruf.Text)+','+QuotedStr(EdNm_Material.Text)+','+QuotedStr(no_material)+')';
  ExecSQL;
  end;
with dm.Qtemp do
begin
  close;
  sql.clear;
  sql.Text:='insert into t_material_stok_test(kd_material_stok, kd_material,kd_supplier, qty, satuan, no_urut, merk, kd_urut,nm_material,no_material)'+
            ' values('+QuotedStr(Edkd.Text)+', '+quotedstr(EdKd_Material.Text)+', '+QuotedStr(EdKd_supp.Text)+' '+
            ', '+QuotedStr(Edstok.Text)+', '+QuotedStr(EdSatuan.Text)+', '+QuotedStr(EdNo.Text)+', '+QuotedStr(Edmerk.Text)+','+
            ' '+QuotedStr(Edhuruf.Text)+','+QuotedStr(EdNm_Material.Text)+','+QuotedStr(no_material)+')';
  ExecSQL;
  end;
  ShowMessage('Data Berhasil di Simpan');
  BBatalClick(sender);
end;

procedure TFNew_Barang_stok.EdcategorySelect(Sender: TObject);
begin
 with Dm.Qtemp do
  begin
    close;
    sql.Text:='select kd_material,nm_material,category,no_material from t_material '+
              ' where category='+QuotedStr(Edcategory.Text)+''+
              ' Group by kd_material,nm_material,category,no_material '+
              ' order by category,no_material Asc';
    ExecSQL;
  end;
  EdNm_Material1.Clear;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  EdNm_Material1.Items.Add(Dm.Qtemp.FieldByName('no_material').AsString+' '+Dm.Qtemp.FieldByName('nm_material').AsString);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Barang_stok.EdhurufChange(Sender: TObject);
begin
//   Edkd.Text:=EdKd_Material.Text+Edhuruf.Text;
end;

procedure TFNew_Barang_stok.EdKd_MaterialChange(Sender: TObject);
begin
   Edkd.Text:=EdKd_Material.Text+Edhuruf.Text;
end;

procedure TFNew_Barang_stok.EdKd_suppChange(Sender: TObject);
begin
   Edkd.Text:=EdKd_Material.Text+Edhuruf.Text;
end;

procedure TFNew_Barang_stok.EdNm_Material1Change(Sender: TObject);
begin
//if EdKd_Material.Text='' then  EdNm_supp.Enabled:=False else
end;

procedure TFNew_Barang_stok.EdNm_Material1Select(Sender: TObject);
begin
with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_material where concat(no_material,'' '', nm_material)='+QuotedStr(EdNm_material.Text);
    ExecSQL;
  end;
  EdKd_Material.Text:=Dm.Qtemp.FieldByName('kd_material').AsString;
  Edmerk.Text:=Dm.Qtemp.FieldByName('merk').AsString;
  nm_material:=Dm.Qtemp.FieldByName('nm_material').AsString;
  no_material:=Dm.Qtemp.FieldByName('no_material').AsString;
  EdSatuan.Text:=Dm.Qtemp.FieldByName('satuan').AsString;
  EdNm_supp.Enabled:=True;
end;

procedure TFNew_Barang_stok.EdNm_suppSelect(Sender: TObject);
begin
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_supplier where nm_supplier='+QuotedStr(EdNm_supp.Text);
    ExecSQL;
  end;
  EdKd_supp.Text:=Dm.Qtemp.FieldByName('kd_supplier').AsString;
  FBarang_Stok.Autonumber;
  Edkd.Text:=EdKd_Material.Text+EdKd_supp.Text;
  //EdnoSelect(sender);
  Edstok.Enabled:=true;
end;

procedure TFNew_Barang_stok.EdnoSelect(Sender: TObject);
begin
if Edno.Text='1' then Edhuruf.Text:='A' else
if Edno.Text='2' then Edhuruf.Text:='B' else
if Edno.Text='3' then Edhuruf.Text:='C' else
if Edno.Text='4' then Edhuruf.Text:='D' else
if Edno.Text='5' then Edhuruf.Text:='E' else
if Edno.Text='6' then Edhuruf.Text:='F' else
if Edno.Text='7' then Edhuruf.Text:='G' else
if Edno.Text='8' then Edhuruf.Text:='H' else
if Edno.Text='9' then Edhuruf.Text:='I' else
if Edno.Text='10' then Edhuruf.Text:='J' else
if Edno.Text='11' then Edhuruf.Text:='K' else
if Edno.Text='12' then Edhuruf.Text:='L' else
end;

procedure TFNew_Barang_stok.EdSatuanChange(Sender: TObject);
begin
Edmerk.Enabled:=true;
end;

procedure TFNew_Barang_stok.EdstokChange(Sender: TObject);
begin
EdSatuan.Enabled:=true;
if Edstok.Text='' then edstok.Text:='0';
end;

procedure TFNew_Barang_stok.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Barang_stok.FormCreate(Sender: TObject);
begin
  RealFnew_materialstok:=self;
end;

procedure TFNew_Barang_stok.FormDestroy(Sender: TObject);
begin
  RealFnew_materialstok:=nil;
end;

procedure TFNew_Barang_stok.FormShow(Sender: TObject);
begin
  DtBln.Date:=now;
  DtTh.Date:=now;
  Self.Load;
end;

end.
