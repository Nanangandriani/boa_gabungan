unit UListApproveDaftarPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  Data.DB, dxRibbon, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxBar, cxClasses, MemDS,
  DBAccess, Uni, RzButton, RzRadChk, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.OleCtrls, SHDocVw, Vcl.Edge, Vcl.ExtCtrls, RzTabs, RzPanel,
  System.ImageList, Vcl.ImgList, cxCalendar, cxBarEditItem, Vcl.StdCtrls,
  RzLstBox, RzLabel;

type
  TFListApproveDaftarPenagihanPiutang = class(TForm)
    DsDPP: TDataSource;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarUpdate: TdxBarButton;
    dxBarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRO: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    QDPP: TUniQuery;
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    cbApproveAll: TRzCheckBox;
    QDPPpilih: TBooleanField;
    QDPPdate_dpp: TDateField;
    QDPPnik_collector: TMemoField;
    QDPPcode_collector: TMemoField;
    QDPPname_collector: TMemoField;
    QDPPphone_number_collector: TMemoField;
    QDPPaddress_collector: TMemoField;
    QDPPcode_karesidenan: TMemoField;
    QDPPkaresidenan: TMemoField;
    QDPPcode_kabupaten: TMemoField;
    QDPPkabupaten: TMemoField;
    QDPPcode_cust: TMemoField;
    QDPPno_invoice: TMemoField;
    QDPPpaid_amount: TFloatField;
    QDPPcash: TFloatField;
    QDPPreceipt: TFloatField;
    QDPPcounter_bill: TFloatField;
    QDPPbank_receipt: TMemoField;
    QDPPdate_receipt: TDateField;
    QDPPname_bank_cheque: TMemoField;
    QDPPno_cheque: TMemoField;
    QDPPcheque_amount1: TFloatField;
    QDPPdate_tempo_cheque: TDateField;
    QDPPcustomer_code: TMemoField;
    QDPPcustomer_name: TMemoField;
    QDPPcustomer_name_pkp: TMemoField;
    QDPPid_dpp: TGuidField;
    QDPPsbu_code: TMemoField;
    dxBarLargeRefresh: TdxBarLargeButton;
    dxBarLargeReject: TdxBarLargeButton;
    QDPPid: TGuidField;
    dxBarLargeButton1: TdxBarLargeButton;
    QDPPdate_invoice: TDateField;
    ImageList1: TImageList;
    DBGridEh2: TDBGridEh;
    DSDetail: TDataSource;
    QDetail: TUniQuery;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    cbStatus: TdxBarCombo;
    dxBarLargeButton3: TdxBarLargeButton;
    dtAwal: TcxBarEditItem;
    dtAkhir: TcxBarEditItem;
    RzPanel2: TRzPanel;
    RzListBoxChat: TRzListBox;
    RzPanel3: TRzPanel;
    RzLabel1: TRzLabel;
    BCatatan: TRzButton;
    QDPPstatus_desc: TMemoField;
    dxBarButton8: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    BCorrection: TRzBitBtn;
    QDPPstatus_correction: TSmallintField;
    QDPPstatus_correction_desc: TMemoField;
    BUpdate: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbApproveAllClick(Sender: TObject);
    procedure dxBarLargeRejectClick(Sender: TObject);
    procedure ActROExecute(Sender: TObject);
    procedure dxBarLargeRefreshClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeApproveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure DBGridEh1RowDetailPanelShow(Sender: TCustomDBGridEh;
      var CanShow: Boolean);
    procedure DBGridEh1RowDetailPanelHide(Sender: TCustomDBGridEh;
      var CanHide: Boolean);
    procedure BCatatanClick(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure BUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_dpp_temp:String;
    procedure RejectDPP;
    procedure ApproveDPP;
    procedure Refresh;
  end;

//var
//  FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;
function FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UImage, UNoteCancel2, UKoreksi, UMy_Function,
  UDataApproveDaftarPenagihanPiutang;

var
  RealFApproval_DaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;

function FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;
begin
  if RealFApproval_DaftarPenagihanPiutang <> nil then
     FListApproveDaftarPenagihanPiutang:= RealFApproval_DaftarPenagihanPiutang
  else
    Application.CreateForm(TFListApproveDaftarPenagihanPiutang, Result);
end;

procedure TFListApproveDaftarPenagihanPiutang.ApproveDPP;
begin
//  if not dm.Koneksi.InTransaction then
//  dm.Koneksi.StartTransaction;
//  try
//    with dm.Qtemp do
//    begin
//      close;
//      sql.clear;
//      sql.add(' UPDATE "t_dpp" SET '+
//              ' updated_at=NOW(),'+
//              ' updated_by=''HARMONI'','+
//              ' cash='+FloatToStr(QDPPcash.Value)+','+
//              ' receipt='+FloatToStr(QDPPreceipt.Value)+','+
//              ' counter_bill='+FloatToStr(QDPPcounter_bill.Value)+','+
//              ' bank_receipt='+QuotedStr(QDPPbank_receipt.Value)+','+
//              ' date_receipt='+QuotedStr(FormatDateTime('yyyy-mm-dd',QDPPdate_receipt.Value)) +''+
//              ' Where id='+QuotedStr(QDPPid_dpp.Value)+'');
//      ExecSQL;
//    end;
    id_dpp_temp:= id_dpp_temp+QuotedStr(QDPPid.Value)+',';
//    Dm.Koneksi.Commit;
//    Except on E :Exception do
//    begin
//      begin
//        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
//        Dm.koneksi.Rollback ;
//      end;
//    end;
//  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.RejectDPP;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_dpp_temp" SET '+
              ' status=99, '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+''+
              ' Where id='+QuotedStr(QDPPid.Value)+'');
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

