unit URegisterCekMundur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.ComCtrls,
  RzDTP, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit, RzBtnEdt, RzButton,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, MemTableDataEh, Data.DB, MemTableEh,
  frxClass, frxDBSet, MemDS, DBAccess, Uni;

type
  TFRegisterCekMundur = class(TForm)
    RzPanel1: TRzPanel;
    dtTanggal1: TRzDateTimePicker;
    dtTanggal2: TRzDateTimePicker;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    edKaresidenan: TRzButtonEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    btnCari: TRzButton;
    RzGroupBox1: TRzGroupBox;
    btBaru: TRzBitBtn;
    btCetak: TRzBitBtn;
    btPosting: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    MemDetail: TMemTableEh;
    DSDetail: TDataSource;
    MemDetailkode_pel: TStringField;
    MemDetailnama_pel: TStringField;
    MemDetailno_tanda_terima: TStringField;
    MemDetailketerangan: TStringField;
    MemDetailtgl_terima: TDateField;
    MemDetailtgl_ditunaikan: TDateField;
    MemDetailbank_ditunaikan: TStringField;
    MemDetailtgl_tanda_terima: TDateField;
    MemDetailnama_bank_cek: TStringField;
    MemDetailno_cek: TStringField;
    MemDetailtgl_tempo_cek: TDateField;
    MemDetailnilai_cek: TCurrencyField;
    MemDetailcode_collector: TStringField;
    MemDetailname_collector: TStringField;
    MemDetailno_invoice: TStringField;
    MemDetailcode_bank_ditunaikan: TStringField;
    Report: TfrxReport;
    frxDBDataRegisterCek: TfrxDBDataset;
    MemDetailid_dpp: TStringField;
    QCetak: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure btPostingClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure DBGridEh1Columns8EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kd_kares:String;
    procedure Save;
  end;
  function FRegisterCekMundur: TFRegisterCekMundur;

//var
//  FRegisterCekMundur: TFRegisterCekMundur;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UMainMenu, UMy_Function, UHomeLogin;

var
  registercekmundur : TFRegisterCekMundur;

function FRegisterCekMundur: TFRegisterCekMundur;
begin
  if registercekmundur <> nil then
    FRegisterCekMundur:= registercekmundur
  else
    Application.CreateForm(TFRegisterCekMundur, Result);
end;

procedure TFRegisterCekMundur.btBaruClick(Sender: TObject);
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('Karesidenan Wajib Diisi..!!', mtInformation, [mbOK], 0);
  end else begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.customer_name FROM t_dpp a '+
                'LEFT JOIN get_customer() b ON a."code_cust"=b.customer_code '+
                ' WHERE COALESCE(a.no_cheque, '''') <> '''' AND a.deleted_at IS NULL '+
                'and a.date_dpp between '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' '+
                'and b.code_karesidenan='+QuotedStr(kd_kares)+' ';
      open;
    end;
    if dm.Qtemp.IsEmpty then
    begin
      MessageDlg('Data Tidak Ada..!!', mtInformation, [mbOK], 0);
      Exit;
    end;

    with MemDetail do
    begin
      Close;
      Open;
      EmptyTable;
      DisableControls;
      try
        dm.Qtemp.First;
        while not dm.Qtemp.Eof do
        begin
          Append;
          FieldByName('tgl_terima').Value        := dm.Qtemp.FieldByName('date_dpp').Value;
          FieldByName('kode_pel').Value          := dm.Qtemp.FieldByName('code_cust').Value;
          FieldByName('nama_pel').Value          := dm.Qtemp.FieldByName('customer_name').Value;
          FieldByName('tgl_tanda_terima').Value  := dm.Qtemp.FieldByName('date_dpp').Value;
          FieldByName('nama_bank_cek').Value     := dm.Qtemp.FieldByName('name_bank_cheque').Value;
          FieldByName('tgl_tempo_cek').Value     := dm.Qtemp.FieldByName('date_tempo_cheque').Value;
          FieldByName('no_cek').Value            := dm.Qtemp.FieldByName('no_cheque').Value;
          FieldByName('nilai_cek').Value         := dm.Qtemp.FieldByName('cheque_amount1').Value; // Cek typo 'amont'
          FieldByName('code_collector').Value    := dm.Qtemp.FieldByName('code_collector').Value;
          FieldByName('name_collector').Value    := dm.Qtemp.FieldByName('name_collector').Value;
          FieldByName('no_invoice').Value        := dm.Qtemp.FieldByName('no_invoice').Value;
          FieldByName('tgl_tanda_terima').Clear;
          FieldByName('id_dpp').Value        := dm.Qtemp.FieldByName('id').Value;
  //        MemDetail['no_tanda_terina'] := dm.Qtemp['name_cust'];
  //        MemDetail['keterangan']:= dm.Qtemp['no_reference'];
  //        MemDetail['tgl_terima']:= dm.Qtemp['code_item'];
  //        MemDetail['tgl_ditunaikan']:= dm.Qtemp['name_item'];
  //        MemDetail['bank_ditunaikan']:= dm.Qtemp['amount'];
          Post;
          dm.Qtemp.Next;
        end;
      finally
        EnableControls;
      end;
    end;
  end;
