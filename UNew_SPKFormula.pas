unit UNew_SPKFormula;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  MemTableEh, RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzEdit, Vcl.StdCtrls, RzCmboBx, Vcl.Mask, Vcl.CheckLst, RzTabs,
  DataDriverEh, Vcl.Samples.Gauges;

type
  TFNew_SPKFormula = class(TForm)
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
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    Edperkiraan: TRzEdit;
    Edno: TRzEdit;
    EdShift: TRzComboBox;
    Memformuladet: TMemTableEh;
    DsFormulaDet: TDataSource;
    Memformuladet2: TMemTableEh;
    DBGriddetail: TDBGridEh;
    Label2: TLabel;
    Label6: TLabel;
    EdMesin: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    EdNo_Formula: TRzComboBox;
    Label18: TLabel;
    Label19: TLabel;
    QGudang: TUniQuery;
    DsGudang: TDataSource;
    DtPMulai: TRzDateTimeEdit;
    DtPSelesai: TRzDateTimeEdit;
    Label20: TLabel;
    Gauge1: TGauge;
    CBGudang: TComboBox;
    EdProduk: TRzComboBox;
    Label21: TLabel;
    Label22: TLabel;
    procedure DBGridEh2Columns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure EdShiftSelect(Sender: TObject);
    procedure EdTimbangChange(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure EdNo_FormulaSelect(Sender: TObject);
    procedure DBGriddetailCellClick(Column: TColumnEh);
    procedure DBGriddetailColExit(Sender: TObject);
    procedure CBGudangChange(Sender: TObject);
    procedure DBGriddetailColEnter(Sender: TObject);
    procedure CBGudangSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CLear;
    Procedure Autonumber;
    Procedure Load;
  end;

Function  FNew_SPKFormula: TFNew_SPKFormula;
var  Status,th,bln,tglno,nourut:string;

implementation

{$R *.dfm}

uses UDatamodule,USPK_Formula //,UNew_ResultFormula, UNew_DetailFormula
    ,UMainmenu, UCari_Barang,UCari_Barang2, UMy_Function;
var RealFNew_SPKFormula: TFNew_SPKFormula;
function FNew_SPKFormula: TFNew_SPKFormula;
begin
  if RealFNew_SPKFormula <> nil then FNew_SPKFormula:= RealFNew_SPKFormula
  else  Application.CreateForm(TFNew_SPKFormula, Result);
end;

procedure TFNew_SPKFormula.CBGudangChange(Sender: TObject);
begin
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
    Memformuladet.Edit;
    Memformuladet['gudangtransit']:=CbGudang.Text;
    Memformuladet.Post;
    Memformuladet.Next;
  end;
end;

procedure TFNew_SPKFormula.CBGudangSelect(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='select * from t_wh where wh_name='+QuotedStr(CBGudang.Text);
    execute;
  end;
  kdgdng:=dm.Qtemp['wh_code'];
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
    Memformuladet.Edit;
    Memformuladet['kd_gudangtransite']:=kdgdng;//CbGudang.Textkd;
    Memformuladet['gudangtransit']:=CbGudang.Text;
    Memformuladet.Post;
    Memformuladet.Next;
  end;
end;

Procedure TFNew_SPKFormula.Clear;
begin
  Edno.Clear;
  EdTimbang.text:='1';
  DtTest.Date:=now;
  DtMulai.Date:=now;
  Edperkiraan.Clear;
  Memformuladet.Close;
  Memformuladet.Open;
  Memformuladet.EmptyTable;
{  Memformuladet2.First;
  while not Memformuladet2.Eof do
  begin
  with Memformuladet2 do
  begin
    Memformuladet.Insert;
    Memformuladet['nm_material']:=Memformuladet2['nm_material'];
    Memformuladet['kd_material']:=Memformuladet2['kd_material'];
    Memformuladet['nm_supplier']:=Memformuladet2['nm_supplier'];
    Memformuladet['kd_supplier']:=Memformuladet2['kd_supplier'];
    Memformuladet['kd_stok']:=Memformuladet2['kd_stok'];
    Memformuladet['index']:=Memformuladet2['index'];
    Memformuladet['satuan']:=Memformuladet2['satuan'];
    Memformuladet['Gudang']:=Memformuladet2['Gudang'];
    Memformuladet['qtyperkemasan']:=Memformuladet2['qtyperkemasan'];
    Memformuladet.Post;
    Memformuladet2.Next;
  end;
  end;   }
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

procedure TFNew_SPKFormula.Autonumber;
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
 DecodeDate(DtTest.Date, yy,M,d );
 th:=FormatDateTime('yyy',DtTest.Date);
 bln:=FormatDateTime('mm',DtTest.Date);
 tglno:=FormatDateTime('dd',DtTest.Date);
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
    sql.Text:='select max(nourut) urut from t_spk_formula where tahun='+QuotedStr(th)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);;
    open;
  end;
   if dm.Qtemp['urut'] = '' then
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
  EdNo.Text:= EditComplete+ '/'+maxmy + '/' + KdSBU;
end;

Procedure TFNew_SPKFormula.Load;
begin
  EdMesin.Clear;
  if kdsbu='' then
  begin
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='Select * from t_machine ';
      ExecSQL;
    end;
    EdNo_Formula.Clear;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' Select * from t_master_formula_test where formula_no in (select formula_no from t_master_formula_test'+
                ' EXCEPT select formula_no from t_spk_formula)';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not Dm.Qtemp.Eof do
    begin
    EdNo_Formula.Items.Add(Dm.Qtemp['formula_no']);
    Dm.Qtemp.Next;
    end;
  end else
  if kdsbu<>'' then
  begin
    edmesin.Clear;
    with dm.Qtemp2 do
    begin
      close;
      sql.Clear;
      sql.Text:='Select * from t_machine where sbu_code='+QuotedStr(lokSBU);
      ExecSQL;
    end;
  end;
  Dm.Qtemp2.First;
  while not Dm.Qtemp2.Eof do
  begin
    EdMesin.Items.Add(Dm.Qtemp2['mc']);
    Dm.Qtemp2.Next;
  end;
    EdNo_Formula.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' Select * from t_master_formula_test where formula_no in (select formula_no from t_master_formula_test'+
              ' EXCEPT select formula_no from t_spk_formula) and sbu_code='+QuotedStr(loksbu);
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  EdNo_Formula.Items.Add(Dm.Qtemp['formula_no']);
  Dm.Qtemp.Next;
  end;
  CBGudang.Clear;
  if kdsbu='' then
  begin
    with dm.Qtemp3 do
    begin
      close;
      sql.Clear;
      sql.Text:='Select * from t_wh order by wh_name asc';
      ExecSQL;
    end;
  end else
  if kdsbu<>'' then
  begin
  with dm.Qtemp3 do
  begin
    close;
    sql.Clear;
    sql.Text:='Select * from t_wh where sbu_code='+QuotedStr(lokSBU)+' order by wh_name asc';
    ExecSQL;
  end;
  end;
  Dm.Qtemp3.First;
  while not Dm.Qtemp3.Eof do
  begin
  CBGudang.Items.Add(Dm.Qtemp3['wh_name']);
  Dm.Qtemp3.Next;
  end;
end;

procedure TFNew_SPKFormula.DBGriddetailCellClick(Column: TColumnEh);
begin
  QGudang.Close;
  QGudang.Open;
  Memformuladet.Edit;
  Memformuladet['totalberat']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['totalkemasan']:=(Memformuladet['totalberat'])/(Memformuladet['qtyperkemasan']);
  Memformuladet.Post;
//  CbGudang.Text:=Memformuladet['gudangtransit'];
end;

procedure TFNew_SPKFormula.DBGriddetailColEnter(Sender: TObject);
begin
  Memformuladet.Edit;
  Memformuladet['totalberat']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['totalkemasan']:=(Memformuladet['totalberat'])/(Memformuladet['qtyperkemasan']);
  Memformuladet.Post;
end;

procedure TFNew_SPKFormula.DBGriddetailColExit(Sender: TObject);
begin
  Memformuladet.Edit;
  Memformuladet['totalberat']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['totalkemasan']:=(Memformuladet['totalberat'])/(Memformuladet['qtyperkemasan']);
  Memformuladet.Post;
 // CbGudang.Text:=Memformuladet['gudangtransit'];
// CBGudangChange(sender);
end;

procedure TFNew_SPKFormula.DBGridEh1Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
{  FNew_DetailFormula.CLear;
 with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select A.*,B.nm_material, C.nm_supplier from t_spk_formula_det A '+
              ' inner join t_material_stok B on A.kd_material_stok=B.kd_material_stok'+
              ' inner join t_supplier C on A.kd_supplier=C.kd_supplier'+
              ' where A.no_formula='+QuotedStr(Edno.Text)+''+
              ' order by A.iddetail Desc';
    ExecSQL;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    with FNew_DetailFormula.Memformuladet do
    begin
      FNew_DetailFormula.Memformuladet.insert;
      FNew_DetailFormula.Memformuladet['kd_material']:= dm.Qtemp['kd_material_stok'];
      FNew_DetailFormula.Memformuladet['nm_material']:= dm.Qtemp['nm_material'];
      FNew_DetailFormula.Memformuladet['kd_supplier']:= dm.Qtemp['kd_supplier'];
      FNew_DetailFormula.Memformuladet['nm_supplier']:= dm.Qtemp['nm_supplier'];
      FNew_DetailFormula.Memformuladet['kd_stok']:= dm.Qtemp['kd_stok'];
      FNew_DetailFormula.Memformuladet['index']:= dm.Qtemp['index'];
      FNew_DetailFormula.Memformuladet['qtyperkemasan']:= dm.Qtemp['qtyperkemasan'];
      FNew_DetailFormula.Memformuladet['Gudang']:=dm.Qtemp['gudang'];
      FNew_DetailFormula.Memformuladet['satuan']:=dm.Qtemp['satuan'];
      FNew_DetailFormula.Memformuladet['satuankemasan']:=dm.Qtemp['satuankemasan'];
      FNew_DetailFormula.Memformuladet.Post;;
      dm.Qtemp.Next;
    end;
  end;
  FNew_DetailFormula.Show;
  FNew_DetailFormula.EdNo.Text:=Edno.Text;
  FNew_DetailFormula.edregu.Text:=EdShift.Text;
  FNew_DetailFormula.DtTest.Text:=DtTest.Text;
  FNew_DetailFormula.EdTgl_Prod.Text:=Edperkiraan.Text;
  FNew_DetailFormula.Autonumber;    } //17-05-2024
end;

procedure TFNew_SPKFormula.DBGridEh2CellClick(Column: TColumnEh);
begin
  QGudang.Close;
  QGudang.Open;
  Memformuladet.Edit;
  Memformuladet['totalberat']:=Memformuladet['index']*StrToFloat(EdTimbang.Text);
  Memformuladet['totalkemasan']:=(Memformuladet['totalberat'])/(Memformuladet['qtyperkemasan']);
  Memformuladet.Post;
end;

procedure TFNew_SPKFormula.DBGridEh2Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  with FCari_Barang do
  begin
    VMenu:='7';
    with QBarang do
    begin
      close;
      sql.Clear;
      sql.Text:=' select a.item_code,a.item_name,b.unit,b.unit_conv, b.qty_conv,c.group_name category from t_item a'+
                ' inner join t_item_conversion b on a.item_code=b.item_code INNER join t_item_group c on '+
                ' a.group_id=c.group_id';
      ExecSQL;
    end;
    show;
  end;
end;

procedure TFNew_SPKFormula.DBGridEh2Columns2EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
{  with FSearch_SuppSPKFor.QSupplier do
  begin
    close;
    sql.Clear;
    sql.Text:='select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok, C.qty, B.satuan '+
              ' , C.Gudang, D.konversi from t_supplier A inner join t_material_stok B on A.kd_supplier=B.kd_supplier '+
              ' Left join t_material_stok_det C on B.Kd_material_stok = C.kd_material_stok '+
              ' inner join t_konversi_material D on D.kd_material=B.kd_material'+
              ' where B.kd_material='+QuotedStr(Memformuladet['kd_material']);
    ExecSQL;
  end;
  FSearch_SuppSPKFor.Show;
  FSearch_SuppSPKFor.QSupplier.Open;    }
end;

procedure TFNew_SPKFormula.EdNo_FormulaSelect(Sender: TObject);
begin
  with dm.Qtemp2 do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_master_formula_test where formula_no='+QuotedStr(EdNo_Formula.Text);
    ExecSQL;
  end;
  DtPMulai.Date:=Dm.Qtemp2['prod_start_date'];
  DtPSelesai.Date:=Dm.Qtemp2['prod_end_date'];
  Memformuladet.EmptyTable;
  with Dm.Qtemp do
  begin
    sql.Clear;
    sql.Text:='select A.*,E.trial_date,E.formula_date,E.est_prod_date,E.product_code,C.item_name,'+
              ' D.supplier_name,f.wh_name from t_master_formula_test_det A '+
              ' left join t_item_stock B on A.item_stock_code=B.item_stock_code '+
              ' left join t_item C on B.item_name=C.item_name '+
              ' left join t_supplier D on B.supplier_code=D.supplier_code '+
              ' INNER JOIN t_master_formula_test E ON A.formula_no=E.formula_no '+
              ' INNER join t_wh f on a.wh_code=f.wh_code'+
              ' where A.formula_no='+QuotedStr(EdNo_Formula.Text) +''+
              ' order by a.detail_id Desc ';
    ExecSQL;
  end;
  DtTest.Date:=Dm.Qtemp['trial_date'];
  DtMulai.Date:=Dm.Qtemp['formula_date'];
  Edperkiraan.Text:=Dm.Qtemp['est_prod_date'];
  EdProduk.Text:=Dm.Qtemp['product_code'];
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  with Memformuladet do
  begin
    Memformuladet.Insert;
    Memformuladet['kd_material']:=Dm.Qtemp['item_stock_code'];
    Memformuladet['nm_material']:=Dm.Qtemp['item_name'];
    Memformuladet['kd_supplier']:=Dm.Qtemp['supplier_code'];
    Memformuladet['nm_supplier']:=Dm.Qtemp['supplier_name'];
    Memformuladet['kd_stok']:=Dm.Qtemp['stock_code'];
    Memformuladet['index']:=dm.Qtemp['index'];
    Memformuladet['satuan']:=Dm.Qtemp['unit'];
    Memformuladet['gudang']:=dm.Qtemp['wh_name'];
    Memformuladet['kd_gudang']:=dm.Qtemp['wh_code'];
    Memformuladet['qtyperkemasan']:=Dm.Qtemp['pack_qty'];
    Memformuladet['satuankemasan']:=Dm.Qtemp['pack_unit'];
    Memformuladet['gudangtransit']:='';
    Memformuladet['totalberi']:='0';
    Memformuladet['totalterima']:='0';
    Memformuladet.Post;
  Dm.Qtemp.Next;
  end;
  EdTimbangChange(sender);
end;

procedure TFNew_SPKFormula.EdShiftSelect(Sender: TObject);
begin
//  self.Autonumber;
end;

procedure TFNew_SPKFormula.EdTimbangChange(Sender: TObject);
begin
  if EdTimbang.Text='' then EdTimbang.Text:='0' else
  Memformuladet.First;
  while not Memformuladet.Eof do
  begin
    DBGriddetailColEnter(sender);
    Memformuladet.Next;
  end;
end;

procedure TFNew_SPKFormula.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_SPKFormula.FormCreate(Sender: TObject);
begin
  RealFNew_SPKFormula:=self;
end;

procedure TFNew_SPKFormula.FormDestroy(Sender: TObject);
begin
  RealFNew_SPKFormula:=nil;
end;

Procedure TFNew_SPKFormula.FormShow(Sender: TObject);
begin
  Memformuladet2.Close;
  Memformuladet2.Open;
  Memformuladet.Close;
  Memformuladet.Open;
  Self.CLear;
  self.Load;
//  Self.Refresh;
//  if QGudang.Active=false then QGudang.Active:=True;
end;

procedure TFNew_SPKFormula.BBatalClick(Sender: TObject);
begin
  FSPK_Formula.Show;
  FSPK_Formula.ActROExecute(sender);
  Close;
end;

procedure TFNew_SPKFormula.BEditClick(Sender: TObject);
begin
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_spk_formula';
        ExecSQL;
      end;
      //sGauge1.visible:=true;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' update t_spk_formula set '+
                  ' trial_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtTest.date))+','+
                  ' formula_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtMulai.date))+','+
                  ' prod_start_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtPMulai.date))+','+
                  ' prod_end_date='+QuotedStr(FormatDateTime('yyy-mm-dd',DtPSelesai.date))+','+
                  ' est_prod_date='+QuotedStr(Edperkiraan.Text)+','+
                  ' amount_weight='+QuotedStr(EdTimbang.Text)+', shift='+QuotedStr(EdShift.Text)+','+
                  ' trans_year='+QuotedStr(FormatDateTime('yyy',DtTest.date))+','+
                  ' type='+QuotedStr(Status)+',formula_no='+quotedstr(EdNo_Formula.Text)+','+
                  ' wh_code='+QuotedStr(kdgdng)+''+
                  ' where spk_no='+quotedstr(Edno.Text);
        ExecSQL;
      end;
      //sGauge1.Progress:=0;
      //sGauge1.MaxValue:=Dm.Qtemp.RecordCount;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_spk_formula_det';
        ExecSQL;
      end;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='delete from t_spk_formula_det where spk_no='+QuotedStr(Edno.Text);
        ExecSQL;
      end;
      Memformuladet.First;
      while not Memformuladet.Eof do
      begin
       with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:=' insert into t_spk_formula_det(spk_no,wh_code,item_stock_code,stock_code, '+
                    ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit, '+
                    ' wh_code2,total_give,total_receive,type) '+
                    ' values(:parno_spk,:pargudang,:parkd_material_stok,:parkd_stok, '+
                    ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
                    ' :partotalkemasan,:parsatuankemasan,:pargudangtransit,:partotalberi,'+
                    ' :partotalterima,:partype)';
                    ParamByName('parno_spk').Value:=Edno.Text;
                    ParamByName('pargudang').Value:=Memformuladet['kd_Gudang'];
                    ParamByName('parkd_material_stok').value:=Memformuladet['kd_material'];
                    ParamByName('parkd_stok').Value:=Memformuladet['kd_stok'];
                    ParamByName('parindex').Value:=Memformuladet['index'];
                    ParamByName('parsatuan').Value:=Memformuladet['satuan'];
                    ParamByName('parkd_supplier').Value:=Memformuladet['kd_supplier'];
                    ParamByName('parttlberat').Value:=Memformuladet['totalberat'];
                    ParamByName('parqtyperkemasan').Value:=Memformuladet['qtyperkemasan'];
                    ParamByName('partotalkemasan').Value:=Memformuladet['totalkemasan'];
                    ParamByName('parsatuankemasan').Value:=Memformuladet['satuankemasan'];
                    ParamByName('pargudangtransit').Value:=Memformuladet['kd_gudangtransite'];
                    ParamByName('partotalberi').Value:=Memformuladet['totalberi'];
                    ParamByName('partotalterima').Value:=Memformuladet['totalterima'];
                    ParamByName('partype').Value:=Status;
          ExecSQL;
        end;
      //  sGauge1.Progress:= Gauge1.Progress + 1;
        Memformuladet.Next;
      end;
      //Gauge1.maxvalue:=Dm.Qtemp.RecordCount;
       dm.koneksi.Commit;
      Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
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

procedure TFNew_SPKFormula.BSimpanClick(Sender: TObject);
begin
///  Autonumber;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_menu_sub where link=''FSPK_Formula''';
    ExecSQL;
  end;
  idmenu:=dm.Qtemp['submenu_code'];
  strday2:=DtTest.Date;
  Edno.Text:=getNourut(strday2,'t_spk_formula','');
  if messageDlg ('Anda Yakin Simpan SPK No. '+EdNo.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
    try
      begin
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from t_spk_formula';
          ExecSQL;
        end;
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:=' insert into t_spk_formula(formula_no,trial_date,formula_date,est_prod_date,amount_weight,shift,spk_no,'+
                    ' mc,product_code,type,prod_start_date,prod_end_date,sbu_code,status,trans_year,trans_month,trans_day,order_no,wh_code,created_by) '+
                    ' values('+quotedstr(EdNo_Formula.Text)+','+QuotedStr(FormatDateTime('yyy-mm-dd',DtTest.date))+','+
                    ''+QuotedStr(Formatdatetime('yyy-mm-dd',DtMulai.date))+','+QuotedStr(Edperkiraan.Text)+','+
                    ''+QuotedStr(EdTimbang.Text)+','+QuotedStr(EdShift.Text)+','+QuotedStr(Edno.Text)+','+QuotedStr(EdMesin.Text)+','+
                    ''+QuotedStr(EdProduk.Text)+',''Created'','+
                    ''+QuotedStr(FormatDateTime('yyy-mm-dd',DtPMulai.date))+','+
                    ''+QuotedStr(FormatDateTime('yyy-mm-dd',DtPSelesai.date))+','+
                    ''+QuotedStr(loksbu)+',''1'','+QuotedStr(vthn)+','+QuotedStr(vbln)+','+''+
                    ''+QuotedStr(vtgl)+','+QuotedStr(order_no)+','+QuotedStr(kdgdng)+','+QuotedStr(Nm)+')';
          ExecSQL;
        end;
        with dm.Qtemp2 do
        begin
          close;
          sql.Clear;
          sql.Text:='select * from t_spk_formula_det';
          ExecSQL;
        end;
        Memformuladet.First;
        while not Memformuladet.Eof do
        begin
         with dm.Qtemp do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into t_spk_formula_det(spk_no,wh_code,item_stock_code,stock_code, '+
                      ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit,wh_code2,total_give,total_receive,type) '+
                      ' values(:parno_spk,:pargudang,:parkd_material_stok,:parkd_stok, '+
                      ' :parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
                      ' :partotalkemasan,:parsatuankemasan,:pargudangtransit,:partotalberi,'+
                      ' :partotalterima,:partype)';
                      ParamByName('parno_spk').Value:=Edno.Text;
                      ParamByName('pargudang').Value:=Memformuladet['kd_Gudang'];
                      ParamByName('parkd_material_stok').value:=Memformuladet['kd_material'];
                      ParamByName('parkd_stok').Value:=Memformuladet['kd_stok'];
                      ParamByName('parindex').Value:=Memformuladet['index'];
                      ParamByName('parsatuan').Value:=Memformuladet['satuan'];
                      ParamByName('parkd_supplier').Value:=Memformuladet['kd_supplier'];
                      ParamByName('parttlberat').Value:=Memformuladet['totalberat'];
                      ParamByName('parqtyperkemasan').Value:=Memformuladet['qtyperkemasan'];
                      ParamByName('partotalkemasan').Value:=Memformuladet['totalkemasan'];
                      ParamByName('parsatuankemasan').Value:=Memformuladet['satuankemasan'];
                      ParamByName('pargudangtransit').Value:=Memformuladet['kd_gudangtransite'];
                      ParamByName('partotalberi').Value:=Memformuladet['totalberi'];
                      ParamByName('partotalterima').Value:=Memformuladet['totalterima'];
                      ParamByName('partype').Value:=Status;
            ExecSQL;
          end;
          Memformuladet.Next
        end;
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='update t_master_formula_test set spk_status=''f'' where formula_no='+QuotedStr(EdNo_Formula.Text);
          ExecSQL;
        end;
         dm.koneksi.Commit;
        Messagedlg('Data Berhasil Disimpan',MtInformation,[Mbok],0);
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

end.
