unit UPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, dxBar, cxClasses, DataDriverEh, frxClass, frxDBSet,
  MemDS, DBAccess, Uni, MemTableEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ExtCtrls, RzPanel,
  Vcl.ComCtrls, Vcl.StdCtrls, RzButton;

type
  TFPO = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGridPO: TDBGridEh;
    DBGridEh3: TDBGridEh;
    RzPanel1: TRzPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    RzBitBtn1: TRzBitBtn;
    RptPO: TfrxReport;
    Qrptdetailpo2: TUniQuery;
    Dbrpt: TfrxDBDataset;
    DbRptDetailpo: TfrxDBDataset;
    DsRptPO: TDataSource;
    QRptPO: TUniQuery;
    DsDetailPo: TDataSource;
    Qdetailpo: TUniQuery;
    DsdPO: TDataSetDriverEh;
    DsPo: TDataSource;
    Mempo: TMemTableEh;
    QPo: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
    procedure load;
  end;

var
  FPO: TFPO;

implementation

{$R *.dfm}

uses UNew_PO, UDataModule;

procedure TFPO.ActRoExecute(Sender: TObject);
begin
    DBGridPO.StartLoadingStatus();
    DBGridPO.FinishLoadingStatus();
    QPo.Close;
    Mempo.Close;
    Qdetailpo.Close;
    if QPo.Active=False then Qpo.Active:=True;
    if Mempo.Active=False then Mempo.Active:=True;
    if Qdetailpo.Active=False then Qdetailpo.Active:=True;
    if QRptPO.Active=False then QRptPO.Active:=True;
    if Qrptdetailpo2.Active=False then Qrptdetailpo2.Active:=True;
end;