end;

procedure TFRegisterCekMundur.Save;
var strTglTandaTerima,strTglDitunaikan,stKeterangan,strBankDitunaikan,strNoTandaTerima, strCodeBankDitunaikan,
    strCodeCollector,strNameCollector:String;
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE t_register_cek SET deleted_at=NOW(), deleted_by=' + QuotedStr(Nm));
    SQL.Add('WHERE code_karesidenan=' + QuotedStr(kd_kares));
    SQL.Add('AND dpp_periode1=' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggal1.Date)));
    SQL.Add('AND dpp_periode2=' + QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggal2.Date)));
    Execute;
  end;
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    if (MemDetail['tgl_tanda_terima'] = Null) or (VarIsEmpty(MemDetail['tgl_tanda_terima'])) then
    strTglTandaTerima := 'NULL'
    else
    strTglTandaTerima := QuotedStr(FormatDateTime('yyyy-mm-dd', MemDetail['tgl_tanda_terima']));

    if (MemDetail['tgl_ditunaikan'] = Null) or (VarIsEmpty(MemDetail['tgl_ditunaikan'])) then
    strTglDitunaikan := 'NULL'
    else
    strTglDitunaikan := QuotedStr(FormatDateTime('yyyy-mm-dd', MemDetail['tgl_ditunaikan']));

    if (MemDetail['keterangan'] = Null) or (VarIsEmpty(MemDetail['keterangan'])) then
    stKeterangan := 'NULL'
    else
    stKeterangan := QuotedStr(MemDetail['keterangan']);

    if (MemDetail['code_bank_ditunaikan'] = Null) or (VarIsEmpty(MemDetail['code_bank_ditunaikan'])) then
    strCodeBankDitunaikan := 'NULL'
    else
    strCodeBankDitunaikan := QuotedStr(MemDetail['code_bank_ditunaikan']);

    if (MemDetail['bank_ditunaikan'] = Null) or (VarIsEmpty(MemDetail['bank_ditunaikan'])) then
    strBankDitunaikan := 'NULL'
    else
    strBankDitunaikan := QuotedStr(MemDetail['bank_ditunaikan']);

    if (MemDetail['no_tanda_terima'] = Null) or (VarIsEmpty(MemDetail['no_tanda_terima'])) then
    strNoTandaTerima := 'NULL'
    else
    strNoTandaTerima := QuotedStr(MemDetail['no_tanda_terima']);

    if (MemDetail['code_collector'] = Null) or (VarIsEmpty(MemDetail['code_collector'])) then
    strCodeCollector := 'NULL'
    else
    strCodeCollector := QuotedStr(MemDetail['code_collector']);

    if (MemDetail['name_collector'] = Null) or (VarIsEmpty(MemDetail['name_collector'])) then
    strNameCollector := 'NULL'
    else
    strNameCollector := QuotedStr(MemDetail['name_collector']);

    with dm.Qtemp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO t_register_cek (id_dpp,customer_code, customer_name, no_invoice, ' +
                  'code_karesidenan, name_bank_cek, no_cek, ceq_due_date, received_date, ' +
                  'dpp_periode1, dpp_periode2, amount_cek, note, disbursment_date, bank_chanel, ' +
                  'receipt_date, receipt_no,code_collector,name_collector,code_bank_chanel) ' +
                  'VALUES (' +
                  ''+QuotedStr(MemDetail['id_dpp']) + ',' +
                  ''+QuotedStr(MemDetail['kode_pel']) + ',' +
                  ''+QuotedStr(MemDetail['nama_pel']) + ',' +
                  ''+QuotedStr(MemDetail['no_invoice']) + ',' +
                  ''+QuotedStr(kd_kares) + ',' +
                  ''+QuotedStr(MemDetail['nama_bank_cek']) + ',' +
                  ''+QuotedStr(MemDetail['no_cek']) + ',' +
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd', MemDetail['tgl_tempo_cek'])) + ',' +
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd', MemDetail['tgl_terima'])) + ',' +
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggal1.Date)) + ',' +
                  ''+QuotedStr(FormatDateTime('yyyy-mm-dd', dtTanggal2.Date)) + ',' +
                  ' '+QuotedStr(StringReplace(MemDetail['nilai_cek'],',','.',[]))+','+
                  ''+stKeterangan + ',' +
                  ''+strTglDitunaikan + ',' +
                  ''+strBankDitunaikan + ',' +
                  ''+strTglTandaTerima + ',' +
                  ''+strNoTandaTerima +','+
                  ''+strCodeCollector + ',' +
                  ''+strNameCollector + ',' +
                  ''+strCodeBankDitunaikan +''+
                  ')';
      Execute;
    end;
    MemDetail.Next;
  end;
