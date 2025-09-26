unit UListPengajuanApprovePenjualan;

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
  GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, Winapi.WebView2, Winapi.ActiveX,
  Vcl.OleCtrls, SHDocVw, Vcl.Edge, Vcl.ExtCtrls, RzTabs, MemTableDataEh,
  MemTableEh, DataDriverEh;

type
  TFListPengajuanApprovePenjualan = class(TForm)
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
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
    dxBarLargeRefresh: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    DsAppKlasifikasi: TDataSource;
    PageControl1: TRzPageControl;
    TabForm: TRzTabSheet;
    PanelParent: TPanel;
    EdgeBrowser1: TEdgeBrowser;
    WebBrowser1: TWebBrowser;
    DBGridList: TDBGridEh;
    TabSheet1: TRzTabSheet;
    dxBarLargeApprove: TdxBarLargeButton;
    dxBarLargeReject: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    DBGridEh1: TDBGridEh;
    dsAppKlasifikasiDet: TDataSource;
    QAppKlasifikasiDet: TUniQuery;
    MemAppKlasifikasi: TMemTableEh;
    QAppKlasifikasiDetid_detail: TGuidField;
    QAppKlasifikasiDetid_master: TStringField;
    QAppKlasifikasiDetcode_item: TStringField;
    QAppKlasifikasiDetname_item: TStringField;
    QAppKlasifikasiDetcode_unit: TStringField;
    QAppKlasifikasiDetunit_price: TFloatField;
    QAppKlasifikasiDetlimit1: TFloatField;
    QAppKlasifikasiDetlimit2: TFloatField;
    QAppKlasifikasiDetdisc: TFloatField;
    QAppKlasifikasiDetdisc1: TFloatField;
    QAppKlasifikasiDetdisc2: TFloatField;
    QAppKlasifikasiDetdisc3: TFloatField;
    QAppKlasifikasiDetdisc4: TFloatField;
    QAppKlasifikasiDetstat_approve: TIntegerField;
    MemAppKlasifikasiid_master: TStringField;
    MemAppKlasifikasiname_type_customer: TStringField;
    MemAppKlasifikasiname_item_category: TStringField;
    MemAppKlasifikasiname_type_count: TStringField;
    MemAppKlasifikasiname_customer_selling_type: TStringField;
    MemAppKlasifikasiname_sell_type: TStringField;
    MemAppKlasifikasiname_payment: TStringField;
    MemAppKlasifikasiname_grouping: TStringField;
    MemAppKlasifikasiname_tax: TStringField;
    MemAppKlasifikasiname_disc: TStringField;
    MemAppKlasifikasiname_promo: TStringField;
    QAppKlasifikasi: TUniQuery;
    dsAppKlasifikasii: TDataSource;
    QAppKlasifikasicode_type_customer: TStringField;
    QAppKlasifikasiname_type_customer: TStringField;
    QAppKlasifikasicode_item_category: TStringField;
    QAppKlasifikasiname_item_category: TStringField;
    QAppKlasifikasicode_type_count: TStringField;
    QAppKlasifikasiname_type_count: TStringField;
    QAppKlasifikasicode_customer_selling_type: TStringField;
    QAppKlasifikasiname_customer_selling_type: TStringField;
    QAppKlasifikasicode_sell_type: TStringField;
    QAppKlasifikasiname_sell_type: TStringField;
    QAppKlasifikasistatus_payment: TIntegerField;
    QAppKlasifikasiname_payment: TMemoField;
    QAppKlasifikasistatus_grouping: TIntegerField;
    QAppKlasifikasiname_grouping: TMemoField;
    QAppKlasifikasistatus_tax: TIntegerField;
    QAppKlasifikasiname_tax: TMemoField;
    QAppKlasifikasistatus_disc: TIntegerField;
    QAppKlasifikasiname_disc: TMemoField;
    QAppKlasifikasistatus_promo: TIntegerField;
    QAppKlasifikasiname_promo: TMemoField;
    QAppKlasifikasiid_master_klas: TMemoField;
    QAppKlasifikasipilih: TBooleanField;
    DBGridOrder: TDBGridEh;
    DBGridEh2: TDBGridEh;
    QSalesOrder: TUniQuery;
    DsSalesOrder: TDataSource;
    DsSalesOrderDetail: TDataSource;
    QSalesOrderDetail: TUniQuery;
    QSalesOrderid: TGuidField;
    QSalesOrdercreated_at: TDateTimeField;
    QSalesOrdercreated_by: TMemoField;
    QSalesOrderupdated_at: TDateTimeField;
    QSalesOrderupdated_by: TMemoField;
    QSalesOrderdeleted_at: TDateTimeField;
    QSalesOrderdeleted_by: TMemoField;
    QSalesOrdernotrans: TMemoField;
    QSalesOrderorder_date: TDateField;
    QSalesOrdersent_date: TDateField;
    QSalesOrdercode_cust: TMemoField;
    QSalesOrdername_cust: TMemoField;
    QSalesOrdercode_sales: TMemoField;
    QSalesOrdername_sales: TMemoField;
    QSalesOrderpayment_term: TSmallintField;
    QSalesOrdercode_source: TMemoField;
    QSalesOrdername_source: TMemoField;
    QSalesOrderorder_no: TIntegerField;
    QSalesOrderadditional_code: TMemoField;
    QSalesOrdertrans_day: TMemoField;
    QSalesOrdertrans_month: TMemoField;
    QSalesOrdertrans_year: TMemoField;
    QSalesOrderno_reference: TMemoField;
    QSalesOrderstatus: TSmallintField;
    QSalesOrdernote: TMemoField;
    QSalesOrderstatus_approval_at: TDateTimeField;
    QSalesOrderstatus_approval_by: TMemoField;
    QSalesOrderno_invoice: TMemoField;
    QSalesOrdernote_pengajuan: TMemoField;
    QSalesOrderpilih: TBooleanField;
    procedure ActROExecute(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure ActRejectExecute(Sender: TObject);
    procedure QAppKlasifikasiname_paymentGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QAppKlasifikasiname_groupingGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QAppKlasifikasiname_taxGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QAppKlasifikasiname_discGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QAppKlasifikasiname_promoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QAppKlasifikasiname_sell_typeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QAppKlasifikasiname_customer_selling_typeGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QAppKlasifikasiname_type_countGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshKlasifikasi;
    procedure ApproveKlasifikasi;
    procedure ApproveSalesOrder;
    procedure RejectSalesOrder;
    procedure RejectKlasifikasi;
  end;

var
  FListPengajuanApprovePenjualan: TFListPengajuanApprovePenjualan;
  ActiveIndex: Integer;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin;
procedure TFListPengajuanApprovePenjualan.ApproveKlasifikasi;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_sales_classification" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_approval=1 '+
              ' Where status_approval=0 and '+
              ' id='+QuotedStr(QAppKlasifikasiid_master_klas.Value)+'');
      ExecSQL;
    end;
    Dm.Koneksi.Commit;
    Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFListPengajuanApprovePenjualan.ApproveSalesOrder;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_sales_order" SET '+
              ' status_approval_at=NOW(),'+
              ' status_approval_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status=1 '+
              ' Where notrans='+QuotedStr(QSalesOrdernotrans.Value)+'');
      ExecSQL;
    end;
    Dm.Koneksi.Commit;
    Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFListPengajuanApprovePenjualan.RejectSalesOrder;
