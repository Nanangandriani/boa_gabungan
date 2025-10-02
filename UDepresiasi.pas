unit UDepresiasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar,
  cxClasses, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, Data.DB, MemDS, DBAccess, Uni, MemTableDataEh, DataDriverEh,
  MemTableEh, RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls,
  Vcl.Samples.Spin, dxSkinBasic, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxCore;

type
  TFDepresiasi = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    BProses: TdxBar;
    dxBUpdate: TdxBarButton;
    dxBRefresh: TdxBarButton;
    dxBDelete: TdxBarButton;
    dxBbaru1: TdxBarButton;
    dxBbaru2: TdxBarButton;
    dxBarPrintPO: TdxBarLargeButton;
    dxBarBaru: TdxBarLargeButton;
    BApprove: TdxBarButton;
    BReject: TdxBarButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QDepresiasi: TUniQuery;
    DsDepresiasi: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Qdetail: TUniQuery;
    Dsdetail: TDataSource;
    MemDepresiasi: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DBGridPenyusutan: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    CbMulai: TComboBox;
    CbSelesai: TComboBox;
    Edthn2: TSpinEdit;
    Label30: TLabel;
    procedure dxBarBaruClick(Sender: TObject);
    procedure dxBUpdateClick(Sender: TObject);
    procedure dxBRefreshClick(Sender: TObject);
    procedure dxBDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CbMulaiSelect(Sender: TObject);
    procedure CbSelesaiSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure UpdatePenyMingguan;
  end;

//var
Function FDepresiasi: TFDepresiasi;
var bln,bln2:integer;

implementation

{$R *.dfm}

uses UNew_Depresiasi, UDataModule, UMainmenu;
var RealFDepresiasi: TFDepresiasi;
function FDepresiasi: TFDepresiasi;
begin
  if RealFDepresiasi <> nil then FDepresiasi:= RealFDepresiasi
  else  Application.CreateForm(TFDepresiasi, Result);
end;

Procedure TFDepresiasi.UpdatePenyMingguan;
begin
  with FNew_Depresiasi do
  begin
    TabSheet1.TabVisible:=false;
    MemDepresiasi2.Active:=False;
    MemDepresiasi2.Active:=True;
    BSimpan.Visible:=False;
    BEdit.Visible:=True;
    Caption:='Form Update Penyusutan';
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select c.nama_harta,d.kd_kelompok,b.nominal,b.kd_asset,e.kelompok,f.nm_material,a.* from '+
      ' t_asset_penyusutan_perminggu a INNER JOIN t_asset_penyusutan_perminggu_det b on a.notrans=b.notrans  '+
      ' INNER JOIN t_asset_nama_harta c on a.kd_akun=c.kd_akun INNER join t_asset d on b.kd_asset=d.kd_asset '+
      ' INNER JOIN t_asset_kelompok e on d.kd_kelompok=e.kd_kelompok INNER JOIN t_material_stok f ON '+
      ' d.kd_barang=f.kd_material_stok where a.notrans='+QuotedStr(MemDepresiasi['notrans']);
      ExecSQL;
    end;
    Edkd_Depresiasi.Text:=dm.Qtemp['notrans'];
    dt_depresiasi.Date:=dm.Qtemp['tgl'];
    //DtPeriode.Date:=dm.Qtemp['periode1'];
 //   DtPeriode2.date:=dm.Qtemp['periode2'];
    CbKelompok.Text:=dm.Qtemp['kelompok'];
    cbbulan.Text:=MemDepresiasi['bulan'];
    bulan:=dm.Qtemp['bulan2'];
    edth.Text:=dm.Qtemp['tahun'];
  //  CbMingguan.Text:=dm.Qtemp['minggu'];
    Cbharta.Text:=dm.Qtemp['nama_harta'];
    kd_akun:=dm.Qtemp['kd_akun'];
    end;
    dm.Qtemp.First;
    while not dm.Qtemp.eof do
    begin
      with dm.Qtemp do
      begin
        with FNew_Depresiasi do
        begin
          MemDepresiasi2.Insert;
          MemDepresiasi2['no_asset']:=dm.Qtemp['kd_asset'];
          MemDepresiasi2['nm_barang']:=dm.Qtemp['nm_material'];
         // MemDepresiasi2['nilai_dep']:=QDepresiasi['nominal'];
          MemDepresiasi2['jmlh_dep']:=dm.Qtemp['nominal'];
          MemDepresiasi2.Post;
          dm.Qtemp.Next;
        end;
      end;
    end;
