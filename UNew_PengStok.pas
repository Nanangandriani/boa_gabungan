unit UNew_PengStok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, RzBtnEdt,
  Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons,uni;

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


function getNourut1(tgl:TDateTime;Tablename,kode:string):string;
var
  year, month, day: word;
  strsepr: string[1];
  strtemp,strbukti, strtgl,strbulan,strtahun,conv_romawi: string;
  q:TUniQuery;
  i,n,nourut:Integer;
  query,query2,query3:string;
begin
   decodedate(tgl,Year,month,day);
   strday:=IntToStr(day);
   strbulan:=inttostr(month);
   strtahun:=inttostr(year);
   // menentukan akses reset number
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
     open;
   end;
   if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select cast(max(order_no) as integer) urut from '+Tablename+' where  code_additional isnull';//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']='0') then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+'  where  code_additional isnull and  cast(trans_day as integer) ='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+'  where  code_additional isnull and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']='0')then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+'  where code_additional isnull and cast(trans_year as integer)='+quotedstr(strtahun);
   end;
      if (dm.Qtemp['id']='1') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename +' where code_additional='+ quotedstr(kode);//where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='2') and (dm.Qtemp['additional_status']<>'0') then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+' where  code_additional='+ quotedstr(kode)+' and cast(trans_day as integer)='+ quotedstr(strday)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='3') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and cast(trans_month as integer)='+ quotedstr(strbulan)+' AND cast(trans_year as integer)='+quotedstr(strtahun);
   end;
   if (dm.Qtemp['id']='4') and (dm.Qtemp['additional_status']<>'0')then
   begin
       strbukti:='Select cast(max(order_no) as integer)  urut from '+Tablename+' where code_additional='+ quotedstr(kode)+' and cast(trans_year as integer)='+quotedstr(strtahun);
   end;
    Vthn:=FormatDateTime('yyyy',strday2);
    Vbln:=FormatDateTime('mm',strday2);
    Vtgl:=FormatDateTime('dd',strday2);
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Add(strbukti);
      Open;
    end;
    //ShowMessage('0') ;
       if (dm.Qtemp.RecordCount=0) then
        nourut :=1
     else
        nourut :=dm.Qtemp.fields[0].AsInteger+ 1;
      // menentukan counter number
       query2:='SELECT digit_counter from t_numb where numb_type='+QuotedStr(idmenu);
       with dm.Qtemp2 do
       begin
            close;
            sql.Clear;
            sql.add(query2);
            open;
       end;

       // hasil Penggabungan format penomeran sesuai setting berdasarkan akses modulnya masing2
       with dm.Qtemp do
       begin
            close;
            sql.Clear;
            sql.text:='SELECT a.*,b.description,b.note,c.digit_counter,reset_type, '+
                      'case when b.id=1 then(SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yyyy'') tahun) '+
                      'when b.id=2 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''yy'') tahun) '+
                      'when b.id=3 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''mm'') bulan) '+
                      'when b.id=4 then (SELECT trim(TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''RM'')) bulan) '+
                      'when b.id=5 then (SELECT TO_CHAR('+Quotedstr(FormatDateTime('yyyy-mm-dd',strday2))+' :: DATE, ''dd'') hari)  '+
                      'when b.id=6 then '+Quotedstr(GenerateNumber(nourut,(dm.Qtemp2['digit_counter'])))+' '+
                      'when b.id=8 then '+Quotedstr(kode)+' else a.param_name end param, '+
                      'c.trans_type,d.note as reset FROM t_numb_det a '+
                      'left join t_numb_component b on a.id_param=b.id '+
                      'inner join t_numb c on a.trans_no=c.trans_no    '+
                      'left join t_numb_type d on c.reset_type=d.id    '+
                      'where c.numb_type='+QuotedStr(idmenu)+'     '+
                      'ORDER BY a.trans_no,a.urutan';
            Open;
       end;
       order_no:=GenerateNumber(nourut,(dm.Qtemp2['digit_counter']));
       notif:='';
       dm.qtemp.First;
       while not dm.qtemp.eof do
       begin
          notif:=notif+dm.qtemp.FieldByName('param').AsString;
          dm.qtemp.next;
       end;
        result:=notif;
end;


procedure TFNew_PengStok.simpan;
begin
//Autonumber;
  idmenu:='M04005';
  strday2:=DtTransfer.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_comb','');
if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
then begin
//  Autonumber2;
  Edkd_stok.Text:=Edkd_Barang.Text+'-'+nogd;
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
  with dm.qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Insert into warehouse.t_item_comb(trans_no,wh_code,item_code,trans_date,note,trans_year,sbu_code,qty,unit,stock_code,created_by,trans_month,trans_day,order_no,order_no2)'+
              'values(:parno,:parkd_gd,:parkd_mat,:partgl,:parket,:parth,:parkd_sbu,:parqty,:parsatuan,:parkd_stok,:parpic,:parbln,:partglno,:parnourut,:parnourut2)';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_gd').asstring:=kdgd;
     parambyname('parkd_mat').asstring:=Edkd_Barang.Text;
     parambyname('partgl').asstring:=formatdatetime('yyy-mm-dd',dttransfer.date);
     parambyname('parket').asstring:=edket.text;
     parambyname('parth').asstring:=Vthn;
     parambyname('parkd_sbu').asstring:=loksbu;
     parambyname('parqty').asstring:=DBGriddetail.Columns[3].Footer.sumvalue;
     parambyname('parsatuan').asstring:=satuan;
     parambyname('parkd_stok').asstring:=Edkd_stok.Text;
     parambyname('parpic').asstring:=nama;
     parambyname('parbln').asstring:=Vbln;
     parambyname('partglno').asstring:=Vtgl;
     parambyname('parnourut').asstring:=order_no;
     parambyname('parnourut2').asstring:=nourut2;
    ExecSQL;
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
    sql.text:='Update warehouse.t_item_comb set wh_code=:parkd_gd,item_code=:parkd_mat,trans_date=:partgl,'+
    ' note=:parket,sbu_code=:parkd_sbu,qty=:parqty,unit=:parsatuan,stock_code=:parkd_stok,updated_by=:parpic,'+
    ' updated_at=now() where trans_no=:parno';
     parambyname('parno').asstring:=edno.text;
     parambyname('parkd_gd').asstring:=kdgd;
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
    sql.Text:='delete from warehouse.t_item_comb_det where trans_no='+QuotedStr(edno.Text);
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
  MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFNew_PengStok.BBatalClick(Sender: TObject);
begin
  close;
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
                  ' a.item_stock_code=b.item_stock_code inner join t_supplier c on b.supplier_code=c.supplier_code '+
                  ' INNER JOIN t_wh d on a.wh_code=d.wh_code where a."outstanding" > 0 and b.Item_code='+QuotedStr(edkdbr.Text);
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
                ' a.item_stock_code=b.item_stock_code inner join t_supplier c on b.supplier_code=c.supplier_code '+
                ' INNER JOIN t_wh d on a.wh_code=d.wh_code where a."outstanding" > 0 and d.sbu_code='+QuotedStr(loksbu)+' AND b.Item_code='+QuotedStr(edkdbr.Text);
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
  FCari_Barang2.show;
  VMenu:='0';
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
      sql.Text:='select * from t_wh where sbu_code='+QuotedStr(loksbu)+' order by wh_name asc';
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