var notrans: String;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    notrans:=QSalesOrdernotrans.Value+'-REV';
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_sales_order" SET '+
              ' notrans='+QuotedStr(notrans)+','+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status=99,deleted_at=NOW(),deleted_by='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
              ' Where id='+QuotedStr(QSalesOrderid.Value)+'');
      ExecSQL;
    end;
    Dm.Koneksi.Commit;
    Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFListPengajuanApprovePenjualan.FormShow(Sender: TObject);
begin
  ActROExecute(sender);
end;

procedure TFListPengajuanApprovePenjualan.RejectKlasifikasi;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_sales_classification" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' status_approval=99 '+
              ' Where status_approval=0 and '+
              ' id='+QuotedStr(QAppKlasifikasiid_master_klas.Value)+'');
      ExecSQL;
    end;
    Dm.Koneksi.Commit;
    Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFListPengajuanApprovePenjualan.RefreshKlasifikasi;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * FROM (SELECT a."id" AS id_master, "code_type_customer", '+
            ' b.NAME AS "name_type_customer",  "code_item_category", c.group_name as '+
            ' "name_item_category",  "code_type_count",	d.name as "name_type_count", '+
            ' "code_customer_selling_type",  e.name as "name_customer_selling_type", '+
            ' "code_sell_type", f.name as "name_sell_type",  "status_payment", '+
            ' case when "status_payment"=0 then ''Cash'' else ''Kredit'' end "name_payment", '+
            ' "status_grouping",	case when "status_grouping"=0 then ''Non Grouping'' else ''Grouping'' '+
            ' end "name_grouping",  "status_tax", case when "status_tax"=0 then '+
            ' ''Tidak'' else ''Iya'' end "name_tax",  "status_disc",	case when "status_disc"=0 '+
            ' then ''Disc'' else ''Value (Rp)'' end "name_disc",  "status_promo", case when '+
            '"status_promo"=0 then ''Tidak'' else ''Iya'' end "name_promo"  FROM	'+
            ' "t_sales_classification" a  '+
            ' LEFT JOIN t_customer_type b ON a.code_type_customer = b.code  '+
            //' LEFT JOIN t_item_category c ON a.code_item_category = c.code  '+
            ' LEFT JOIN t_item_group c ON a.code_item_category = c.group_id ::VARCHAR   '+
            ' LEFT JOIN t_sell_type_count d ON a.code_type_count = d.code  '+
            ' LEFT JOIN t_customer_selling_type e ON a.code_customer_selling_type = e.code  '+
            ' LEFT JOIN t_sell_type f ON a.code_sell_type = f.code '+
            ' LEFT JOIN t_sales_classification_det g ON a."id"=g."id_master" :: UUID '+
            ' WHERE stat_approve=0 )xx '+
            ' GROUP BY "id_master", "code_type_customer", "name_type_customer", '+
            ' "code_item_category", "name_item_category", "code_type_count", '+
            ' "name_type_count", "code_customer_selling_type", "name_customer_selling_type", '+
            ' "code_sell_type", "name_sell_type", "status_payment", "name_payment", '+
            ' "status_grouping", "name_grouping", "status_tax", "name_tax", "status_disc", '+
            ' "name_disc", "status_promo", "name_promo" '+
            ' Order By name_type_customer asc');
    open;
  end;

  FListPengajuanApprovePenjualan.MemAppKlasifikasi.active:=false;
  FListPengajuanApprovePenjualan.MemAppKlasifikasi.active:=true;
  FListPengajuanApprovePenjualan.MemAppKlasifikasi.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
    FListPengajuanApprovePenjualan.MemAppKlasifikasi.active:=false;
    FListPengajuanApprovePenjualan.MemAppKlasifikasi.active:=true;
    FListPengajuanApprovePenjualan.MemAppKlasifikasi.EmptyTable;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      FListPengajuanApprovePenjualan.MemAppKlasifikasi.insert;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['id_master']:=Dm.Qtemp.fieldbyname('id_master').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_type_customer']:=Dm.Qtemp.fieldbyname('code_type_customer').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_item_category']:=Dm.Qtemp.fieldbyname('name_type_customer').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_type_count']:=Dm.Qtemp.fieldbyname('name_type_count').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_customer_selling_type']:=Dm.Qtemp.fieldbyname('name_customer_selling_type').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_sell_type']:=Dm.Qtemp.fieldbyname('name_sell_type').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_payment']:=Dm.Qtemp.fieldbyname('name_payment').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_grouping']:=Dm.Qtemp.fieldbyname('name_grouping').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_tax']:=Dm.Qtemp.fieldbyname('name_tax').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_disc']:=Dm.Qtemp.fieldbyname('name_disc').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi['name_promo']:=Dm.Qtemp.fieldbyname('name_promo').value;
      FListPengajuanApprovePenjualan.MemAppKlasifikasi.post;
      ShowMessage('A');
      Dm.Qtemp.next;
    end;
  end;