end;

procedure TFDepresiasi.CbMulaiSelect(Sender: TObject);
begin
  bln:=CbMulai.ItemIndex;
end;

procedure TFDepresiasi.CbSelesaiSelect(Sender: TObject);
begin
  bln2:=CbSelesai.ItemIndex;
end;

procedure TFDepresiasi.dxBarBaruClick(Sender: TObject);
begin
  with FNew_Depresiasi do
  begin
    Show;
    Clear;
    MemDep2.Active:=false;
    MemDep2.Active:=true;
  //  Autonumber;
    BSimpan.Visible:=True;
    BEdit.Visible:=False;
    Caption:='Form New Penyusutan';
  end;
end;

procedure TFDepresiasi.dxBDeleteClick(Sender: TObject);
begin
  if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridEh1.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes
  then begin
    with dm.Qtemp do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From t_depresiasi where kd_depresiasi='+QuotedStr(DBGridEh1.Fields[0].AsString);
      Execute;
    end;
    dxBRefreshClick(sender);
    ShowMessage('Data Berhasil di Hapus');
  end;
end;

procedure TFDepresiasi.dxBRefreshClick(Sender: TObject);
begin
 DBGridPenyusutan.StartLoadingStatus();
{  DBGridEh1.FinishLoadingStatus();
  QDepresiasi.Close;
  QDepresiasi.Open;
  MemDepresiasi.Close;
  MemDepresiasi.Open;  }
//  Qdetail.Close;
//  Qdetail.Open;
  QDepresiasi.Close;
  with QDepresiasi do
  begin
    close;
    sql.Clear;
    sql.Text:=' select a.*,b.nama_harta,c."month",dd.id urut,ma.kode_kel_penyusutan,ma.nama_kelompok_penyusutan,dd.kode_asset,'+
    ' ma.nama_barang,dd.jumlah from t_depresiasi a INNER JOIN tmaster_harta_asset b on a.kd_harta=b.kd_nama_harta  '+
    ' INNER JOIN (select cast(id as VARCHAR(2)) id,"month" from t_month) c on a.trans_month=c.id   '+
    ' INNER JOIN t_depresiasi_det dd on a.transno=dd.transno inner JOIN tmaster_asset ma on '+
    ' dd.kode_asset=ma.kode_asset ORDER BY dd.id ASC';
    open;
  end;
  MemDepresiasi.Close;
  MemDepresiasi.Open;
  DBGridPenyusutan.FinishLoadingStatus();
end;

procedure TFDepresiasi.dxBUpdateClick(Sender: TObject);
begin
  with FNew_Depresiasi do
  begin
    Show;
    MemDepresiasi2.Active:=false;
    MemDepresiasi2.Active:=true;
    BSimpan.hide;
    Bedit.show;
    statustr:=1;
    Clear;
  //  Load;
  //  UpdatePenyBulanan;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.nama_harta,c."month",dd.id urut,ma.kode_kel_penyusutan,ma.nama_kelompok_penyusutan,dd.kode_asset,'+
    ' ma.nama_barang,dd.jumlah from t_depresiasi a INNER JOIN tmaster_harta_asset b on a.kd_harta=b.kd_nama_harta  '+
    ' INNER JOIN (select cast(id as VARCHAR(2)) id,"month" from t_month) c on a.trans_month=c.id   '+
    ' INNER JOIN t_depresiasi_det dd on a.transno=dd.transno inner JOIN tmaster_asset ma on '+
    ' dd.kode_asset=ma.kode_asset where a.transno='+QuotedStr(MemDepresiasi['transno'])+' ORDER BY dd.id ASC';
    open;
  end;
    edkd_depresiasi.Text:=dm.Qtemp['transno'];
    dt_depresiasi.Date:=dm.Qtemp['trans_date'];
    CbHarta.Text:=dm.Qtemp['nama_harta'];
    kd_akun:=dm.Qtemp['account_code'];
    CbBulan.Text:=dm.Qtemp['month'];
    bulan:=dm.Qtemp['trans_month'];
    Edth.Text:=dm.Qtemp['trans_year'];
    dm.Qtemp.First;
    while not dm.Qtemp.eof do
    begin
      MemDepresiasi2.Insert;
      MemDepresiasi2['no_asset']:=dm.Qtemp['kode_asset'];
      MemDepresiasi2['nm_barang']:=dm.Qtemp['nama_barang'];
      MemDepresiasi2['jmlh_dep']:=dm.Qtemp['jumlah'];
      MemDepresiasi2.Post;
      dm.Qtemp.Next;
    end;
  end;
