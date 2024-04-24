unit UReturnPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxClasses,
  MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, frxClass, MemDS, DBAccess,
  Uni, frxDBSet;

type
  TFReturnPembelian = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridReturnPemb: TDBGridEh;
    DBGridEh1: TDBGridEh;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    DBPerusahaan: TfrxDBDataset;
    QPerusahaan: TUniQuery;
    frxReport1: TfrxReport;
    frxDBReturnPemb: TfrxDBDataset;
    DsRptReturnPemb: TDataSource;
    QRptReturnPemb: TUniQuery;
    DbrptDet: TfrxDBDataset;
    QRptDet: TUniQuery;
    DsDetail: TDataSource;
    QDetail: TUniQuery;
    DsdReturn: TDataSetDriverEh;
    MemReturn: TMemTableEh;
    DsReturnPembelian: TDataSource;
    QReturnPembelian: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure dxbarRefreshClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReturnPembelian: TFReturnPembelian;
  status:integer;

implementation

{$R *.dfm}

uses UNew_ReturnPembelian, UDataModule;

procedure TFReturnPembelian.ActBaruExecute(Sender: TObject);
begin
    with FNew_returnPemb do
    begin
      Show;
      //Autonumber;
      //Refresh;
      Caption:='New Retur Pembelian';
      status:=0;
    end;
end;

procedure TFReturnPembelian.ActUpdateExecute(Sender: TObject);
begin
    with FNew_returnPemb do
    begin
      Clear;
      Show;
      status:=1;
      Caption:='Update Retur Pembelian';
      Edkd_supp.Text:=MemReturn['kd_supplier'];
      Ednm_supp.Text:=MemReturn['nm_supplier'];
      Edno.Text:=MemReturn['no_return'];
      DtReturn.Date:=MemReturn['tgl_return'];
      Ednofaktur.Text:=MemReturn['nofaktur'];
      edppn.Text:=MemReturn['ppn'];
      edvls.Text:=MemReturn['valas'];
      ednilai_vls.Text:=MemReturn['nilai_valas'];
      edno_terima.Text:=MemReturn['no_terima'];

      QDetail.First;
      while not QDetail.Eof do
      begin
        MemDetail.Insert;
        Memdetail['no_terima']:=QDetail['no_terima'];
        Memdetail['nofaktur']:=QDetail['nofaktur'];
        MemDetail['kd_material']:=QDetail['kd_material_stok'];
        MemDetail['nopo']:=QDetail['nopo'];
        MemDetail['kd_stok']:=QDetail['kd_stok'];
        MemDetail['nm_material']:=QDetail['nm_material'];
        MemDetail['harga']:=QDetail['harga'];
        MemDetail['satuan']:=QDetail['satuan'];
        MemDetail['totalharga']:=QDetail['total_harga'];
        MemDetail['qty']:=QDetail['qty'];
        MemDetail.Post;
        QDetail.Next;
      end;
    end;
    FNew_returnPemb.DBGridEh3ColEnter(sender);
end;

procedure TFReturnPembelian.dxBarLargeButton1Click(Sender: TObject);
begin
   QPerusahaan.Close;
   QPerusahaan.Open;
   with QRptReturnPemb do
   begin
      close;
      sql.Clear;
      sql.Text:='select	d.supplier_name,f.faktur_date,d.address,d.npwp,((a.price/100)*a.ppn) AS ppn_rp,a.return_no,a.return_date,a.faktur_no,a.total_price,'+
                ' a.ppn,a.price,a.valas,a.valas_value from purchase.t_purchase_return a inner join t_supplier d on a.supplier_code=d.supplier_code '+
                ' inner join purchase.t_item_receive f on a.faktur_no=f.faktur_no  where a.return_no='+QuotedStr(DBGridReturnPemb.Fields[0].asstring)+''+
                ' Group by d.supplier_name,f.faktur_date,d.address,d.npwp,a.return_no,a.return_date,a.faktur_no,a.total_price,a.ppn,a.price,a.valas,a.valas_value ';
      ExecSQL;
   end;
   QRptReturnPemb.Open;
   frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_ReturnPembelian.Fr3');
   frxReport1.ShowReport();
end;

procedure TFReturnPembelian.dxbarRefreshClick(Sender: TObject);
begin
    DBGridReturnPemb.StartLoadingStatus();
    DBGridReturnPemb.FinishLoadingStatus();
    QReturnPembelian.Close;
    MemReturn.Close;
    QDetail.Close;
    if QReturnPembelian.Active=false then QReturnPembelian.Active:=True;
    if MemReturn.Active=False then MemReturn.Active:=True;
    if QDetail.Active=False then QDetail.Active:=True;
    if QRptReturnPemb.Active=False then QRptReturnPemb.Active:=True;
    if QRptDet.Active=False then QRptDet.Active:=True;
end;

end.
