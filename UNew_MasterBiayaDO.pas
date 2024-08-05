unit UNew_MasterBiayaDO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFNew_MasterBiayaDO = class(TForm)
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailkd_jenis: TStringField;
    MemDetailnama_jenis: TStringField;
    MemDetailangkutan: TCurrencyField;
    MemDetailtambah_titik: TCurrencyField;
    MemDetailtambah_km: TCurrencyField;
    RzPageControl2: TRzPageControl;
    TabSetSumberOrder: TRzTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    edNamaProvinsi: TRzButtonEdit;
    edNamaKabupaten: TRzButtonEdit;
    edNamaKecamatan: TRzButtonEdit;
    edKodeKecamatan: TEdit;
    edKodeKabupaten: TEdit;
    edKodeProvinsi: TEdit;
    edNamaLokasi: TRzButtonEdit;
    edKodeLokasi: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    btPreview: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetail: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    TabSheet1: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    DBGridBongkar: TDBGridEh;
    Panel3: TPanel;
    btCloseBB: TRzBitBtn;
    btSaveBB: TRzBitBtn;
    btPreviewBB: TRzBitBtn;
    Panel4: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    MemDetailBongkar: TMemTableEh;
    dsDetailBongkar: TDataSource;
    MemDetailBongkarkd_jenis: TStringField;
    MemDetailBongkarnama_jenis: TStringField;
    MemDetailBongkarmuat: TCurrencyField;
    MemDetailBongkarbongkar: TCurrencyField;
    procedure edNamaProvinsiButtonClick(Sender: TObject);
    procedure edNamaKabupatenButtonClick(Sender: TObject);
    procedure edNamaKecamatanButtonClick(Sender: TObject);
    procedure edNamaLokasiButtonClick(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure btPreviewBBClick(Sender: TObject);
    procedure btCloseBBClick(Sender: TObject);
    procedure btSaveBBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure RefreshGrid;
    procedure RefreshGrid_Bongkar;
    procedure Save;
    procedure Save_Bongkar;
  end;

var
  FNew_MasterBiayaDO: TFNew_MasterBiayaDO;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UHomeLogin, Ubrowse_pelanggan;
procedure TFNew_MasterBiayaDO.Save;
begin
  MemDetail.Active:=true;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "code_starting_location", "name_starting_location", '+
                ' "code_province", "name_province", "code_regency", '+
                ' "name_regency", "code_subdistrict", "name_subdistrict", "code_transport_type", '+
                ' "name_transport_type", "transportation_costs", "cost_per_point", '+
                ' "additional_km_costs" from "db_center"."t_cost_delivery_order" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "code_starting_location"='+QuotedStr(edKodeLokasi.Text)+' '+
                ' AND "code_province"='+QuotedStr(edKodeProvinsi.Text)+' '+
                ' AND "code_regency"='+QuotedStr(edKodeKabupaten.Text)+' '+
                ' AND "code_subdistrict"='+QuotedStr(edKodeKecamatan.Text)+' '+
                ' AND "code_transport_type"='+QuotedStr(MemDetail['kd_jenis'])+' '+
                ' ) a '+
                ' Order By "name_transport_type" desc');
        open;
      end;

      if  Dm.Qtemp1.RecordCount=0 then
      begin
        with dm.Qtemp2 do
        begin
        close;
        sql.clear;
        sql.Text:=' INSERT INTO "db_center"."t_cost_delivery_order" ("created_at", '+
                  ' "created_by", "code_starting_location", "name_starting_location", '+
                  ' "code_province", "name_province", "code_regency", '+
                  ' "name_regency", "code_subdistrict", "name_subdistrict", '+
                  ' "code_transport_type", "name_transport_type", "transportation_costs", '+
                  ' "cost_per_point", "additional_km_costs") '+
                  ' Values( '+
                  ' NOW(), '+
                  ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                  ' '+QuotedStr(edKodeLokasi.Text)+', '+
                  ' '+QuotedStr(edNamaLokasi.Text)+', '+
                  ' '+QuotedStr(edKodeProvinsi.Text)+', '+
                  ' '+QuotedStr(edNamaProvinsi.Text)+', '+
                  ' '+QuotedStr(edKodeKabupaten.Text)+', '+
                  ' '+QuotedStr(edNamaKabupaten.Text)+', '+
                  ' '+QuotedStr(edKodeKecamatan.Text)+', '+
                  ' '+QuotedStr(edNamaKecamatan.Text)+', '+
                  ' '+QuotedStr(MemDetail['kd_jenis'])+', '+
                  ' '+QuotedStr(MemDetail['nama_jenis'])+', '+
                  ' '+QuotedStr(MemDetail['angkutan'])+', '+
                  ' '+QuotedStr(MemDetail['tambah_titik'])+', '+
                  ' '+QuotedStr(MemDetail['tambah_km'])+');';
        ExecSQL;
        end;
      end;

      if  Dm.Qtemp1.RecordCount<>0 then
      begin
        with dm.Qtemp2 do
        begin
          close;
          sql.clear;
          sql.add(' Update "db_center"."t_cost_delivery_order" set '+
                  ' name_transport_type='+QuotedStr(MemDetail['nama_jenis'])+','+
                  ' transportation_costs='+QuotedStr(MemDetail['angkutan'])+','+
                  ' cost_per_point='+QuotedStr(MemDetail['tambah_titik'])+','+
                  ' additional_km_costs='+QuotedStr(MemDetail['tambah_km'])+','+
                  ' updated_at=now(), '+
                  ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
          sql.add(' Where code_starting_location='+QuotedStr(edKodeLokasi.Text)+' AND '+
                  ' code_province='+QuotedStr(edKodeProvinsi.Text)+' AND '+
                  ' code_regency='+QuotedStr(edKodeKabupaten.Text)+' AND '+
                  ' code_subdistrict='+QuotedStr(edKodeKecamatan.Text)+' AND '+
                  ' code_transport_type='+QuotedStr(MemDetail['kd_jenis'])+';' );
          ExecSQL;
        end;
      end;
  MemDetail.Next;
  end;
  ShowMessage('Data Berhasil Diperbarui..')
end;

procedure TFNew_MasterBiayaDO.Save_Bongkar;
begin
  MemDetailBongkar.Active:=true;
  MemDetailBongkar.First;
  while not MemDetailBongkar.Eof do
  begin
      with Dm.Qtemp1 do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "code_cust", "name_cust", '+
                ' "code_category", "name_category",  '+
                ' "cost_loading", "cost_unloading" from '+
                ' "db_center"."t_cost_delivery_order_additional" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "code_cust"='+QuotedStr(edKode_Pelanggan.Text)+' '+
                ' AND "code_category"='+QuotedStr(MemDetailBongkar['kd_jenis'])+' '+
                ' ) a '+
                ' Order By "name_category" desc');
        open;
      end;

      if  Dm.Qtemp1.RecordCount=0 then
      begin
        with dm.Qtemp2 do
        begin
        close;
        sql.clear;
        sql.Text:=' INSERT INTO "db_center"."t_cost_delivery_order_additional" ("created_at", '+
                  ' "created_by", "code_cust", "name_cust", '+
                  ' "code_category", "name_category",  '+
                  ' "cost_loading", "cost_unloading") '+
                  ' Values( '+
                  ' NOW(), '+
                  ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                  ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
                  ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
                  ' '+QuotedStr(MemDetailBongkar['kd_jenis'])+', '+
                  ' '+QuotedStr(MemDetailBongkar['nama_jenis'])+', '+
                  ' '+QuotedStr(MemDetailBongkar['muat'])+', '+
                  ' '+QuotedStr(MemDetailBongkar['bongkar'])+');';
        ExecSQL;
        end;
      end;

      if  Dm.Qtemp1.RecordCount<>0 then
      begin
        with dm.Qtemp2 do
        begin
          close;
          sql.clear;
          sql.add(' Update "db_center"."t_cost_delivery_order_additional" set '+
                  ' name_category='+QuotedStr(MemDetailBongkar['nama_jenis'])+','+
                  ' cost_loading='+QuotedStr(MemDetailBongkar['muat'])+','+
                  ' cost_unloading='+QuotedStr(MemDetailBongkar['bongkar'])+','+
                  ' updated_at=now(), '+
                  ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+' ');
          sql.add(' Where code_cust='+QuotedStr(edKode_Pelanggan.Text)+' AND '+
                  ' code_category='+QuotedStr(MemDetailBongkar['kd_jenis'])+';' );
          ExecSQL;
        end;
      end;
  MemDetailBongkar.Next;
  end;
  ShowMessage('Data Berhasil Diperbarui..')
