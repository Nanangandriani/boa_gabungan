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
  RzLstBox, RzLabel, cxButtonEdit;

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
    QDPPcreated_at: TDateField;
    dxBarLargeButtonUpdate: TdxBarLargeButton;
    QDPPlatitude: TMemoField;
    QDPPlongitude: TMemoField;
    QDPPaddress: TMemoField;
    QDPPno_counter_bill: TMemoField;
    QDPPdate_counter_bill: TDateField;
    QDPPstatus: TSmallintField;
    QDPPapproved_rejected_by: TMemoField;
    QDPPapproved_rejected_at: TDateTimeField;
    QDPPapproved_rejected_note: TMemoField;
    QDPPcash_dpp: TFloatField;
    QDPPreceipt_dpp: TFloatField;
    QDPPno_counter_bill_dpp: TStringField;
    QDPPdate_counter_bill_dpp: TDateField;
    QDPPcounter_bill_dpp: TFloatField;
    QDPPbank_receipt_dpp: TStringField;
    QDPPdate_receipt_dpp: TDateField;
    QDPPname_bank_cheque_dpp: TStringField;
    QDPPno_cheque_dpp: TStringField;
    QDPPcheque_amount1_dpp: TFloatField;
    QDPPdate_tempo_cheque_dpp: TDateField;
    edKaresidenan: TcxBarEditItem;
    cbApprovePenerimaan: TRzCheckBox;
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
    procedure dxBarLargeButtonUpdateClick(Sender: TObject);
    procedure edKaresidenanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    id_dpp_temp,kd_karesidenan:String;
    procedure UpdateDPPCounterBill;
    procedure RejectDPP;
    procedure ApproveDPP;
    procedure Refresh;
    procedure ShowPenerimaanBank(const AJenisBayar: String);

  end;

//var
//  FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;
function FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UImage, UNoteCancel2, UKoreksi, UMy_Function,
  UDataApproveDaftarPenagihanPiutang, UDataPenerimaanBank, UMainMenu,
  UMasterData;

var
  RealFApproval_DaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;

function GetAvailableJenisBayarList(Q: TDataSet; AList: TStrings): Integer;
begin
  AList.Clear;
  if Q.FieldByName('cash').AsFloat > 0 then AList.Add('TUNAI');
  if Q.FieldByName('receipt').AsFloat > 0 then AList.Add('RESI');
  if Q.FieldByName('counter_bill').AsFloat > 0 then AList.Add('Counter Bill');
  if Q.FieldByName('cheque_amount1').AsFloat > 0 then AList.Add('CHEQUE / GIRO');
  Result := AList.Count;
end;

function SelectJenisBayarDialog(const ATitle, APrompt: string; AList: TStrings; var ASelectedIndex: Integer): Boolean;
var
  FormDialog: TForm;
  lblPrompt: TLabel;
  cbOptions: TComboBox;
  btnOK, btnCancel: TButton;
begin
  Result := False;
  FormDialog := TForm.Create(nil);
  try
    FormDialog.Caption := ATitle;
    FormDialog.Width := 380;
    FormDialog.Height := 140;
    FormDialog.Position := poOwnerFormCenter;
    FormDialog.BorderStyle := bsDialog;
    lblPrompt := TLabel.Create(FormDialog);
    lblPrompt.Parent := FormDialog;
    lblPrompt.Left := 20;
    lblPrompt.Top := 15;
    lblPrompt.Width := 330;
    lblPrompt.WordWrap := True;
    lblPrompt.Caption := APrompt;
    cbOptions := TComboBox.Create(FormDialog);
    cbOptions.Parent := FormDialog;
    cbOptions.Left := 20;
    cbOptions.Top := 15;
    cbOptions.Width := 325;
    cbOptions.Style := csDropDownList; // Mencegah user mengetik manual
    cbOptions.Items.Assign(AList);
    if AList.Count > 0 then
      cbOptions.ItemIndex := 0;
    btnOK := TButton.Create(FormDialog);
    btnOK.Parent := FormDialog;
    btnOK.Caption := 'OK';
    btnOK.ModalResult := mrOk;
    btnOK.Left := 180;
    btnOK.Top := 55;
    btnOK.Default := True;
    btnCancel := TButton.Create(FormDialog);
    btnCancel.Parent := FormDialog;
    btnCancel.Caption := 'Batal';
    btnCancel.ModalResult := mrCancel;
    btnCancel.Left := 270;
    btnCancel.Top := 55;
    if FormDialog.ShowModal = mrOk then
    begin
      ASelectedIndex := cbOptions.ItemIndex;
      Result := (ASelectedIndex >= 0);
    end;
  finally
    FormDialog.Free;
  end;
