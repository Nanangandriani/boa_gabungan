unit USPB;

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
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, DataDriverEh, MemTableEh, frxClass, frxDBSet, MemDS, DBAccess, Uni,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, dxRibbon, dxBar, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  RzButton, Vcl.StdCtrls, Vcl.Mask, RzEdit, Vcl.ExtCtrls;

type
  TFSPB = class(TForm)
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
    DBGridSPB: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Qdetailpo: TUniQuery;
    QRptSpb: TUniQuery;
    DBSPBDet: TfrxDBDataset;
    DBSPB: TfrxDBDataset;
    Qdetailspb: TUniQuery;
    DSDetailspb: TDataSource;
    QSPB: TUniQuery;
    MemSPB: TMemTableEh;
    DsdSPB: TDataSetDriverEh;
    DsSPB: TDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBPrint: TdxBarLargeButton;
    BApprove: TdxBarButton;
    BReject: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    Rpt: TfrxReport;
    Panel1: TPanel;
    DtMulai: TRzDateTimeEdit;
    DtSelesai: TRzDateTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    procedure ActBaruExecute(Sender: TObject);
    procedure BApproveClick(Sender: TObject);
    procedure ActRoExecute(Sender: TObject);
    procedure ActDelExecute(Sender: TObject);
    procedure ActUpdateExecute(Sender: TObject);
    procedure DBGridSPBCellClick(Column: TColumnEh);
    procedure ActPrintExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BRejectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSPB: TFSPB;

implementation

{$R *.dfm}

uses Unew_spb, UDataModule, UMainMenu;

procedure TFSPB.ActBaruExecute(Sender: TObject);
begin
    with Fnew_spb do
    begin
      Show;
      Clear;
      //Autonumber;
      BEdit.Visible:=false;
      BSimpan.Visible:=true;
      Caption:='New Surat Perintah Bongkar';
      status:=0;
      DtSpbChange(sender);
    end;
end;