end;

procedure TFNew_MasterBiayaDO.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "code", "name" from "db_center"."t_transportation_type" '+
            ' WHERE deleted_at IS NULL '+
            ' Order By "code" desc ');
    open;
  end;
  MemDetail.active:=false;
  MemDetail.active:=true;
  MemDetail.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
    //Showmessage('Maaf, Data Tidak Ditemukan..');
    URUTAN_KE:=0;
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      URUTAN_KE:=URUTAN_KE+1;
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "code_starting_location", "name_starting_location", '+
                ' "code_province", "name_province", "code_regency", '+
                ' "name_regency", "code_subdistrict", "name_subdistrict", "code_transport_type", '+
                ' "name_transport_type", "transportation_costs", "cost_per_point", '+
                ' "additional_km_costs" from "db_center"."t_cost_delivery_order" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "code_starting_location"='+QuotedStr(edKodeLokasi.Text)+' '+
                ' AND "code_province"='+QuotedStr(edKodeProvinsi.Text)+' '+
                ' AND "code_regency"='+QuotedStr(edKodeKabupaten.Text)+' '+
                ' AND "code_subdistrict"='+QuotedStr(edKodeKecamatan.Text)+' '+
                ' AND "code_transport_type"='+QuotedStr(Dm.Qtemp1.FieldByName('code').AsString)+' '+
                ' ) a '+
                ' Order By "name_transport_type" desc');
        open;
      end;

      if  Dm.Qtemp.RecordCount=0 then
      begin
       FNew_MasterBiayaDO.MemDetail.insert;
       FNew_MasterBiayaDO.MemDetail['kd_jenis']:=Dm.Qtemp1.fieldbyname('code').value;
       FNew_MasterBiayaDO.MemDetail['nama_jenis']:=Dm.Qtemp1.fieldbyname('name').value;
       FNew_MasterBiayaDO.MemDetail['angkutan']:='0';
       FNew_MasterBiayaDO.MemDetail['tambah_titik']:='0';
       FNew_MasterBiayaDO.MemDetail['tambah_km']:='0';
       FNew_MasterBiayaDO.MemDetail.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FNew_MasterBiayaDO.MemDetail.insert;
       FNew_MasterBiayaDO.MemDetail['kd_jenis']:=Dm.Qtemp1.fieldbyname('code').value;
       FNew_MasterBiayaDO.MemDetail['nama_jenis']:=Dm.Qtemp1.fieldbyname('name').value;
       FNew_MasterBiayaDO.MemDetail['angkutan']:=Dm.Qtemp.fieldbyname('transportation_costs').value;
       FNew_MasterBiayaDO.MemDetail['tambah_titik']:=Dm.Qtemp.fieldbyname('cost_per_point').value;
       FNew_MasterBiayaDO.MemDetail['tambah_km']:=Dm.Qtemp.fieldbyname('additional_km_costs').value;
       FNew_MasterBiayaDO.MemDetail.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFNew_MasterBiayaDO.RefreshGrid_Bongkar;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT  "code", "category" from "public"."t_item_category" '+
            ' WHERE deleted_at IS NULL '+
            ' Order By "code" desc ');
    open;
  end;
  MemDetailBongkar.active:=false;
  MemDetailBongkar.active:=true;
  MemDetailBongkar.EmptyTable;

  if  Dm.Qtemp1.RecordCount<>0 then
  begin
      Dm.Qtemp1.first;
      while not Dm.Qtemp1.Eof do
      begin
      with Dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' SELECT * from ( '+
                ' SELECT "code_cust", "name_cust", '+
                ' "code_category", "name_category",  '+
                ' "cost_loading", "cost_unloading" from '+
                ' "db_center"."t_cost_delivery_order_additional" '+
                ' WHERE deleted_at IS NULL '+
                ' AND "code_cust"='+QuotedStr(edKode_Pelanggan.Text)+' '+
                ' AND "code_category"='+QuotedStr(Dm.Qtemp1.FieldByName('code').AsString)+' '+
                ' ) a '+
                ' Order By "name_category" desc');
        open;
      end;

      if  Dm.Qtemp.RecordCount=0 then
      begin
       FNew_MasterBiayaDO.MemDetailBongkar.insert;
       FNew_MasterBiayaDO.MemDetailBongkar['kd_jenis']:=Dm.Qtemp1.fieldbyname('code').value;
       FNew_MasterBiayaDO.MemDetailBongkar['nama_jenis']:=Dm.Qtemp1.fieldbyname('category').value;
       FNew_MasterBiayaDO.MemDetailBongkar['muat']:='0';
       FNew_MasterBiayaDO.MemDetailBongkar['bongkar']:='0';
       FNew_MasterBiayaDO.MemDetailBongkar.post;
      end;

      if  Dm.Qtemp.RecordCount<>0 then
      begin
       FNew_MasterBiayaDO.MemDetailBongkar.insert;
       FNew_MasterBiayaDO.MemDetailBongkar['kd_jenis']:=Dm.Qtemp1.fieldbyname('code').value;
       FNew_MasterBiayaDO.MemDetailBongkar['nama_jenis']:=Dm.Qtemp1.fieldbyname('category').value;
       FNew_MasterBiayaDO.MemDetailBongkar['muat']:=Dm.Qtemp.fieldbyname('cost_loading').value;
       FNew_MasterBiayaDO.MemDetailBongkar['bongkar']:=Dm.Qtemp.fieldbyname('cost_unloading').value;
       FNew_MasterBiayaDO.MemDetailBongkar.post;
      end;
       Dm.Qtemp1.next;
      end;
  end;