end;

function GetNominalJenisBayar(Q: TDataSet; const AJenisBayar: String): Double;
var
  FieldName: String;
begin
  Result := 0;
  // Map nama jenis pembayaran ke nama field di dataset Dm.Qtemp3
  if SameText(AJenisBayar, 'TUNAI') then
    FieldName := 'cash'
  else if SameText(AJenisBayar, 'RESI') then
    FieldName := 'receipt'
  else if SameText(AJenisBayar, 'Counter Bill') then
    FieldName := 'counter_bill'
  else if SameText(AJenisBayar, 'CHEQUE / GIRO') or SameText(AJenisBayar, 'Cheque') then
    FieldName := 'cheque_amount1'
  else
    FieldName := '';
  if (FieldName <> '') and (Q.FindField(FieldName) <> nil) then
    Result := Q.FieldByName(FieldName).AsFloat;
end;

function FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang;
begin
  if RealFApproval_DaftarPenagihanPiutang <> nil then
     FListApproveDaftarPenagihanPiutang:= RealFApproval_DaftarPenagihanPiutang
  else
    Application.CreateForm(TFListApproveDaftarPenagihanPiutang, Result);
end;

procedure TFListApproveDaftarPenagihanPiutang.ShowPenerimaanBank(const AJenisBayar: String);
var
  strPaymentCode, strDiterimaDari: String;
  jumbayar: Currency;
begin
  strPaymentCode := '';
  FDataPenerimaanBank.Clear;
  FDataPenerimaanBank.Status := 0;

  FDataPenerimaanBank.chkNomorPengganti.Checked := False;
  strPaymentCode := '2';

  FMainMenu.Load.Percent := 60;
  Application.ProcessMessages;

  with FDataPenerimaanBank do
  begin
    isCancel := 0;
    Status:=0;

    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT code_trans code_type_trans, name_trans name_type_trans, code_module, name_module, status_bill ' +
                  'FROM t_master_trans_account WHERE code_trans = ''3.001''';
      try
        Open;
      except
        Connection.Close;
        Connection.Open;
        Open;
      end;
    end;

    FDataPenerimaanBank.cbTransaksi.Enabled:=true;
    FDataPenerimaanBank.cbJenisTransaksi.Enabled:=true;