procedure TFPO.ActUpdateExecute(Sender: TObject);
begin
    with FNew_PO do
    begin
      Show;
      StatusTr:=1;
      Caption:='Update Purchase Order';
      BSimpan.Visible:=false;
      BEdit.Visible:=true;
     // cb_gudang.Enabled:=False;
    Self.Clear;
    with Mempo do
    begin
      FNew_PO.EdNopo.Text:=Mempo.FieldByName('nopo').AsString;
      FNew_PO.EdNm_supp.Text:=Mempo.FieldByName('nm_supplier').AsString;
      FNew_PO.EdKd_supp.Text:=Mempo.FieldByName('kd_supplier').AsString;
      FNew_PO.EdStatus.Text:=Mempo.FieldByName('jenispo').AsString;
      FNew_PO.EdNo.Text:=Mempo.FieldByName('no_urut').AsString;
      FNew_PO.DtPO.Text:=Mempo.FieldByName('tgl_po').AsString;
      FNew_PO.Edno_kontrak.Text:=Mempo.FieldByName('no_kontrak').AsString;
      FNew_PO.EdPPh23.Text:=Mempo.FieldByName('pph23').AsString;
      FNew_PO.EdPPn.Text:=Mempo.FieldByName('ppn').AsString;
      FNew_PO.EdCurr.Text:=Mempo.FieldByName('valas').AsString;
      FNew_PO.Ednilai_curr.Text:=Mempo.FieldByName('nilai_valas').AsString;
      FNew_PO.EdKet.Text:=Mempo.FieldByName('keterangan').AsString;
      FNew_PO.Edjenispo.Text:=Mempo.FieldByName('jenis').AsString;
      FNew_PO.EdJenisAngkut.Text:=Mempo.FieldByName('jenisangkutan').AsString;
     // FNew_PO.EdDivisi.Text:=Mempo.FieldByName('nm_divisi').AsString;
      FNew_PO.Edjatuh_tempo.Text:=Mempo.FieldByName('jatuh_tempo').AsString;
      status:=Mempo.FieldByName('status').AsString;
      FNew_PO.cb_gudang.Text:=Mempo.FieldByName('gudang').AsString;
      FNew_PO.DtDelivery.Date:=Mempo['tgl_delivery'];
      FNew_PO.DtDelivery2.Date:=Mempo['tgl_delivery2'];
       end;
    Qdetailpo.First;
    while not Qdetailpo.eof do
    begin
    with Qdetailpo do
    begin
      FNew_PO.MemItempo.Insert;
      FNew_PO.MemItempo['kd_material_stok']:=Qdetailpo.FieldByName('kd_materialstok').AsString;
      FNew_PO.MemItempo['nm_material']:=Qdetailpo.FieldByName('nm_material').AsString;
      FNew_PO.MemItempo['qty']:=Qdetailpo.FieldByName('qty').AsString;
      FNew_PO.MemItempo['harga']:=Qdetailpo.FieldByName('harga').AsString;
      FNew_PO.MemItempo['satuan']:=Qdetailpo.FieldByName('satuan').AsString;
      FNew_PO.MemItempo['gudang']:=Qdetailpo.FieldByName('gudang').AsString;
      FNew_PO.MemItempo['totalbayar']:=Qdetailpo.FieldByName('totalbayar').AsString;
      FNew_PO.MemItempo['sisabayar']:=Qdetailpo.FieldByName('sisabayar').AsString;
      FNew_PO.MemItempo['sisaqty']:=Qdetailpo.FieldByName('sisaqty').AsString;
      FNew_PO.MemItempo['qtyterkirim']:=Qdetailpo.FieldByName('qtyterkirim').AsString;
      FNew_PO.MemItempo['subtotal']:=Qdetailpo.FieldByName('subtotal').AsString;
      FNew_PO.MemItempo['ppn']:=Qdetailpo.FieldByName('ppn').AsString;
      FNew_PO.MemItempo['ppn_rp']:=Qdetailpo.FieldByName('ppn_rp').AsString;
      FNew_PO.MemItempo['pph']:=Qdetailpo.FieldByName('pph').AsString;
      FNew_PO.MemItempo['pph_rp']:=Qdetailpo.FieldByName('pph_rp').AsString;
      FNew_PO.MemItempo['grandtotal']:=Qdetailpo.FieldByName('Grandtotal').AsString;
      FNew_PO.MemItempo.Post;
      Qdetailpo.Next;
    end;
    //FNew_PO.Edno_kontrakSelect(sender);
    end;
      if FNew_PO.EdStatus.Text='Kontrak Kerjasama' then
    begin
      FNew_PO.Edno_kontrak.ReadOnly:=false;
    end else
      FNew_PO.Edno_kontrak.ReadOnly:=True;
      FNew_PO.Totalpo;
    end;
    with FNew_PO do
    begin
    if Edno_kontrak.Text<>'0' then
    begin
    MemItempo.First;
    while not MemItempo.Eof do
    begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Select * from t_kontrak_kerjasama_det where no_kontrak='+QuotedStr(Edno_kontrak.Text)+''+
                ' and kd_material_stok='+QuotedStr(MemItempo['kd_material_stok']);
      Execute;
    end;
    MemItempo.Edit;
    MemItempo['qtykontrak']:=Dm.Qtemp['sisaqty'];
    MemItempo.Post;
    MemItempo.Next;
    end;
    end else
    MemItempo.First;
    while not MemItempo.Eof do
    begin
    MemItempo.Edit;
    MemItempo['qtykontrak']:=0;
    MemItempo.Post;
    MemItempo.Next;
    end;
    end;
    end;

    procedure TFPO.clear;
    begin
      with FNew_PO do
      begin
        EdNo.Text:='';
        EdKd_supp.Text:='';
        EdNm_supp.Text:='';
        EdStatus.Text:='';
        EdPPh23.Text:='10';
        EdPPn.Text:='10';
        EdKet.Text:='';
        EdCurr.Text:='';
        Edjenispo.Text:='';
        DtPO.Date:=Now;
        DtDelivery.Date:=Now;
        DtDelivery2.Date:=Now;
        MemItempo.EmptyTable;
        EdNopo.Text:='';
        nopo.Text:='';
        Edurut.Text:='';
      end;
end;

procedure TFPO.load;
begin
    FNew_PO.EdNm_supp.Clear;
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_supplier order by supplier_name Asc';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      // FNew_PO.EdNm_supp.Items.Add(Dm.Qtemp.FieldByName('nm_supplier').AsString);
       Dm.Qtemp.Next;
    end;
    FNew_PO.cb_gudang.Clear;
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='select * from t_wh order by wh_name Asc';
      ExecSQL;
    end;
    Dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
    FNew_PO.cb_gudang.Items.Add(Dm.Qtemp.FieldByName('wh_name').AsString);
    Dm.Qtemp.Next;
    end;
end;

procedure TFPO.ActBaruExecute(Sender: TObject);
begin
    with FNew_PO do
    begin
      Show;
      Self.Clear;
      BSimpan.visible:=true;
      BEdit.Visible:=false;
      Caption:='New Purchase Order';
      StatusTr:=0;

    end;
end;

end.