end;

procedure TFNew_MasterBiayaDO.BBatalClick(Sender: TObject);
begin
  MemDetail.EmptyTable;
  Close;
end;

procedure TFNew_MasterBiayaDO.BSaveClick(Sender: TObject);
begin
      {if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if (edKodeLokasi.Text='') OR (edKodeLokasi.Text='0') then
      begin
        MessageDlg('Lokasi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeLokasi.SetFocus;
      end
      else if (edKodeProvinsi.Text='') OR (edKodeProvinsi.Text='0') then
      begin
        MessageDlg('Provinsi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeProvinsi.SetFocus;
      end
      else if (edKodeKabupaten.Text='') OR (edKodeKabupaten.Text='0') then
      begin
        MessageDlg('Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKabupaten.SetFocus;
      end
      else
      Save;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;}

      Save;
end;

procedure TFNew_MasterBiayaDO.btCloseBBClick(Sender: TObject);
begin
  MemDetailBongkar.EmptyTable;
  Close;
end;

procedure TFNew_MasterBiayaDO.btPreviewBBClick(Sender: TObject);
begin
      {if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if (edKodeLokasi.Text='') OR (edKodeLokasi.Text='0') then
      begin
        MessageDlg('Lokasi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeLokasi.SetFocus;
      end
      else if (edKodeProvinsi.Text='') OR (edKodeProvinsi.Text='0') then
      begin
        MessageDlg('Provinsi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeProvinsi.SetFocus;
      end
      else if (edKodeKabupaten.Text='') OR (edKodeKabupaten.Text='0') then
      begin
        MessageDlg('Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKabupaten.SetFocus;
      end
      else
      RefreshGrid;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end; }

      RefreshGrid_Bongkar;
end;

procedure TFNew_MasterBiayaDO.btPreviewClick(Sender: TObject);
begin
      {if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if (edKodeLokasi.Text='') OR (edKodeLokasi.Text='0') then
      begin
        MessageDlg('Lokasi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeLokasi.SetFocus;
      end
      else if (edKodeProvinsi.Text='') OR (edKodeProvinsi.Text='0') then
      begin
        MessageDlg('Provinsi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeProvinsi.SetFocus;
      end
      else if (edKodeKabupaten.Text='') OR (edKodeKabupaten.Text='0') then
      begin
        MessageDlg('Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKabupaten.SetFocus;
      end
      else
      RefreshGrid;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end; }

      RefreshGrid;
end;

procedure TFNew_MasterBiayaDO.btSaveBBClick(Sender: TObject);
begin
      {if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if (edKodeLokasi.Text='') OR (edKodeLokasi.Text='0') then
      begin
        MessageDlg('Lokasi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeLokasi.SetFocus;
      end
      else if (edKodeProvinsi.Text='') OR (edKodeProvinsi.Text='0') then
      begin
        MessageDlg('Provinsi Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeProvinsi.SetFocus;
      end
      else if (edKodeKabupaten.Text='') OR (edKodeKabupaten.Text='0') then
      begin
        MessageDlg('Kabupaten Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeKabupaten.SetFocus;
      end
      else
      Save;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;}

      Save_Bongkar;
end;

procedure TFNew_MasterBiayaDO.Clear;
begin
  edKodeLokasi.Clear;
  edNamaLokasi.Clear;
  edNamaProvinsi.Clear;
  edNamaKabupaten.Clear;
  edNamaKecamatan.Clear;
  edKodeProvinsi.Clear;
  edKodeKabupaten.Clear;
  edKodeKecamatan.Clear;
  MemDetail.EmptyTable;

  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemDetailBongkar.EmptyTable;
end;

procedure TFNew_MasterBiayaDO.edKode_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='m_biaya_do';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_MasterBiayaDO.edNamaKabupatenButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='m_biaya_do_lokasi_kab';
  FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL and code_province='+QuotedStr(edKodeProvinsi.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNew_MasterBiayaDO.edNamaKecamatanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kecamatan';
  FMasterData.vcall:='m_biaya_do_lokasi_kec';
  FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(edKodeKabupaten.text)+'');
  FMasterData.ShowModal;
end;

procedure TFNew_MasterBiayaDO.edNamaLokasiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Lokasi Awal';
  FMasterData.vcall:='m_biaya_do_lokasi';
  FMasterData.update_grid('code','name','address','"db_center"."t_starting_location"','WHERE	deleted_at IS NULL ORDER BY code DESC');
  FMasterData.ShowModal;
end;

procedure TFNew_MasterBiayaDO.edNamaProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='m_biaya_do_lokasi_prov';
  FMasterData.update_grid('code','name','description','t_region_province','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFNew_MasterBiayaDO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FNew_MasterBiayaDO.Clear;
  FNew_MasterBiayaDO.MemDetail.EmptyTable;
  FNew_MasterBiayaDO.Close;
end;

end.