//    with dm.Qtemp3 do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT * FROM "public"."t_ak_module" WHERE id IN (''3'',''4'') ORDER BY id ASC');
//      try
//        Open;
//      except
//        Connection.Close;
//        Connection.Open;
//        Open;
//      end;
//      First;
//    end;
//
//    cbTransaksi.Clear;
//    cbTransaksi.Items.Add('');
//    while not dm.Qtemp3.Eof do
//    begin
//      cbTransaksi.Items.Add(dm.Qtemp3.FieldByName('module_name').AsString);
//      dm.Qtemp3.Next;
//    end;

    with dm.Qtemp3 do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT a.*, b.no_inv_tax,b.trans_date ' +
                  'FROM get_dpp_temp() a ' +
                  'LEFT JOIN t_selling b ON b.trans_no = a.no_invoice AND b.deleted_at IS NULL ' +
                  'WHERE a.id IN (' + id_dpp_temp + ') ';
      Open;
      First;
    end;

    FMainMenu.Load.Percent := 70;
    Application.ProcessMessages;

    edNoTrans.Text := '';
    dtTrans.Date := Now;
    dtPeriode1.Date := Now;
    dtPeriode2.Date := Now;

    edKodeJenisTrans.Text := Dm.Qtemp.FieldByName('code_type_trans').AsString;
    edNamaJenisTrans.Text := Dm.Qtemp.FieldByName('name_type_trans').AsString;

    cbTransaksi.Text := Dm.Qtemp.FieldByName('name_module').AsString;
    cbJenisTransaksi.ItemIndex := Dm.Qtemp.FieldByName('status_bill').AsInteger + 1;


    RefreshForm;

    if not Dm.Qtemp3.IsEmpty then
    begin
      edKode_Pelanggan.Text := Dm.Qtemp3.FieldByName('code_cust').AsString;
      edNama_Pelanggan.Text := Dm.Qtemp3.FieldByName('customer_name').AsString;
      edNamaPKP.Text       := Dm.Qtemp3.FieldByName('customer_name_pkp').AsString;

      if not Dm.Qtemp3.FieldByName('code_karesidenan').IsNull then
        kd_kares := Dm.Qtemp3.FieldByName('code_karesidenan').AsString;

      if not Dm.Qtemp3.FieldByName('karesidenan').IsNull then
        edKaresidenan.Text := Dm.Qtemp3.FieldByName('karesidenan').AsString;
    end;

    edKodeMataUang.Text := 'IDR';
    edNamaMataUang.Text := 'Indonesian Rupiah';
    edUntukPengiriman.Text := 'PIUTANG DAGANG';

    edKodeSumberTagihan.Text := '2';
    edNMSumberTagihan.Text := 'DPP';

    edKodeJenisBayar.Text := SelectRow('select code from t_payment_source where UPPER(name)='+QuotedStr(UpperCase(AJenisBayar))+' ');
    edNMJenisBayar.Text   := AJenisBayar;

//    vid_modul := SelectRow('SELECT code_module FROM t_master_trans_account WHERE code_trans = ' + QuotedStr(edKodeJenisTrans.Text)+'');

    gbDataBank.Visible := True;


//    if SelectRow('SELECT value_parameter FROM t_parameter WHERE key_parameter = ''sumber_terima_bank''') = '0' then
//    begin
    lbSumberTagihan.Visible  := True;
    lbSumberTagihann.Visible := True;
    lbJenisBayar.Visible     := True;
    lbJenisBayarr.Visible    := True;
    edNMSumberTagihan.Visible:= True;
    edNMJenisBayar.Visible   := True;
//    end
//    else
//    begin
//      lbSumberTagihan.Visible  := False;
//      lbSumberTagihann.Visible := False;
//      lbJenisBayar.Visible     := False;
//      lbJenisBayarr.Visible    := False;
//      edNMSumberTagihan.Visible:= False;
//      edNMJenisBayar.Visible   := False;
//    end;


    jumbayar := 0;
    kd_ak_pelanggan := SelectRow('SELECT account_code FROM t_customer WHERE customer_code = ' + QuotedStr(dm.Qtemp3.FieldByName('code_cust').AsString));
    FMainMenu.Load.Percent := 80;
    Application.ProcessMessages;
    MemDetailPiutang.EmptyTable;
    if Dm.Qtemp3.RecordCount > 0 then
    begin
      Dm.Qtemp3.First;
      while not Dm.Qtemp3.Eof do
      begin
        MemDetailPiutang.Append;
        if strPaymentCode = '2' then
          MemDetailPiutang.FieldByName('id_dpp').AsString := Dm.Qtemp3.FieldByName('id_dpp').AsString;
        MemDetailPiutang.FieldByName('no_faktur').AsString    := Dm.Qtemp3.FieldByName('no_inv_tax').AsString;
        MemDetailPiutang.FieldByName('tgl_faktur').AsDateTime := Dm.Qtemp3.FieldByName('trans_date').AsDateTime;
        MemDetailPiutang.FieldByName('no_tagihan').AsString   := Dm.Qtemp3.FieldByName('no_invoice').AsString;

        MemDetailPiutang.FieldByName('jum_piutang_real').AsFloat := Dm.Qtemp3.FieldValues['paid_amount'];
        MemDetailPiutang.FieldByName('jum_piutang').AsFloat      := GetNominalJenisBayar(Dm.Qtemp3, AJenisBayar);
        MemDetailPiutang.FieldByName('keterangan').AsString := 'PELUNASAN PIUTANG';
        jumbayar := jumbayar + GetNominalJenisBayar(Dm.Qtemp3, AJenisBayar);
        MemDetailPiutang.Post;
        Dm.Qtemp3.Next;
      end;
    end;

    FMainMenu.Load.Percent := 85;
    Application.ProcessMessages;

    edKurs.Value := 1;
    edJumlah.Value := jumbayar;
    GetKeterangan;

    // Refresh Grid Akun
    RefreshGridAkunBankPiutang;
    Panel5.Visible          := True;
    gbDataPiutang.Visible   := True;
    TabDetailFaktur.TabVisible := True;

    FMainMenu.Load.Percent := 90;
    Application.ProcessMessages;
    with FDataPenerimaanBank do
    begin
      MemDetailAkun.First;
      while not MemDetailAkun.Eof do
      begin
        if MemDetailAkun['kd_header_akun']=SelectRow('SELECT header_code from t_customer where customer_code='+QuotedStr(edKode_Pelanggan.Text)) then
        begin
          MemDetailAkun.Edit;
          MemDetailAkun['kd_akun']:=SelectRow('SELECT account_code from t_customer where customer_code='+QuotedStr(edKode_Pelanggan.Text)+' ');
          kd_ak_pelanggan:=MemDetailAkun['kd_akun'];
          MemDetailAkun.post;
        end;
      MemDetailAkun.Next;
      end;
    end;

