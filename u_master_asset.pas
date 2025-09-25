unit u_master_asset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  RzButton, DB, MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, ExtCtrls, StdCtrls;

type
  TFMasterAsset = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    QMasterAsset: TUniQuery;
    QMasterAssetmas_kode: TStringField;
    QMasterAssetmas_nama: TStringField;
    QMasterAssetmsat_ket: TStringField;
    QMasterAssetketerangan: TStringField;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMasterAsset: TFMasterAsset;

implementation

uses UMainMenu, uMy_Function, UDataModule;// off 230225, USparePartPOAdd, u_master_brg;

{$R *.dfm}

procedure TFMasterAsset.DBGridEh1DblClick(Sender: TObject);
begin
  with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.text:='Select * from t_item_product where itemProduct_name='''+QMasterAsset.fieldbyname('mas_nama').value+'''';
        Execute;
      end;

 {off 23-05-2025 if dm.Qtemp.RecordCount>0 then
   begin
    FSparePartPOAdd.query1.edit;
    FSparePartPOAdd.Query1KODE.AsString:=dm.Qtemp.fieldbyname('itemProduct_code').value ;
    FSparePartPOAdd.Query1nama.AsString:=dm.Qtemp.fieldbyname('itemProduct_name').value ;
    FSparePartPOAdd.Query1SATUAN.AsString:=dm.Qtemp.fieldbyname('itemProduct_satuan').value;
    FSparePartPOAdd.query1.post; 
    FMasterAsset.close;
    FSparePartPOAdd.Show;
   end;
  if dm.Qtemp.RecordCount=0 then
   begin
  Application.CreateForm(Tfmasterbrg,fmasterbrg);
  try
  with fmasterbrg do
  begin
   cbjenisbrg.Clear;    //combojeni
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select * from t_jenis_product order by id');
     open;
     first;
   end;

   cbjenisbrg.items.Add('');
   while not dm.Qtemp.Eof do
   begin
     cbjenisbrg.Items.Add(dm.Qtemp.fieldbyname('jenisproduct_name').AsString);
     dm.Qtemp.next;
   end;

   {cbkategori.Clear;         //combokategori
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select * from t_kategori order by id');
     open;
     first;
   end;

   cbkategori.items.Add('');
   while not dm.Qtemp.Eof do
   begin
     cbkategori.Items.Add(dm.Qtemp.fieldbyname('kategori').AsString);
     dm.Qtemp.next;
   end;

   cbstat.Clear;  }//combostatusbarang
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select * from t_stat_brg order by id');
     open;
     first;
   end;

 {off 23-05-2025  cbstat.items.Add('');
   while not dm.Qtemp.Eof do
   begin
     cbstat.Items.Add(dm.Qtemp.fieldbyname('status').AsString);
     dm.Qtemp.next;
   end;

   txtsatuan.Clear;   //combosatuan
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select * from t_satuan order by id');
     open;
     first;
   end;

   txtsatuan.items.Add('');
   while not dm.Qtemp.Eof do
   begin
     txtsatuan.Items.Add(dm.Qtemp.fieldbyname('satuan').AsString);
     dm.Qtemp.next;
   end;
   fmasterbrg.txtnmbrg.text:=QMasterAsset.fieldbyname('mas_nama').value;  //Setting Show Fmasterbrg
   fmasterbrg.txtsatuan.text:=QMasterAsset.fieldbyname('msat_ket').value;
   fmasterbrg.txtnmbrg.ReadOnly:=true;
   Fmasterbrg.btnnew1.visible:=false;
   fmasterbrg.RzButton4.Visible:=false;
   fmasterbrg.RzButton5.caption:='SIMPAN';
   fmasterbrg.ShowModal;
   end;
  finally //Create Event Close Fmasterbrg
      close;
    FSparePartPOAdd.query1.edit;
    FSparePartPOAdd.Query1KODE.AsString:=fmasterbrg.txtkodebrg.text ; 
    FSparePartPOAdd.Query1nama.AsString:=fmasterbrg.txtnmbrg.text ;
    FSparePartPOAdd.Query1SATUAN.AsString:=fmasterbrg.txtsatuan.text ;
    FSparePartPOAdd.query1.post;

  with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('insert into t_item_product (kode_akun,itemproduct_code,itemproduct_name,itemproduct_satuan,jenis_produk,jenisproduct_id,kategori_id,id_stat,itemproduct_hbeli,itemproduct_hbeli2,itemproduct_hjual,itemproduct_hpp)');
      sql.add('values(:kda,:ipc,:ipn,:sat,:jpr,:jpi,:kti,:sti,:hbl,:hbl2,:hjl,:hjl2) ');
      with  fmasterbrg do
      begin
      params.ParamByName('ipc').AsString:=txtkodebrg.Text ;
      params.ParamByName('kda').AsString:=txtkdbaccount.Text ;
      params.ParamByName('ipn').AsString:=txtnmbrg.Text;
      params.ParamByName('sat').asstring:=txtsatuan.Text;
      params.ParamByName('jpr').asinteger:=cbbarang.ItemIndex;
      params.ParamByName('jpi').asinteger:=cbjenisbrg.ItemIndex;
      params.ParamByName('sti').asinteger:=cbstat.ItemIndex;
      params.ParamByName('hbl').asfloat:=rzhbeli.Value;
      params.ParamByName('hbl2').asfloat:=rzhbeli2.Value;
      params.ParamByName('hjl').asfloat:=rzhjual.Value;
      params.ParamByName('hjl2').asfloat:=rzhjual2.Value;
      Execute;
      end;
    end;
  end;             }

 {off 23-05-2025 with dm.QtempAsset do
      begin
        close;
        sql.clear;
        sql.text:='UPDATE aset.mst_aset SET nopo ='''+FSparePartPOAdd.Label9.caption+''' WHERE mas_kode ='''+QMasterAsset.fieldbyname('mas_kode').value+''' ';
        Execute;
      end;
   //fmasterbrg.Free;
  end;      }
    close;
end;

procedure TFMasterAsset.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // off 23-05-2025  fmainmenu.connAsset.Connected:=false;
   QMasterAsset.Close;
   Action:=caFree;
end;

procedure TFMasterAsset.FormShow(Sender: TObject);
begin
  dm.Koneksi.Connected:=false;
//off 23-05-2025  fmainmenu.connAsset.Connected:=true;
  QMasterAsset.Close;
  QMasterAsset.Open;
end;

end.
