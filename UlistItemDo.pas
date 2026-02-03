unit UlistItemDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, Vcl.Mask,
  RzEdit, Vcl.ComCtrls, RzDTP, RzPanel;

type
  TFListDo = class(TForm)
    Q_do: TUniQuery;
    DS_do: TDataSource;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    Cb_All: TCheckBox;
    DBGrid_DO: TDBGridEh;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    DT_tgl_do: TRzDateTimePicker;
    Q_donotrans: TStringField;
    Q_dodate_trans: TDateField;
    Q_dotype_do_code: TStringField;
    Q_dotype_do_name: TStringField;
    Q_dovendor_code: TStringField;
    Q_dovendor_name: TStringField;
    Q_dostatus: TSmallintField;
    Q_dototal_biaya: TFloatField;
    procedure DT_tgl_doChange(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDo: TFListDo;

implementation

{$R *.dfm}

uses UNew_PO, UDataModule;

procedure TFListDo.BEditClick(Sender: TObject);
var i:integer;
begin
  for i := 0 to DBGrid_DO.SelectedRows.Count - 1 do
  begin
    Q_do.GotoBookmark(DBGrid_DO.SelectedRows[i]);
    FNew_PO.Edno_Kontrak.Text :=Q_do.FieldByName('notrans').AsString;
    FNew_PO.EdKd_supp.Text :=Q_do.FieldByName('vendor_code').AsString;
    FNew_PO.EdNm_supp.Text :=Q_do.FieldByName('vendor_name').AsString;


    Break; // ambil satu saja
  end;
  with FNew_PO do
  begin
    if ref_code='DO' then
    begin
      WITH DM.Qtemp1 DO
      BEGIN
        Close;
        sql.Clear;
        sql.Text:='SELECT sum(sub_total) harga,sum(ppn_value) ppn,sum(pph_value) pph, sum(grand_total) total from t_delivery_order_cost where notrans='+QuotedStr(Edno_kontrak.Text)+' GROUP BY notrans ';
        Open;
      END;
      WITH DM.Qtemp3 DO
      BEGIN
        Close;
        sql.Clear;
        sql.Text:='SELECT a.notrans,c.item_code,c.item_name,1 qty,c.unit FROM t_delivery_order_services a '+
                  'LEFT JOIN t_delivery_order b on b.notrans=a.notrans '+
                  'left join t_supplier d on a.vendor_code=d.supplier_code '+
                  'LEFT JOIN t_item c on d.item_do=c.item_code '+
                  'where a.notrans='+QuotedStr(Edno_kontrak.Text)+' and b.deleted_at is NULL '+
                  'GROUP BY a.notrans,c.item_code,c.item_name,c.unit ';
        {sql.Text:='SELECT a.notrans,a.item_code,c.item_name,SUM(a.amount) qty,a.unit FROM t_delivery_order_load a '+
                  'LEFT JOIN t_delivery_order b on b.notrans=a.notrans '+
                  'LEFT JOIN t_item c on a.item_code=c.item_code '+
                  'where a.notrans='+QuotedStr(Edno_kontrak.Text)+' and b.deleted_at is NULL '+
                  'GROUP BY a.notrans,a.item_code,a.item_name,a.unit,c.item_name ';}
        Open;
      END;
      Edjatuh_tempo.Text:='0';
      EdCurr.Text:='IDR';
      Ednilai_curr.Text:='1';
      Edjenispo.Text:='LOKAL';
      CbKategori.Text:='BIAYA';
      kategori_tr:=CbKategori.Text;
      EdCurrChange(sender);
      MemItempo.Insert;
      MemItempo['kd_material_stok']:=dm.Qtemp3['item_code']+EdKd_supp.Text ;
      MemItempo['kd_material']:=dm.Qtemp3['item_code'];
      MemItempo['Nm_material']:=dm.Qtemp3['item_name'];
      //MemItempo['kd_material']:='AN100001';
      //MemItempo['Nm_material']:='JASA ANGKUTAN BARANG';
      MemItempo['satuan']:=dm.Qtemp3['unit'];
      MemItempo['qty']:=1;
      MemItempo['qtykontrak']:=1;
      MemItempo['harga']:=dm.Qtemp1['harga'];
      MemItempo['harga_rp']:=dm.Qtemp1['harga'];
      MemItempo['ppn']:=0;
      MemItempo['ppn_rp']:=dm.Qtemp1['ppn'];
      MemItempo['ppn_us']:=dm.Qtemp1['ppn'];
      MemItempo['pemb_ppn_us']:=0;
      MemItempo['pemb_ppn']:=0;
      MemItempo['pph']:=0;
      MemItempo['pph_rp']:=dm.Qtemp1['pph'];
      MemItempo['grandtotal']:=dm.Qtemp1['total'];
      MemItempo['pemb_dpp']:=0;
      MemItempo.Post;
      DBGridDetailColEnter(sender);
      simpanbarang;
    end;
  end;
  Close;
end;

procedure TFListDo.DT_tgl_doChange(Sender: TObject);
begin
   with Q_do do
   begin
     close;
     sql.Clear;
     sql.Text:='select a.notrans,a.date_trans,a.type_do_code,a.type_do_name,b.vendor_code,b.vendor_name,a.status,(SELECT SUM(grand_total) from t_delivery_order_cost WHERE notrans=a.notrans) total_biaya from t_delivery_order a '+
               'LEFT JOIN t_delivery_order_services b on b.notrans=a.notrans '+
               'WHERE a.date_trans='+QuotedStr(FormatDateTime('yyyy-mm-dd',DT_tgl_do.Date))+' and a.deleted_at is NULL AND a.status=6 ';
     open;
   end;
end;

procedure TFListDo.FormShow(Sender: TObject);
begin
  DT_tgl_do.Date:=now();
end;

end.