procedure TFListApproveDaftarPenagihanPiutang.BUpdateClick(Sender: TObject);
var
  rec: real;
begin

  QDPP.first;
  while not QDPP.Eof do
  begin
    if QDPPpilih.value=true then
    begin
      rec:=rec+1;
    end;
  QDPP.next;
  end;

  if rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end else
  if rec>1 then
  begin
    ShowMessage('Koreksi hanya boleh 1..!!!');
    Exit;
  end else
  begin

    FDataApproveDaftarPenagihanPiutang.Clear;
    QDPP.first;
    while not QDPP.Eof do
    begin

      if QDPPpilih.value=true then
      begin
        if QDPPstatus_correction_desc.Value='Diajukan' then
        begin
          ShowMessage('Pengajuan Koreksi sedang dalam pengajuan..!!!');
          Exit;
        end else
        if QDPPstatus_correction_desc.Value='' then
        begin
          ShowMessage('Tidak ada pengajuan Koreksi..!!!');
          Exit;
        end else
        if QDPPstatus_correction_desc.Value='Disetujui' then
        begin

          with FDataApproveDaftarPenagihanPiutang do
          begin
            id_dpp:=QDPPid.Value;
            edKodeKolektor.Text:=QDPPcode_collector.Value;
            edNamaKolektor.Text:=QDPPname_collector.Value;
            edNikKolektor.Text:=QDPPnik_collector.Value;
            if not QDPP.FieldByName('date_dpp').IsNull then
            edTglDPP.Text:=FormatDateTime('dd/mm/yyyy',QDPP.FieldByName('date_dpp').AsDateTime);
            edNamaPelanggan.Text:=QDPPcustomer_name.Value;
            edNamaPKP.Text:=QDPPcustomer_name_pkp.Value;
            edNoNota.Text:=QDPPno_invoice.Value;
            if not QDPP.FieldByName('date_invoice').IsNull	 then
            edTglFaktur.Text:=FormatDateTime('dd/mm/yyyy',QDPP.FieldByName('date_invoice').AsDateTime);
            edPiutang.value:=QDPPpaid_amount.Value;
            edTunai.value:=QDPPcash.Value;
            edJumlahResi.value:=QDPPreceipt.Value;
            edKontraBon.Value:=QDPPcounter_bill.Value;
            edJumlahCekGiro.Value:=QDPPcheque_amount1.Value;
            edBankResi.Text:=QDPPbank_receipt.Value;
            if not QDPP.FieldByName('date_receipt').IsNull then
            begin
              edTglResi.Checked := True;
              edTglResi.Date:=QDPP.FieldByName('date_receipt').AsDateTime;
            end;
            edBankCekGiro.Text:=QDPPname_bank_cheque.Value;
            edNoCekGiro.Text:=QDPPno_cheque.Value;
            if not QDPP.FieldByName('date_tempo_cheque').IsNull then
            begin
              edTglCekGiro.Checked := True;
              edTglCekGiro.Date:=QDPP.FieldByName('date_tempo_cheque').AsDateTime;
            end;
          end;
        end;

      end;
      QDPP.next;

    end;
    FDataApproveDaftarPenagihanPiutang.Show
  end;

end;

procedure TFListApproveDaftarPenagihanPiutang.BCatatanClick(Sender: TObject);
begin
  FNoteCancel2.vtransno:=QuotedStr(QDPP.FieldValues['id']);
  FNoteCancel2.vcall:='NOTE BAYAR DPP';
  FNoteCancel2.RzLabel1.Caption:='Catatan';
  FNoteCancel2.Show;
end;

procedure TFListApproveDaftarPenagihanPiutang.BCorrectionClick(Sender: TObject);
var
  rec: real;
