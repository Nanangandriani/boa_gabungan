unit UDaftarKlasifikasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, RzCmboBx,
  Vcl.Buttons, Vcl.Mask, RzEdit, RzBtnEdt, RzPanel, RzRadGrp, Data.DB, DBAccess,
  Uni, MemTableDataEh, MemTableEh;

type
  TFDaftarKlasifikasi = class(TForm)
  PageControl1: TPageControl;
  TabMasterKlasifikasi: TTabSheet;
  TabDaftarKlasifikasiPelanggan: TTabSheet;
  Panel1: TPanel;
  Panel2: TPanel;
  BBatal: TRzBitBtn;
  BSave: TRzBitBtn;
  BRefresh: TRzBitBtn;
  Label6: TLabel;
  Label3: TLabel;
  LabelPelanggan: TLabel;
  Label5: TLabel;
  Label25: TLabel;
  Label26: TLabel;
  Label27: TLabel;
  Label28: TLabel;
  Wilayah: TLabel;
  Label2: TLabel;
  GroupBox1: TGroupBox;
  DBGridKlasifikasi: TDBGridEh;
  GroupBox2: TGroupBox;
  DBGridMaster: TDBGridEh;
  Panel3: TPanel;
  Label9: TLabel;
  Label10: TLabel;
  Label11: TLabel;
  Label12: TLabel;
  Label13: TLabel;
  Label14: TLabel;
  GroupBox3: TGroupBox;
  Label7: TLabel;
  Label8: TLabel;
  Label15: TLabel;
  Label16: TLabel;
  Panel4: TPanel;
  bt_m_batal: TRzBitBtn;
  bt_m_simpan: TRzBitBtn;
  edkd_type_jual_pel: TEdit;
  ednm_jenis_jual_pel: TRzButtonEdit;
  ednm_type_jual_pel: TRzButtonEdit;
  edkd_jenis_jual_pel: TEdit;
  ednm_kategori_pel: TRzButtonEdit;
  edkd_kategori_pel: TEdit;
  edNama_Pelanggan: TEdit;
  edKode_Pelanggan: TRzButtonEdit;
  ednm_jenis_pel: TRzButtonEdit;
  edkd_jenis_pel: TEdit;
  ednm_kategori: TRzButtonEdit;
  edkd_kategori: TEdit;
  ednm_type_jual: TRzButtonEdit;
  edkd_type_jual: TEdit;
  ednm_jenis_jual: TRzButtonEdit;
  edkd_jenis_jual: TEdit;
  bt_m_tampilkan: TRzBitBtn;
  ednm_type_hitung: TRzButtonEdit;
  edkd_type_hitung: TEdit;
  rgPembayaran: TRzRadioGroup;
  rgPotongan: TRzRadioGroup;
  rgPromo: TRzRadioGroup;
  rgGrouping: TRzRadioGroup;
  rgPajak: TRzRadioGroup;
    dsKlasifikasi: TDataSource;
    MemKlasifikasi: TMemTableEh;
    DBGridDetail: TDBGridEh;
    MemKlasifikasikd_barang: TStringField;
    MemKlasifikasinm_barang: TStringField;
    MemKlasifikasikd_satuan: TStringField;
    MemKlasifikasinm_satuan: TStringField;
    MemKlasifikasiharga_satuan: TFloatField;
    MemKlasifikasibatas1: TFloatField;
    MemKlasifikasibatas2: TFloatField;
    MemKlasifikasidisc: TFloatField;
    MemKlasifikasidisc1: TFloatField;
    MemKlasifikasidisc2: TFloatField;
    MemKlasifikasidisc3: TFloatField;
    MemKlasifikasidisc4: TFloatField;
    dsGroup: TDataSource;
    MemGroup: TMemTableEh;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    dsMaster: TDataSource;
    MemMaster: TMemTableEh;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    MemGroupid_master: TStringField;
    MemGroupid_master_det: TStringField;
    MemMasterid_master: TStringField;
    MemMasterid_master_det: TStringField;
  procedure edKode_PelangganButtonClick(Sender: TObject);
  procedure ednm_jenis_pelButtonClick(Sender: TObject);
  procedure ednm_kategoriButtonClick(Sender: TObject);
  procedure ednm_type_hitungButtonClick(Sender: TObject);
  procedure ednm_type_jualButtonClick(Sender: TObject);
  procedure ednm_jenis_jualButtonClick(Sender: TObject);
  procedure ednm_type_jual_pelButtonClick(Sender: TObject);
  procedure ednm_jenis_jual_pelButtonClick(Sender: TObject);
  procedure ednm_kategori_pelButtonClick(Sender: TObject);
  procedure bt_m_batalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDetailColumns1CellButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure bt_m_tampilkanClick(Sender: TObject);
    procedure bt_m_simpanClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridMasterDblClick(Sender: TObject);
    procedure DBGridKlasifikasiDblClick(Sender: TObject);
  private
  { Private declarations }
  public
  { Public declarations }
    id_master, jenis_pelanggan : string ;
    Status : Integer;
    procedure Clear;
    procedure RefreshGrid;
    procedure RefreshGrid_Group;
    procedure RefreshGrid_Master;
    procedure Save;
    procedure Update;
    procedure SaveUpdateGroup;
  end;

