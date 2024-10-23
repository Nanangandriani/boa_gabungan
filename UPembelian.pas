unit UPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, cxClasses, dxRibbon, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, dxBar, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, MemDS,
  DBAccess, Uni, frxClass, frxDBSet;

type
  TFPembelian = class(TForm)
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
    DBGridTerima1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    RptLPB: TfrxReport;
    DbLPB: TfrxDBDataset;
    QReportLPB: TUniQuery;
    DsTerimaDet: TDataSource;
    QTerimaDet: TUniQuery;
    DataSetDriverEh1: TDataSetDriverEh;
    Dsterima_material: TDataSource;
    Memterima_material: TMemTableEh;
    Qterima_material: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPembelian: TFPembelian;

implementation

{$R *.dfm}

uses UNew_Pembelian, UMy_Function, UMainMenu;

procedure TFPembelian.ActBaruExecute(Sender: TObject);
begin
    with FNew_Pembelian do
    begin
      Clear;
      Show;
      load_currency;
      BSimpan.Visible:=true;
      BEdit.Visible:=false;
      Caption:='New Faktur Pembelian';
    end;
end;

procedure TFPembelian.ActRoExecute(Sender: TObject);
begin
    DBGridTerima1.StartLoadingStatus();
    DBGridTerima1.FinishLoadingStatus();
    Qterima_material.Close;
    Memterima_material.Active:=false;
    QTerimaDet.Active:=False;
    if loksbu='' then
    begin
    with Qterima_material do
    begin
      close;
      sql.Clear;
      sql.Text:=' Select (case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=1 THEN ''APPROVE'' else ''REJECT'' '+
                ' END) AS status_app,a.*,b.supplier_name,c.account_name,d.account_name as nm_perk ,to_char(trans_date,''dd'') tgl '+
                ' ,to_char(trans_date,''mm'') bln,e.ref_name from purchase.t_purchase_invoice a Left join t_supplier b on a.supplier_code=b.supplier_code '+
                ' left join t_ak_account c on a.account_code=c.code '+
                ' left join t_ak_account d on a.account_um_code=d.code '+
                ' left join purchase.t_ref_item_receive e on a.ref_code=e.ref_code order by a.id desc';
      ExecSQL;
    end;
    end else
    if loksbu<>'' then
    begin
    with Qterima_material do
    begin
      close;
      sql.Clear;
      sql.Text:=' Select (case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=1 THEN ''APPROVE'' else ''REJECT'' '+
                ' END) AS status_app,a.*, b.supplier_name, c.account_name,d.account_name as nm_perk,to_char(trans_date,''dd'') tgl '+
                ' ,to_char(trans_date,''mm'') bln,e.ref_name from purchase.t_purchase_invoice a Left join t_supplier b on a.supplier_code=b.supplier_code '+
                ' left join t_ak_account c on a.account_code=c.code '+
                ' left join t_ak_account d on a.account_um_code=d.code '+
                ' left join purchase.t_ref_item_receive e on a.ref_code=e.ref_code'+
                ' where a.sbu_code='+QuotedStr(kdsbu)+''+
                ' order by a.ref_no Desc ';
      ExecSQL;
    end;
    end;
    Qterima_material.Open;
    if Memterima_material.Active=false then Memterima_material.Active:=True;
    if QTerimaDet.Active=False then QTerimaDet.Active:=True;
end;