procedure TFSPB.ActDelExecute(Sender: TObject);
begin
    if messageDlg ('Anda Yakin Akan Menghapus Data '+DBGridSPB.Fields[0].AsString+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Delete From t_spb where spb_no='+QuotedStr(DBGridSPB.Fields[0].AsString);
        Execute;
      end;
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Delete From t_spb_det where spb_no='+QuotedStr(DBGridSPB.Fields[0].AsString);
        Execute;
      end;
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Hapus');
    end;
end;

procedure TFSPB.ActPrintExecute(Sender: TObject);
begin
    QRptSpb.Close;
    QRptSpb.Open;
    with QRptSpb do
    begin
      Filtered:=False;
      Filter:=' spb_no='+QuotedStr(DBGridSPB.Fields[0].AsString);
      FilterOptions:=[];
      Filtered:=True;
    end;
      QRptSpb.Open;
      //Rpt.LoadFromFile(ExtractFilePath(Application.ExeName)+'Report\Rpt_SPB.Fr3');
      //SetMemo(Rpt,'MPt',' Kepada Yth. Sdr.   '+QRptSpb['to_at']);
      //SetMemo(Rpt,'MPt2','         '+SBU);
      Rpt.ShowReport();
end;

procedure SetMemo(aReport: TfrxReport; aMemoName: string; aText: string);
var
  memo: TfrxMemoView;
begin
  memo := aReport.FindObject(aMemoName) as TfrxMemoView;
  if memo <> nil then
    memo.Text := aText;
end;

procedure TFSPB.ActRoExecute(Sender: TObject);
begin
   DBGridSPB.StartLoadingStatus();
   DBGridSPB.FinishLoadingStatus();
   QSPB.Close;
   MemSPB.close;
   Qdetailspb.Close;
   if kdsbu='' then
   begin
     with QSPB do
     begin
       close;
       sql.Clear;
       sql.Text:=' Select (case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=1 '+
                 ' THEN ''APPROVE'' else ''REJECT''END) AS status_app,A.*, B.supplier_name from '+
                 ' t_spb a inner join t_supplier b on A.supplier_code=b.supplier_code '+
                 ' where spb_date>='+quotedstr(FormatDateTime('yyyy-mm-dd',DtMulai.Date))+' and spb_date<='+quotedstr(FormatDateTime('yyyy-mm-dd',DtSelesai.Date))+''+
                 ' order by spb_no desc';
       ExecSQL;
     end;
   end
   else
   if kdsbu<>'' then
   begin
     with QSPB do
     begin
       close;
       sql.Clear;
       sql.Text:=' Select (case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=1 '+
                 ' THEN ''APPROVE'' else ''REJECT''END) AS status_app,A.*, B.supplier_name from '+
                 ' t_spb a inner join t_supplier b on A.supplier_code=b.supplier_code '+
                 ' where (sbu_code='+QuotedStr(loksbu)+' or sbu_code=''MLB'' or sbu_code='''') '+
                 ' and (spb_date>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtMulai.Date))+' and spb_date<='+QuotedStr(FormatDateTime('yyyy-mm-dd',DtSelesai.Date))+')'+
                 ' order by spb_no desc';
       ExecSQL;
     end;
   end;
   if QSPB.Active=False then QSPB.Active:=True;
   if MemSPB.Active=False then MemSPB.Active:=True;
   if Qdetailspb.Active=False then Qdetailspb.Active:=True;
end;

procedure TFSPB.ActUpdateExecute(Sender: TObject);
begin
    Fnew_spb.Memdetail.EmptyTable;
    With Fnew_spb do
    begin
      Clear;
      Show;
      Caption:='Update Surat Perintah Bongkar';
      BSimpan.Visible:=False;
      BEdit.Visible:=True;
      status:=1;
      with MemSPB do
      begin
        EdnoPo.Text:=MemSPB.FieldByName('po_no').AsString;
        EdnoSpb.Text:=MemSPB.FieldByName('spb_no').AsString;
        EdnoKend.Text:=MemSPB.FieldByName('vehicle_no').AsString;
        Eddriver.Text:=MemSPB.FieldByName('driver').AsString;
        Edkd_supp.Text:=MemSPB.FieldByName('supplier_code').AsString;
        Ednm_supp.Text:=MemSPB.FieldByName('supplier_name').AsString;
        DtSpb.Text:=MemSPB.FieldByName('spb_date').AsString;
        dttgl_kembali.Date:=MemSPB.FieldByName('return_date').AsDateTime;
        dtJam_Serah.Text:=MemSPB.FieldByName('handover_time').AsString;
        dtjam_kembali.Text:=MemSPB.FieldByName('return_time').AsString;
        Edket.Text:=MemSPB.FieldByName('remark').AsString;
        Edkd_sbu.text:=MemSPB.FieldByName('sbu_code').AsString;
        no_urut:=MemSPB.FieldByName('order_no').value;
        kategori_tr:=MemSPB.FieldByName('trans_category').value;
        EdKepada.Text:=MemSPB.FieldByName('to_at').AsString;
        CbCategori.Text:=MemSPB.FieldByName('trans_category').AsString;
      end;
      Qdetailspb.First;
      while not Qdetailspb.Eof do
      begin
        Memdetail.Insert;
        Memdetail['nopo']:=Qdetailspb['po_no'];
        Memdetail['kd_material']:=Qdetailspb['item_stock_code'];
        Memdetail['nm_material']:=Qdetailspb['item_name'];
        Memdetail['qty']:=Qdetailspb['qty'];
        Memdetail['satuan']:=Qdetailspb['unit'];
        Memdetail['gudang']:=Qdetailspb['wh_name'];
        Memdetail['wh_code']:=Qdetailspb['wh_code'];
        Memdetail.Post;
        Qdetailspb.Next;
      end;
    end;
end;

procedure TFSPB.BApproveClick(Sender: TObject);
begin
    if messageDlg ('Yakin Approve No.'+DBGridSPB.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      with dm.Qtemp do
      begin
        Close;
        sql.Clear;
        sql.Text:='Update t_spb set "approval_status"=''1'', spb_date=now(), approval='+QuotedStr(Nm)+' where spb_no='+QuotedStr(DBGridSPB.Fields[0].AsString);
        Execute;
      end;
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Approve');
    end;
end;

procedure TFSPB.BRejectClick(Sender: TObject);
begin
   if messageDlg ('Yakin Reject No.'+DBGridSPB.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
   begin
       with dm.Qtemp do
       begin
        Close;
        sql.Clear;
        sql.Text:='Update t_spb set "approval_status"=''2'', spb_date=now(), approval='+QuotedStr(Nm)+' where spb_no='+QuotedStr(DBGridSPB.Fields[0].AsString);
        Execute;
       end;
      ActROExecute(sender);
      ShowMessage('Data Berhasil di Reject');
   end;
end;

procedure TFSPB.DBGridSPBCellClick(Column: TColumnEh);
begin
    if DBGridSPB.Fields[7].AsString='APPROVE' then
    begin
      dxBPrint.Enabled:=true;
    end else
      dxBPrint.Enabled:=false;
    if DBGridSPB.Fields[7].AsString='APPROVE' then
    BEGIN
      BApprove.Enabled:=False;
      BReject.Enabled:=False;
    END;
    if DBGridSPB.Fields[7].AsString='REJECT' then
    BEGIN
      BApprove.Enabled:=False;
      BReject.Enabled:=False;
    END;
    if DBGridSPB.Fields[7].AsString='PENGAJUAN' then
    BEGIN
      BApprove.Enabled:=True;
      BReject.Enabled:=True;
    end;
end;

procedure TFSPB.FormShow(Sender: TObject);
begin
  ActRoExecute(sender);
end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFSPB);

end.