var
  FDaftarKlasifikasi: TFDaftarKlasifikasi;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData, UDataModule, UHomeLogin;
//uses UDataModule, UHomeLogin;

procedure TFDaftarKlasifikasi.SaveUpdateGroup;
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if MemMaster.RecordCount=0 then
      begin
        MessageDlg('Tidak Ada Data..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
      end
      else if FDaftarKlasifikasi.Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        //ShowMessage(IntToStr(Status));
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_sales_classification_group" ("id_master", '+
                    ' "id_master_det", "code_item", "code_unit", "code_cust", '+
                    ' "stat_approve","created_at", "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(MemMaster['id_master'])+', '+
                    ' '+QuotedStr(MemMaster['id_master_det'])+', '+
                    ' '+QuotedStr(MemMaster['kd_barang'])+', '+
                    ' '+QuotedStr(MemMaster['kd_satuan'])+', '+
                    ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
                    ' 0 ,NOW(), '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Data Berhasil Diperbarui..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if FDaftarKlasifikasi.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' DELETE FROM "t_sales_classification_group" '+
                    ' WHERE "id_master"='+QuotedStr(MemGroup['id_master'])+' AND '+
                    ' "id_master_det"='+QuotedStr(MemGroup['id_master_det'])+' AND '+
                    ' "code_cust"='+QuotedStr(edKode_Pelanggan.Text)+' '+
                    ' ;';
          ExecSQL;
        end;
        MessageDlg('Data Berhasil Diperbarui..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
      RefreshGrid_Group;
      RefreshGrid_Master;
end;

procedure TFDaftarKlasifikasi.save;
begin
    with dm.Qtemp2 do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_sales_classification" ("created_at", '+
              ' "created_by", "code_type_customer", "code_item_category", '+
              ' "code_type_count", "code_customer_selling_type", "code_sell_type", '+
              ' "status_payment", "status_grouping", "status_tax", "status_disc", '+
              ' "status_promo") '+
              ' Values( '+
              ' NOW(), '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' '+QuotedStr(edkd_jenis_pel.Text)+', '+
              ' '+QuotedStr(edkd_kategori.Text)+', '+
              ' '+QuotedStr(edkd_type_hitung.Text)+', '+
              ' '+QuotedStr(edkd_type_jual.Text)+', '+
              ' '+QuotedStr(edkd_jenis_jual.Text)+', '+
              ' '+IntToStr(rgPembayaran.ItemIndex)+', '+
              ' '+IntToStr(rgGrouping.ItemIndex)+', '+
              ' '+IntToStr(rgPajak.ItemIndex)+', '+
              ' '+IntToStr(rgPotongan.ItemIndex)+', '+
              ' '+IntToStr(rgPromo.ItemIndex)+');';
    ExecSQL;
    end;

    if MemKlasifikasi.RecordCount<>0 then
    begin
    with Dm.Qtemp1 do //cek data master untuk dapat id master
    begin
      close;
      sql.clear;
      sql.add(' SELECT "id" as id_master,"code_type_customer", "code_item_category", "code_type_count", '+
              ' "code_customer_selling_type", "code_sell_type", "status_payment", '+
              ' "status_grouping", "status_tax", "status_disc", "status_promo" '+
              ' FROM "t_sales_classification" '+
              ' where "code_type_customer"='+QuotedStr(edkd_jenis_pel.Text)+' AND '+
              ' "code_item_category"='+QuotedStr(edkd_kategori.Text)+' AND  '+
              ' "code_type_count"='+QuotedStr(edkd_type_hitung.Text)+' AND  '+
              ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual.Text)+' AND  '+
              ' "code_sell_type"='+QuotedStr(edkd_jenis_jual.Text)+' AND '+
              ' "status_payment"='+IntToStr(rgPembayaran.ItemIndex)+' AND '+
              ' "status_grouping"='+IntToStr(rgGrouping.ItemIndex)+' AND '+
              ' "status_tax"='+IntToStr(rgPajak.ItemIndex)+' AND '+
              ' "status_disc"='+IntToStr(rgPotongan.ItemIndex)+' AND '+
              ' "status_promo"='+IntToStr(rgPromo.ItemIndex)+' AND '+
              ' deleted_at IS NULL '+
              ' Order By "code_type_customer" desc ');
      open;
    end;
    //id_master:= Copy(Dm.Qtemp1.FieldByName('id_master').AsString, 2, Length(Dm.Qtemp1.FieldByName('id_master').AsString) - 2);

    MemKlasifikasi.First;
    while not MemKlasifikasi.Eof do
    begin
      with dm.Qtemp2 do
      begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_sales_classification_det" ("created_at", "stat_approve",'+
                ' "created_by", "id_master", "code_item", "name_item", "code_unit", '+
                ' "unit_price", "limit1", "limit2", "disc", "disc1", "disc2", '+
                ' "disc3", "disc4") '+
                ' Values( '+
                ' NOW(), 0, '+
                ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                ' '+QuotedStr(Copy(Dm.Qtemp1.FieldByName('id_master').AsString, 2, Length(Dm.Qtemp1.FieldByName('id_master').AsString) - 2))+', '+
                ' '+QuotedStr(MemKlasifikasi['kd_barang'])+', '+
                ' '+QuotedStr(MemKlasifikasi['nm_barang'])+', '+
                ' '+QuotedStr(MemKlasifikasi['kd_satuan'])+', '+
                ' '+QuotedStr(MemKlasifikasi['harga_satuan'])+', '+
                ' '+QuotedStr(MemKlasifikasi['batas1'])+', '+
                ' '+QuotedStr(MemKlasifikasi['batas2'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc1'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc2'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc3'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc4'])+');';
      ExecSQL;
      end;
      //ShowMessage(MemKlasifikasi['kd_barang']);
    MemKlasifikasi.Next;
    end;
    end;
    //cek masterharga jual per jenis pelanggan dan jenis jual b2b b2c
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;


procedure TFDaftarKlasifikasi.Update;
begin
    with dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.add(' Update "t_sales_classification" set '+
              ' updated_at=now(), '+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
      sql.add(' Where id='+QuotedStr(id_master)+';' );
      ExecSQL;
    end;

    if MemKlasifikasi.RecordCount<>0 then
    begin
    with Dm.Qtemp1 do //cek data master untuk dapat id master
    begin
      close;
      sql.clear;
      sql.add(' SELECT "id" as id_master,"code_type_customer", "code_item_category", "code_type_count", '+
              ' "code_customer_selling_type", "code_sell_type", "status_payment", '+
              ' "status_grouping", "status_tax", "status_disc", "status_promo" '+
              ' FROM "t_sales_classification" '+
              ' where "code_type_customer"='+QuotedStr(edkd_jenis_pel.Text)+' AND '+
              ' "code_item_category"='+QuotedStr(edkd_kategori.Text)+' AND  '+
              ' "code_type_count"='+QuotedStr(edkd_type_hitung.Text)+' AND  '+
              ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual.Text)+' AND  '+
              ' "code_sell_type"='+QuotedStr(edkd_jenis_jual.Text)+' AND '+
              ' "status_payment"='+IntToStr(rgPembayaran.ItemIndex)+' AND '+
              ' "status_grouping"='+IntToStr(rgGrouping.ItemIndex)+' AND '+
              ' "status_tax"='+IntToStr(rgPajak.ItemIndex)+' AND '+
              ' "status_disc"='+IntToStr(rgPotongan.ItemIndex)+' AND '+
              ' "status_promo"='+IntToStr(rgPromo.ItemIndex)+' AND '+
              ' deleted_at IS NULL '+
              ' Order By "code_type_customer" desc ');
      open;
    end;
    id_master:= Copy(Dm.Qtemp1.FieldByName('id_master').AsString, 2, Length(Dm.Qtemp1.FieldByName('id_master').AsString) - 2);

    with dm.Qtemp2 do
    begin
      close;
      sql.clear;
      sql.add(' Delete From "t_sales_classification_det" '+
              ' Where id_master='+QuotedStr(id_master)+';' );
      ExecSQL;
    end;

    MemKlasifikasi.First;
    while not MemKlasifikasi.Eof do
    begin
    //showmessage('AA'+id_master);
      with dm.Qtemp2 do
      begin
      close;
      sql.clear;
      sql.Text:=' INSERT INTO "public"."t_sales_classification_det" ("created_at", "stat_approve", '+
                ' "created_by","id_master", "code_item", "name_item", "code_unit", '+
                ' "unit_price", "limit1", "limit2", "disc", "disc1", "disc2", '+
                ' "disc3", "disc4") '+
                ' Values( '+
                ' NOW(), 0, '+
                ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                ' '+QuotedStr(id_master)+', '+
                ' '+QuotedStr(MemKlasifikasi['kd_barang'])+', '+
                ' '+QuotedStr(MemKlasifikasi['nm_barang'])+', '+
                ' '+QuotedStr(MemKlasifikasi['kd_satuan'])+', '+
                ' '+QuotedStr(MemKlasifikasi['harga_satuan'])+', '+
                ' '+QuotedStr(MemKlasifikasi['batas1'])+', '+
                ' '+QuotedStr(MemKlasifikasi['batas2'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc1'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc2'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc3'])+', '+
                ' '+QuotedStr(MemKlasifikasi['disc4'])+');';
      ExecSQL;
      end;
    MemKlasifikasi.Next;
    end;
    end;
  //cek masterharga jual per jenis pelanggan dan jenis jual b2b b2c
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFDaftarKlasifikasi.bt_m_simpanClick(Sender: TObject);
begin
  with Dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "id" as id_master,"code_type_customer", "code_item_category", "code_type_count", '+
            ' "code_customer_selling_type", "code_sell_type", "status_payment", '+
            ' "status_grouping", "status_tax", "status_disc", "status_promo" '+
            ' FROM "t_sales_classification" '+
            ' where "code_type_customer"='+QuotedStr(edkd_jenis_pel.Text)+' AND '+
            ' "code_item_category"='+QuotedStr(edkd_kategori.Text)+' AND  '+
            ' "code_type_count"='+QuotedStr(edkd_type_hitung.Text)+' AND  '+
            ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual.Text)+' AND  '+
            ' "code_sell_type"='+QuotedStr(edkd_jenis_jual.Text)+' AND '+
            ' "status_payment"='+IntToStr(rgPembayaran.ItemIndex)+' AND '+
            ' "status_grouping"='+IntToStr(rgGrouping.ItemIndex)+' AND '+
            ' "status_tax"='+IntToStr(rgPajak.ItemIndex)+' AND '+
            ' "status_disc"='+IntToStr(rgPotongan.ItemIndex)+' AND '+
            ' "status_promo"='+IntToStr(rgPromo.ItemIndex)+' AND '+
            ' deleted_at IS NULL '+
            ' Order By "code_item_category" desc ');
    open;
  end;

      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if (edkd_jenis_pel.Text='') OR (edkd_jenis_pel.Text='0') then
      begin
        MessageDlg('Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edkd_jenis_pel.SetFocus;
      end
      else if (edkd_kategori.Text='') OR (edkd_kategori.Text='0') then
      begin
        MessageDlg('Kategori Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edkd_kategori.SetFocus;
      end
      else if Dm.Qtemp3.RecordCount=0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Dm.Qtemp3.RecordCount<>0 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
        Dm.Koneksi.Commit;
      end;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFDaftarKlasifikasi.bt_m_tampilkanClick(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TFDaftarKlasifikasi.RefreshGrid;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "id" as id_master,"code_type_customer", "code_item_category", "code_type_count", '+
            ' "code_customer_selling_type", "code_sell_type", "status_payment", '+
            ' "status_grouping", "status_tax", "status_disc", "status_promo" '+
            ' FROM "t_sales_classification" '+
            ' where "code_type_customer"='+QuotedStr(edkd_jenis_pel.Text)+' AND '+
            ' "code_item_category"='+QuotedStr(edkd_kategori.Text)+' AND  '+
            ' "code_type_count"='+QuotedStr(edkd_type_hitung.Text)+' AND  '+
            ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual.Text)+' AND  '+
            ' "code_sell_type"='+QuotedStr(edkd_jenis_jual.Text)+' AND '+
            ' "status_payment"='+IntToStr(rgPembayaran.ItemIndex)+' AND '+
            ' "status_grouping"='+IntToStr(rgGrouping.ItemIndex)+' AND '+
            ' "status_tax"='+IntToStr(rgPajak.ItemIndex)+' AND '+
            ' "status_disc"='+IntToStr(rgPotongan.ItemIndex)+' AND '+
            ' "status_promo"='+IntToStr(rgPromo.ItemIndex)+' AND '+
            ' deleted_at IS NULL '+
            ' Order By "code_item_category" desc ');
    open;
  end;
  MemKlasifikasi.active:=false;
  MemKlasifikasi.active:=true;
  MemKlasifikasi.EmptyTable;

  if  Dm.Qtemp1.RecordCount=0 then
  begin
    id_master:='0';
  end;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
      id_master:= Copy(Dm.Qtemp1.FieldByName('id_master').AsString, 2, Length(Dm.Qtemp1.FieldByName('id_master').AsString) - 2);
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "id_master", "code_item", "name_item", "code_unit", '+
                ' "unit_price", "limit1", "limit2", "disc", "disc1", "disc2", '+
                ' "disc3", "disc4" from "public"."t_sales_classification_det" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "id_master"='+QuotedStr(id_master)+' '+
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
  end;
end;

procedure TFDaftarKlasifikasi.RefreshGrid_Master;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from (SELECT "id_master", b.id::VARCHAR as "id_detail", "code_item", '+
            ' "name_item",  "code_unit", "unit_price", "limit1", "limit2", '+
            ' "disc", "disc1",  "disc2", "disc3", "disc4"    '+
            ' FROM "t_sales_classification" a '+
            ' LEFT JOIN "t_sales_classification_det" b ON a."id"::VARCHAR = b.id_master '+
            ' WHERE "code_type_customer"='+QuotedStr(jenis_pelanggan)+' AND '+
            ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual_pel.Text)+' AND  '+
            ' "code_sell_type"='+QuotedStr(edkd_jenis_jual_pel.Text)+' AND '+
            ' "code_item_category"='+QuotedStr(edkd_kategori_pel.Text)+' AND '+
            ' "status_grouping"=1  )xx where  id_detail NOT IN (SELECT "id_master_det" '+
            ' FROM "t_sales_classification_group" where "code_cust"='+QuotedStr(edKode_Pelanggan.Text)+') '+
            ' Order By "code_item" desc ');
    open;
  end;
  MemMaster.active:=false;
  MemMaster.active:=true;
  MemMaster.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    //ShowMessage('Tidak Ditemukan Data..!!');
    exit;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        FDaftarKlasifikasi.MemMaster.insert;
        FDaftarKlasifikasi.MemMaster['kd_barang']:=Dm.Qtemp.FieldByName('code_item').AsString;
        FDaftarKlasifikasi.MemMaster['nm_barang']:=Dm.Qtemp.FieldByName('name_item').AsString;
        FDaftarKlasifikasi.MemMaster['kd_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
        FDaftarKlasifikasi.MemMaster['nm_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
        FDaftarKlasifikasi.MemMaster['harga_satuan']:=Dm.Qtemp.FieldByName('unit_price').Value;
        FDaftarKlasifikasi.MemMaster['batas1']:=Dm.Qtemp.FieldByName('limit1').Value;
        FDaftarKlasifikasi.MemMaster['batas2']:=Dm.Qtemp.FieldByName('limit2').Value;
        FDaftarKlasifikasi.MemMaster['disc']:=Dm.Qtemp.FieldByName('disc').Value;
        FDaftarKlasifikasi.MemMaster['disc1']:=Dm.Qtemp.FieldByName('disc1').Value;
        FDaftarKlasifikasi.MemMaster['disc2']:=Dm.Qtemp.FieldByName('disc2').Value;
        FDaftarKlasifikasi.MemMaster['disc3']:=Dm.Qtemp.FieldByName('disc3').Value;
        FDaftarKlasifikasi.MemMaster['disc4']:=Dm.Qtemp.FieldByName('disc4').Value;
        FDaftarKlasifikasi.MemMaster['id_master']:=Dm.Qtemp.FieldByName('id_master').Value;
        FDaftarKlasifikasi.MemMaster['id_master_det']:=Dm.Qtemp.FieldByName('id_detail').Value;
        FDaftarKlasifikasi.MemMaster.post;
       Dm.Qtemp.next;
      end;
  end;
end;

procedure TFDaftarKlasifikasi.RefreshGrid_Group;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from (SELECT "id_master", b.id::VARCHAR as "id_detail", "code_item", '+
            ' "name_item",  "code_unit", "unit_price", "limit1", "limit2", '+
            ' "disc", "disc1",  "disc2", "disc3", "disc4"    '+
            ' FROM "t_sales_classification" a '+
            ' LEFT JOIN "t_sales_classification_det" b ON a."id"::VARCHAR = b.id_master '+
            ' WHERE "code_type_customer"='+QuotedStr(jenis_pelanggan)+' AND '+
            ' "code_customer_selling_type"='+QuotedStr(edkd_type_jual_pel.Text)+' AND  '+
            ' "code_sell_type"='+QuotedStr(edkd_jenis_jual_pel.Text)+' AND '+
            ' "code_item_category"='+QuotedStr(edkd_kategori_pel.Text)+' AND '+
            ' "status_grouping"=1 )xx where  id_detail IN (SELECT "id_master_det" '+
            ' FROM "t_sales_classification_group" where "code_cust"='+QuotedStr(edKode_Pelanggan.Text)+') '+
            ' Order By "code_item" desc ');
    open;
  end;
  MemGroup.active:=false;
  MemGroup.active:=true;
  MemGroup.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    //ShowMessage('Tidak Ditemukan Data..!!');
    exit;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
        FDaftarKlasifikasi.MemGroup.insert;
        FDaftarKlasifikasi.MemGroup['kd_barang']:=Dm.Qtemp.FieldByName('code_item').AsString;
        FDaftarKlasifikasi.MemGroup['nm_barang']:=Dm.Qtemp.FieldByName('name_item').AsString;
        FDaftarKlasifikasi.MemGroup['kd_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
        FDaftarKlasifikasi.MemGroup['nm_satuan']:=Dm.Qtemp.FieldByName('code_unit').AsString;
        FDaftarKlasifikasi.MemGroup['harga_satuan']:=Dm.Qtemp.FieldByName('unit_price').Value;
        FDaftarKlasifikasi.MemGroup['batas1']:=Dm.Qtemp.FieldByName('limit1').Value;
        FDaftarKlasifikasi.MemGroup['batas2']:=Dm.Qtemp.FieldByName('limit2').Value;
        FDaftarKlasifikasi.MemGroup['disc']:=Dm.Qtemp.FieldByName('disc').Value;
        FDaftarKlasifikasi.MemGroup['disc1']:=Dm.Qtemp.FieldByName('disc1').Value;
        FDaftarKlasifikasi.MemGroup['disc2']:=Dm.Qtemp.FieldByName('disc2').Value;
        FDaftarKlasifikasi.MemGroup['disc3']:=Dm.Qtemp.FieldByName('disc3').Value;
        FDaftarKlasifikasi.MemGroup['disc4']:=Dm.Qtemp.FieldByName('disc4').Value;
        FDaftarKlasifikasi.MemGroup['id_master']:=Dm.Qtemp.FieldByName('id_master').Value;
        FDaftarKlasifikasi.MemGroup['id_master_det']:=Dm.Qtemp.FieldByName('id_detail').Value;
        FDaftarKlasifikasi.MemGroup.post;
       Dm.Qtemp.next;
      end;
  end;
end;

procedure TFDaftarKlasifikasi.Clear;
begin
  edkd_type_jual_pel.Clear;
  ednm_jenis_jual_pel.Clear;
  ednm_type_jual_pel.Clear;
  edkd_jenis_jual_pel.Clear;
  ednm_kategori_pel.Clear;
  edkd_kategori_pel.Clear;
  edNama_Pelanggan.Clear;
  edKode_Pelanggan.Clear;
  ednm_jenis_pel.Clear;
  edkd_jenis_pel.Clear;
  ednm_kategori.Clear;
  edkd_kategori.Clear;
  ednm_type_jual.Clear;
  edkd_type_jual.Clear;
  ednm_jenis_jual.Clear;
  edkd_jenis_jual.Clear;
  ednm_type_hitung.Clear;
  edkd_type_hitung.Clear;
end;

procedure TFDaftarKlasifikasi.DBGridDetailColumns1CellButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Barang';
  FMasterData.vcall:='m_klasifikasi';
  FMasterData.update_grid('item_code','item_name','unit','t_item','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.DBGridKlasifikasiDblClick(Sender: TObject);
begin
  FDaftarKlasifikasi.Status:=1;
  SaveUpdateGroup;
end;

procedure TFDaftarKlasifikasi.DBGridMasterDblClick(Sender: TObject);
begin
  FDaftarKlasifikasi.Status:=0;
  SaveUpdateGroup;
end;

procedure TFDaftarKlasifikasi.BBatalClick(Sender: TObject);
begin 
  Status:=1;
  SaveUpdateGroup;
end;

procedure TFDaftarKlasifikasi.BRefreshClick(Sender: TObject);
begin
  RefreshGrid_Group;
  RefreshGrid_Master;
end;

procedure TFDaftarKlasifikasi.BSaveClick(Sender: TObject);
begin
  FDaftarKlasifikasi.Status:=0;
  SaveUpdateGroup;
end;

procedure TFDaftarKlasifikasi.bt_m_batalClick(Sender: TObject);
begin
  //ShowMessage(IntToStr(rgPembayaran.ItemIndex));
  Clear;
  MemKlasifikasi.EmptyTable;
end;

procedure TFDaftarKlasifikasi.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='daftar_klasifikasi';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_jenis_jualButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Penjualan';
  FMasterData.vcall:='jns_jual_klasifikasi';
  FMasterData.update_grid('code','name','description','t_sell_type','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_jenis_jual_pelButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Penjualan';
  FMasterData.vcall:='jns_jual_klasifikasi_pel';
  FMasterData.update_grid('code','name','description','t_sell_type','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_jenis_pelButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Jenis Pelanggan';
  FMasterData.vcall:='jns_pelanggan_klasifikasi';
  FMasterData.update_grid('code','name','description','t_customer_type','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_kategoriButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kategori';
  FMasterData.vcall:='kategori_klasifikasi';
  FMasterData.update_grid('code','category','0','t_item_category','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_kategori_pelButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kategori';
  FMasterData.vcall:='kategori_klasifikasi_pel';
  FMasterData.update_grid('code','category','0','t_item_category','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_type_hitungButtonClick(Sender: TObject);
begin  //1
  FMasterData.Caption:='Master Data Type Perhitungan';
  FMasterData.vcall:='type_hitung_klasifikasi';
  FMasterData.update_grid('code','name','description','t_sell_type_count','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_type_jualButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Type Penjualan Pelanggan';
  FMasterData.vcall:='type_jual_klasifikasi';
  FMasterData.update_grid('code','name','description','t_customer_selling_type','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.ednm_type_jual_pelButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Type Penjualan Pelanggan';
  FMasterData.vcall:='type_jual_klasifikasi_pel';
  FMasterData.update_grid('code','name','description','t_customer_selling_type','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDaftarKlasifikasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Clear;
  MemKlasifikasi.EmptyTable;
end;

initialization
  RegisterClass(TFDaftarKlasifikasi);
end.
