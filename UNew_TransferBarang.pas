unit UNew_TransferBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask,
  MemTableDataEh, Data.DB, MemTableEh, Vcl.Buttons,uni;

type
  TFNew_TransferBarang = class(TForm)
    DBGriddetail: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
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
    Edno: TRzEdit;
    DtTransfer: TRzDateTimeEdit;
    EdKet: TMemo;
    CbDari: TRzComboBox;
    CbKe: TRzComboBox;
    Memdetail: TMemTableEh;
    DsDetail: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    CbKategori: TRzComboBox;
    Label13: TLabel;
    Label14: TLabel;
    RzComboBox1: TRzComboBox;
    BitBtn1: TBitBtn;
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure CbKategoriSelect(Sender: TObject);
    procedure CbKeSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CbDariSelect(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Simpan;
    Procedure Edit;
    Procedure Load;
    Procedure Autonumber;
    Procedure Clear;
    function getNourutBlnPrshthn_kode2(tgl:TDateTime;Tablename,kode:string):string;
  end;

//var
Function  FNew_TransferBarang: TFNew_TransferBarang;
var
  status:integer;
  th,kd_gdngdari,kd_gdngke,bln,tglno,nourut,text1,kd_add:string;

implementation

{$R *.dfm}

uses UTransfer_Barang, UItem_TransferBarang, UMainmenu, UDataModule,
  UMy_Function;
var
  realfnew_transfergdng : TFNew_TransferBarang;
// implementasi function
function FNew_TransferBarang: TFNew_TransferBarang;
begin
  if realfnew_transfergdng <> nil then
    FNew_TransferBarang:= realfnew_transfergdng
  else
    Application.CreateForm(TFNew_TransferBarang, Result);
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

function TFNew_TransferBarang.getNourutBlnPrshthn_kode2(tgl:TDateTime;Tablename,kode:string):string;
var
  year, month, day: word;
  strsepr: string[1];
  strtemp,strbukti, strtgl,strbulan,strtahun,conv_romawi: string;
  q:TUniQuery;
  i,n,nourut:Integer;
  query,query2,query3:string;
begin
   decodedate(tgl,Year,month,day);
   strsepr:='/';
   strbulan:=inttostr(month);
   strtahun:=inttostr(year);

   strtemp:=inttostr(month);
{  strbukti:='Select max(order_no) urut from '+Tablename+' where substring(voucher,1,2)='+QuotedStr(kode);//+// ' and ';
   strbukti:=strbukti+' AND BULAN='+ quotedstr(strbulan)+' AND TAHUN='+quotedstr(strtahun);  }
   strbukti:='Select max(order_no) urut from '+Tablename+' where trans_month='+ quotedstr(strbulan)+' AND trans_year='+quotedstr(strtahun);
//   q:=TUniQuery.Create(self);
 // with q do    begin
 //   q.Connection:=dm.Koneksi;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Add(strbukti);
      Open;
    end;
{
  with dm.Qtemp do
  begin
  ShowMessage('0');
  end;           }

       if (dm.Qtemp.RecordCount=0) then //or (dm.Qtemp1.FieldByName('urut').value='') then
     //if  (dm.Qtemp1['urut']='') then
        nourut :=1
     else
        //if dm.Qtemp1.RecordCount<>0 then
      //  showmessage(inttostr(dm.Qtemp1.FieldByName('urut').AsInteger));
        nourut :=dm.Qtemp.fields[0].AsInteger+ 1;
      //        Edurut.Text:=inttostr(nourut);
           // ShowMessage('0');
     query2:='SELECT digit_counter from t_numb where numb_type='+QuotedStr(idmenu);
     with dm.Qtemp2 do
     begin
          close;
          sql.Clear;
          sql.add(query2);
          open;
     end;
     query3:='SELECT reset_type from t_numb where numb_type='+QuotedStr(idmenu);
     with dm.Qtemp3 do
     begin
          close;
          sql.Clear;
          sql.add(query3);
          open;
     end;
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
                    //'when b.id=6 then '+Quotedstr(Fnew_Penomoran.GenerateCustomSerialNumber(dm.Qtemp1['urut'],(dm.Qtemp2['digit_counter'])))+' else a.param_name end param, '+
                    'when b.id=6 then '+Quotedstr(GenerateNumber(nourut,(dm.Qtemp2['digit_counter'])))+' else a.param_name end param, '+
                    'c.trans_type,d.note as reset FROM t_numb_det a '+
                    'left join t_numb_component b on a.id_param=b.id '+
                    'inner join t_numb c on a.trans_no=c.trans_no    '+
                    'left join t_numb_type d on c.reset_type=d.id    '+
                    'where c.numb_type='+QuotedStr(idmenu)+'     '+
                    'ORDER BY a.trans_no,a.urutan';
          Open;
     end;
     //Edno.Text:=dm.qtemp.FieldByName('param').AsString;
    // ShowMessage('1');
     text1:='';
     dm.qtemp.First;
     while not dm.qtemp.eof do
     begin
        text1:=text1+dm.qtemp.FieldByName('param').AsString;
        dm.qtemp.next;
     end;
     Notrans:=text1;
//     ShowMessage(''+text1+'');
end;

Procedure TFNew_TransferBarang.Autonumber;
  var i      : integer;
    urut   : integer;
    yr,mt,dy,noSJ,noEX ,yn : string;
    yy,d,M : word;
    code   : string;
    //urutan   : string;
    EditComplete : string;
    maxmy  : string;
    kd_mat :string;
begin
(*Find encode of the date*)
 DecodeDate(DtTransfer.Date, yy,M,d );
 th:=FormatDateTime('yyy',DtTransfer.Date);
 bln:=FormatDateTime('mm',DtTransfer.Date);
 tglno:=FormatDateTime('dd',DtTransfer.Date);
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (tglno+'/'+IntToRoman(strToint(mt)))+'/'+yn;
 with FNew_TransferBarang do
 begin
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(nourut)as urut from warehouse.t_transfer_antar_gudang where tahun='+QuotedStr(th)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
    open;
  end;
   if dm.Qtemp['urut']= '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut'] + 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  EditComplete:=CODE;
  nourut:=code;
  Edno.Text:='TR/'+EditComplete+ '/'+maxmy + '/'+ Kdsbu;;
 end;
 //th:=yr;