begin
  id_dpp_temp:='';
  QDPP.first;
  while not QDPP.Eof do
  begin
    if QDPPpilih.value=true then
    begin
      rec:=rec+1;
    end;
  QDPP.next;
  end;

  if rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end else
  if rec>1 then
  begin
    ShowMessage('Pengajuan Koreksi hanya boleh 1..!!!');
    Exit;
  end else
  begin
    QDPP.first;
    while not QDPP.Eof do
    begin
      if QDPPpilih.value=true then
      begin

        FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub  '+
                    'where link=''FListApproveDaftarPenagihanPiutang'' ');
        FKoreksi.Status:=0;
        FKoreksi.vnotransaksi:=QDPPid.Value;
        FKoreksi.edNoNota.Text:=QDPPno_invoice.Value	;
        FKoreksi.edNamaKolektor.Text:=QDPPname_collector.Value;
        FKoreksi.edNamaPelanggan.Text:=QDPPcustomer_name.Value;
        FKoreksi.dtTglDpp.Text:=FormatDateTime('dd/mm/yyyy',QDPPdate_dpp.Value);
        FKoreksi.ShowModal;
       end;
      QDPP.next;
    end;

  end;

end;

procedure TFListApproveDaftarPenagihanPiutang.ActROExecute(Sender: TObject);
begin
  QDPP.Close;
  QDPP.Open;
end;

procedure TFListApproveDaftarPenagihanPiutang.cbApproveAllClick(
  Sender: TObject);
begin
  if QDPP.RecordCount>0 then
  begin
    QDPP.DisableControls;
    try
      QDPP.First;
      while not QDPP.Eof do
      begin
        QDPP.Edit;
        QDPP.FieldByName('pilih').AsBoolean := cbApproveAll.Checked;
        QDPP.Post;
        QDPP.Next;
      end;
    finally
      QDPP.EnableControls;
    end;
  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh1CellClick(
  Column: TColumnEh);
begin
//  if Column.Index = 26 then
//  begin
//    if (not Column.Field.IsNull) and (Trim(Column.Field.AsString) <> '') then
//    begin
//      Fimage.strUrl:=Column.Field.AsString;
//      Fimage.ShowModal;
//    end;
//  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  BitmapIdx: Integer;
  R: TRect;
begin
//  if Column.FieldName = 'file' then
//  begin
//    DBGridEh1.Canvas.FillRect(Rect);
//    if not Column.Field.IsNull and (Column.Field.AsString <> '') then
//    begin
//      BitmapIdx := 0;
//      R := Rect;
//      R.Left := Rect.Left + ((Rect.Width - ImageList1.Width) div 2);
//      R.Top := Rect.Top + ((Rect.Height - ImageList1.Height) div 2);
//      ImageList1.Draw(DBGridEh1.Canvas, R.Left, R.Top, BitmapIdx);
//    end
//    else
//    begin
//    end;
//  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh1RowDetailPanelHide(
  Sender: TCustomDBGridEh; var CanHide: Boolean);
begin
  RzListBoxChat.Items.Clear;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh1RowDetailPanelShow(
  Sender: TCustomDBGridEh; var CanShow: Boolean);
begin
  if QDPP.FieldValues['status_desc']='Pengajuan' then BCatatan.Visible:=True else BCatatan.Visible:=False;


  RzListBoxChat.Items.Clear;
  with dm.Qtemp do
  begin
    Close;
    SQL.Text := 'SELECT name,note,to_char(created_at, ''DD/MM/YYYY HH24:MI:SS'')created_at FROM t_dpp_temp_note '+
                'WHERE id_dpp_temp='+QuotedStr(QDPP.FieldValues['id'])+' ORDER BY created_at DESC';
    Open;
  end;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
    RzListBoxChat.Items.Add('[' + dm.Qtemp.FieldByName('created_at').AsString + '] ' +
                            dm.Qtemp.FieldByName('name').AsString + ': ' +
                            dm.Qtemp.FieldByName('note').AsString);
    dm.Qtemp.Next;
  end;
  dm.Qtemp.Close;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh2CellClick(
  Column: TColumnEh);
begin
  if Column.Index = 1 then
  begin
    if (not Column.Field.IsNull) and (Trim(Column.Field.AsString) <> '') then
    begin
      Fimage.strUrl:=Column.Field.AsString;
      Fimage.ShowModal;
    end;
  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.Refresh;
 var vstatus:Integer;
