// Created Ds 13/11/2020
//komponen rzcomponen,ehlib 9.3,devexppress
unit UNew_HasilPercampuranBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzEdit, Vcl.Mask, RzCmboBx, RzPanel, Data.DB, MemDS, DBAccess, Uni;

type
  TFNew_Hasil_Perc_Barang = class(TForm)
    PnTerima: TRzPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edno2: TRzEdit;
    Edqty2: TRzEdit;
    Dttanggal2: TRzDateTimeEdit;
    Edno_permintaan2: TComboBox;
    Ednm_material2: TComboBox;
    Panel2: TPanel;
    BBatal2: TRzBitBtn;
    BSimpan2: TRzBitBtn;
    Edkd_material2: TEdit;
    Edsatuan2: TRzComboBox;
    Label25: TLabel;
    EdGudang: TRzComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edkd_stok: TRzComboBox;
    Dtth: TRzDateTimeEdit;
    edno_material: TEdit;
    UniQuery1: TUniQuery;
    PnInput: TRzPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edno: TRzEdit;
    EdQty: TRzEdit;
    DtTanggal: TRzDateTimeEdit;
    EdNo_permintaan: TComboBox;
    ednm_material: TComboBox;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    edkd_material: TEdit;
    EdSatuan: TRzComboBox;
    EdStatus: TEdit;
    procedure FormShow(Sender: TObject);
    procedure EdNo_permintaanSelect(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BSimpan2Click(Sender: TObject);
    procedure EdGudangSelect(Sender: TObject);
    procedure Edno_permintaan2Select(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber2;
    Procedure Load;
    procedure Clear;
    Procedure SimpanStok;
  end;

//var
Function FNew_Hasil_Perc_Barang: TFNew_Hasil_Perc_Barang;
Var  Kode,thn,bln,tglno,category,kd_gd:string;

implementation

{$R *.dfm}

uses UDataModule, UHasil_Percampuran_Barang, UMainmenu, UMy_Function;
var
  realfhasil_perc : TFNew_Hasil_Perc_Barang;
// implementasi function
function FNew_Hasil_Perc_Barang: TFNew_Hasil_Perc_Barang;
begin
  if realfhasil_perc <> nil then
    FNew_Hasil_Perc_Barang:= realfhasil_perc
  else
    Application.CreateForm(TFNew_Hasil_Perc_Barang, Result);
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

procedure TFNew_Hasil_Perc_Barang.Autonumber2;
  var i    : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
begin
(*Find encode of the date*)
 DecodeDate(now, yy,M,d );
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
    sql.Text:='select * from purchase.t_item_receive_det where item_stock_code='+
              ''+QuotedStr(EdKd_material2.Text)+' and trans_year='+QuotedStr(Dtth.Text);
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
  order_no:=code;
  Edkd_stok.Text:= DM.QTemp2['item_code']+ '/'+kdsbu+'/'+EditComplete+'/'+dm.Qtemp3['wh_code']+'/'+yn;
end;

Procedure TFNew_Hasil_Perc_Barang.Clear;
begin
  Edno.Text:='';
  Edqty.Text:='';
  EdNo_permintaan.Text:='';
  ednm_material.Text:='';
  edkd_material.Text:='';
  EdSatuan.Text:='';
  EdStatus.Text:='';
  Edno2.Text:='';
  Edqty2.Text:='';
  EdNo_permintaan2.Text:='';
  ednm_material2.Text:='';
  edkd_material2.Text:='';
  EdSatuan2.Text:='';
  EdGudang.Text:='';
  DtTanggal.Date:=NOW;
  Dttanggal2.Date:=NOW;
end;

Procedure TFNew_Hasil_Perc_Barang.SimpanStok;
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from warehouse.t_item_stock_det where item_stock_code='+QuotedStr(Edkd_material2.Text)+''+
              ' and stock_code='+QuotedStr(Edkd_stok.Text);
    Execute;
  end;
  if dm.Qtemp2.RecordCount > 0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Text:='update warehouse.t_item_stock_det set qty=:parqty,"outstanding"=:parout where item_stock_code=:parkd and stock_code=:parkdst';
              ParamByName('parqty').Value:=DM.QTemp2['qty']+StrToFloat(Edqty2.Text);
              ParamByName('parout').Value:=DM.QTemp2['outstanding']+StrToFloat(Edqty2.Text);
              ParamByName('parkd').Value:=Edkd_material2.Text;
              ParamByName('parkdst').Value:=Edkd_stok.Text;
      Execute;
    end;
  end else
  if dm.Qtemp2.RecordCount=0 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='	INSERT INTO warehouse.t_item_stock_det(item_stock_code,stock_code,qty,'+
                ' unit,qtyout,"outstanding",wh_code)VALUES(:parkd,:parkdst,:parqty,'+
                ' :parsatuan,:parqtyout,:parOut,:pargudang)';
                ParamByName('parkd').Value:=Edkd_material2.Text;
                ParamByName('parkdst').Value:=Edkd_stok.Text;
                ParamByName('parqty').Value:=edqty2.Text;
                ParamByName('parsatuan').Value:=Edsatuan2.Text;
                ParamByName('parqtyout').Value:='0';
                ParamByName('parOut').Value:=Edqty2.Text;
                ParamByName('pargudang').Value:=EdGudang.Text;
      Execute;
    end;
  end;
end;

procedure TFNew_Hasil_Perc_Barang.BBatalClick(Sender: TObject);
begin
  close;
  FHasil_Perc_Barang.Show;
  FHasil_Perc_Barang.ActRoExecute(sender);
end;

procedure TFNew_Hasil_Perc_Barang.BEditClick(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from warehouse.t_item_mixing_result';
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Update warehouse.t_item_mixing_result set item_stock_code=:parkdmat,Qty=:parqty,'+
              ' unit=:parst,mixing_no=:parnp,trans_date=:partgl,status=:parstatus,'+
              ' sbu_code=:parsbu where result_no=:parnh';
              ParamByName('parkdmat').Value:=edkd_material.Text;
              ParamByName('parqty').Value:=EdQty.Text;
              ParamByName('parst').Value:=EdSatuan.Text;
              ParamByName('parnp').Value:=EdNo_permintaan.Text;
              ParamByName('partgl').Value:=FormatDateTime('yyy-mm-dd',DtTanggal.Date);
              ParamByName('parstatus').Value:=EdStatus.Text;
              ParamByName('parsbu').Value:=loksbu;
              ParamByName('parnh').Value:=Edno.Text;
    ExecSQL;
  end;
  Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
  BBatalClick(sender);
end;

procedure TFNew_Hasil_Perc_Barang.BSimpan2Click(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='update warehouse.t_item_mixing_result set status=''1'' where result_no='+QuotedStr(Edno2.Text);
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from warehouse.t_item_mixing_result_wh ';
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='insert into warehouse.t_item_mixing_result_wh(item_stock_code,Qty,unit,mixing_no,trans_date'+
              ',result_no,status,sbu_code,wh_code,stock_code,order_no)values(:parkdmt,:parqty,:parsatuan,:parnopermt,:partgl'+
              ',:parnohsl,:parstatus,:parsbu,:pargd,:parkdstok,:parno)';
              ParamByName('parkdmt').AsString:=edkd_material2.Text;
              ParamByName('parqty').Value:=EdQty2.Text;
              ParamByName('parsatuan').AsString:=EdSatuan2.Text;
              ParamByName('parnopermt').AsString:=EdNo_permintaan2.Text;
              ParamByName('partgl').Value:=FormatDateTime('yyy-mm-dd',DtTanggal2.Date);
              ParamByName('parnohsl').AsString:=Edno2.Text;
              ParamByName('parstatus').Value:='0';
              ParamByName('parsbu').AsString:=loksbu;
              ParamByName('pargd').AsString:=kd_gd;
              ParamByName('parkdstok').AsString:=Edkd_stok.Text;
              ParamByName('parno').AsString:=order_no;
    ExecSQL;
  end;
  SimpanStok;
  ShowMessage('Data Berhasil di Simpan');
  BBatalClick(sender);
end;

procedure TFNew_Hasil_Perc_Barang.BSimpanClick(Sender: TObject);
begin
  idmenu:='M04007';
  strday2:=DtTanggal.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_mixing_result','');
 if messageDlg ('Anda Yakin Simpan Hasil Percampuran ini. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from warehouse.t_item_mixing_result';
      ExecSQL;
    end;

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into warehouse.t_item_mixing_result(item_stock_code,Qty,unit,mixing_no,trans_date'+
                ',result_no,status,sbu_code,trans_year,trans_month,trans_day,order_no,created_by)values(:parkdmt,:parqty,:parsatuan,:parnopermt,:partgl'+
                ',:parnohsl,:parstatus,:parsbu,:parthn,:parbln,:partglno,:parnourut,:cr)';
                ParamByName('parkdmt').AsString:=edkd_material.Text;
                ParamByName('parqty').Value:=EdQty.Text;
                ParamByName('parsatuan').AsString:=EdSatuan.Text;
                ParamByName('parnopermt').AsString:=EdNo_permintaan.Text;
                ParamByName('partgl').Value:=FormatDateTime('yyy-mm-dd',DtTanggal.Date);
                ParamByName('parnohsl').AsString:=Edno.Text;
                ParamByName('parstatus').Value:='0';
                ParamByName('parsbu').AsString:=loksbu;
                ParamByName('parthn').Value:=vthn;
                ParamByName('parbln').Value:=vbln;
                ParamByName('partglno').Value:=Vtgl;
                ParamByName('parnourut').Value:=order_no;
                ParamByName('cr').Value:=nm;
      ExecSQL;
    end;
    With dm.QTemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='update warehouse.t_item_mixing set "trans_status"=''0'' where mixing_no='+QuotedStr(EdNo_permintaan.Text);
      ExecSQL;
    end;
      Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
      BBatalClick(sender);
  end;
end;

procedure TFNew_Hasil_Perc_Barang.EdGudangSelect(Sender: TObject);
//var category,kd_gd:string;
begin
  with dm.QTemp3 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_wh where wh_name='+QuotedStr(EdGudang.Text);
    ExecSQL;
  end;
  with Dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select A.*,B.item_stock_code,c.group_name from t_item A inner join warehouse.t_item_stock B '+
              ' on A.item_code=B.item_code inner join t_item_group c on a.group_id=c.group_id where B.item_stock_code='+
              ''+QuotedStr(Edkd_material2.Text);
    ExecSQL;
  end;
  category:=Dm.Qtemp2['group_name'];
  kd_gd:=dm.QTemp3['wh_code'];
  if category='KIMIA' then Edkd_stok.Text:=(Dm.Qtemp2['item_stock_code']+'/'+kd_gd)
  else
  Self.Autonumber2;
end;

procedure TFNew_Hasil_Perc_Barang.Edno_permintaan2Select(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select A.*,B.no_material from t_permt_material A inner join t_material_stok B '+
              ' on A.kd_material=B.kd_material_stok where no_permintaan='+QuotedStr(EdNo_permintaan2.Text);
    Execsql;
  end;
  ednm_material2.Text:=Dm.Qtemp['jenis'];
  edkd_material2.Text:=dm.Qtemp['kd_material'];
  edno_material.Text:=Dm.Qtemp['no_material'];
end;

procedure TFNew_Hasil_Perc_Barang.EdNo_permintaanSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Select A.* from warehouse.t_item_mixing A inner join warehouse.t_item_stock B on '+
    ' A.item_stock_code=B.item_stock_code where mixing_no='+QuotedStr(EdNo_permintaan.Text);
    Execsql;
  end;
    ednm_material.Text:=Dm.Qtemp['type'];
    edkd_material.Text:=dm.Qtemp['item_code'];
    //edno_material.Text:=Dm.Qtemp['no_material'];
    EdQty.Text:=dm.Qtemp['qty'];
end;

procedure TFNew_Hasil_Perc_Barang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFNew_Hasil_Perc_Barang.FormCreate(Sender: TObject);
begin
  realfhasil_perc:=self;
end;

procedure TFNew_Hasil_Perc_Barang.FormDestroy(Sender: TObject);
begin
realfhasil_perc:=nil;
end;

procedure TFNew_Hasil_Perc_Barang.FormShow(Sender: TObject);
begin
  Self.Load;
  Dtth.Date:=now;
end;

Procedure TFNew_Hasil_Perc_Barang.Load;
begin
  EdNo_permintaan.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select "type",item_code,mixing_no,sbu_code from warehouse.t_item_mixing where trans_status=''1'''+
      ' and status=''Selesai'' and (sbu_code='+QuotedStr(loksbu)+' or sbu_code='''') Group by "type",item_code,mixing_no,sbu_code '+
      ' order by mixing_no ASC ';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdNo_permintaan.Items.Add(Dm.Qtemp['mixing_no']);
      Dm.Qtemp.Next;
    end;
  if loksbu='' then
  begin
  EdGudang.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh where category=''BAHAN BAKU'' OR category=''KIMIA'' or category=''''';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdGudang.Items.Add(Dm.Qtemp['wh_name']);
      Dm.Qtemp.Next;
    end;
  end;
  if loksbu<>'' then
  begin
  EdGudang.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select * from t_wh where (sbu_code='+QuotedStr(loksbu)+' or sbu_code='''') and (category=''BAHAN BAKU'' OR category=''KIMIA'' or category='''')';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdGudang.Items.Add(Dm.Qtemp['wh_name']);
      Dm.Qtemp.Next;
    end;
  end;
end;

end.