end;

procedure TFListPengajuanApprovePenjualan.ActAppExecute(Sender: TObject);
var
  rec: real;
begin
  //Baca Status Tab Yang Aktif
  ActiveIndex := PageControl1.ActivePageIndex;
  //ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));

  rec:=0;
  if ActiveIndex=0 then
  begin
    Qappklasifikasi.first;
    while not Qappklasifikasi.Eof do
    begin
      if QAppKlasifikasipilih.value=true then
      begin
        rec:=rec+1;
      end;
    Qappklasifikasi.next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end;
    if rec<>0 then
    begin
      Qappklasifikasi.first;
      while not Qappklasifikasi.Eof do
      begin
        if QAppKlasifikasipilih.value=true then
        begin
          ApproveKlasifikasi;
         end;
        Qappklasifikasi.next;
      end;
    end;
    QAppKlasifikasi.Close;
    QAppKlasifikasi.Open;
    QAppKlasifikasiDet.Close;
    QAppKlasifikasiDet.Open;
    MessageDlg('Approval Berhasil..!!',mtInformation,[MBOK],0);
  end;

  if ActiveIndex=1 then
  begin
    QSalesOrder.first;
    while not QSalesOrder.Eof do
    begin
      if QSalesOrderpilih.value=true then
      begin
        rec:=rec+1;
      end;
    QSalesOrder.next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end;
    if rec<>0 then
    begin
      QSalesOrder.first;
      while not QSalesOrder.Eof do
      begin
        if QSalesOrderpilih.value=true then
        begin
          ApproveSalesOrder;
         end;
        QSalesOrder.next;
      end;
    end;
    QSalesOrder.Close;
    QSalesOrder.Open;
    QSalesOrderDetail.Close;
    QSalesOrderDetail.Open;
    MessageDlg('Approval Berhasil..!!',mtInformation,[MBOK],0);
  end;

