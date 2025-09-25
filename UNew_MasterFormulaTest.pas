unit UNew_MasterFormulaTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableEh, Vcl.StdCtrls, RzCmboBx, RzEdit,
  Vcl.Mask, RzButton, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFNew_MasterFormula = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EdTimbang: TRzEdit;
    DtTest: TRzDateTimeEdit;
    DtMulai: TRzDateTimeEdit;
    Edperkiraan: TRzEdit;
    Edno: TRzEdit;
    EdShift: TRzComboBox;
    Memformuladet: TMemTableEh;
    DataSource1: TDataSource;
    Memformuladet2: TMemTableEh;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    DtPMulai: TRzDateTimeEdit;
    Label20: TLabel;
    DtPSelesai: TRzDateTimeEdit;
    Label2: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    CbGdKimia: TRzComboBox;
    CbGdBaku: TRzComboBox;
    Label14: TLabel;
    Label18: TLabel;
    EdProduk: TRzComboBox;
    SpeedButton1: TSpeedButton;
    procedure EdShiftSelect(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure DBGridEh2ColEnter(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure EdTimbangChange(Sender: TObject);
    procedure DBGridEh2Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridEh2Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdProdukSelect(Sender: TObject);
    procedure CbGdBakuSelect(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Autonumber;
    Procedure Clear;
    Procedure Simpan;
    Procedure Update;
    Procedure Load;
  end;

Function FNew_MasterFormula: TFNew_MasterFormula;
var  status:integer;
  thn,bln,tglno,nourut,kd_gdng,kd_gdng2,kd_barang:string;

implementation

{$R *.dfm}

uses UDatamodule, UMaster_FormulaTest,UMainmenu, UCari_Barang2, UMy_Function,
  UItem_MasterFormula;//USearch_SuppSPKFor, UMainmenu, USearch_MatSpkFor;
var RealFNew_MasterFormula: TFNew_MasterFormula;
function FNew_MasterFormula: TFNew_MasterFormula;
begin
  if RealFNew_MasterFormula <> nil then FNew_MasterFormula:= RealFNew_MasterFormula
  else  Application.CreateForm(TFNew_MasterFormula, Result);
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

procedure TFNew_MasterFormula.Autonumber;
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
 DecodeDate(DtMulai.Date, yy,M,d );
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 thn:=FormatDateTime('yyy',DtTest.Date);
 bln:=FormatDateTime('mm',DtTest.Date);
 tglno:=FormatDateTime('dd',dttest.Date);
 maxmy:= (tglno+'/'+IntToRoman(strToint(mt)))+'/'+Kdsbu+'/'+yn;
 //maxmy:= (IntToRoman(strToint(mt)))+'/'+Kd_sbu+'/'+yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select max(left(no_formula,3))as urut from t_master_formula_test where thn='+QuotedStr(thn)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
    open;
  end;
   if dm.Qtemp.FieldByName('urut').AsString = '' then
      code := '1'
   else
      code:= IntToStr(dm.Qtemp['urut']+ 1);
   if length(code) < 10 then
    begin
     for i := length(code) to 2 do
      code := '0' + code;
    end;
  nourut:=code;
  EditComplete:=CODE;
  EdNo.Text:= EditComplete+ '/'+maxmy;
 // thn:=yn;
end;

Procedure TFNew_MasterFormula.Load;
begin
  CbGdBaku.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_wh where category=''BAHAN BAKU''' ;//and sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while NOT Dm.Qtemp.Eof do
  BEGIN
    CbGdBaku.Items.Add(DM.Qtemp['wh_name']);
    Dm.Qtemp.Next;
  END;
   CbGdKimia.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_wh where category=''KIMIA'' ';//gand sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while NOT Dm.Qtemp.Eof do
  BEGIN
    CbGdKimia.Items.Add(DM.Qtemp['wh_name']);
    Dm.Qtemp.Next;
  END;
  EdProduk.Clear;
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='select * from t_item WHERE sell_status=''1'' order by item_code asc ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while NOT Dm.Qtemp.Eof do
  BEGIN
    EdProduk.Items.Add(DM.Qtemp['item_name']);
    Dm.Qtemp.Next;
  END;
end;

procedure TFNew_MasterFormula.CbGdBakuSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
     close;
     sql.Clear;
     sql.Text:='select * from t_wh where wh_name='+QuotedStr(CbGdBaku.Text);
     Execute;
  end;
  kd_gdng:=dm.Qtemp['wh_code'];
end;

Procedure TFNew_MasterFormula.Clear;
begin
  Memformuladet.Close;
  Memformuladet.Open;
  Memformuladet.EmptyTable;
  Edno.Clear;
  EdTimbang.text:='1';
  DtTest.Date:=now;
  DtMulai.Date:=now;
  Edperkiraan.Clear;
  Memformuladet2.Close;
  Memformuladet2.Open;
  Memformuladet2.First;
 { while not Memformuladet2.Eof do
  begin
    with Memformuladet2 do
    begin
      Memformuladet.Insert;
      Memformuladet['item_name']:=Memformuladet2['item_name'];
      Memformuladet['item_code']:=Memformuladet2['item_code'];
      Memformuladet['supplier_name']:=Memformuladet2['supplier_name'];
      Memformuladet['supplier_code']:=Memformuladet2['supplier_code'];
      Memformuladet['stock_code']:=Memformuladet2['stock_code'];
      Memformuladet['index']:=Memformuladet2['index'];
      Memformuladet['unit']:=Memformuladet2['unit'];
      Memformuladet['wh']:=Memformuladet2['wh'];
      Memformuladet['pack_qty']:=Memformuladet2['pack_qty'];
      Memformuladet.Post;
      Memformuladet2.Next;
    end;
  end;     }
end;

Procedure TFNew_MasterFormula.Simpan;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' insert into t_master_formula_test(formula_no,trial_date,formula_date,est_prod_date,'+
              ' prod_start_date,prod_end_date,weigh_amount,shift,status,product_code,wh_code,wh_code2,sbu_code,'+
              ' trans_year,order_no,trans_month,trans_date)values(:parno_formula,:partgl_trial,:partgl_formula,:partgl_perkiraan_prod,'+
              ' :partgl_mulai_prod,:partgl_selesai_prod,:parjmlh_timbang,:parshift,:parstatus,'+
              ' :parkd_produk,:pargudang,:pargudang2,:parkd_sbu,:parthn,:parnourut,:parbln,:partglno)';
              ParamByName('parno_formula').Value:=edno.Text;
              ParamByName('partgl_trial').Value:=FormatDateTime('yyy-mm-dd',DtTest.Date);
              ParamByName('partgl_formula').Value:=FormatDateTime('yyyy-mm-dd',DtMulai.Date);
              ParamByName('partgl_perkiraan_prod').Value:=Edperkiraan.Text;
              ParamByName('partgl_mulai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPMulai.date);
              ParamByName('partgl_selesai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPSelesai.date);
              ParamByName('parjmlh_timbang').Value:=EdTimbang.Text;
              ParamByName('parshift').Value:=EdShift.Text;
              ParamByName('parstatus').Value:='0';
              ParamByName('parkd_produk').Value:=EdProduk.Text;
              ParamByName('pargudang').Value:=kd_gdng;
              ParamByName('pargudang2').Value:=kd_gdng2;
              ParamByName('parkd_sbu').Value:=loksbu;
              ParamByName('parthn').Value:=Vthn;
              Parambyname('parnourut').value:=order_no;
              Parambyname('parbln').Value:=Vbln;
              Parambyname('partglno').value:=Vtgl;
    ExecSQL;
  end;
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
   with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_Master_formula_test_det(formula_no,wh_code,item_stock_code,stock_code, '+
                ' index,"unit",supplier_code,total_weight,pack_qty,total_pack,pack_unit) '+
                ' values(:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,:parindex,'+
                ' :parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,:partotalkemasan, '+
                ' :parsatuankemasan)';
                ParamByName('parno_formula').Value:=Edno.Text;
                ParamByName('pargudang').Value:=Memformuladet['wh_code'];
                ParamByName('parkd_material_stok').Value:=Memformuladet['item_code'];
                ParamByName('parkd_stok').Value:=Memformuladet['stock_code'];
                ParamByName('parindex').Value:=Memformuladet['index'];
                ParamByName('parsatuan').Value:=Memformuladet['unit'];
                ParamByName('parkd_supplier').Value:=Memformuladet['supplier_code'];
                ParamByName('parttlberat').Value:=Memformuladet['total_weight'];
                ParamByName('parqtyperkemasan').Value:=Memformuladet['pack_qty'];
                ParamByName('partotalkemasan').Value:=Memformuladet['total_pack'];
                ParamByName('parsatuankemasan').Value:=Memformuladet['pack_unit'];
      ExecSQL;
    end;
    Memformuladet.Next;
  end;
end;

procedure TFNew_MasterFormula.SpeedButton1Click(Sender: TObject);
begin
  WITH FItem_MasterFormula DO
  BEGIN
    Show;
    DBGridEh2.Visible:=true;
    Panel2.Visible:=false;
    BrefreshClick(sender);
    BNew.Enabled:=TruE;
    BUpdate.Enabled:=True;
    Brefresh.Enabled:=True;
  END;
end;

Procedure TFNew_MasterFormula.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' update t_master_formula_test set trial_date=:partgl_trial,formula_date=:partgl_formula,'+
              ' est_prod_date=:partgl_perkiraan_prod,weigh_amount=:parjmlh_timbang,prod_start_date=:partgl_mulai_prod,'+
              ' prod_end_date=:partgl_selesai_prod,product_code=:parkd_produk,trans_year=:parthn,'+
              ' wh_code=:pargudang,wh_code2=:pargudang2,shift=:parshift where formula_no=:parno_formula';
              ParamByName('parno_formula').Value:=edno.Text;
              ParamByName('partgl_trial').Value:=FormatDateTime('yyy-mm-dd',DtTest.Date);
              ParamByName('partgl_formula').Value:=FormatDateTime('yyyy-mm-dd',DtMulai.Date);
              ParamByName('partgl_perkiraan_prod').Value:=Edperkiraan.Text;
              ParamByName('partgl_mulai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPMulai.date);
              ParamByName('partgl_selesai_prod').Value:=FormatDateTime('yyy-mm-dd',DtPSelesai.date);
              ParamByName('parjmlh_timbang').Value:=EdTimbang.Text;
              ParamByName('parkd_produk').Value:=EdProduk.Text;
              ParamByName('pargudang').Value:=kd_gdng;
              ParamByName('pargudang2').Value:=kd_gdng2;
              ParamByName('parshift').Value:=EdShift.Text;
              ParamByName('parthn').Value:=thn;
          //  ParamByName('parstatus').Value:='Created';
    ExecSQL;
  end;
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='Delete from t_master_formula_test_det where formula_no='+QuotedStr(Edno.Text);
    ExecSQL;
  end;
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
   with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='insert into t_Master_formula_test_det(formula_no,wh_code,item_stock_code,stock_code, '+
                ' index,"unit",supplier_code,total_weight,pack_qty,total_pack,pack_unit) '+
                ' values(:parno_formula,:pargudang,:parkd_material_stok,:parkd_stok,:parindex,'+
                ' :parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,:partotalkemasan, '+
                ' :parsatuankemasan)';
                ParamByName('parno_formula').Value:=Edno.Text;
                ParamByName('pargudang').Value:=Memformuladet['wh_code'];
                ParamByName('parkd_material_stok').Value:=Memformuladet['item_code'];
                ParamByName('parkd_stok').Value:=Memformuladet['stock_code'];
                ParamByName('parindex').Value:=Memformuladet['index'];
                ParamByName('parsatuan').Value:=Memformuladet['unit'];
                ParamByName('parkd_supplier').Value:=Memformuladet['supplier_code'];
                ParamByName('parttlberat').Value:=Memformuladet['total_weight'];
                ParamByName('parqtyperkemasan').Value:=Memformuladet['pack_qty'];
                ParamByName('partotalkemasan').Value:=Memformuladet['total_pack'];
                ParamByName('parsatuankemasan').Value:=Memformuladet['pack_unit'];
      ExecSQL;
    end;
    Memformuladet.Next;
  end;
end;

procedure TFNew_MasterFormula.BBatalClick(Sender: TObject);
begin
  Close;
  FMaster_FormulaTest.ActROExecute(sender);
end;

procedure TFNew_MasterFormula.BSimpanClick(Sender: TObject);
begin
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
   if DBGridEh2.Fields[0].AsString='' then
    begin
      Memformuladet.Delete;
    end;
    Memformuladet.Next;
  end;
{  if EdNo.Text='' then
  begin
    MessageDlg('No. Master Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNo.SetFocus;
    Exit;
  end;  }
  if DtMulai.Text='' then
  begin
    MessageDlg('Tanggal Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
    DtMulai.SetFocus;
    Exit;
  end;
  if DtTest.Text='' then
  begin
    MessageDlg('Tanggal Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
    DtTest.SetFocus;
    Exit;
  end;
  if DtPMulai.Text='' then
  begin
    MessageDlg('Perkiraan Tanggal Produksi Tidak boleh Kosong ',MtWarning,[MbOk],0);
    DtPMulai.SetFocus;
    Exit;
  end;
  if DtPSelesai.Text='' then
  begin
    MessageDlg('Perkiraan Tanggal Produksi Tidak boleh Kosong ',MtWarning,[MbOk],0);
    DtPSelesai.SetFocus;
    Exit;
  end;

  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      if status=0 then
      begin
        //Autonumber;
        idmenu:='M09001';
        strday2:=DtTest.Date;
        Edno.Text:=getNourut(strday2,'t_master_formula_test','');
        if messageDlg ('Anda Yakin Simpan?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
        then begin
          Simpan;
        end;
      end;
      if status=1 then
      begin
        Update;
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

procedure TFNew_MasterFormula.DBGridEh2CellClick(Column: TColumnEh);
begin
  Memformuladet.Edit;
  Memformuladet['total_weight']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['total_pack']:=(Memformuladet['total_weight'])/(Memformuladet['pack_qty']);
  Memformuladet.Post;
end;

procedure TFNew_MasterFormula.DBGridEh2ColEnter(Sender: TObject);
begin
  Memformuladet.Edit;
  Memformuladet['total_weight']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['total_pack']:=(Memformuladet['total_weight'])/(Memformuladet['pack_qty']);
  Memformuladet.Post;
end;

procedure TFNew_MasterFormula.DBGridEh2Columns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  //  FSearch_MatSPKFor.Show;
  //  FSearch_MatSPKFor.jenistrans:='Masterformula'
end;

procedure TFNew_MasterFormula.DBGridEh2Columns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
 with FCari_Barang2 do
  begin
    VMenu:='2';
    Qbarang.Close;
    with FCari_Barang2.Qbarang do
  begin
    close;
    sql.Clear;
    sql.Text:='select B.item_stock_code,b.item_name,A.supplier_code,A.supplier_name,C.stock_code, C."outstanding" as qty, '+
    ' B.unit,e.wh_name,D.unit_conv,D.qty_conv,c.wh_code from t_supplier A Right join t_item_stock B on'+
    ' A.supplier_code=B.supplier_code Left join t_item_stock_det C on B.item_stock_code=C.item_stock_code '+
    ' inner join t_item_conversion D on D.item_code=B.item_code inner join t_wh e on c.wh_code=e.wh_code '+
    ' where B.item_code='+QuotedStr(Memformuladet['item_code'])+''+
    ' and (e.wh_name='+QuotedStr(CbGdKimia.Text)+' or e.wh_name='+QuotedStr(CbGdBaku.Text)+')'+''+
    ' order by c.iddetail,c.stock_code asc' ;
    ExecSQL;
  end;
    Show;
    Qbarang.Open;
  end;
end;

procedure TFNew_MasterFormula.EdProdukSelect(Sender: TObject);
begin
  with dm.qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item where item_name='+QuotedStr(EdProduk.Text);
    Execute
  end;
  kd_barang:=dm.Qtemp['item_code2'];
  Memformuladet.EmptyTable;
  Memformuladet.Close;
  Memformuladet.Open;
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='Select * from (SELECT a.item_code,qty,conversion_qty,a.id,product_code,b.item_name nm_produk,c.item_name,c.unit  '+
    ' FROM t_master_test a INNER JOIN t_item b on  a.product_code=b.item_code2 INNER JOIN t_item c '+
    ' on a.item_code=c.item_code INNER JOIN t_item_conversion d on c.item_code=d.item_code where '+
    ' a.product_code='+QuotedStr(kd_barang)+')a GROUP BY a.item_code,qty,conversion_qty,a.id,product_code,nm_produk,item_name,unit'+
    ' order by a.id desc';
    Execute;
  end;
  DM.Qtemp2.First;
  while not DM.Qtemp2.eof do
  begin
    Memformuladet.Insert;
    Memformuladet['item_code']:=dm.Qtemp2['item_code'];
    Memformuladet['item_name']:=dm.Qtemp2['item_name'];
    Memformuladet['supplier_name']:='0';
    Memformuladet['stock_code']:='0';
    Memformuladet['index']:=dm.Qtemp2['qty'];
    Memformuladet['unit']:=dm.Qtemp2['unit'];
    Memformuladet['wh']:='0';
    Memformuladet['total_weight']:='0';
    Memformuladet['pack_qty']:=dm.Qtemp2['conversion_qty'];
//    Memformuladet['satuankemasan']:=dm.Qtemp['qtykonversi'];
    Memformuladet.Post;
    DM.Qtemp2.Next;
  end;
  EdTimbangChange(sender);
end;

procedure TFNew_MasterFormula.EdShiftSelect(Sender: TObject);
begin
//  Self.Autonumber;
  with dm.Qtemp do
  begin
     close;
     sql.Clear;
     sql.Text:='select * from t_wh where wh_name='+QuotedStr(CbGdKimia.Text);
     Execute;
  end;
  kd_gdng2:=dm.Qtemp['wh_code'];
end;

procedure TFNew_MasterFormula.EdTimbangChange(Sender: TObject);
begin
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
    DBGridEh2ColEnter(sender);
    Memformuladet.Next;
  end;
end;

procedure TFNew_MasterFormula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_MasterFormula.FormCreate(Sender: TObject);
begin
  RealFNew_MasterFormula:=self;
end;

procedure TFNew_MasterFormula.FormDestroy(Sender: TObject);
begin
  RealFNew_MasterFormula:=nil;
end;

procedure TFNew_MasterFormula.FormShow(Sender: TObject);
begin
  Memformuladet2.Close;
  Memformuladet2.Open;
  Memformuladet.Close;
  Memformuladet.Open;
  Load;
  DtMulai.format:=format_tgl;
  DtTest.format:=format_tgl;
  DtPMulai.format:=format_tgl;
  DtPSelesai.format:=format_tgl;
end;

end.
