unit UListTargetPenjualan;

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
  dxRibbonCustomizationForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses, System.Actions,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, MemTableDataEh, Datasnap.Provider,
  MemTableEh, DataDriverEh, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, RzLabel,
  RzCmboBx, Vcl.Mask, RzEdit, RzSpnEdt, RzButton, cxSpinEdit, cxBarEditItem,
  cxLabel, cxDropDownEdit, dxBarExtItems;

type
  TFListTargetPenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    DBGrid: TDBGridEh;
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
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeNew: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    QTargetPenjualan: TUniQuery;
    DsTargetPenjualan: TDataSource;
    QtargetPenjualanDet: TUniQuery;
    MemTargetPenjualan: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DSTargetPenjualanDet: TDataSource;
    DBGridKelompok: TDBGridEh;
    RzLabel1: TRzLabel;
    RzPanel1: TRzPanel;
    cbBulan1: TRzComboBox;
    Label2: TLabel;
    Label1: TLabel;
    edTahun1: TRzSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    BCari: TRzBitBtn;
    DataSource1: TDataSource;
    DBGridItem: TDBGridEh;
    dxBarCombo1: TdxBarCombo;
    cxBarEditItem1: TcxBarEditItem;
    dxBarManager1Bar3: TdxBar;
    cxBarEditItem2: TcxBarEditItem;
    ActSearch: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    dxBarCombo2: TdxBarCombo;
    cbBulan: TdxBarCombo;
    edTahun: TdxBarSpinEdit;
    QTargetPenjualancustomer_code: TStringField;
    QTargetPenjualanmonth: TSmallintField;
    QTargetPenjualanyear: TSmallintField;
    QTargetPenjualancreated_at: TDateTimeField;
    QTargetPenjualancreated_by: TStringField;
    QTargetPenjualanupdated_at: TDateTimeField;
    QTargetPenjualanupdated_by: TStringField;
    QTargetPenjualanid_customer_sales_target: TLargeintField;
    QTargetPenjualanstatus: TBooleanField;
    QTargetPenjualandeleted_at: TDateTimeField;
    QTargetPenjualandeleted_by: TStringField;
    QTargetPenjualancustomer_name: TStringField;
    QtargetPenjualanDetitem_name: TStringField;
    QtargetPenjualanDetitem_code: TStringField;
    QtargetPenjualanDetqty: TFloatField;
    QtargetPenjualanDetvalue: TFloatField;
    QtargetPenjualanDetid_customer_sales_target: TLargeintField;
    QtargetPenjualanDetgroup_id: TIntegerField;
    UniQuery1: TUniQuery;
    procedure ActBaruExecute(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure ActSearchClick(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;

  end;

var
  FListTargetPenjualan: TFListTargetPenjualan;

implementation

{$R *.dfm}

uses UNew_DataTargetPenjualan, UDataModule;

procedure TFListTargetPenjualan.ActDelExecute(Sender: TObject);
var
  IntYear,IntMonth,IntGroupID : Integer;
  StrCustomerCode: String;
begin
  if DBGridKelompok.Fields[0].AsString='' then
  begin
    MessageDlg('Tidak ada kelompok barang yang dipilih..!!',mtInformation,[mbRetry],0);
  end else
  begin
    if MessageDlg('Apakah anda yakin ingin hapus kelompok barang '+DBGridKelompok.Fields[0].AsString+' ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
//        ShowMessage(UniQuery1.FieldByName('group_id').AsString);
      IntYear:=UniQuery1.FieldByName('year').AsInteger;
      IntMonth:=UniQuery1.FieldByName('month').AsInteger;
      IntGroupID:=UniQuery1.FieldByName('group_id').AsInteger;
      StrCustomerCode:=UniQuery1.FieldByName('customer_code').Asstring;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM get_sales_order_total_unit('+IntToStr(IntYear)+','+IntToStr(IntMonth)+','+QuotedStr(StrCustomerCode)+','+IntToStr(IntGroupID)+')';
        Open;
      end;
      if dm.Qtemp.RecordCount>0 then
      begin
         MessageDlg('Kelompok barang '+DBGridKelompok.Fields[0].AsString+' tidak dapat dihapus..!!',mtInformation,[mbRetry],0);
      end;
    end;
  end;

//  ShowMessage(UniQuery1.FieldByName('group_id').AsString);
//  if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
//  begin
//    with dm.Qtemp do
//    begin
//      close;
//      sql.Clear;
//      sql.Text:='UPDATE t_customer_sales_target_det SET status=false '+
//                'WHERE id_customer_sales_target='+UniQuery1.FieldByName('id_customer_sales_target').AsString+' AND '+
//                'item_code in ( '+
//                'SELECT a.item_code FROM t_customer_sales_target_det a '+
//                'LEFT JOIN t_item b on b.item_code=a.item_code '+
//                'WHERE a.id_customer_sales_target='+UniQuery1.FieldByName('id_customer_sales_target').AsString+' AND '+
//                'b.group_id='+UniQuery1.FieldByName('group_id').AsString+');';
//      Open;
//    end;
//    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
//  end;
end;

procedure TFListTargetPenjualan.ActROExecute(Sender: TObject);
var month,year:String;
begin
  year :=FormatDateTime('yyyy', NOW());
  month :=FormatDateTime('m', NOW());
  edTahun.Text:=(year);
  cbBulan.ItemIndex:=StrToInt(month)-1;
  Refresh;
end;

procedure TFListTargetPenjualan.ActUpdateExecute(Sender: TObject);
begin
//  with dm.Qtemp do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='SELECT b.item_name,a.item_code,a.qty,a.value,a.id_customer_sales_target,'+
//              'b.group_id FROM t_customer_sales_target_det a '+
//              'LEFT JOIN t_item b on b.item_code=a.item_code '+
//              'WHERE a.id_customer_sales_target='+UniQuery1.FieldByName('id_customer_sales_target').AsString+' and '+
//              'b.group_id='+UniQuery1.FieldByName('group_id').AsString+' and a.status=true '+
//              'ORDER BY b.item_name asc;';
//    Open;
//  end;
//  FNew_DataTargetPenjualan.MemDetail.active:=false;
//  FNew_DataTargetPenjualan.MemDetail.active:=true;
//  FNew_DataTargetPenjualan.MemDetail.EmptyTable;
//  dm.Qtemp.First;
//  while not dm.Qtemp.Eof do
//  begin
//    with FNew_DataTargetPenjualan do
//    begin
//      Memdetail.Insert;
//      Memdetail['item_code']:=dm.Qtemp.FieldByName('item_code').AsString;
//      Memdetail['item_name']:=dm.Qtemp.FieldByName('item_name').AsString;
//      Memdetail['qty']:=dm.Qtemp.FieldByName('qty').AsString;
//      Memdetail['value']:=dm.Qtemp.FieldByName('value').AsString;
//      Memdetail.Post;
//    end;
//    dm.Qtemp.Next;
//  end;
//  dm.Qtemp.Close;

  with dm.Qtemp2 do
  begin
    close;
    sql.Text:='SELECT a.*,b.customer_name FROM t_customer_sales_target a '+
              'LEFT JOIN t_customer b on b.customer_code=a.customer_code '+
              'WHERE a.id_customer_sales_target='+UniQuery1.FieldByName('id_customer_sales_target').AsString;
    open;
  end;

  with FNew_DataTargetPenjualan do
  begin
    IdCustomerSalesTarget:=dm.Qtemp2.FieldByName('id_customer_sales_target').AsInteger;
    edKodePelanggan.Text:=dm.Qtemp2.FieldByName('customer_code').AsString;
    edNamaPelanggan.Text:=dm.Qtemp2.FieldByName('customer_name').AsString;
    cbKategori.Text:=UniQuery1.FieldByName('category').AsString;
    cbKelompokBarang.Text:=UniQuery1.FieldByName('group_name').AsString;
    edTahun.Value:= dm.Qtemp2.FieldByName('year').AsInteger;
    cbBulan.ItemIndex:= dm.Qtemp2.FieldByName('month').AsInteger-1;
  end;
  dm.Qtemp2.Close;
  FNew_DataTargetPenjualan.GetDetail;
  Status:=1;
  FNew_DataTargetPenjualan.ShowModal;
end;

procedure TFListTargetPenjualan.BCariClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFListTargetPenjualan.ActSearchClick(Sender: TObject);
begin
  Refresh;
end;

procedure TFListTargetPenjualan.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

procedure TFListTargetPenjualan.Refresh;
var mm: Integer;
begin
  mm:=cbBulan.ItemIndex+1;
  DBGrid.StartLoadingStatus();
  try
    with QTargetPenjualan do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='SELECT a.*,b.customer_name FROM t_customer_sales_target a '+
                'LEFT JOIN t_customer b on b.customer_code=a.customer_code '+
                'WHERE a.year='+edTahun.Text+' AND a.month='+(IntToStr(mm))+' and a.status=true;';
      Open;
    end;
    MemTargetPenjualan.Close;
    MemTargetPenjualan.Open;
    UniQuery1.Close;
    UniQuery1.Open;
    QTargetPenjualanDet.Close;
    QTargetPenjualanDet.Open;
  finally
  DBGrid.FinishLoadingStatus();
  end;
end;

procedure TFListTargetPenjualan.ActBaruExecute(Sender: TObject);
begin
  FNew_DataTargetPenjualan.Clear;
  Status:=0;
  FNew_DataTargetPenjualan.ShowModal;
end;

initialization
  RegisterClass(TFListTargetPenjualan);

end.