end;

procedure TFRegisterCekMundur.btCetakClick(Sender: TObject);
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('Karesidenan wajib diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    with QCetak do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_register_cek WHERE code_karesidenan='+QuotedStr(kd_kares)+' and deleted_at is null';
      open;
    end;

    if QCetak.RecordCount=0 then
    begin
      showmessage('Tidak ada data yang bisa dicetak !');
      exit;
    end else
    begin
      cLocation := ExtractFilePath(Application.ExeName);

      Report.LoadFromFile(cLocation +'report/rpt_RegisterCek'+ '.fr3');
      SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
      SetMemo(Report,'kota_pt',FHomeLogin.vKotaPRSH);
      SetMemo(Report,'periode',UpperCase(formatdatetime('dd/mm/yyyy',dtTanggal1.Date)+' s/d '+formatdatetime('dd/mm/yyyy',dtTanggal2.Date)));

      if edKaresidenan.Text<>'' then
      begin
        SetMemo(Report,'karesidenan',edKaresidenan.Text);
      end else begin
        SetMemo(Report,'karesidenan','SEMUA KARESIDENAN');
      end;

      Report.ShowReport();
    end;
  end;
end;

procedure TFRegisterCekMundur.btnCariClick(Sender: TObject);
begin
  if edKaresidenan.Text='' then
  begin
    MessageDlg('Karesidenan Wajib Diisi..!!', mtInformation, [mbOK], 0);
  end else begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT a.*,b.name karesidenan from t_register_cek a '+
                'left join t_region_karesidenan b on b.code=a.code_karesidenan '+
                'WHERE a.dpp_periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' and a.dpp_periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' '+
                'and a.code_karesidenan='+QuotedStr(kd_kares)+' and a.deleted_at is null ';
      open;
    end;
    if dm.Qtemp.IsEmpty then
    begin
      MessageDlg('Data Tidak Ada..!!', mtInformation, [mbOK], 0);
      Exit;
    end;

    with MemDetail do
    begin
      Close;
      Open;
      EmptyTable;
      DisableControls;
      try
        dm.Qtemp.First;
        while not dm.Qtemp.Eof do
        begin
          Append;
          if not dm.Qtemp.FieldByName('received_date').IsNull then
            FieldByName('tgl_terima').Value := dm.Qtemp.FieldByName('received_date').Value;
          if not dm.Qtemp.FieldByName('customer_code').IsNull then
            FieldByName('kode_pel').Value := dm.Qtemp.FieldByName('customer_code').Value;
          if not dm.Qtemp.FieldByName('customer_name').IsNull then
            FieldByName('nama_pel').Value := dm.Qtemp.FieldByName('customer_name').Value;
          if not dm.Qtemp.FieldByName('receipt_date').IsNull then
            FieldByName('tgl_tanda_terima').Value := dm.Qtemp.FieldByName('receipt_date').Value else FieldByName('tgl_tanda_terima').Clear;
          if not dm.Qtemp.FieldByName('name_bank_cek').IsNull then
            FieldByName('nama_bank_cek').Value := dm.Qtemp.FieldByName('name_bank_cek').Value;
          if not dm.Qtemp.FieldByName('ceq_due_date').IsNull then
            FieldByName('tgl_tempo_cek').Value := dm.Qtemp.FieldByName('ceq_due_date').Value;
          if not dm.Qtemp.FieldByName('no_cek').IsNull then
            FieldByName('no_cek').Value := dm.Qtemp.FieldByName('no_cek').Value;
          if not dm.Qtemp.FieldByName('amount_cek').IsNull then
            FieldByName('nilai_cek').Value := dm.Qtemp.FieldByName('amount_cek').Value;
          if not dm.Qtemp.FieldByName('code_collector').IsNull then
            FieldByName('code_collector').Value := dm.Qtemp.FieldByName('code_collector').Value;
          if not dm.Qtemp.FieldByName('name_collector').IsNull then
            FieldByName('name_collector').Value := dm.Qtemp.FieldByName('name_collector').Value;
          if not dm.Qtemp.FieldByName('no_invoice').IsNull then
            FieldByName('no_invoice').Value := dm.Qtemp.FieldByName('no_invoice').Value;
          if not dm.Qtemp.FieldByName('receipt_no').IsNull then
            FieldByName('no_tanda_terima').Value := dm.Qtemp.FieldByName('receipt_no').Value;
          if not dm.Qtemp.FieldByName('note').IsNull then
            FieldByName('keterangan').Value := dm.Qtemp.FieldByName('note').Value;
          if not dm.Qtemp.FieldByName('disbursment_date').IsNull then
            FieldByName('tgl_ditunaikan').Value := dm.Qtemp.FieldByName('disbursment_date').Value else FieldByName('tgl_ditunaikan').Clear;
          if not dm.Qtemp.FieldByName('bank_chanel').IsNull then
            FieldByName('bank_ditunaikan').Value := dm.Qtemp.FieldByName('bank_chanel').Value;
          if not dm.Qtemp.FieldByName('code_bank_chanel').IsNull then
            FieldByName('code_bank_ditunaikan').Value := dm.Qtemp.FieldByName('code_bank_chanel').Value;
          Post;
          dm.Qtemp.Next;
        end;
      finally
        EnableControls;
      end;
    end;
  end;
end;

procedure TFRegisterCekMundur.btPostingClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edKaresidenan.Text='' then
  begin
    MessageDlg('Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    if MessageDlg ('Apa Anda Yakin Akan Posting Data Ini.'+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
    begin
      Save;
      Dm.Koneksi.Commit;
      MessageDlg('Posting Berhasil..!!',mtInformation,[MBOK],0);
    end;
  end

  Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFRegisterCekMundur.DBGridEh1Columns8EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='register_cek_bank';
  FMasterData.update_grid('rekening_no','bank_name','currency','t_Bank','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
end;

procedure TFRegisterCekMundur.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='registercek';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFRegisterCekMundur.FormCreate(Sender: TObject);
begin
  registercekmundur:=Self;
end;

procedure TFRegisterCekMundur.FormDestroy(Sender: TObject);
begin
  registercekmundur:=nil;
end;

procedure TFRegisterCekMundur.FormShow(Sender: TObject);
begin
  kd_kares:='';
  edKaresidenan.Text:='';
  dtTanggal1.Date:=NOW();
  dtTanggal2.Date:=NOW();
  MemDetail.Close;
  MemDetail.Open;
  MemDetail.EmptyTable;
end;

initialization
  RegisterClass(TFRegisterCekMundur);

end.