//  if ActiveIndex<>0 then
//  begin
//    ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));
//  end;
end;

procedure TFListPengajuanApprovePenjualan.ActRejectExecute(Sender: TObject);

var
  rec: real;
begin
  //Baca Status Tab Yang Aktif
  ActiveIndex := PageControl1.ActivePageIndex;
  //ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));

  rec:=0;
  if ActiveIndex=0 then
  begin
    Qappklasifikasi.first;
    while not Qappklasifikasi.Eof do
    begin
      if QAppKlasifikasipilih.value=true then
      begin
        rec:=rec+1;
      end;
    Qappklasifikasi.next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end;
    if rec<>0 then
    begin
      Qappklasifikasi.first;
      while not Qappklasifikasi.Eof do
      begin
        if QAppKlasifikasipilih.value=true then
        begin
          RejectKlasifikasi;
        end;
      Qappklasifikasi.next;
      end;
    end;
    QAppKlasifikasi.Close;
    QAppKlasifikasi.Open;
    QAppKlasifikasiDet.Close;
    QAppKlasifikasiDet.Open;
    MessageDlg('Reject Berhasil..!!',mtInformation,[MBOK],0);
  end;

  if ActiveIndex=1 then
  begin
    QSalesOrder.first;
    while not QSalesOrder.Eof do
    begin
      if QSalesOrderpilih.value=true then
      begin
        rec:=rec+1;
      end;
    QSalesOrder.next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end;
    if rec<>0 then
    begin
      QSalesOrder.first;
      while not QSalesOrder.Eof do
      begin
        if QSalesOrderpilih.value=true then
        begin
          RejectSalesOrder;
         end;
        QSalesOrder.next;
      end;
    end;
    QSalesOrder.Close;
    QSalesOrder.Open;
    QSalesOrderDetail.Close;
    QSalesOrderDetail.Open;
    MessageDlg('Reject Berhasil..!!',mtInformation,[MBOK],0);
  end;


//  if ActiveIndex<>0 then
//  begin
//    ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));
//  end;
end;

procedure TFListPengajuanApprovePenjualan.ActROExecute(Sender: TObject);
begin
  //Baca Status Tab Yang Aktif
  ActiveIndex := PageControl1.ActivePageIndex;
  //ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));

  if ActiveIndex=0 then
  begin
    //RefreshKlasifikasi;
    QAppKlasifikasi.Close;
    QAppKlasifikasi.Open;
    QAppKlasifikasiDet.Close;
    QAppKlasifikasiDet.Open;
  end else if ActiveIndex=1 then
  begin
    QSalesOrder.Close;
    QSalesOrder.Open;
    QSalesOrderDetail.Close;
    QSalesOrderDetail.Open;
  end;

//  if ActiveIndex<>0 then
//  begin
//    ShowMessage('Indeks tab aktif: ' + IntToStr(ActiveIndex));
//  end;
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_customer_selling_typeGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_customer_selling_type.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_discGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_disc.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_groupingGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_grouping.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_paymentGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_payment.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_promoGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_promo.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_sell_typeGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_sell_type.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_taxGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_tax.AsString, 1, 255);
end;

procedure TFListPengajuanApprovePenjualan.QAppKlasifikasiname_type_countGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
   Text := Copy(QAppKlasifikasiname_type_count.AsString, 1, 255);
end;

initialization
  RegisterClass(TFListPengajuanApprovePenjualan);
end.