end;

procedure TFDepresiasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFDepresiasi.FormCreate(Sender: TObject);
begin
  RealFDepresiasi:=self;
end;

procedure TFDepresiasi.FormDestroy(Sender: TObject);
begin
  RealFDepresiasi:=Nil;
end;

procedure TFDepresiasi.FormShow(Sender: TObject);
begin
//  dxBRefreshClick(sender);
  Edthn2.Text:=formatdatetime('yyyy',now());
end;

procedure TFDepresiasi.RzBitBtn1Click(Sender: TObject);
begin
// Penyusutan Minggu
  DBGridEh1.StartLoadingStatus();
  DBGridEh1.FinishLoadingStatus();
  with QDepresiasi do
  begin
    close;
    sql.Clear;
    sql.Text:='select c.nama_harta,d.kd_kelompok,b.nominal,b.kd_asset,e.kelompok,f.nm_material,a.* from '+
    ' t_asset_penyusutan_perminggu a INNER JOIN t_asset_penyusutan_perminggu_det b on a.notrans=b.notrans '+
    ' INNER JOIN t_asset_nama_harta c on a.kd_akun=c.kd_akun INNER join t_asset d on b.kd_asset=d.kd_asset'+
    ' INNER JOIN t_asset_kelompok e on d.kd_kelompok=e.kd_kelompok INNER JOIN t_material_stok f ON '+
    ' d.kd_barang=f.kd_material_stok WHERE  bulan2 >='+QuotedStr(IntToStr(bln))+' and bulan2<='+QuotedStr(IntToStr(bln2))+' and tahun='+QuotedStr(Edthn2.Text);
    open;
  end;
  MemDepresiasi.Close;
  MemDepresiasi.Open;

//penyusutan bulan
{  DBGridPenyusutan.StartLoadingStatus();
  DBGridPenyusutan.FinishLoadingStatus();
  with QPenyusutan_Bulan do
  begin
    close;
    sql.Clear;
    sql.Text:='select c.nama_harta,d.kd_kelompok,b.nominal,b.kd_asset,e.kelompok,f.nm_material,a.* '+
    ' from t_asset_penyusutan_perbulan a INNER JOIN t_asset_penyusutan_perbulan_det b on '+
    ' a.notrans=b.notrans INNER JOIN t_asset_nama_harta c on a.kd_akun=c.kd_akun '+
    ' INNER JOIN t_asset d on b.kd_asset=d.kd_asset INNER JOIN t_asset_kelompok e on '+
    ' d.kd_kelompok=e.kd_kelompok INNER JOIN t_material_stok f ON d.kd_barang=f.kd_material_stok'+
    ' WHERE  bulan2 >='+QuotedStr(IntToStr(bln))+' and bulan2<='+QuotedStr(IntToStr(bln2))+' and tahun='+QuotedStr(Edthn2.Text);
    open;
  end;
  MemPenyusutan_Bulan.Close;
  MemPenyusutan_Bulan.Open;       }
end;
initialization
  RegisterClass(TFDepresiasi);

end.