//    gbDataSumberPenerimaan.Visible := False;
    RzPageControl1.ActivePage := TabDetailAkun;
    Disable;

    FDataPenerimaanBank.vcall:='APPROVEDPP';
    FMainMenu.Load.Percent := 100;
    Application.ProcessMessages;
    Show;

  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.UpdateDPPCounterBill;
var curCounterBill: Currency;
    strDateTrans,strNamaBank :String;
    strCash, strReceipt, strCheque1: String;
begin

  QDPP.First;
  while not QDPP.Eof do
  begin
    if QDPPpilih.Value = True then
    begin
      with dm.Qtemp2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE t_dpp SET ');
        SQL.Add('counter_bill = ' + StringReplace(FloatToStr(QDPP.FieldByName('counter_bill').AsFloat), ',', '.', [rfReplaceAll]) + ',');
        SQL.Add('no_counter_bill = ' + QuotedStr(QDPP.FieldByName('no_counter_bill').AsString) + ',');
        if QDPP.FieldByName('date_counter_bill').IsNull then
          SQL.Add('  date_counter_bill = NULL ')
        else
          SQL.Add('  date_counter_bill = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', QDPP.FieldByName('date_counter_bill').AsDateTime)) + ' ');
        SQL.Add('WHERE id = ' + QuotedStr(QDPP.FieldByName('id_dpp').AsString));
        try
          ExecSQL;
        except
          Connection.Close;
          Connection.Open;
          ExecSQL;
        end;
      end;
    end;
    QDPP.Next;
  end;
  FMainMenu.Load.Percent := 50;
  Application.ProcessMessages;

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
//        if QDPPstatus_correction_desc.Value='Diajukan' then
//        begin
//          ShowMessage('Pengajuan Koreksi sedang dalam pengajuan..!!!');
//          Exit;
//        end else
//        if QDPPstatus_correction_desc.Value='' then
//        begin
//          ShowMessage('Tidak ada pengajuan Koreksi..!!!');
//          Exit;
//        end else
//        if QDPPstatus_correction_desc.Value='Disetujui' then
//        begin

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
//        end;

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
 strKaresidenan:String;