end;

procedure TFNew_TransferBarang.CbDariSelect(Sender: TObject);
begin
  Cbke.Clear;
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select wh_code from t_wh where wh_name='+QuotedStr(Cbdari.Text);
    Execute;
  end;
   kd_gdngdari:=dm.Qtemp2['wh_code'];
   if loksbu='' then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:=' select * from t_wh where (category='+QuotedStr(CbKategori.Text)+''+
                  ' or category=''LAIN-LAIN'') and wh_code<>'+QuotedStr(kd_gdngdari)+' ORDER BY wh_name ASC';
        ExecSQL;
      end;
    end;
   if loksbu<>'' then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:=' select * from t_wh where (category='+QuotedStr(CbKategori.Text)+''+
                  ' or category=''LAIN-LAIN'') AND (sbu_code='+QuotedStr(loksbu)+' OR sbu_code='''')'+
                  ' and wh_code<>'+QuotedStr(kd_gdngdari)+' ORDER BY wh_name ASC';
        ExecSQL;
      end;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
      CbKe.Items.Add(Dm.Qtemp['wh_name']);
      Dm.Qtemp.Next;
    end;
end;

procedure TFNew_TransferBarang.CbKategoriSelect(Sender: TObject);
begin
  Load;
end;

procedure TFNew_TransferBarang.CbKeSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select wh_code from t_wh where wh_name='+QuotedStr(CbKe.Text);
    Execute;
  end;
   kd_gdngke:=dm.Qtemp['wh_code'];
end;

Procedure TFNew_TransferBarang.Clear;
begin
   Edno.Clear;
   EdKet.Clear;
   CbDari.Text:='';
   CbKe.Text:='';
   DtTransfer.Date:=now;
   Memdetail.EmptyTable;
end;

Procedure TFNew_TransferBarang.Load;
begin
  CbDari.Clear;
//  CbKe.Clear;
  if loksbu='' then
  begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:=' select * from t_wh where (category='+QuotedStr(CbKategori.Text)+''+
                ' or category=''LAIN-LAIN'') ORDER BY wh_name ASC';
      ExecSQL;
    end;
  end;
  if loksbu<>'' then
  begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:=' select * from t_wh where (category='+QuotedStr(CbKategori.Text)+''+
                ' or category=''LAIN-LAIN'') AND (sbu_code='+QuotedStr(loksbu)+' OR sbu_code='''')'+
                ' ORDER BY wh_name ASC';
      ExecSQL;
    end;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbDari.Items.Add(Dm.Qtemp['wh_name']);
    Dm.Qtemp.Next;
  end;
{  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbKe.Items.Add(Dm.Qtemp['wh_name']);
    Dm.Qtemp.Next;
  end;   }
