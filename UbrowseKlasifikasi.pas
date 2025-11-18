unit UbrowseKlasifikasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls,
  RzLabel, Vcl.ExtCtrls, RzPanel;

type
  TFbrowseKlasifikasi = class(TForm)
    DBGrid: TDBGridEh;
    QMasterKlasifikasi: TUniQuery;
    QMasterKlasifikasiid_master: TGuidField;
    QMasterKlasifikasicode_type_business: TStringField;
    QMasterKlasifikasiname_type_business: TStringField;
    QMasterKlasifikasicode_type_customer: TStringField;
    QMasterKlasifikasiname_type_customer: TStringField;
    QMasterKlasifikasicode_item_category: TStringField;
    QMasterKlasifikasiname_item_category: TStringField;
    QMasterKlasifikasicode_type_count: TStringField;
    QMasterKlasifikasiname_type_count: TStringField;
    QMasterKlasifikasicode_customer_selling_type: TStringField;
    QMasterKlasifikasiname_customer_selling_type: TStringField;
    QMasterKlasifikasicode_sell_type: TStringField;
    QMasterKlasifikasiname_sell_type: TStringField;
    QMasterKlasifikasistatus_payment: TIntegerField;
    QMasterKlasifikasiname_payment: TMemoField;
    QMasterKlasifikasistatus_grouping: TIntegerField;
    QMasterKlasifikasiname_grouping: TMemoField;
    QMasterKlasifikasistatus_tax: TIntegerField;
    QMasterKlasifikasiname_tax: TMemoField;
    QMasterKlasifikasistatus_disc: TIntegerField;
    QMasterKlasifikasiname_disc: TMemoField;
    QMasterKlasifikasistatus_promo: TIntegerField;
    QMasterKlasifikasiname_promo: TMemoField;
    QMasterKlasifikasistatus_approval: TMemoField;
    QMasterKlasifikasistatus_correction: TSmallintField;
    DsMasterKlasifikasi: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbrowseKlasifikasi: TFbrowseKlasifikasi;

implementation

{$R *.dfm}

uses UDaftarKlasifikasi, UDataModule;

