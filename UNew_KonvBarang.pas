unit UNew_KonvBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, RzBtnEdt, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFNew_KonvBarang = class(TForm)
    PnlTombol: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    PnlNew: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    qty: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edkd: TEdit;
    Edqty: TEdit;
    Edsatuan: TEdit;
    Edno: TEdit;
    Edcategory: TRzComboBox;
    EdNm: TRzButtonEdit;
    DBGridEh1: TDBGridEh;
    Btambah: TRzBitBtn;
    BRefresh: TRzBitBtn;
    DsKonversiM: TDataSource;
    QKonversiM: TUniQuery;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label13: TLabel;
    EdqtyKon: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    EdKonversi: TRzButtonEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdqtyKon3: TEdit;
    EdKonversi3: TRzButtonEdit;
    procedure BBatalClick(Sender: TObject);
    procedure EdNmSelect(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure EdqtyChange(Sender: TObject);
    procedure EdqtyKonChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdcategorySelect(Sender: TObject);
    procedure EdNmButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdKonversiButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure EdKonversi3ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id:string;
    Procedure Load;
    Procedure Clear;
    var kd_barang:string
  end;

Function FNew_KonvBarang: TFNew_KonvBarang;
var  Status:integer;

implementation

{$R *.dfm}

uses UKonversi_Barang, UDataModule, UCari_Barang, UNew_Satuan, UMainMenu;

var RealFNew_KonvBarang: TFNew_KonvBarang;
function FNew_KonvBarang: TFNew_KonvBarang;
begin
  if RealFNew_KonvBarang <> nil then FNew_KonvBarang:= RealFNew_KonvBarang
  else  Application.CreateForm(TFNew_KonvBarang, Result);
end;

Procedure TFNew_KonvBarang.Load;
begin
  with dm.Qtemp do
  begin
    Close;
    sql.Clear;
    sql.Text:='Select * from t_item_group';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
  Edcategory.Items.Add(Dm.Qtemp['group_name']);
  Dm.Qtemp.Next;
  end;
end;

procedure TFNew_KonvBarang.RzBitBtn1Click(Sender: TObject);
begin
  with FKonversi_Barang do
  begin
    show;
     with QKonversiM do
     begin
      close;
      sql.Clear;
      sql.Text:='SELECT	b.qty_unit,b.unit,"a".item_name,"a".item_code,b.qty_conv,b.unit_conv,"c".category,b."id"'+
      ' FROM t_item AS "a" INNER JOIN t_item_conversion AS b ON	"a".item_code = b.item_code INNER JOIN   '+
      '	t_item_category AS "c" ON "a".category_id="c"."category_id" where a.item_code='+QuotedStr(EdKd.Text);
      open;
    end;
  end;  
end;

Procedure TFNew_KonvBarang.Clear;
begin
  FNew_KonvBarang.EdKd.Text:='';
  FNew_KonvBarang.EdNm.Text:='';
  FNew_KonvBarang.Edqty.Text:='0';
  FNew_KonvBarang.Edsatuan.Text:='';
  FNew_KonvBarang.EdqtyKon.Text:='0';
  FNew_KonvBarang.EdKonversi.Text:='';
  FNew_KonvBarang.EdqtyKon3.Text:='0';
  FNew_KonvBarang.EdKonversi3.Text:='';
  FNew_KonvBarang.Edno.Text:='';
end;

procedure TFNew_KonvBarang.DBGridEh1DblClick(Sender: TObject);
begin
  PnlNew.show;
  edkd.Text:=QKonversiM['item_code'];
  EdNm.Text:=QKonversiM['item_name'];
  Edqty.Text:=QKonversiM['qty_unit'];
  Edsatuan.Text:=QKonversiM['unit'];
  EdqtyKon.Text:=QKonversiM['qty_conv'];
  EdKonversi.Text:=QKonversiM['unit_conv'];
  EdqtyKon3.Text:=QKonversiM['qty_conv3'];
  EdKonversi3.Text:=QKonversiM['unit_conv3'];
  Edcategory.Text:=QKonversiM['group_name'];
  DBGridEh1.Hide;
end;

procedure TFNew_KonvBarang.EdKonversi3ButtonClick(Sender: TObject);
begin
  with FNew_Satuan do
  begin
    show;
    Caption:='Form List Satuan';
    jenis_tr:='KonvBarang3';
    PnlNew.Hide;
  //  PnlAksi.Hide;
    Pnllist.show;
    QSatuan.Close;
    QSatuan.Open;
    BCari.Show;
    BSimpan.hide;
    BBatal.hide;
  end;
end;

procedure TFNew_KonvBarang.EdKonversiButtonClick(Sender: TObject);
begin
  with FNew_Satuan do
  begin
    show;
    Caption:='Form List Satuan';
    jenis_tr:='KonvBarang';
    PnlNew.Hide;
  //  PnlAksi.Hide;
    Pnllist.show;
    QSatuan.Close;
    QSatuan.Open;
    BCari.Show;
    BSimpan.hide;
    BBatal.hide;
  end;
end;

procedure TFNew_KonvBarang.BBatalClick(Sender: TObject);
begin
  Close;
  FKonversi_Barang.ActRoExecute(sender);
end;

procedure TFNew_KonvBarang.BRefreshClick(Sender: TObject);
begin
  DBGridEh1.StartLoadingStatus();
  if Vmenu='1' then
  begin
    QKonversiM.Close;
    QKonversiM.Open;
  end;
  if vmenu<>'1' then
  begin
    with QKonversiM do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT	b.qty_unit,b.unit,"a".item_name,"a".item_code,'+
      ' b.qty_conv,b.unit_conv,"c".group_name,b."id",b.qty_conv3,b.unit_conv3 '+
      ' FROM t_item AS "a" INNER JOIN t_item_conversion AS b ON "a".item_code = b.item_code INNER JOIN '+
      '	t_item_group AS "c" ON "a".group_id = "c"."group_id" where a.item_code='+QuotedStr(kd_barang);
      Open;
    end;
  end;
  DBGridEh1.FinishLoadingStatus();
end;

procedure TFNew_KonvBarang.BSimpanClick(Sender: TObject);
begin
  if EdNm.Text='' then
  begin
    MessageDlg('Nama Material Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdNm.SetFocus;
    Exit;
  end;
  if Edsatuan.Text='' then
  begin
    MessageDlg('Satuan Tidak boleh Kosong ',MtWarning,[MbOk],0);
    Edsatuan.SetFocus;
    Exit;
  end;
  if EdKonversi.Text='' then
  begin
    MessageDlg('Satuan Konversi Tidak boleh Kosong ',MtWarning,[MbOk],0);
    EdKonversi.SetFocus;
    Exit;
  end;
  if not dm.koneksi.InTransaction then
  dm.koneksi.StartTransaction;
  try
    begin
      if status=0 then
      begin
        with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:='Select * from t_item_conversion';
            ExecSQL;
          end;
         with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:=' insert into t_item_conversion(item_code,qty_unit,'+
                      ' unit,qty_conv,unit_conv,qty_conv3,unit_conv3)'+
                      ' values('+
                      ' '+QuotedStr(EdKd.Text)+', '+
                      ' '+QuotedStr(Edqty.Text)+', '+
                      ' '+QuotedStr(Edsatuan.Text)+','+
                      ' '+QuotedStr(EdqtyKon.Text)+', '+
                      ' '+QuotedStr(EdKonversi.Text)+', '+
                      ' '+QuotedStr(EdqtyKon3.Text)+', '+
                      ' '+QuotedStr(EdKonversi3.Text)+')';
            ExecSQL;
          end;
      end;
      if status=1 then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' Update t_item_conversion set '+
                    ' qty_unit='+QuotedStr(Edqty.Text)+', '+
                    ' unit='+QuotedStr(Edsatuan.Text)+', '+
                    ' qty_conv='+QuotedStr(EdqtyKon.Text)+', '+
                    ' unit_conv='+QuotedStr(EdKonversi.Text)+', '+
                    ' qty_conv3='+QuotedStr(EdqtyKon3.Text)+', '+
                    ' unit_conv3='+QuotedStr(EdKonversi3.Text)+'  '+
                    ' Where item_code='+QuotedStr(EdKd.Text);
                    //' Where "id"='+QuotedStr(id);
          ExecSQL;
        end;
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

procedure TFNew_KonvBarang.BtambahClick(Sender: TObject);
begin
//  DBGridEh1.Visible:=false;
//  Pnlnew.Visible:=true;
//  Clear;
  caption:='New Konversi Barang';
  Status:=0;
  Edcategory.SetFocus;
end;

procedure TFNew_KonvBarang.EdcategorySelect(Sender: TObject);
begin
 with Dm.Qtemp do
  begin
    close;
    sql.Text:='select a.item_code,a.item_name,b.group_name,a.order_no from t_item a inner join t_item_group b '+
              ' on a.group_id=b.group_id where group_name='+QuotedStr(Edcategory.Text)+''+
              ' Group by a.item_code,a.item_name,b.group_name,a.order_no '+
              ' order by b.group_name,a.order_no Asc';
    ExecSQL;
  end;
  Edkd.Clear;
  EdNm.Clear;
end;

procedure TFNew_KonvBarang.EdNmButtonClick(Sender: TObject);
begin
  with FCari_Barang do
  begin
    show;
    status_tr:='KonvBarang';
    with QBarang do
    begin
      close;
      sql.Text:='select a.item_code,a.item_name,b.group_name,a.order_no,a.unit from t_item a inner join '+
                ' t_item_group b on a.group_id=b.group_id where b.group_name='+QuotedStr(Edcategory.Text)+' and a.deleted_at isnull'+
                ' Group by a.item_code,a.item_name,b.group_name,a.order_no,a.unit '+
                ' order by b.group_name,a.order_no Asc';
      ExecSQL;
    end;
  end;
end;

procedure TFNew_KonvBarang.EdNmSelect(Sender: TObject);
begin
 with Dm.Qtemp do
  begin
    close;
    sql.Text:='select kd_material,nm_material,group_name,no_material from t_material '+
              ' where concat(no_material,'' '', nm_material)='+QuotedStr(EdNm.Text)+''+
              ' Group by kd_material,nm_material,category,no_material '+
              ' order by category,no_material Asc';
    ExecSQL;
  end;
  Edkd.Text:=Dm.Qtemp.FieldByName('kd_material').AsString;
end;

procedure TFNew_KonvBarang.EdqtyChange(Sender: TObject);
begin
if Edqty.Text='' then   Edqty.Text:='0'  ;
end;

procedure TFNew_KonvBarang.EdqtyKonChange(Sender: TObject);
begin
if EdqtyKon.Text='' then   EdqtyKon.Text:='0'  ;
end;

procedure TFNew_KonvBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFNew_KonvBarang.FormCreate(Sender: TObject);
begin
  RealFNew_KonvBarang:=self;
end;

procedure TFNew_KonvBarang.FormDestroy(Sender: TObject);
begin
  RealFNew_KonvBarang:=nil;
end;

procedure TFNew_KonvBarang.FormShow(Sender: TObject);
begin
  Load;
end;

end.
