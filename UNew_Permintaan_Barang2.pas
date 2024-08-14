{ CR ds 2020
Komponen tambahan  RzComponen,Ehlib}
unit UNew_Permintaan_Barang2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzEdit, RzCmboBx, Vcl.Mask;

type
  TFNew_Permintaan_Barang2 = class(TForm)
    DtPermt: TRzDateTimeEdit;
    edket: TMemo;
    EdNm_Material: TRzComboBox;
    EdNo: TRzComboBox;
    EdQty: TRzEdit;
    EdKegunaan: TRzComboBox;
    Label10: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label35: TLabel;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    EdKd_Material: TRzComboBox;
    Edharga: TEdit;
    Edtotal: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Edgudang: TRzComboBox;
    Ednopo: TRzComboBox;
    Label11: TLabel;
    Label13: TLabel;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure EdNm_MaterialSelect(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdQtyChange(Sender: TObject);
    procedure EdhargaChange(Sender: TObject);
    procedure EdtotalChange(Sender: TObject);
    procedure EdnopoSelect(Sender: TObject);
    procedure EdKegunaanChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdgudangSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Load;
    Procedure Clear;
  end;

Function FNew_Permintaan_Barang2: TFNew_Permintaan_Barang2;
var  Thn,bln,tglno,nourut,kd_gdng,kd_brng,kd_brng2:string;
implementation

{$R *.dfm}

uses UDatamodule, UPermintaan_Barang2, UMainmenu, UMy_Function;
var RealFNew_Permt_Etk_Amplop: TFNew_Permintaan_Barang2;
function FNew_Permintaan_Barang2: TFNew_Permintaan_Barang2;
begin
  if RealFNew_Permt_Etk_Amplop <> nil then FNew_Permintaan_Barang2:= RealFNew_Permt_Etk_Amplop
  else  Application.CreateForm(TFNew_Permintaan_Barang2, Result);
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

procedure TFNew_Permintaan_Barang2.Autonumber;
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
 DecodeDate(DtPermt.Date, yy,M,d );
 //Thn:=FormatDateTime('yyy',DtTransfer.Date);
 bln:=FormatDateTime('mm',DtPermt.Date);
 tglno:=FormatDateTime('dd',DtPermt.Date);
 Thn:=intTostr(yy);
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
    sql.Text:='select * from t_permt_material2 where tahun='+QuotedStr(Thn);
    open;
  end;
   if dm.Qtemp.Fields[0].AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp.RecordCount+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  nourut:=code;
  EdNo.Text:= EditComplete+ '/'+maxmy + '/' + kdsbu;
end;

Procedure TFNew_Permintaan_Barang2.Clear;
begin
  DtPermt.Date:=Now();
  EdNm_Material.Text:='';
  EdKd_Material.Text:='';
 // EdQty.Text:='0';
  EdKegunaan.Text:='';
 // Edharga.Text:='0';
 Edgudang.Text:='';
 Ednopo.Text:='';
end;

Procedure TFNew_Permintaan_Barang2.Load;
begin
// load material
  EdNm_Material.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_item a INNER JOIN t_item_group b on a.group_id=b.group_id where kms_status=1 order by item_code asc';
    //a.group_id=8  and  lot_status=FALSE and kms_status=1';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    EdNm_Material.Items.Add(Dm.Qtemp.FieldByName('item_name').AsString);
    Dm.Qtemp.Next;
  end;
// load gudang
  Edgudang.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from t_wh';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
  Edgudang.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNew_Permintaan_Barang2.BBatalClick(Sender: TObject);
begin
  Close;
  FPermintaan_Barang2.actroexecute(sender);
end;

procedure TFNew_Permintaan_Barang2.BEditClick(Sender: TObject);
begin
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='update warehouse.t_item_request2 set item_stock_code=:parkd_material_stok,qty=:parqty'+
                  ' ,unit=:parsatuan,notes=:parket,stock_code=:parkd_stok,trans_date=:partgl_permt,'+
                  ' trans_type=:parjenis,trans_year=:partahun,price=:parharga,status=:parstatus,wh_code='+
                  ' :pargudang,pono=:parnopo,updated_at=now(),updated_by=:pic where request_no=:parno_permt';
                  ParamByName('parno_permt').Value:=EdNo.Text;
                  ParamByName('parkd_material_stok').Value:=EdKd_Material.Text;
                  ParamByName('parqty').Value:=EdQty.Text;
                  ParamByName('parsatuan').Value:='Rim';
                  ParamByName('parket').Value:=EdKet.Text;
                  ParamByName('parkd_stok').Value:=EdKd_Material.Text;
                  ParamByName('partgl_permt').Value:=FormatDateTime('yyyy-mm-dd',DtPermt.date);
                  ParamByName('parjenis').Value:=kd_brng2;//EdKegunaan.Text;
                  ParamByName('partahun').Value:=Thn;
                  ParamByName('parharga').Value:=Edtotal.Text;
                  ParamByName('parstatus').Value:='0';
                  ParamByName('pargudang').Value:=kd_gdng;
                  ParamByName('parnopo').Value:=Ednopo.Text;
                  ParamByName('pic').Value:=nm;
        ExecSQL;
      end;
    dm.koneksi.Commit;
    Messagedlg('Data Berhasil di Update',MtInformation,[Mbok],0);
    end
    Except
    on E :Exception do
    begin
    MessageDlg(E.Message,mtError,[MBok],0);
    dm.koneksi.Rollback;
    end;
  end;
  BBatalClick(sender);
end;

procedure TFNew_Permintaan_Barang2.BSimpanClick(Sender: TObject);
begin
 // Autonumber;
  idmenu:='M04008';
  strday2:=DtPermt.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_request2','');
  if messageDlg ('Anda Yakin Simpan Pembelian No.'+EdNo.text+' '+'?', mtInformation, [mbYes]+[mbNo],0) = mrYes
  then begin
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='insert into warehouse.t_item_request2(request_no,item_stock_code,qty,unit,notes,stock_code,trans_date,trans_type,'+
                    ' trans_year,price,status,wh_code,pono,qtykonversi,qtyreceive,outstanding,sbu_code,trans_month,trans_day,order_no,created_by)'+
                    'values(:parno_permt,:parkd_material_stok,:parqty,:parsatuan,:parket,:parkd_stok,:partgl_permt,'+
                    ' :parjenis,:partahun,:parharga,:parstatus,:pargudang,:parnopo,:parqtykonversi,:parqtyterima,'+
                    ' :parsisaqty,:parsbu,:parbln,:partglno,:parnourut,:pic)';
                    ParamByName('parno_permt').Value:=EdNo.Text;
                    ParamByName('parkd_material_stok').Value:=EdKd_Material.Text;
                    ParamByName('parqty').Value:=EdQty.Text;
                    ParamByName('parsatuan').Value:='Rim';
                    ParamByName('parket').Value:=EdKet.Text;
                    ParamByName('parkd_stok').Value:=EdKd_Material.Text;
                    ParamByName('partgl_permt').Value:=FormatDateTime('yyyy-mm-dd',DtPermt.date);
                    ParamByName('parjenis').Value:=kd_brng2;
                    ParamByName('partahun').Value:=VThn;
                    ParamByName('parharga').Value:=Edtotal.Text;
                    ParamByName('parstatus').Value:='0';
                    ParamByName('pargudang').Value:=kd_gdng;
                    ParamByName('parnopo').Value:=Ednopo.Text;
                    ParamByName('parqtyterima').Value:=0;
                    ParamByName('parqtykonversi').Value:=FloatToStr(StrToFloat(Edharga.Text)*7500);
                    ParamByName('parsisaqty').Value:=FloatToStr(StrToFloat(Edharga.Text)*7500);
                    ParamByName('parsbu').Value:=loksbu;
                    ParamByName('parbln').Value:=vbln;
                    ParamByName('partglno').Value:=Vtgl;
                    ParamByName('parnourut').Value:=order_no;
                    ParamByName('pic').Value:=Nm;
          ExecSQL;
        end;
      dm.koneksi.Commit;
      Messagedlg('Data Berhasil di Simpan',MtInformation,[Mbok],0);
      end
      Except
      on E :Exception do
      begin
      MessageDlg(E.Message,mtError,[MBok],0);
      dm.koneksi.Rollback;
      end;
    end;
    BBatalClick(sender);
  end;
end;

procedure TFNew_Permintaan_Barang2.EdgudangSelect(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='select * from t_wh where wh_name='+QuotedStr(Edgudang.Text);
    Execute;
  end;
  kd_gdng:=dm.qtemp['wh_code'];
end;

procedure TFNew_Permintaan_Barang2.EdhargaChange(Sender: TObject);
begin
 if Edharga.Text='' then Edharga.Text:='0';
 EdQtyChange(sender);
end;

procedure TFNew_Permintaan_Barang2.EdKegunaanChange(Sender: TObject);
begin
 try
   Ednopo.Clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Text:=' Select A.*,b.item_name from purchase.t_podetail a inner join warehouse.t_item_stock b on a.item_stock_code='+
              ' b.item_stock_code where b.item_code='+QuotedStr(kd_brng)+''+
              ' and status=''In-Proses''';
    ExecSQL;
  end;
  if dm.Qtemp['po_no']='' then
  begin
     Ednopo.Enabled:=False;
  end else
  Ednopo.Enabled:=True;
  Dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    Ednopo.Items.Add(Dm.Qtemp.FieldByName('po_no').AsString);
    Dm.Qtemp.Next;
  end;
 Except;
 end;
end;

procedure TFNew_Permintaan_Barang2.EdtotalChange(Sender: TObject);
begin
 if Edtotal.Text='' then Edtotal.Text:='0';
end;

procedure TFNew_Permintaan_Barang2.EdNm_MaterialSelect(Sender: TObject);
var harga1,harga2:Integer;
begin
 with Dm.Qtemp do
  begin
    close;
    sql.Text:='select * from warehouse.t_item_stock where item_name='+QuotedStr(EdNm_Material.Text);
    ExecSQL;
  end;
  EdKd_Material.Text:=Dm.Qtemp.FieldByName('item_stock_code').AsString;
  kd_brng:=Dm.Qtemp.FieldByName('item_code').AsString;
 { if EdNm_Material.text='KERTAS CD'  then
  begin
    edkegunaan.text:='ETIKET';
    EdKegunaan.Enabled:=False;
  end else
    EdKegunaan.Enabled:=True;
//    EdKegunaan.Text:='';
  if EdNm_Material.Text='ETIKET' then
  begin
  EdKegunaan.Text:='';  }
  with Dm.Qtemp do
  begin
    close;
    sql.Text:=' select a.item_name,b.price,b.id from warehouse.t_item_stock a inner JOIN purchase.t_item_receive_det '+
              ' b on a.item_stock_code=b.item_stock_code INNER JOIN t_item c on a.item_code=c.item_code '+ //AND a.no_material= c.no_material
              ' where c.item_code=''KMS'' GROUP BY a.item_name,b.price,b.id ORDER BY b.id DESC limit 1';
    ExecSQL;
  end;
  if DM.Qtemp['price']>0 then
  begin
    harga1:=dm.Qtemp['price'];
  end else
    harga1:=0;
  with Dm.Qtemp2 do
  begin
    close;
    sql.Text:=' Select item_stock_code,price from purchase.t_item_receive_det where item_stock_code=''C'''+
              ' ORDER BY id DESC limit 1';
    ExecSQL;
  end;
  if DM.Qtemp2['price']>0 then
  begin
    harga2:=dm.Qtemp2['price'];
  end else
    harga2:=0;
    Edharga.Text:=inttostr(harga1+harga2);
  //end else
 //   Edharga.Text:='0';
  //end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select a.*,b.item_name from warehouse.t_mixing_master2 a INNER join warehouse.t_item_stock b on '+
              ' a.item_conversion=b.item_stock_code where a.item_code='+QuotedStr(kd_brng);
    ExecSQL;
  end;
  EdKegunaan.Text:=DM.Qtemp['item_name'];
  kd_brng2:=dm.qtemp['item_conversion'];
  EdKegunaanChange(SENDER);
end;

procedure TFNew_Permintaan_Barang2.EdnopoSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select A.*,b.nm_material,b.no_material from t_podetail a inner join t_material_stok b on a.kd_materialstok='+
              ' b.kd_material_stok where (b.kd_material=''C'' or b.kd_material=''E'')'+
              ' and status=''In-Proses'' and nopo='+QuotedStr(ednopo.Text);
    ExecSQL;
  end;
//  EdKegunaan.Text:=Dm.Qtemp['nm_material'];
  EdQty.Text:=Dm.Qtemp['Qty'];
end;

procedure TFNew_Permintaan_Barang2.EdQtyChange(Sender: TObject);
begin
 if EdQty.Text='' then EdQty.Text:='0';
 Edtotal.Text:=FloatToStr(StrToFloat(EdQty.Text)*StrToFloat(Edharga.Text));
end;

procedure TFNew_Permintaan_Barang2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_Permintaan_Barang2.FormCreate(Sender: TObject);
begin
  RealFNew_Permt_Etk_Amplop:=self;
end;

procedure TFNew_Permintaan_Barang2.FormDestroy(Sender: TObject);
begin
  RealFNew_Permt_Etk_Amplop:=nil;
end;

procedure TFNew_Permintaan_Barang2.FormShow(Sender: TObject);
begin
  Self.load;
end;

end.