begin
  strKaresidenan:='';
  if edKaresidenan.EditValue<>'' then
  strKaresidenan:=' AND a.code_karesidenan='+QuotedStr(kd_karesidenan)+' ';

  if cbStatus.ItemIndex=3 then
  begin
    vstatus:=99;
  end else begin
    vstatus:=cbStatus.ItemIndex;
  end;
  with QDPP do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT false pilih,a.*,b.cash cash_dpp,b.receipt receipt_dpp,'+
              'b.no_counter_bill no_counter_bill_dpp,b.date_counter_bill date_counter_bill_dpp,'+
              'b.counter_bill counter_bill_dpp,b.bank_receipt bank_receipt_dpp, '+
              'b.date_receipt date_receipt_dpp,b.name_bank_cheque name_bank_cheque_dpp,'+
              'b.no_cheque no_cheque_dpp,b.cheque_amount1 cheque_amount1_dpp,'+
              'b.date_tempo_cheque date_tempo_cheque_dpp FROM get_dpp_temp() a '+
              'LEFT JOIN t_dpp b on b.id=a.id_dpp '+
              'WHERE a.created_at BETWEEN '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAwal.EditValue))+' AND '+
              ''+QuotedStr(FormatDateTime('yyyy-mm-dd',dtAkhir.EditValue))+strKaresidenan+' AND a.status='+IntToStr(vstatus)+' ORDER BY a.created_at ASC,a.no_invoice ASC ';
    open;
  end;
  QDetail.Close;
  QDetail.Open;

  if vstatus=0 then
  begin
//    cbApproveAll.Visible:=True;
    DBGridEh1.Columns[0].Visible:=True;
    DBGridEh1.Columns[1].Width:=72;
//    BCorrection.Visible:=True;
//    BUpdate.Visible:=True;
    dxBarLargeButtonUpdate.Visible:=ivAlways;
    cbApprovePenerimaan.Visible:=true;
  end else begin
    cbApproveAll.Checked:=False;
    cbApprovePenerimaan.Visible:=false;
//    cbApproveAll.Visible:=False;
    DBGridEh1.Columns[0].Visible:=False;
    DBGridEh1.Columns[1].Width:=84;
//    BCorrection.Visible:=False;
//    BUpdate.Visible:=False;
    dxBarLargeButtonUpdate.Visible:=ivNever;
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
  rec: integer;
  strCustomerCode: String;
begin
  strCustomerCode:='';
  rec := 0;

  QDPP.First;
  while not QDPP.Eof do
  begin
    if QDPPpilih.Value = True then
    begin
      Inc(rec);
      if strCustomerCode = '' then
      begin
        strCustomerCode := QDPPcode_cust.Value;
      end
      else if strCustomerCode <> QDPPcode_cust.Value then
      begin
        ShowMessage('Gagal: Data yang ditandai harus dari pelanggan yang sama (tidak boleh campur pelanggan)!');
        Exit;
      end;
    end;
    QDPP.Next;
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
  rec: Integer;
  strCustomerCode, strSelectedJenisBayar, str_id_dpp_list: String;
  ListBayar: TStringList;
  ChoiceIdx: Integer;
  bHasCounterBill: Boolean;
  FormPesan: TForm;
  LblPesan: TLabel;
  iExistCount, iTotalSelected: Integer;