procedure TFPembelian.ActUpdateExecute(Sender: TObject);
begin
    with FNew_Pembelian do
    begin
      Clear;
      Show;
      Load;
      Caption:='Update Faktur Pembelian';
      BSimpan.Visible:=False;
      BEdit.Visible:=True;
      BEdit.Caption:='Simpan';
      MemterimaDet.EmptyTable;
      EdNoSPB.ReadOnly:=false;
      status:=1;
    end;
    with Memterima_material do
    begin
      with FNew_Pembelian do
      begin
        Edkd_sumber.Text:=Memterima_material.FieldByName('ref_code').AsString;
        Cb_Sumber.Text:=Memterima_material.FieldByName('ref_name').AsString;
        EdPIB.Text:=Memterima_material.FieldByName('pib_no').AsString;
        EdNoSPB.Text:=Memterima_material.FieldByName('spb_no').AsString;
        //EdNo.Text:=Memterima_material.FieldByName('receive_no').AsString;
        EdNo.Text:=Memterima_material.FieldByName('trans_no').AsString;
        EdKet.Text:=Memterima_material.FieldByName('remark').AsString;
        //Dtterima.Text:=Memterima_material.FieldByName('receive_date').AsString;
        Dtfaktur.Text:=Memterima_material.FieldByName('trans_date').AsString;
        EdSJ.Text:=Memterima_material.FieldByName('sj_no').AsString;
        Edno_Faktur.Text:=Memterima_material.FieldByName('faktur_no').AsString;
        DtFaktur.Text:=Memterima_material.FieldByName('faktur_date').AsString;
        DtFaktur2.text:=Memterima_material.FieldByName('faktur2_date').AsString;
        EdNm_supp.Text:=Memterima_material.FieldByName('supplier_name').AsString;
        Edkd_supp.Text:=Memterima_material.FieldByName('supplier_code').AsString;
        Edjatuhtempo.Text:=Memterima_material.FieldByName('due_date').AsString;
        Cb_Sumber.Text:='';
        Cb_Ref.Text:=Memterima_material.FieldByName('ref_no').AsString;
        Edkd_akun.Text:=Memterima_material.FieldByName('account_code').AsString;
        EdNm_akun.Text:=Memterima_material.FieldByName('account_name').AsString;
        Edjenis.Text:=Memterima_material.FieldByName('purchase_type').AsString;
        Edjenispo.Text:=Memterima_material.FieldByName('po_type').AsString;
        EdValas.Text:=Memterima_material.FieldByName('valas').AsString;
        Ednilai_valas.Text:=Memterima_material.FieldByName('valas_value').AsString;
        if Memterima_material['sj_status']=0 then
           Cksj.Checked:=False
        else Cksj.Checked:=True;
        if Memterima_material['fk_status']=0 then
           CkFk.Checked:=False
        else CkFk.Checked:=True;
        if Memterima_material['invoice_status']=0 then
           CkInv.Checked:=False
        else CkInv.Checked:=True;

        status_pos:=Memterima_material['status'];
        EdSisaHutang.Value:=Memterima_material.FieldByName('debt_remaining').AsFloat;
        EdNilai_um.Value:=Memterima_material.FieldByName('um_value').AsFloat;
        Edkd_akunum.Text:=Memterima_material.FieldByName('account_um_code').AsString;
        EdNm_akunum.Text:=Memterima_material.FieldByName('account_name').AsString;
        Edsbu.Text:=Memterima_material.FieldByName('sbu_code').AsString;
        if DBGridTerima1.Fields[2].value='PENGAJUAN' then
           GBDok.Enabled:=False
        else
           GBDok.Enabled:=True;
        Edum.Value:=Memterima_material.FieldByName('um_value').AsFloat;
      end;
    end;
    QTerimaDet.First;
    while not QTerimaDet.Eof do
    begin
      with QTerimaDet do
      begin
        with FNew_Pembelian do
        begin
          MemterimaDet.insert;
          MemterimaDet['nopo']:=QTerimaDet.FieldByName('po_no').AsString;
          MemterimaDet['kd_material']:=QTerimaDet.FieldByName('item_stock_code').AsString;
          MemterimaDet['nm_material']:=QTerimaDet.FieldByName('item_name').AsString;
          MemterimaDet['kd_stok']:=QTerimaDet.FieldByName('stock_code').AsString;
          MemterimaDet['qty']:=QTerimaDet.FieldByName('qty').AsString;
          MemterimaDet['satuan']:=QTerimaDet.FieldByName('unit').AsString;
          MemterimaDet['gudang']:=QTerimaDet.FieldByName('wh_name').AsString;
          MemterimaDet['tahun']:=QTerimaDet.FieldByName('trans_year').AsString;
          MemterimaDet['qtypo']:=QTerimaDet.FieldByName('qty_po').AsString;
          MemterimaDet['satuanpo']:=QTerimaDet.FieldByName('unit_po').AsString;
          MemterimaDet['qtyselisih']:=QTerimaDet.FieldByName('qty_difference').AsString;
          MemterimaDet['Harga']:=QTerimaDet.FieldByName('price').AsString;
          MemterimaDet['subtotal']:=QTerimaDet.FieldByName('subtotal').AsString;
          MemterimaDet['subtotalrp']:=QTerimaDet.FieldByName('subtotalrp').AsString;
          MemterimaDet['ppn']:=QTerimaDet.FieldByName('ppn').AsString;
          MemterimaDet['ppn_rp']:=QTerimaDet.FieldByName('ppn_rp').AsString;
          MemterimaDet['pph']:=QTerimaDet.FieldByName('pph').AsString;
          MemterimaDet['pph_rp']:=QTerimaDet.FieldByName('pph_rp').AsString;
          MemterimaDet['grandtotal']:=QTerimaDet.FieldByName('grandtotal').AsString;
          MemterimaDet['kd_akun']:=QTerimaDet.FieldByName('account_code').AsString;
          MemterimaDet['ppn_rp_pembulatan']:=QTerimaDet.FieldByName('ppn_pembulatan').AsString;
          MemterimaDet['kd_akunpph']:=QTerimaDet.FieldByName('account_pph_code').AsString;
          MemterimaDet['kd_akunbea']:=QTerimaDet.FieldByName('duty_account_code').AsString;
          MemterimaDet['bea_masuk']:=QTerimaDet.FieldByName('import_duty').AsString;
          MemterimaDet['nourut']:=QTerimaDet.FieldByName('order_no').AsString;
          MemterimaDet['pemb_dpp']:=QTerimaDet.FieldByName('pemb_dpp').AsString;
          MemterimaDet['ref_no']:=QTerimaDet.FieldByName('ref_no').AsString;
          MemterimaDet.Post;
          QTerimaDet.Next;
        end;
      end;
    end;
    //FNew_Pembelian.EdNilai_ValasChange(sender);

end;

procedure TFPembelian.FormShow(Sender: TObject);
begin
  //DBGridterima1.IndicatorOptions:=[gioShowRowIndicatorEh,gioshowRecNoEh];
end;

function IntToRoman(Value : Longint):String;  // fungsi
 const
    arabics: Array[1..12] of integer=(1,2,3,4,5,6,7,8,9,10,11,12);
    Romans: Array [1..12] Of string=('I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');
 Var  i :integer;
begin
    For i := 12 downto 1 do
    while (Value >= Arabics[i]) do
    begin
      Value := Value - Arabics[i];
      Result:= Result + Romans[i];
    end;
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFPembelian);

end.