procedure TFbrowseKlasifikasi.DBGridDblClick(Sender: TObject);
var id_klasifikasi: String;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "id" as id_master,"code_type_customer", "code_item_category", "code_type_count", '+
            ' "code_customer_selling_type", "code_sell_type", "status_payment", '+
            ' "status_grouping", "status_tax", "status_disc", "status_promo" '+
            ' FROM "t_sales_classification" '+
            ' where "code_type_business"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_type_business').AsString)+' AND '+
            ' "code_type_customer"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_type_customer').AsString)+' AND '+
            ' "code_item_category"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_item_category').AsString)+' AND  '+
            ' "code_type_count"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_type_count').AsString)+' AND  '+
            ' "code_customer_selling_type"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_customer_selling_type').AsString)+' AND  '+
            ' "code_sell_type"='+QuotedStr(QMasterKlasifikasi.FieldByName('code_sell_type').AsString)+' AND '+
            ' "status_payment"='+IntToStr(QMasterKlasifikasi.FieldByName('status_payment').AsInteger)+' AND '+
            ' "status_grouping"='+IntToStr(QMasterKlasifikasi.FieldByName('status_grouping').AsInteger)+' AND '+
            ' "status_tax"='+IntToStr(QMasterKlasifikasi.FieldByName('status_tax').AsInteger)+' AND '+
            ' "status_disc"='+IntToStr(QMasterKlasifikasi.FieldByName('status_disc').AsInteger)+' AND '+
            ' "status_promo"='+IntToStr(QMasterKlasifikasi.FieldByName('status_promo').AsInteger)+' AND '+
            ' deleted_at IS NULL '+
            ' Order By "code_item_category" desc ');
    open;
  end;
  FDaftarKlasifikasi.MemKlasifikasi.active:=false;
  FDaftarKlasifikasi.MemKlasifikasi.active:=true;
  FDaftarKlasifikasi.MemKlasifikasi.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
      id_klasifikasi:= Copy(Dm.Qtemp1.FieldByName('id_master').AsString, 2, Length(Dm.Qtemp1.FieldByName('id_master').AsString) - 2);
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "id_master", "code_item", "name_item", "code_unit", '+
                ' "unit_price", "limit1", "limit2", "disc", "disc1", "disc2", '+
                ' "disc3", "disc4" from "public"."t_sales_classification_det" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "id_master"='+QuotedStr(id_klasifikasi)+' '+
                ' ) a '+
                ' Order By "code_item" desc');
        open;
      end;

      if Dm.Qtemp.RecordCount<>0 then
      begin
        Dm.Qtemp.first;
        while not Dm.Qtemp.Eof do
        begin
          FDaftarKlasifikasi.MemKlasifikasi.insert;
          FDaftarKlasifikasi.MemKlasifikasi['kd_barang']:=Dm.Qtemp.FieldByName('code_item').AsString;
          FDaftarKlasifikasi.MemKlasifikasi['nm_barang']:=Dm.Qtemp.FieldByName('name_item').AsString;
          FDaftarKlasifikasi.MemKlasifikasi['kd_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
          FDaftarKlasifikasi.MemKlasifikasi['nm_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
          FDaftarKlasifikasi.MemKlasifikasi['harga_satuan']:=Dm.Qtemp.FieldByName('unit_price').Value;
          FDaftarKlasifikasi.MemKlasifikasi['batas1']:=Dm.Qtemp.FieldByName('limit1').Value;
          FDaftarKlasifikasi.MemKlasifikasi['batas2']:=Dm.Qtemp.FieldByName('limit2').Value;
          FDaftarKlasifikasi.MemKlasifikasi['disc']:=Dm.Qtemp.FieldByName('disc').Value;
          FDaftarKlasifikasi.MemKlasifikasi['disc1']:=Dm.Qtemp.FieldByName('disc1').Value;
          FDaftarKlasifikasi.MemKlasifikasi['disc2']:=Dm.Qtemp.FieldByName('disc2').Value;
          FDaftarKlasifikasi.MemKlasifikasi['disc3']:=Dm.Qtemp.FieldByName('disc3').Value;
          FDaftarKlasifikasi.MemKlasifikasi['disc4']:=Dm.Qtemp.FieldByName('disc4').Value;
          FDaftarKlasifikasi.MemKlasifikasi.post;
         Dm.Qtemp.next;
        end;
      end;
      Close;
  end else
  begin
    MessageDlg('Tidak Ada Data..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFbrowseKlasifikasi.FormShow(Sender: TObject);
begin
  DBGrid.StartLoadingStatus();
  try
    with QMasterKlasifikasi do
    begin
       close;
       sql.Clear;
       sql.Text:=' SELECT a."id" AS id_master, '+
                 ' a."code_type_business", g.NAME AS "name_type_business", '+
                 ' "code_type_customer", b.NAME AS "name_type_customer", '+
                 ' "code_item_category", c.group_name as "name_item_category", '+
                 ' "code_type_count",	d.name as "name_type_count", "code_customer_selling_type", '+
                 ' e.name as "name_customer_selling_type", "code_sell_type", f.name as "name_sell_type", '+
                 ' "status_payment", case when "status_payment"=0 then ''Cash'' else ''Kredit'' end "name_payment", '+
                 ' "status_grouping",	case when "status_grouping"=0 then ''Non Grouping'' else ''Grouping'' end "name_grouping", '+
                 ' "status_tax", case when "status_tax"=0 then ''Tidak'' else ''Iya'' end "name_tax", '+
                 ' "status_disc",	case when "status_disc"=0 then ''Disc'' else ''Value (Rp)'' end "name_disc", '+
                 ' "status_promo", case when "status_promo"=0 then ''Tidak'' else ''Iya'' end "name_promo",'+
                 'case when a.status_approval=1 then ''Disetujui'' when a.status_approval=99 then ''Ditolak'' else ''Pengajuan'' end status_approval, '+
                 ' status_correction '+
                 ' FROM	"t_sales_classification" a '+
                 ' LEFT JOIN t_customer_type b ON a.code_type_customer = b.code '+
                 //' LEFT JOIN t_item_category c ON a.code_item_category = c.code  '+
                 ' LEFT JOIN t_item_group c ON a.code_item_category = c.group_id ::VARCHAR   '+
                 ' LEFT JOIN t_sell_type_count d ON a.code_type_count = d.code '+
                 ' LEFT JOIN t_customer_selling_type e ON a.code_customer_selling_type = e.code '+
                 ' LEFT JOIN t_sell_type f ON a.code_sell_type = f.code '+
                 ' LEFT JOIN t_customer_type_business g ON a.code_type_business = g.code '+
                 ' WHERE a.status_approval=1 AND code_item_category='+QuotedStr(FDaftarKlasifikasi.edkd_kategori.Text)+' Order By a.created_at DESC ';
       open;
    end;
    finally
    DBGrid.FinishLoadingStatus();
  end;
end;

end.