end;

Procedure TFNew_TransferBarang.Simpan;
begin
Autonumber;
  if messageDlg ('Anda Yakin Simpan No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Insert into gudang.t_transfer_antar_gudang(kategori,tgl_transfer,no_transfer,"Dari","Ke",ket,tahun,kd_sbu,pic,tgl_update,bln,tgl_no,nourut)'+
                ' values(:parkt,:partgl_transfer,:parno_transfer,:parDari,:parKe,:parket,:partahun,:parkd_sbu,:parpic,:partgl_update,:parbln,:partglno,:parnourut)';
                ParamByName('partgl_transfer').Value:=FormatDateTime('yyy-mm-dd',DtTransfer.Date);
                ParamByName('parno_transfer').Value:=Edno.Text;
                ParamByName('pardari').Value:=CbDari.Text;
                ParamByName('parke').Value:=CbKe.Text;
                ParamByName('parket').Value:=EdKet.Text;
                ParamByName('partahun').Value:=th;
                ParamByName('parkt').Value:=CbKategori.Text;
                ParamByName('parkd_sbu').Value:=loksbu;
                ParamByName('parpic').Value:=Nm;
                ParamByName('partgl_update').Value:=now();
                ParamByName('parbln').Value:=bln;
                ParamByName('partglno').Value:=tglno;
                ParamByName('parnourut').Value:=nourut;
      ExecSQL;
    end;
    Memdetail.First;
    while not Memdetail.Eof do
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Insert into gudang.t_transfer_antar_gudangdet(no_transfer,kd_material_stok,kd_stok_lama,'+
                  'kd_stok_baru,qty,satuan,nourut)values(:parno_transfer,:parkd_material_stok,:parkd_stok_lama,'+
                  ':parkd_stok_baru,:parqty,:parsatuan,:parnourut)';
                  ParamByName('parno_transfer').Value:=Edno.Text;
                  ParamByName('parkd_material_stok').Value:=Memdetail['kd_material'];
                  ParamByName('parkd_stok_lama').Value:=Memdetail['kd_stok_lama'];
                  ParamByName('parkd_stok_baru').Value:=Memdetail['kd_stok_baru'];
                  ParamByName('parqty').Value:=Memdetail['qty'];
                  ParamByName('parsatuan').Value:=Memdetail['satuan'];
                  ParamByName('parnourut').Value:=Memdetail['nourut'];
        ExecSQL;
      end;
    Memdetail.Next;
    end;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFNew_TransferBarang.BBatalClick(Sender: TObject);
begin
  Close;
  FTransfer_Barang.dxbarRefreshClick(sender);
end;

procedure TFNew_TransferBarang.BitBtn1Click(Sender: TObject);
begin
  idmenu:='1';
  strday2:=DtTransfer.Date;
 // kd_add:=Edit1.Text;
  Edno.Text:=getNourutBlnPrshthn_kode(strday2,'warehouse.t_item_transfer','');
//  Edit2.Text:=order_no;
end;

procedure TFNew_TransferBarang.BSimpanClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    if status=0 then
    begin
      edno.Text:=getNourutBlnPrshthn_kode(strday2,'warehouse.t_item_transfer','');
      Simpan;
      Dm.Koneksi.Commit;
    end;
    if status=1 then
    begin
      Edit;
      Dm.Koneksi.Commit;
    end;
    Except on E :Exception do
      begin
        begin
    //    MessageDlg('Silahkan ulangi proses simpan..!!', MtError,[mbok],0);
          MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
          Dm.koneksi.Rollback ;
        end;
      end;
  end;
  BBatalClick(sender);
end;

procedure TFNew_TransferBarang.DBGridEh1Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FItem_TransferBarang do
  begin
    Show;
    statustr:='tr';
    with FItem_TransferBarang.Qbarang do
    begin
      Close;
      sql.Clear;
      sql.Text:='select a.*,b.*,c.supplier_name from gudang.t_item_stock_det a inner join gudang.t_item_stock b on '+
                ' a.item_stock_code=b.item_stock_code inner join t_supplier c on '+
                ' b.supplier_code=c.supplier_code where a."outstanding" > 0 AND a.wh_name='+QuotedStr(CbDari.Text);
      ExecSQL;
    end;
    FItem_TransferBarang.Qbarang.Open;
  end;
end;

Procedure TFNew_TransferBarang.Edit;
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:=' Update gudang.t_transfer_antar_gudang set tgl_transfer=:partgl_transfer,pic=:parpic,tgl_update=:partglup,'+
              ' "Dari"=:pardari,"Ke"=:parke,ket=:parket,kategori=:parkt,kd_sbu=:parkd_sbu where trans_no=:parno_transfer ';
              ParamByName('partgl_transfer').Value:=FormatDateTime('yyy-mm-dd',DtTransfer.Date);
              ParamByName('parno_transfer').Value:=Edno.Text;
              ParamByName('pardari').Value:=CbDari.Text;
              ParamByName('parke').Value:=CbKe.Text;
              ParamByName('parket').Value:=EdKet.Text;
              ParamByName('parkt').Value:=CbKategori.Text;
              ParamByName('parkd_sbu').Value:=loksbu;
              ParamByName('parpic').Value:=nm;
              ParamByName('partglup').Value:=now();
    ExecSQL;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='Delete From gudang.t_item_transfer_det where trans_no='+QuotedStr(Edno.Text);
    ExecSQL;
  end;
  Memdetail.First;
  while not Memdetail.Eof do
  begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Insert into gudang.t_item_transferdet(no_transfer,kd_material_stok,kd_stok_lama,'+
                'kd_stok_baru,qty,satuan)values(:parno_transfer,:parkd_material_stok,:parkd_stok_lama,'+
                ':parkd_stok_baru,:parqty,:parsatuan)';
                ParamByName('parno_transfer').Value:=Edno.Text;
                ParamByName('parkd_material_stok').Value:=Memdetail['kd_material'];
                ParamByName('parkd_stok_lama').Value:=Memdetail['kd_stok_lama'];
                ParamByName('parkd_stok_baru').Value:=Memdetail['kd_stok_baru'];
                ParamByName('parqty').Value:=Memdetail['qty'];
                ParamByName('parsatuan').Value:=Memdetail['satuan'];
               // ParamByName('parkd_sbu').Value:=loksbu;
      ExecSQL;
    end;
  Memdetail.Next;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFNew_TransferBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_TransferBarang.FormCreate(Sender: TObject);
begin
realfnew_transfergdng:=self;
end;

procedure TFNew_TransferBarang.FormDestroy(Sender: TObject);
begin
  realfnew_transfergdng:=nil;
end;

procedure TFNew_TransferBarang.FormShow(Sender: TObject);
begin
//  Self.Load;
{  CbKategori.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_wh_category order by category';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    CbKategori.Items.Add(Dm.Qtemp['category']);
    Dm.Qtemp.Next;
  end;    }
  DtTransfer.Date:=now;
end;

end.