begin
  rec := 0;
  strCustomerCode := '';
  strSelectedJenisBayar := '';
  id_dpp_temp := '';
  str_id_dpp_list := '';
  ListBayar := TStringList.Create;
  try
    QDPP.First;
    while not QDPP.Eof do
    begin
      if QDPPpilih.Value = True then
      begin
        Inc(rec);
        if strCustomerCode = '' then
          strCustomerCode := QDPPcode_cust.Value
        else if strCustomerCode <> QDPPcode_cust.Value then
        begin
          MessageDlg('Gagal: Data yang ditandai harus dari pelanggan yang sama (tidak boleh campur pelanggan)!', mtWarning, [mbOK], 0);
          Exit;
        end;
        GetAvailableJenisBayarList(QDPP, ListBayar);
        if ListBayar.Count = 0 then
        begin
          MessageDlg('Gagal: Ada nota yang dicentang tetapi tidak memiliki nilai pembayaran!', mtWarning, [mbOK], 0);
          Exit;
        end;

        bHasCounterBill := (ListBayar.IndexOf('Counter Bill') <> -1);
        if bHasCounterBill and (ListBayar.Count > 1) then
        begin
          MessageDlg('Gagal: Nota ' + QDPPno_invoice.AsString +
                     ' memiliki jenis pembayaran Counter Bill.' + sLineBreak +
                     'Kontra Bon tidak boleh digabung dengan jenis pembayaran lain!', mtWarning, [mbOK], 0);
          Exit;
        end;

        if strSelectedJenisBayar = '' then
        begin
          if ListBayar.Count = 1 then
          begin
            strSelectedJenisBayar := ListBayar[0];
          end
          else
          begin
            ChoiceIdx := 0;
            if SelectJenisBayarDialog('Pilih Jenis Pembayaran',
                                     '',
                                     ListBayar, ChoiceIdx) then
            begin
              strSelectedJenisBayar := ListBayar[ChoiceIdx];
            end
            else
            begin
              ShowMessage('Proses dibatalkan: Anda harus memilih 1 jenis pembayaran.');
              Exit;
            end;
          end;
        end;

        if SameText(strSelectedJenisBayar, 'Counter Bill') then
        begin
          if (ListBayar.Count > 1) or (ListBayar.IndexOf('Counter Bill') = -1) then
          begin
            MessageDlg('Gagal: Kontra Bon tidak boleh digabung dengan jenis pembayaran lain pada nota manapun!', mtWarning, [mbOK], 0);
            Exit;
          end;
        end;

        if ListBayar.IndexOf(strSelectedJenisBayar) = -1 then
        begin
          MessageDlg('Gagal: Nota ' + QDPPno_invoice.AsString +
                     ' tidak memiliki jenis pembayaran "' + strSelectedJenisBayar + '".' + sLineBreak +
                     'Semua nota yang dicentang harus memiliki jenis pembayaran yang sama!', mtWarning, [mbOK], 0);
          Exit;
        end;
        id_dpp_temp:= id_dpp_temp+QuotedStr(QDPPid.Value)+',';
        str_id_dpp_list := str_id_dpp_list + QuotedStr(QDPPid_dpp.AsString) + ',';
      end;
      QDPP.Next;
    end;
    if rec = 0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end;

    if str_id_dpp_list <> '' then
    begin
      str_id_dpp_list := Trim(str_id_dpp_list);
      if (Length(str_id_dpp_list) > 0) and (str_id_dpp_list[Length(str_id_dpp_list)] = ',') then
        str_id_dpp_list := Copy(str_id_dpp_list, 1, Length(str_id_dpp_list) - 1);
    end;


    if (str_id_dpp_list <> '') and (not SameText(strSelectedJenisBayar, 'Counter Bill')) then
    begin
      with dm.Qtemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(DISTINCT a.id_dpp) AS total_exist ' +
                'FROM t_cash_bank_acceptance_receivable a ' +
                'LEFT JOIN t_cash_bank_acceptance b ON b.voucher_no = a.voucher_no ' +
                'WHERE a.id_dpp IN (' + str_id_dpp_list + ') AND b.deleted_at IS NULL');
        Open;
        iExistCount := FieldByName('total_exist').AsInteger;
      end;
      iTotalSelected := rec;
      if (iExistCount > 0) and (iExistCount < iTotalSelected) then
      begin
        MessageDlg('Gagal: Data yang dicentang campur!' + sLineBreak +
                   'Sebagian nota sudah masuk Penerimaan Bank/Kas dan sebagian lagi belum.' + sLineBreak +
                   'Harap centang nota yang berstatus sama!', mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    FMainMenu.Load.Visible := True;
    FMainMenu.Load.Percent := 10;
    Application.ProcessMessages;
//    QDPP.First;
//    while not QDPP.Eof do
//    begin
//      if QDPPpilih.Value = True then
//      begin
//        ApproveDPP;
//      end;
//      QDPP.Next;
//    end;
    if id_dpp_temp <> '' then
    begin
      id_dpp_temp := Trim(id_dpp_temp);
      if (Length(id_dpp_temp) > 0) and (id_dpp_temp[Length(id_dpp_temp)] = ',') then
        id_dpp_temp := Copy(id_dpp_temp, 1, Length(id_dpp_temp) - 1);
      with dm.Qtemp do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE "t_dpp_temp" SET ' +
                ' status = 1, ' +
                ' updated_at = NOW(), ' +
                ' updated_by = ' + QuotedStr(FHomeLogin.Eduser.Text) + ' ' +
                ' WHERE id IN (' + id_dpp_temp + ')');
        ExecSQL;
      end;
    end;

    if SameText(strSelectedJenisBayar, 'Counter Bill') then
    begin
      UpdateDPPCounterBill;
    end;