begin
  if cbStatus.ItemIndex=2 then
  begin
    vstatus:=99;
  end else begin
    vstatus:=cbStatus.ItemIndex;
  end;
  with QDPP do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT false pilih,* FROM get_dpp_temp() '+
               ' WHERE date_dpp BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
               ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+' AND status='+IntToStr(vstatus)+' ';
    open;
  end;
  QDetail.Close;
  QDetail.Open;

  if vstatus=0 then
  begin
    cbApproveAll.Visible:=True;
    DBGridEh1.Columns[0].Visible:=True;
    DBGridEh1.Columns[1].Width:=72;
    BCorrection.Visible:=True;
  end else begin
    cbApproveAll.Checked:=False;
    cbApproveAll.Visible:=False;
    DBGridEh1.Columns[0].Visible:=False;
    DBGridEh1.Columns[1].Width:=84;
    BCorrection.Visible:=False;
  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.DBGridEh2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  BitmapIdx: Integer;
  R: TRect;
begin
  if Column.FieldName = 'file_name' then
  begin
    DBGridEh2.Canvas.FillRect(Rect);
    if not Column.Field.IsNull and (Column.Field.AsString <> '') then
    begin
      BitmapIdx := 0;
      R := Rect;
      R.Left := Rect.Left + ((Rect.Width - ImageList1.Width) div 2);
      R.Top := Rect.Top + ((Rect.Height - ImageList1.Height) div 2);
      ImageList1.Draw(DBGridEh2.Canvas, R.Left, R.Top, BitmapIdx);
    end
    else
    begin
    end;
  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeApproveClick(
  Sender: TObject);
var
  rec: real;
begin
  QDPP.first;
  while not QDPP.Eof do
  begin
    if QDPPpilih.value=true then
    begin
      rec:=rec+1;
    end;
  QDPP.next;
  end;

  if rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end;
  if rec<>0 then
  begin
    QDPP.first;
    while not QDPP.Eof do
    begin
      if QDPPpilih.value=true then
      begin
        ApproveDPP;
       end;
      QDPP.next;
    end;
  end;
  QDPP.Close;
  QDPP.Open;

  MessageDlg('Approval Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButton1Click(
  Sender: TObject);
var
  rec: real;
begin
  id_dpp_temp:='';
  QDPP.first;
  while not QDPP.Eof do
  begin
    if QDPPpilih.value=true then
    begin
      rec:=rec+1;
    end;
  QDPP.next;
  end;

  if rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end;
  if rec<>0 then
  begin
    QDPP.first;
    while not QDPP.Eof do
    begin
      if QDPPpilih.value=true then
      begin
        ApproveDPP;
       end;
      QDPP.next;
    end;
    if id_dpp_temp <> '' then
    begin
      // Menghapus 1 karakter terakhir (koma)
      id_dpp_temp := Copy(id_dpp_temp, 1, Length(id_dpp_temp) - 1);
    end;
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "t_dpp_temp" SET '+
              ' status=1, '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+''+
              ' Where id in ('+id_dpp_temp+')');
      ExecSQL;
    end;
  end;
  QDPP.Close;
  QDPP.Open;

  MessageDlg('Approval Berhasil..!!',mtInformation,[MBOK],0);
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButton2Click(
  Sender: TObject);
begin
  Refresh
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButton3Click(
  Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  cbStatus.ItemIndex:=0;
  cbApproveAll.Checked:=False;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeRefreshClick(
  Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  cbStatus.ItemIndex:=0;
  cbApproveAll.Checked:=False;
  Refresh;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeRejectClick(
  Sender: TObject);
var
  rec: real;
begin
  FNoteCancel2.vtransno:='';
  id_dpp_temp:='';
  QDPP.first;
  while not QDPP.Eof do
  begin
    if QDPPpilih.value=true then
    begin
      rec:=rec+1;
      FNoteCancel2.vtransno:=QuotedStr(QDPPid.value)+',';
    end;
  QDPP.next;
  end;

  if rec=0 then
  begin
    ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
    Exit;
  end;
  if rec<>0 then
  begin
    FNoteCancel2.vcall:='REJECT BAYAR DPP';
    FNoteCancel2.RzLabel1.Caption:='Alasan';
    FNoteCancel2.Show;
//    QDPP.first;
//    while not QDPP.Eof do
//    begin
//      if QDPPpilih.value=true then
//      begin
//        RejectDPP;
//       end;
//      QDPP.next;
//    end;
  end;
//  QDPP.Close;
//  QDPP.Open;


end;

procedure TFListApproveDaftarPenagihanPiutang.FormCreate(Sender: TObject);
begin
  RealFApproval_DaftarPenagihanPiutang:=self;
end;

procedure TFListApproveDaftarPenagihanPiutang.FormDestroy(Sender: TObject);
begin
  RealFApproval_DaftarPenagihanPiutang:=nil;
end;

procedure TFListApproveDaftarPenagihanPiutang.FormShow(Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  cbStatus.ItemIndex:=0;
  cbApproveAll.Checked:=False;
  Refresh;
end;

initialization
  RegisterClass(TFListApproveDaftarPenagihanPiutang);

end.
