unit UMasterWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFMasterWilayah = class(TForm)
    Label25: TLabel;
    Label26: TLabel;
    btMasterArea: TSpeedButton;
    Wilayah: TLabel;
    Label2: TLabel;
    btMasterWilayah: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    btMasterKaresidenan: TSpeedButton;
    PageControl1: TPageControl;
    TabSDetailData: TTabSheet;
    DBGridCustomer: TDBGridEh;
    MemDetailMasterWil: TMemTableEh;
    DSDetailMasterWil: TDataSource;
    MemDetailMasterWilKODE_DISTRIBUSI: TStringField;
    MemDetailMasterWilKODE_KABUPATEN: TStringField;
    MemDetailMasterWilNAMA_KABUPATEN: TStringField;
    MemDetailMasterWilKODE_KECAMATAN: TStringField;
    MemDetailMasterWilNAMA_KECAMATAN: TStringField;
    edWilayah: TRzButtonEdit;
    edArea: TRzButtonEdit;
    edKaresidenan: TRzButtonEdit;
    edKode_kares: TEdit;
    edKode_area: TEdit;
    edKode_wil: TEdit;
    procedure btMasterWilayahClick(Sender: TObject);
    procedure btMasterAreaClick(Sender: TObject);
    procedure btMasterProvinsiClick(Sender: TObject);
    procedure btMasterKaresidenanClick(Sender: TObject);
    procedure btAmbilKaresidenanClick(Sender: TObject);
    procedure edWilayahButtonClick(Sender: TObject);
    procedure edAreaButtonClick(Sender: TObject);
    procedure edProvinsiButtonClick(Sender: TObject);
    procedure RefreshGrid;
    procedure DBGridCustomerDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall: string;
  end;

var
  FMasterWilayah: TFMasterWilayah;

implementation

{$R *.dfm}

uses USetMasterWilayah, UMasterData, UDataModule, UNew_Pelanggan, UMy_Function,
  Ubrowse_pelanggan, UDataProspekPelanggan, UListOrderTelemarketing,
  UMasterSales, UListSalesOrder, UDataKolektor, UPengajuanApproval_JurnalTrans;

procedure TFMasterWilayah.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT "code_prov", "name_prov", "code_province", "code_kab", '+
            ' "name_kab", "code_karesidenan", "code_regency", "code_kec", "name_kec" from '+
            ' (SELECT "code" as code_prov, "name" as name_prov '+
            ' from t_region_province WHERE deleted_at IS NULL) prov  '+
            ' LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as name_kab, '+
              ' "code_karesidenan"  from t_region_regency WHERE deleted_at IS NULL ) kab '+
              ' ON prov.code_prov=kab.code_province '+
            ' LEFT JOIN (SELECT "code_regency", "code" as code_kec, "name" as name_kec '+
              ' from t_region_subdistrict WHERE deleted_at IS NULL) kec ON '+
              ' kab.code_kab=kec.code_regency '+
            ' where ("code_karesidenan"='+QuotedStr(edKode_kares.Text)+') ');
    open;
  end;

    FMasterWilayah.MemDetailMasterWil.active:=false;
    FMasterWilayah.MemDetailMasterWil.active:=true;
    FMasterWilayah.MemDetailMasterWil.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FMasterWilayah.MemDetailMasterWil.insert;
     FMasterWilayah.MemDetailMasterWil['KODE_DISTRIBUSI']:=Dm.Qtemp.fieldbyname('code_kec').value;
     FMasterWilayah.MemDetailMasterWil['KODE_KABUPATEN']:=Dm.Qtemp.fieldbyname('code_kab').value;
     FMasterWilayah.MemDetailMasterWil['NAMA_KABUPATEN']:=Dm.Qtemp.fieldbyname('name_kab').value;
     FMasterWilayah.MemDetailMasterWil['KODE_KECAMATAN']:=Dm.Qtemp.fieldbyname('code_kec').value;
     FMasterWilayah.MemDetailMasterWil['NAMA_KECAMATAN']:=Dm.Qtemp.fieldbyname('name_kec').value;
     FMasterWilayah.MemDetailMasterWil.post;
     Dm.Qtemp.next;
    end;
    end;
end;


