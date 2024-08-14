// CR Ds 18-12-2020
//  Komponen RzComponen,Devexppress,Ehlib
unit UNew_TerimaAmplop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzCmboBx, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, RzEdit, Vcl.Mask;

type
  TFNew_TerimaAmplop = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Panel1: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edno: TRzEdit;
    Dttanggal: TRzDateTimeEdit;
    Ednm_material: TComboBox;
    Edkd_material: TEdit;
    Edsatuan: TRzComboBox;
    EdGudang: TRzComboBox;
    Edkd_stok: TRzComboBox;
    edno_material: TEdit;
    EdSupplier: TRzComboBox;
    EdHarga: TRzEdit;
    Edtotal: TRzEdit;
    EdNo_Permt: TRzComboBox;
    edqty: TRzNumericEdit;
    procedure Ednm_materialSelect(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdGudangSelect(Sender: TObject);
    procedure EdSupplierSelect(Sender: TObject);
    procedure EdqtyChange(Sender: TObject);
    procedure EdHargaChange(Sender: TObject);
    procedure EdtotalChange(Sender: TObject);
    procedure EdNo_PermtChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Autonumber2;
    Procedure Clear;
    Procedure Load;
  end;

//var
function  FNew_TerimaAmplop: TFNew_TerimaAmplop;
Var
  Thn,kd_gdng,nourut:String;
  Status:integer;

implementation

{$R *.dfm}

uses UDatamodule, UTerima_Amplop, UMainmenu, UMy_Function;
var
  realfNew_terimaap : TFNew_TerimaAmplop;
// implementasi function
function FNew_TerimaAmplop: TFNew_TerimaAmplop;
begin
  if realfNew_terimaap <> nil then
    FNew_TerimaAmplop:= realfNew_terimaap
  else
    Application.CreateForm(TFNew_TerimaAmplop, Result);
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

procedure TFNew_TerimaAmplop.Autonumber;
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
 DecodeDate(Dttanggal.Date, yy,M,d );
 Thn:=intTostr(yy);
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
    sql.Text:='select MAX(right(left(no_terima,6),3)) as urut from t_terima_material3 where tahun='+QuotedStr(Thn);
    open;
  end;
   if dm.Qtemp['urut']= '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
//  EdNo.Text:= 'AP/'+EditComplete+ '/'+maxmy + '/'+ Kd_sbu;
end;

procedure TFNew_TerimaAmplop.Autonumber2;
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
 DecodeDate(Dttanggal.Date, yy,M,d );
 Thn:=intTostr(yy);
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
    sql.Text:='select max("left"(order_no,3)) as nourut from purchase.t_item_receive_det where item_stock_code='+QuotedStr(Edkd_material.Text)+''+
              ' and trans_year='+QuotedStr(thn);
    open;
  end;
   if dm.Qtemp['nourut']= null then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['nourut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
 with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_wh where wh_name='+QuotedStr(EdGudang.Text);
    open;
  end;
 with dm.Qtemp3 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_supplier where supplier_name='+QuotedStr(EdSupplier.Text);
    open;
  end;
  Edkd_stok.Text:= edno_material.Text+ '/'+DM.QTemp3['supplier_code']+'/'+EditComplete+'/'+dm.QTemp2['wh_code']+'/'+yn;
  nourut:=EditComplete;
  end;

Procedure TFNew_TerimaAmplop.Load;
begin
  if loksbu='' then
  begin
  EdGudang.Clear;
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh where category=''BAHAN KEMASAN'' or category=''LAIN-LAIN''';
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdGudang.items.Add(Dm.Qtemp['wh_name']);
      Dm.Qtemp.Next;
    end;
    EdNo_Permt.Clear;
      with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from warehouse.t_item_request2 where Status=''0'''; // and (kd_material_stok=''ETKA'' or kd_material_stok=''ETKB'' or kd_material_stok=''ETKC'' or kd_material_stok=''ETKD'')';
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdNo_Permt.items.Add(Dm.Qtemp['request_no']);
      Dm.Qtemp.Next;
    end;
  end;
  if loksbu<>'' then
  begin
  EdGudang.Clear;
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh where (category=''BAHAN KEMASAN'' or category=''LAIN-LAIN'') AND sbu_code='+QuotedStr(loksbu);
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdGudang.items.Add(Dm.Qtemp['wh_name']);
      Dm.Qtemp.Next;
    end;
    EdNo_Permt.Clear;
      with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from warehouse.t_item_request2 where Status=''0'' and sbu_code='+Quotedstr(loksbu); // and (kd_material_stok=''ETKA'' or kd_material_stok=''ETKB'' or kd_material_stok=''ETKC'' or kd_material_stok=''ETKD'')';
      Execute;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      EdNo_Permt.items.Add(Dm.Qtemp['request_no']);
      Dm.Qtemp.Next;
    end;
  end;
end;

procedure TFNew_TerimaAmplop.BBatalClick(Sender: TObject);
begin
  close;
  FTerima_amplop.dxbarRefreshClick(sender);
end;

procedure TFNew_TerimaAmplop.BSimpanClick(Sender: TObject);
begin
//Autonumber;
  if messageDlg ('Anda Yakin Simpan ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    if Dttanggal.Text='' then
    begin
      MessageDlg('Tanggal Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Dttanggal.SetFocus;
      Exit;
    end;
    if Ednm_material.Text='' then
    begin
      MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Ednm_material.SetFocus;
      Exit;
    end;
    if EdSupplier.Text='' then
    begin
      MessageDlg('Nama Supplier Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdSupplier.SetFocus;
      Exit;
    end;
    if Edqty.Text='0' then
    begin
      MessageDlg('Quantum Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edqty.SetFocus;
      Exit;
    end;
    if Edsatuan.Text='' then
    begin
      MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Edsatuan.SetFocus;
      Exit;
    end;
    {if EdHarga.Text='0' then
    begin
      MessageDlg('Harga Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdHarga.SetFocus;
      Exit;
    end;    }
    if EdGudang.Text='' then
    begin
      MessageDlg('Gudang Tidak boleh Kosong ',MtWarning,[MbOk],0);
      EdGudang.SetFocus;
      Exit;
    end;
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
      if status=0 then
        begin
          idmenu:='M04009';
          strday2:=DtTanggal.Date;
          Edno.Text:=getNourut(strday2,'warehouse.t_item_receive3','');
         with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='insert into warehouse.t_item_receive3(item_stock_code,stock_code,qty,unit,wh_code, '+
                      ' trans_year,receive_no,trans_date,price,total_price,request_no,order_no,created_by,trans_month,trans_day)values('+
                      ' :parkd_material_stok,:parkd_stok,:parqty,:parsatuan,:pargudang,:partahun, '+
                      ' :parno_terima,:partgl_terima,:parharga,:partotal_harga,:parno_permt,:parnourut,:pic,:bln,:hari)';
                      ParamByName('parkd_material_stok').Value:=Edkd_material.Text;
                      ParamByName('parkd_stok').Value:=Edkd_stok.Text;
                      ParamByName('parqty').Value:=Edqty.value;
                      ParamByName('parsatuan').Value:=Edsatuan.Text;
                      ParamByName('pargudang').Value:=kd_gdng;
                      ParamByName('partahun').Value:=VThn;
                      ParamByName('parno_terima').Value:=Edno.Text;
                      ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dttanggal.Date);
                      ParamByName('parharga').Value:=EdHarga.Text;
                      ParamByName('partotal_harga').Value:=Edtotal.Text;
                      ParamByName('parno_permt').Value:=EdNo_Permt.Text;
                      ParamByName('parnourut').Value:=order_no;
                      ParamByName('pic').Value:=nm;
                      ParamByName('bln').Value:=vbln;
                      ParamByName('hari').Value:=Vtgl;
            ExecSQL;
          end;
            with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update warehouse.t_item_request2 set status=''1'' where request_no='+QuotedStr(EdNo_Permt.Text);
            ExecSQL;
          end;
        end;
        if status=1 then
        begin
          with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:='Update warehouse.t_item_receive3 set item_stock_code=:parkd_material_stok,  '+
                      ' stock_code=:parkd_stok,qty=:parqty,unit=:parsatuan,wh_code=:pargudang, '+
                      ' trans_year=:partahun,trans_date=:partgl_terima,price=:parharga,total_price='+
                      ' :partotal_harga,request_no=:parno_permt,updated_at=now(),updated_by=:pic where receive_no=:parno_terima';
                      ParamByName('parkd_material_stok').Value:=Edkd_material.Text;
                      ParamByName('parkd_stok').Value:=Edkd_stok.Text;
                      ParamByName('parqty').Value:=Edqty.value;
                      ParamByName('parsatuan').Value:=Edsatuan.Text;
                      ParamByName('pargudang').Value:=kd_gdng;
                      ParamByName('partahun').Value:=Thn;
                      ParamByName('parno_terima').Value:=Edno.Text;
                      ParamByName('partgl_terima').Value:=FormatDateTime('yyyy-mm-dd',Dttanggal.Date);
                      ParamByName('parharga').Value:=EdHarga.Text;
                      ParamByName('partotal_harga').Value:=Edtotal.Text;
                      ParamByName('parno_permt').Value:=EdNo_Permt.Text;
                      ParamByName('pic').Value:=nm;
            ExecSQL;
          end;
        end;
        Dm.koneksi.Commit;
        Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
        BBatalClick(sender);
      end
        Except
      on E :Exception do
      begin
        MessageDlg(E.Message,mtError,[MBok],0);
        Dm.koneksi.Rollback;
      end;
    end;
  end;
end;

Procedure TFNew_TerimaAmplop.Clear;
begin
  Edno.Text:='';
  ednm_material.Text:='';
  edkd_material.Text:='';
  EdSatuan.Text:='';
  EdGudang.Text:='';
  EdSupplier.Text:='';
  Edkd_stok.Text:='';
  Dttanggal.Date:=now;
  Edtotal.Text:='0';
  EdHarga.Text:='0';
  Edqty.Text:='0';
end;

procedure TFNew_TerimaAmplop.EdGudangSelect(Sender: TObject);
begin
  Autonumber2;
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_wh where wh_name='+QuotedStr(EdGudang.Text);
    Execute;
  end;
  kd_gdng:=dm.qtemp['wh_code'];
end;

procedure TFNew_TerimaAmplop.EdHargaChange(Sender: TObject);
begin
if EdHarga.Text='' then EdHarga.Text:='0';
//Edtotal.Text:=FloatToStr(StrToFloat(Edqty.Text)*StrToFloat(EdHarga.Text));
end;

procedure TFNew_TerimaAmplop.Ednm_materialSelect(Sender: TObject);
begin
 with dm.Qtemp do
 begin
   close;
   sql.Clear;
   sql.Text:='select * from t_item where item_name='+QuotedStr(Ednm_material.Text);
   Execute;
 end;
 Edkd_material.Text:=Dm.Qtemp['item_code'];
 edno_material.Text:=Dm.Qtemp['item_code'];
// edno_material.Text:=Dm.Qtemp['no_material'];
 EdSupplier.Clear;
 with dm.Qtemp do
 begin
   close;
   sql.Clear;
   sql.Text:='select A.item_name,A.supplier_code,B.supplier_name from warehouse.t_item_stock A inner join t_supplier b on A.supplier_code=b.supplier_code'+
              ' where item_name='+QuotedStr(Ednm_material.Text)+''+
              ' Group By A.item_name,A.supplier_code,B.supplier_name';
   Execute;
 end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    EdSupplier.Items.Add(Dm.Qtemp['supplier_name']);
    Dm.Qtemp.Next
  end;
  Edsatuan.Text:='Lembar';
end;


procedure TFNew_TerimaAmplop.EdNo_PermtChange(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.item_name from warehouse.t_item_request2 a inner join warehouse.t_item_stock b'+
    ' on a.trans_type=b.item_stock_code where request_no='+QuotedStr(EdNo_Permt.Text);
    Execute;
  end;
  Edqty.Text:=Dm.Qtemp['qty']*7500;
  Ednm_material.Text:=dm.Qtemp['item_name'];
  Edtotal.Text:=Dm.Qtemp['price'];
  Edsatuan.Text:='Lembar';
 { if Ednm_material.Text='Amplop KKI' then
  begin
     Edkd_material.Text:='AA';
  end else
      Edkd_material.Text:='AB';
  if Ednm_material.Text='Amplop KKI' then
  begin
     edno_material.Text:='01';
  end else
      Edno_material.Text:='02'; }
  EdSupplier.Text:='BENUR';
  //Autonumber;
  EdqtyChange(sender);
  Ednm_materialSelect(sender);
end;

procedure TFNew_TerimaAmplop.EdqtyChange(Sender: TObject);
begin
  if Edqty.Text='' then Edqty.Text:='0';
  if Edqty.Text='0' then  Edharga.Text:=FloatToStr(StrToFloat(Edtotal.Text)/1)
  else
  Edharga.Text:=FloatToStr(StrToFloat(Edtotal.Text)/StrToFloat(Edqty.Text));
end;

procedure TFNew_TerimaAmplop.EdSupplierSelect(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select A.item_stock_code,A.item_name,A.supplier_code, '+
                ' B.supplier_name from warehouse.t_item_stock A inner join t_supplier b on A.supplier_code=b.supplier_code'+
                ' where b.supplier_name='+QuotedStr(EdSupplier.Text)+''+// and no_material='+QuotedStr(edno_material.Text)+''+
                ' Group By A.item_stock_code,A.item_name,A.supplier_code,B.supplier_name';
     Execute;
   end;
  Edkd_material.Text:=Dm.Qtemp['item_stock_code'];
end;

procedure TFNew_TerimaAmplop.EdtotalChange(Sender: TObject);
begin
  if Edtotal.Text='' then Edtotal.Text:='0';
  //Edharga.Text:=FloatToStr(StrToFloat(Edtotal.Text)/StrToFloat(Edqty.Text));
  end;

procedure TFNew_TerimaAmplop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_TerimaAmplop.FormCreate(Sender: TObject);
begin
  realfNew_terimaap:=self;
end;

procedure TFNew_TerimaAmplop.FormDestroy(Sender: TObject);
begin
  realfNew_terimaap:=nil;
end;

procedure TFNew_TerimaAmplop.FormShow(Sender: TObject);
begin
  Self.Load;
end;

end.
