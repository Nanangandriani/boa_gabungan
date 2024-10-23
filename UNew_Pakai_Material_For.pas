unit UNew_Pakai_Material_For;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs,
  MemTableDataEh, Data.DB, MemTableEh, MemDS, DBAccess, Uni;

type
  TFNew_PakaiMatFor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdNo: TRzEdit;
    DtTanggal: TRzDateTimeEdit;
    EdNo_SPk: TRzComboBox;
    EdNo_Formula: TRzComboBox;
    EdKarton: TRzEdit;
    EdShift: TRzComboBox;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    EdMesin: TRzComboBox;
    Label15: TLabel;
    Label16: TLabel;
    dtthn: TRzDateTimeEdit;
    Label11: TLabel;
    Label12: TLabel;
    EdProduk: TRzEdit;
    RzPageControl1: TRzPageControl;
    TabBaku: TRzTabSheet;
    TabKimia: TRzTabSheet;
    DBGridBaku: TDBGridEh;
    EdTimbang: TRzEdit;
    Label17: TLabel;
    Label18: TLabel;
    Membaku1: TMemTableEh;
    DsBaku: TDataSource;
    DBGridKimia: TDBGridEh;
    MemKimia: TMemTableEh;
    DsKimia: TDataSource;
    UniQuery1: TUniQuery;
    UniQuery1no_pakai: TStringField;
    UniQuery1gudang: TStringField;
    UniQuery1kd_material_stok: TStringField;
    UniQuery1kd_stok: TStringField;
    UniQuery1index: TFloatField;
    UniQuery1satuan: TStringField;
    UniQuery1kd_supplier: TStringField;
    UniQuery1iddetail: TLargeintField;
    UniQuery1ttlberat: TFloatField;
    UniQuery1qtyperkemasan: TFloatField;
    UniQuery1totalkemasan: TFloatField;
    UniQuery1satuankemasan: TStringField;
    UniQuery1gudangtransit: TStringField;
    UniQuery1Status: TStringField;
    UniQuery1qtypakai: TFloatField;
    UniQuery1waste: TFloatField;
    UniQuery1totalpakai: TFloatField;
    Membaku: TMemTableEh;
    procedure FormShow(Sender: TObject);
    procedure EdNo_SPkSelect(Sender: TObject);
    procedure DBGridKimiaColEnter(Sender: TObject);
    procedure DBGridKimiaCellClick(Column: TColumnEh);
    procedure DBGridBakuCellClick(Column: TColumnEh);
    procedure DBGridBakuColEnter(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure EdTimbangChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    Procedure Load;
    Procedure Autonumber;
    Procedure Simpan;
    Procedure Update;
  end;

Function FNew_PakaiMatFor: TFNew_PakaiMatFor;
var  Thn,status,bln,tglno,nourut:string;

implementation

{$R *.dfm}

uses UDatamodule, UPakai_Material_For, UMainmenu, UMy_Function;
var RealFNew_PakaiMatFor: TFNew_PakaiMatFor;
function FNew_PakaiMatFor: TFNew_PakaiMatFor;
begin
  if RealFNew_PakaiMatFor <> nil then FNew_PakaiMatFor:= RealFNew_PakaiMatFor
  else  Application.CreateForm(TFNew_PakaiMatFor, Result);
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

procedure TFNew_PakaiMatFor.Autonumber;
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
 DecodeDate(dttanggal.date, yy,M,d );
 thn:=FormatDateTime('yyy',dttanggal.Date);
 bln:=FormatDateTime('mm',dttanggal.Date);
 tglno:=FormatDateTime('dd',dttanggal.Date);
 yr:=intTostr(yy);
 yr:=intTostr(yy);
 yn:=copy(yr,3,2);
 mt:=IntToStr(M);
 dy:=IntToStr(d);
 (*looking for max mm/yy*)
 maxmy:= (tglno+'/'+IntToRoman(strToint(mt)))+'/'+EdShift.Text+'/'+yn;
with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_material_pakai_for where tahun='+QuotedStr(thn)+' and bln='+QuotedStr(bln)+' and tgl_no='+QuotedStr(tglno);
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

Procedure TFNew_PakaiMatFor.Simpan;
begin
   with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_menu_sub where link=''FPakai_Material_For''';
    ExecSQL;
  end;
  idmenu:=dm.Qtemp['submenu_code'];
  strday2:=DtTanggal.Date;
  Edno.Text:=getNourut(strday2,'warehouse.t_item_use_for','');
    with Dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:=' insert into warehouse.t_item_use_for(use_no,spk_no,formula_no,trans_date,amount_weight,mc,product_code,'+
      ' shift,carton_qty,trans_year,status,sbu_code,trans_month,trans_day,order_no,created_by) '+
      ' values(:parno_pakai,:parno_spk,:parno_formula,:partanggal,:parjmlh_timbang,:parmc,:parnm_produk,'+
      ' :parshift,:parjmlh_karton,:partahun,:parstatus,:parkd_sbu,:parbln,:partglno,:parnourut,:parpic)';
        ParamByName('parno_pakai').Value:=EdNo.Text;
        ParamByName('parno_spk').Value:=EdNo_SPk.Text;
        ParamByName('parno_formula').Value:=EdNo_formula.Text;
        ParamByName('partanggal').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
        ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
        ParamByName('parmc').Value:=EdMesin.Text;
        ParamByName('parnm_produk').Value:=EdProduk.Text;
        ParamByName('parshift').Value:=EdShift.Text;
        ParamByName('parjmlh_karton').Value:=EdKarton.Text;
        ParamByName('partahun').Value:=vthn;
        ParamByName('parstatus').Value:='1';
        ParamByName('parkd_sbu').Value:=loksbu;
        ParamByName('parbln').Value:=vbln;
        ParamByName('partglno').Value:=vtgl;
        ParamByName('parnourut').Value:=order_no;
        ParamByName('parpic').Value:=Nm;
      ExecSQL;
    end;
    with dm.QTemp3 do
    begin
      close;
      sql.Clear;
      sql.Text:='update warehouse.t_spk_formula set status=''0'' where spk_no='+QuotedStr(EdNo_SPk.Text);
      ExecSQL;
    end;
    with dm.Qtemp2 do
    begin
     close;
     sql.Clear;
     sql.text:='select * from warehouse.t_item_use_for_det';
     ExecSQL;
    end;
    Membaku.First;
    while not Membaku.Eof do
    begin
      with Dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into warehouse.t_item_use_for_det(use_no,wh_code,item_stock_code,stock_code,'+
        ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit,total_use '+
        ' ,outstanding,status)values(:parno_pakai,:pargudang,:parkd_material_stok, '+
        ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
        ' :partotalkemasan,:parsatuankemasan,:partotalpakai,:parsisa,:parstatus)';
        ParamByName('parno_pakai').Value:=EdNo.Text;
        ParamByName('pargudang').Value:=Membaku['kd_gudang'];
        ParamByName('parkd_material_stok').Value:=Membaku['kd_material_stok'];
        ParamByName('parkd_stok').Value:=Membaku['kd_stok'];
        ParamByName('parindex').Value:=Membaku['index'];
        ParamByName('parsatuan').Value:=Membaku['satuan'];
        ParamByName('parkd_supplier').Value:=Membaku['kd_supplier'];
        ParamByName('parttlberat').Value:=Membaku['ttlberat'];
        ParamByName('parqtyperkemasan').Value:=Membaku['qtyperkemasan'];
        ParamByName('partotalkemasan').Value:=Membaku['totalkemasan'];
        ParamByName('parsatuankemasan').Value:=Membaku['satuankemasan'];
        ParamByName('partotalpakai').Value:=Membaku['totalpakai'];
        ParamByName('parsisa').Value:=Membaku['sisa'];
        ParamByName('parstatus').Value:='1';
        Execute;
      end;
      Membaku.Next;
    end;
      MemKimia.First;
      while not MemKimia.Eof do
      begin
          with Dm.Qtemp2 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into warehouse.t_item_use_for_det(use_no,wh_code,item_stock_code,stock_code,'+
                      ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit,total_use '+
                      ' ,outstanding,status)values(:parno_pakai,:pargudang,:parkd_material_stok, '+
                      ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
                      ' :partotalkemasan,:parsatuankemasan,:partotalpakai,:parsisa,:parstatus)';
                      ParamByName('parno_pakai').Value:=EdNo.Text;
                      ParamByName('pargudang').Value:=MemKimia['kd_gudang'];
                      ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
                      ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
                      ParamByName('parindex').Value:=MemKimia['index'];
                      ParamByName('parsatuan').Value:=MemKimia['satuan'];
                      ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
                      ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
                      ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
                      ParamByName('partotalkemasan').Value:=MemKimia['totalkemasan'];
                      ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
                      ParamByName('partotalpakai').Value:=MemKimia['totalpakai'];
                      ParamByName('parsisa').Value:=MemKimia['sisa'];
                      ParamByName('parstatus').Value:='1';
            Execute;
          end;
          MemKimia.Next;
      end;
end;

Procedure TFNew_PakaiMatFor.Update;
begin
   with Dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:=' Update warehouse.t_item_use_for set spk_no=:parno_spk,formula_no=:parno_formula,'+
                  ' trans_date=:partanggal,amount_weight=:parjmlh_timbang,mc=:parmc,'+
                  ' product_code=:parnm_produk,shift=:parshift,carton_qty=:parjmlh_karton,'+
                  ' status=:parstatus,sbu_code=:parkd_sbu where use_no=:parno_pakai';
                  ParamByName('parno_spk').Value:=EdNo_SPk.Text;
                  ParamByName('parno_formula').Value:=EdNo_formula.Text;
                  ParamByName('partanggal').Value:=FormatDateTime('yyyy-mm-dd',DtTanggal.date);
                  ParamByName('parjmlh_timbang').Value:=Edtimbang.Text;
                  ParamByName('parmc').Value:=EdMesin.Text;
                  ParamByName('parnm_produk').Value:=EdProduk.Text;
                  ParamByName('parshift').Value:=EdShift.Text;
                  ParamByName('parjmlh_karton').Value:=EdKarton.Text;
                 // ParamByName('partahun').Value:=dtthn.Text;
                  ParamByName('parstatus').Value:=status;
                  ParamByName('parno_pakai').Value:=EdNo.Text;
                  ParamByName('parkd_sbu').Value:=loksbu;
        ExecSQL;
      end;
      with dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:='delete from warehouse.t_item_use_for_det where use_no='+QuotedStr(edno.Text);
        ExecSQL;
      end;
    Membaku.First;
    while not Membaku.Eof do
    begin
      with Dm.Qtemp2 do
      begin
        close;
        sql.Clear;
        sql.Text:=' insert into warehouse.t_item_use_for_det(use_no,wh_code,item_stock_code,stock_code,'+
        ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit,total_use '+
        ' ,outstanding,status)values(:parno_pakai,:pargudang,:parkd_material_stok, '+
        ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
        ' :partotalkemasan,:parsatuankemasan,:partotalpakai,:parsisa,:parstatus)';
        ParamByName('parno_pakai').Value:=EdNo.Text;
        ParamByName('pargudang').Value:=Membaku['kd_gudang'];
        ParamByName('parkd_material_stok').Value:=Membaku['kd_material_stok'];
        ParamByName('parkd_stok').Value:=Membaku['kd_stok'];
        ParamByName('parindex').Value:=Membaku['index'];
        ParamByName('parsatuan').Value:=Membaku['satuan'];
        ParamByName('parkd_supplier').Value:=Membaku['kd_supplier'];
        ParamByName('parttlberat').Value:=Membaku['ttlberat'];
        ParamByName('parqtyperkemasan').Value:=Membaku['qtyperkemasan'];
        ParamByName('partotalkemasan').Value:=Membaku['totalkemasan'];
        ParamByName('parsatuankemasan').Value:=Membaku['satuankemasan'];
        ParamByName('partotalpakai').Value:=Membaku['totalpakai'];
        ParamByName('parsisa').Value:=Membaku['sisa'];
        ParamByName('parstatus').Value:='1';
        Execute;
      end;
      Membaku.Next;
    end;
      MemKimia.First;
      while not MemKimia.Eof do
      begin
          with Dm.Qtemp2 do
          begin
            close;
            sql.Clear;
            sql.Text:=' insert into warehouse.t_item_use_for_det(use_no,wh_code,item_stock_code,stock_code,'+
                      ' index,unit,supplier_code,total_weight,pack_qty,total_pack,pack_unit,total_use '+
                      ' ,outstanding,status)values(:parno_pakai,:pargudang,:parkd_material_stok, '+
                      ' :parkd_stok,:parindex,:parsatuan,:parkd_supplier,:parttlberat,:parqtyperkemasan,'+
                      ' :partotalkemasan,:parsatuankemasan,:partotalpakai,:parsisa,:parstatus)';
                      ParamByName('parno_pakai').Value:=EdNo.Text;
                      ParamByName('pargudang').Value:=MemKimia['kd_gudang'];
                      ParamByName('parkd_material_stok').Value:=MemKimia['kd_material_stok'];
                      ParamByName('parkd_stok').Value:=MemKimia['kd_stok'];
                      ParamByName('parindex').Value:=MemKimia['index'];
                      ParamByName('parsatuan').Value:=MemKimia['satuan'];
                      ParamByName('parkd_supplier').Value:=MemKimia['kd_supplier'];
                      ParamByName('parttlberat').Value:=MemKimia['ttlberat'];
                      ParamByName('parqtyperkemasan').Value:=MemKimia['qtyperkemasan'];
                      ParamByName('partotalkemasan').Value:=MemKimia['totalkemasan'];
                      ParamByName('parsatuankemasan').Value:=MemKimia['satuankemasan'];
                      ParamByName('partotalpakai').Value:=MemKimia['totalpakai'];
                      ParamByName('parsisa').Value:=MemKimia['sisa'];
                      ParamByName('parstatus').Value:='1';
            Execute;
          end;
          MemKimia.Next;
      end;
end;

procedure TFNew_PakaiMatFor.BBatalClick(Sender: TObject);
begin
  close;
 ///10-06-2024 FPakai_Material_For.dxBarRefreshClick(sender);
end;

procedure TFNew_PakaiMatFor.BSimpanClick(Sender: TObject);
begin
  if EdNo_spk.Text='' then
  begin
    MessageDlg('SPK Test Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNo_spk.SetFocus;
    Exit;
  end;
  if EdProduk.Text='' then
  begin
    MessageDlg('Nama Produk Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdProduk.SetFocus;
    Exit;
  end;
  if EdNo_Formula.Text='' then
  begin
    messagedlg('No Formula Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNo_Formula.SetFocus;
    Exit;
  end;
  if EdTimbang.Text='' then
  begin
    MessageDlg('Jumlah Timbang Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdTimbang.SetFocus;
    Exit;
  end;
  if EdKarton.Text='' then
  begin
    MessageDlg('Jumlah Karton Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdTimbang.SetFocus;
    Exit;
  end;
//Self.Autonumber;
  if messageDlg ('Anda Yakin Menyimpan Data ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    if not dm.koneksi.InTransaction then
    dm.koneksi.StartTransaction;
    try
      begin
        if statustr='0' then
        begin
          simpan;
          dm.koneksi.Commit;
        end;
        if statustr='1' then
        begin
          update;
          dm.koneksi.Commit;
        end;
        Messagedlg('Data Behasil Disimpan',MtInformation,[Mbok],0);
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

Procedure TFNew_PakaiMatFor.Clear;
begin
  Membaku.Close;
  Membaku.Open;
  MemKimia.Close;
  MemKimia.Open;
  EdNo.Clear;
  EdNo_SPk.Clear;
  EdNo_Formula.Clear;
  EdKarton.Text:='0';
  EdTimbang.Text:='0';
  EdShift.text:='';
  EdProduk.Clear;
  EdMesin.Clear;
  DtTanggal.Date:=now;
  dtthn.Date:=now;
  Membaku.EmptyTable;
  MemKimia.EmptyTable;
end;

procedure TFNew_PakaiMatFor.DBGridBakuCellClick(Column: TColumnEh);
begin
  Membaku.Edit;
  Membaku['sisa']:=Membaku['ttlberat']-Membaku['totalpakai'];
  Membaku.Post;
end;

procedure TFNew_PakaiMatFor.DBGridBakuColEnter(Sender: TObject);
begin
  Membaku.Edit;
  Membaku['sisa']:=Membaku['ttlberat']-Membaku['totalpakai'];
  Membaku.Post;
end;

procedure TFNew_PakaiMatFor.DBGridKimiaCellClick(Column: TColumnEh);
begin
  MemKimia.Edit;
  MemKimia['sisa']:=MemKimia['ttlberat']-MemKimia['totalpakai'];
  MemKimia.Post;
end;

procedure TFNew_PakaiMatFor.DBGridKimiaColEnter(Sender: TObject);
begin
  MemKimia.Edit;
  MemKimia['sisa']:=MemKimia['ttlberat']-MemKimia['totalpakai'];
  MemKimia.Post;
end;

procedure TFNew_PakaiMatFor.EdNo_SPkSelect(Sender: TObject);
begin
  Membaku1.Close;
  Membaku1.Open;
  Membaku.Close;
  Membaku.Open;
  MemKimia.Close;
  MemKimia.Open;
  with dm.Qtemp do
  begin
    sql.Clear;
    SQL.Text:='SELECT * FROM	warehouse.t_spk_formula where spk_no='+QuotedStr(EdNo_SPk.Text);
    Execute;
  end;
  EdNo_Formula.Text:=Dm.Qtemp['formula_no'];
  EdProduk.Text:=Dm.Qtemp['product_code'];
  EdShift.Text:=Dm.Qtemp['shift'];
  EdMesin.Text:=Dm.Qtemp['mc'];
  EdTimbang.Text:=Dm.Qtemp['amount_weight'];
  Membaku.EmptyTable;
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select * from warehouse."Vload_spk_formula" where spk_no='+QuotedStr(EdNo_SPk.Text)+' and group_name=''BAHAN BAKU''';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    Membaku.Insert;
    Membaku['kd_material_stok']:=Dm.Qtemp['item_stock_code'];
    Membaku['nm_material']:=Dm.Qtemp['item_name'];
    Membaku['kd_supplier']:=Dm.Qtemp['supplier_code'];
    Membaku['nm_supplier']:=Dm.Qtemp['supplier_name'];
    Membaku['kd_stok']:=Dm.Qtemp['stock_code'];
    Membaku['index']:=Dm.Qtemp['index'];
    Membaku['ttlberat']:=Dm.Qtemp['total_weight'];
    Membaku['satuan']:=Dm.Qtemp['unit'];
    Membaku['satuankemasan']:= dm.Qtemp['pack_unit'];
    Membaku['qtyperkemasan']:=Dm.Qtemp['pack_qty'];
    Membaku['totalkemasan']:=Dm.Qtemp['total_pack'];
    Membaku['gudang']:=Dm.Qtemp['wh_name'];
    Membaku['kd_gudang']:=Dm.Qtemp['wh_code'];
    Membaku['totalpakai']:=Dm.Qtemp['total_weight'];
    Membaku.Post;
    Dm.Qtemp.Next;
  end;
  MemKimia.EmptyTable;
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' select * from warehouse."Vload_spk_formula" where spk_no='+QuotedStr(EdNo_SPk.Text)+' and group_name=''BAHAN KIMIA''';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    MemKimia.Insert;
    MemKimia['kd_material_stok']:=Dm.Qtemp['item_stock_code'];
    MemKimia['nm_material']:=Dm.Qtemp['item_name'];
    MemKimia['kd_supplier']:=Dm.Qtemp['supplier_code'];
    MemKimia['nm_supplier']:=Dm.Qtemp['supplier_name'];
    MemKimia['kd_stok']:=Dm.Qtemp['stock_code'];
    MemKimia['index']:=Dm.Qtemp['index'];
    MemKimia['ttlberat']:=Dm.Qtemp['total_weight'];
    MemKimia['satuan']:=Dm.Qtemp['unit'];
    MemKimia['satuankemasan']:= dm.Qtemp['pack_unit'];
    MemKimia['qtyperkemasan']:=Dm.Qtemp['pack_qty'];
    MemKimia['totalkemasan']:=Dm.Qtemp['total_pack'];
    MemKimia['gudang']:=Dm.Qtemp['wh_name'];
    Membaku['kd_gudang']:=Dm.Qtemp['wh_code'];
    MemKimia['totalpakai']:=Dm.Qtemp['total_weight'];
    MemKimia.Post;
    Dm.Qtemp.Next;
  end;
  EdTimbangChange(sender);
 // Self.Autonumber;
end;

procedure TFNew_PakaiMatFor.EdTimbangChange(Sender: TObject);
begin
Membaku.First;
  while not Membaku.Eof do
  begin
    DBGridBakuColEnter(sender);
    Membaku.Next;
  end;
  MemKimia.First;
  while not MemKimia.Eof do
  begin
    DBGridKimiaColEnter(sender);
    MemKimia.Next;
  end;
end;

procedure TFNew_PakaiMatFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_PakaiMatFor.FormCreate(Sender: TObject);
begin
  RealFNew_PakaiMatFor:=self;
end;

procedure TFNew_PakaiMatFor.FormDestroy(Sender: TObject);
begin
  RealFNew_PakaiMatFor:=nil;
end;

procedure TFNew_PakaiMatFor.FormShow(Sender: TObject);
begin
  Self.Load;
  DtTanggal.Format:=format_tgl;
end;

Procedure TFNew_PakaiMatFor.Load;
begin
{  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_mesin';
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  EdMesin.Items.Add(dm.Qtemp['mc']);
  Dm.Qtemp.Next
  end;        }
  EdNo_SPk.clear;
  with Dm.Qtemp do
  begin
    close;
    sql.Clear;
   { sql.Text:='SELECT A.no_spk,B.no_formula,b.jmlh_timbang, a.nm_produk, a.jmlh_karton, b.mc'+
              ' FROM	t_bon_formula AS "a" '+
              ' right JOIN	t_spk_formula AS b	ON 	a.no_spk = b.no_spk  '+
              ' where b.mc='+QuotedStr(EdMesin.Text); }
   sql.Text:='SELECT * FROM	warehouse.t_spk_formula where status=''1''';
             // ' right JOIN	t_spk_formula AS b	ON 	a.no_spk = b.no_spk  '+
            // ' where mc='+QuotedStr(EdMesin.Text);
    Execute;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    EdNo_SPk.Items.Add(dm.Qtemp['spk_no']);
    Dm.Qtemp.Next
  end;
end;

end.