procedure TFMasterWilayah.btAmbilKaresidenanClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='m_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL and code_areas='+QuotedStr(edKode_area.text)+'');
  FMasterData.ShowModal;
end;

procedure TFMasterWilayah.btMasterAreaClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=true;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.QArea.Close;
  FSetMasterWilayah.QArea.Open;
  FSetMasterWilayah.RzPageControl1.ActivePage:=FSetMasterWilayah.TabSetArea;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterKaresidenanClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=true;
  FSetMasterWilayah.QKaresidenan.Close;
  FSetMasterWilayah.QKaresidenan.Open;
  FSetMasterWilayah.RzPageControl1.ActivePage:=FSetMasterWilayah.TabSetKares;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterProvinsiClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=true;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=true;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=true;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.RzPageControl1.ActivePage:=FSetMasterWilayah.TabSetProvinsi;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterWilayahClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=true;
  FSetMasterWilayah.pnSetWilayah.visible:=true;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.QWilayah.Close;
  FSetMasterWilayah.QWilayah.Open;
  FSetMasterWilayah.RzPageControl1.ActivePage:=FSetMasterWilayah.TabSetBagianWilayah;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.DBGridCustomerDblClick(Sender: TObject);
begin
  if vcall='m_kolektor' then
  begin
    FDataKolektor.edKodeKares.text:= edKode_kares.Text;
    FDataKolektor.edNamaKares.text:= edKaresidenan.Text;
    FDataKolektor.edKodeKab.text:= MemDetailMasterWil['KODE_KABUPATEN'];
    FDataKolektor.edNameKab.text:= MemDetailMasterWil['NAMA_KABUPATEN'];
  end;
  if vcall='m_salesorder' then
  begin
    FListSalesOrder.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FListSalesOrder.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='m_sales' then
  begin
    FMasterSales.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FMasterSales.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='m_telemarketing' then
  begin
    FListOrderTelemarketing.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FListOrderTelemarketing.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='m_prospek' then
  begin
    FDataProspekPelanggan.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FDataProspekPelanggan.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='sales_order' then
  begin
    Fbrowse_data_pelanggan.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    Fbrowse_data_pelanggan.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='m_pelanggan' then
  begin
    FNew_Pelanggan.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FNew_Pelanggan.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  if vcall='m_jurnalPenj' then
  begin
    FPengajuan_AppJurnal_Trans.Edkodewilayah.text:= MemDetailMasterWil['KODE_DISTRIBUSI'];
    FPengajuan_AppJurnal_Trans.Ednamawilayah.text:= edKaresidenan.Text+', '+MemDetailMasterWil['NAMA_KABUPATEN']+', '+MemDetailMasterWil['NAMA_KECAMATAN'];
  end;
  FMasterWilayah.MemDetailMasterWil.EmptyTable;
  FMasterWilayah.close;
end;

procedure TFMasterWilayah.edAreaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Area';
  FMasterData.vcall:='m_area';
  FMasterData.update_grid('code','name','description','t_region_areas','WHERE	deleted_at IS NULL and code_region='+QuotedStr(edKode_wil.text)+'');
  FMasterData.ShowModal;
end;

procedure TFMasterWilayah.edProvinsiButtonClick(Sender: TObject);
begin
  FMasterData.vcall:='m_provinsi';
  FMasterData.ShowModal;
end;

procedure TFMasterWilayah.edWilayahButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Wilayah';
  FMasterData.vcall:='m_wilayah';
  FMasterData.update_grid('code','name','description','t_region','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFMasterWilayah.FormShow(Sender: TObject);
begin
MemDetailMasterWil.EmptyTable;
if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    btMasterWilayah.Visible:=false;
    btMasterArea.Visible:=false;
    btMasterKaresidenan.Visible:=false;
  end else begin
    btMasterWilayah.Visible:=true;
    btMasterArea.Visible:=true;
    btMasterKaresidenan.Visible:=true;
  end;

  edWilayah.Clear;
  edArea.Clear;
  edKaresidenan.Clear;
  edKode_kares.Clear;
  edKode_area.Clear;
  edKode_wil.Clear;
  MemDetailMasterWil.EmptyTable;
end;

end.