//    if SameText(strSelectedJenisBayar, 'Counter Bill') then
//    begin
//      FMainMenu.Load.Percent := 80;
//      Application.ProcessMessages;
//    end;

    if (not SameText(strSelectedJenisBayar, 'Counter Bill')) then
    begin
      FMainMenu.Load.Percent := 30;
      Application.ProcessMessages;
    end;

    QDPP.Close;
    QDPP.Open;

    if SameText(strSelectedJenisBayar, 'Counter Bill') then
    begin
      FMainMenu.Load.Percent := 100;
      Application.ProcessMessages;
    end;
    if (not SameText(strSelectedJenisBayar, 'Counter Bill')) then
    begin
      FMainMenu.Load.Percent := 50;
      Application.ProcessMessages;
    end;
    MessageDlg('Approval Berhasil..!!', mtInformation, [mbOK], 0);

//    if (id_dpp_temp <> '') and (not SameText(strSelectedJenisBayar, 'Counter Bill')) then
    if (id_dpp_temp <> '') AND (cbApprovePenerimaan.Checked=True) AND (not SameText(strSelectedJenisBayar, 'Counter Bill')) then
    begin
      FMainMenu.Load.Percent := 50;
      Application.ProcessMessages;
      with CreateMessageDialog('Sedang memuat penerimaan bank dan kas...', mtInformation, []) do
      try
        Position := poOwnerFormCenter;
        Show;
        Application.ProcessMessages;
        ShowPenerimaanBank(strSelectedJenisBayar);
      finally
        Free;
      end;
    end else begin
      FMainMenu.Load.Percent := 100;
      Application.ProcessMessages;
    end;


  finally
  FMainMenu.Load.Visible := false;
  cbApprovePenerimaan.Checked:=False;
  ListBayar.Free;
  end;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButton2Click(
  Sender: TObject);
begin
  Refresh;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButton3Click(
  Sender: TObject);
begin
  DBGridEh1.SearchPanel.SearchingText:='';
  dtAwal.EditValue := Date;
  dtAkhir.EditValue := Date;
  cbStatus.ItemIndex:=0;
  cbApproveAll.Checked:=False;
  edKaresidenan.EditValue:='';
  kd_karesidenan:='';
  cbApprovePenerimaan.Checked:=False;
end;

procedure TFListApproveDaftarPenagihanPiutang.dxBarLargeButtonUpdateClick(
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
//        if QDPPstatus_correction_desc.Value='Diajukan' then
//        begin
//          ShowMessage('Pengajuan Koreksi sedang dalam pengajuan..!!!');
//          Exit;
//        end else
//        if QDPPstatus_correction_desc.Value='' then
//        begin
//          ShowMessage('Tidak ada pengajuan Koreksi..!!!');
//          Exit;
//        end else
//        if QDPPstatus_correction_desc.Value='Disetujui' then
//        begin

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
//        end;

      end;
      QDPP.next;

    end;
    FDataApproveDaftarPenagihanPiutang.Show
  end;
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

procedure TFListApproveDaftarPenagihanPiutang.edKaresidenanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='listapprovedpp';
  FMasterData.update_grid('DISTINCT code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal
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
  edKaresidenan.EditValue:='';
  kd_karesidenan:='';
  cbApprovePenerimaan.Checked:=False;
  Refresh;
end;

initialization
  RegisterClass(TFListApproveDaftarPenagihanPiutang);

end.
