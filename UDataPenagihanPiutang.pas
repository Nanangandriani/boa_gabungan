unit UDataPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls, frxClass, frxDBSet,
  MemDS, DBAccess, Uni;

type
  TFDataPenagihanPiutang = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edNamaKolektor: TRzButtonEdit;
    edKodeKolektor: TEdit;
    dtCetak: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetail: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    dtTagih: TRzDateTimePicker;
    MemDetailkode_pel: TStringField;
    MemDetailnama_pel: TStringField;
    MemDetailtgl_faktur: TDateField;
    MemDetailtgl_tempo: TDateField;
    MemDetailjum_piutang: TCurrencyField;
    MemDetailtunai: TCurrencyField;
    MemDetailbank_resi: TStringField;
    MemDetailtgl_resi: TDateField;
    MemDetailresi: TCurrencyField;
    MemDetailno_cek: TStringField;
    MemDetailtgl_tempo_cek: TDateField;
    MemDetailnilai_cek: TCurrencyField;
    MemDetailkontra_bon: TCurrencyField;
    MemDetailno_invoice: TStringField;
    MemDetailno_invoice_tax: TStringField;
    btTampilkan: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    MemDetailnama_bank_cek: TStringField;
    edKdWilayah: TEdit;
    BtnCetakDpp: TRzBitBtn;
    Report: TfrxReport;
    frxDBDatasetDpp: TfrxDBDataset;
    QdppSudahTagih: TUniQuery;
    frxDBDatasetDPPBlmDitagih: TfrxDBDataset;
    Qdppbelumditagih: TUniQuery;
    MemDetailisdpp_prev: TSmallintField;
    Label3: TLabel;
    Label4: TLabel;
    edKaresidenan: TRzButtonEdit;
    edKabupaten: TRzButtonEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure edNamaKolektorButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridDetailColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btTampilkanClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BtnCetakDppClick(Sender: TObject);
    procedure ReportGetValue(const VarName: string; var Value: Variant);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure edKabupatenButtonClick(Sender: TObject);
    procedure edKaresidenanChange(Sender: TObject);
    procedure edKabupatenChange(Sender: TObject);
  private
    { Private declarations }
  public
    Status : integer;
    strKaresidenanID,strKabupatenID: String;
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure RefreshGrid;
  end;

var
  FDataPenagihanPiutang: TFDataPenagihanPiutang;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData, UDaftarTagihan, UMovingDPP, UDataModule,
  UHomeLogin, UMy_Function, UMainMenu;

procedure TFDataPenagihanPiutang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT *,customer_name from ('+
            ' SELECT "date_dpp", "date_print", "code_collector", "name_collector", '+
            ' "code_cust", "no_invoice", "no_invoice_tax", "date_trans", "date_tempo", '+
            ' "paid_amount", "cash", "receipt", "counter_bill", "bank_receipt", "date_receipt", '+
            ' "name_bank_cheque", "no_cheque", "cheque_amount1", "cheque_amount2", "date_tempo_cheque", "kodeprsh" '+
            ' FROM  "public"."t_dpp") a '+
            ' LEFT JOIN t_customer b ON a."code_cust"=b.customer_code '+
            ' WHERE "code_collector"='+QuotedStr(edKodeKolektor.Text)+' AND '+
            ' "date_dpp"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTagih.Date))+' '+
            ' Order By "date_dpp", "no_invoice" desc');
    open;
  end;

    FDataPenagihanPiutang.MemDetail.active:=false;
    FDataPenagihanPiutang.MemDetail.active:=true;
    FDataPenagihanPiutang.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataPenagihanPiutang.MemDetail.active:=false;
      FDataPenagihanPiutang.MemDetail.active:=true;
      FDataPenagihanPiutang.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataPenagihanPiutang.MemDetail.insert;
     FDataPenagihanPiutang.MemDetail['kode_pel']:=Dm.Qtemp.FieldByName('code_cust').AsString;
     FDataPenagihanPiutang.MemDetail['nama_pel']:=Dm.Qtemp.FieldByName('customer_name').AsString;
     FDataPenagihanPiutang.MemDetail['no_invoice']:=Dm.Qtemp.FieldByName('no_invoice').AsString;
     FDataPenagihanPiutang.MemDetail['no_invoice_tax']:=Dm.Qtemp.FieldByName('no_invoice_tax').AsString;
     FDataPenagihanPiutang.MemDetail['tgl_faktur']:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
     FDataPenagihanPiutang.MemDetail['tgl_tempo']:=Dm.Qtemp.FieldByName('date_tempo').AsDateTime;
     FDataPenagihanPiutang.MemDetail['jum_piutang']:=Dm.Qtemp.FieldByName('paid_amount').AsFloat;
     FDataPenagihanPiutang.MemDetail['tunai']:=Dm.Qtemp.FieldByName('cash').AsFloat;
     FDataPenagihanPiutang.MemDetail['bank_resi']:=Dm.Qtemp.FieldByName('bank_receipt').AsString;
     if (formatdatetime('yyyy-mm-dd',Dm.Qtemp.FieldByName('date_receipt').AsDateTime)='1899-12-30') OR (Dm.Qtemp.FieldByName('date_receipt').AsDateTime=null) then
      FDataPenagihanPiutang.MemDetail['tgl_resi']:=null
      else
      FDataPenagihanPiutang.MemDetail['tgl_resi']:=Dm.Qtemp.FieldByName('date_receipt').AsDateTime;
     FDataPenagihanPiutang.MemDetail['resi']:=Dm.Qtemp.FieldByName('receipt').AsFloat;
     FDataPenagihanPiutang.MemDetail['nama_bank_cek']:=Dm.Qtemp.FieldByName('name_bank_cheque').AsString;
     FDataPenagihanPiutang.MemDetail['no_cek']:=Dm.Qtemp.FieldByName('no_cheque').AsString;
     if (formatdatetime('yyyy-mm-dd',Dm.Qtemp.FieldByName('date_tempo_cheque').AsDateTime)='1899-12-30') OR (Dm.Qtemp.FieldByName('date_tempo_cheque').AsDateTime=null) then
      FDataPenagihanPiutang.MemDetail['tgl_tempo_cek']:=null
      else
     FDataPenagihanPiutang.MemDetail['tgl_tempo_cek']:=Dm.Qtemp.FieldByName('date_tempo_cheque').AsDateTime;
     FDataPenagihanPiutang.MemDetail['nilai_cek']:=Dm.Qtemp.FieldByName('cheque_amount1').AsFloat;
     FDataPenagihanPiutang.MemDetail['kontra_bon']:=Dm.Qtemp.FieldByName('counter_bill').AsFloat;
     FDataPenagihanPiutang.MemDetail['no_invoice']:=Dm.Qtemp.FieldByName('no_invoice').AsString;
     FDataPenagihanPiutang.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataPenagihanPiutang.ReportGetValue(const VarName: string;
  var Value: Variant);
var
  tgl,bulan,tahun: STRING;
begin
  tgl:=FormatDateTime('DD', dtCetak.Date);
  bulan:=convbulanInd(StrToInt(FormatDateTime('M', dtCetak.Date)));
  tahun:=FormatDateTime('YYYY', dtCetak.Date);

  if CompareText(VarName, 'parSBU') = 0 then
  Value := FHomeLogin.vKodePRSH;

  if CompareText(VarName, 'parNmKolektor') = 0 then
  Value := edNamaKolektor.Text;

  if CompareText(VarName, 'parTglDppCetak') = 0 then
  Value := tgl+' '+bulan+' '+tahun ;
end;

procedure TFDataPenagihanPiutang.Update;
begin
  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.add(  ' UPDATE "public"."t_dpp"  SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(Nm)+','+
              ' "date_print"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtCetak.Date))+','+
              ' "name_collector"='+QuotedStr(edNamaKolektor.Text)+', '+
              ' "code_cust"='+QuotedStr(MemDetail['kode_pel'])+', '+
              ' "no_invoice"='+QuotedStr(MemDetail['no_invoice'])+', '+
              ' "no_invoice_tax"='+QuotedStr(MemDetail['no_invoice_tax'])+', '+
              ' "date_trans"='+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_faktur']))+', '+
              ' "date_tempo"='+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo']))+', '+
              ' "paid_amount"='+QuotedStr(FloatToStr(MemDetail['jum_piutang']))+', '+
              ' "cash"='+QuotedStr(FloatToStr(MemDetail['tunai']))+', '+
              ' "receipt"='+QuotedStr(FloatToStr(MemDetail['resi']))+', '+
              ' "counter_bill"='+QuotedStr(FloatToStr(MemDetail['kontra_bon']))+', '+
              ' "bank_receipt"='+QuotedStr(MemDetail['bank_resi'])+' ');
              if ((MemDetail['tgl_resi']=null) OR (MemDetail['tgl_resi']=''))then
              begin
                sql.add( '  ,"date_receipt"=null, ');
              end  else
                sql.add(  '  ,"date_receipt"='+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', ');
    sql.add(  ' "name_bank_cheque"='+QuotedStr(MemDetail['nama_bank_cek'])+', '+
              ' "no_cheque"='+QuotedStr(MemDetail['no_cek'])+', '+
              ' "cheque_amount1"='+QuotedStr(MemDetail['nilai_cek'])+', '+
              ' "cheque_amount2"='+QuotedStr(MemDetail['nilai_cek'])+', ');
              if ((MemDetail['tgl_tempo_cek']=null) OR (MemDetail['tgl_tempo_cek']=''))then
              begin
                sql.add( '  "date_tempo_cheque"=null ');
              end  else
                sql.add( '  "date_tempo_cheque"='+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek']))+' ');
    sql.add(  ' Where "date_dpp"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTagih.Date))+' AND'+
              ' "code_collector"='+QuotedStr(edKodeKolektor.Text)+'');
    ExecSQL;
    end;
  MemDetail.Next;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FDataPenagihanPiutang.Refresh;
end;

procedure TFDataPenagihanPiutang.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:=' DELETE FROM "public"."t_dpp"'+
              ' WHERE "code_collector"='+QuotedStr(edKodeKolektor.Text)+' AND '+
              ' "date_trans"='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTagih.Date))+';';
    ExecSQL;
  end;

//ShowMessage(QuotedStr(MemDetail['nama_bank_cek']));
//ShowMessage(QuotedStr(MemDetail['no_cek']));
//ShowMessage(QuotedStr(FloatToStr(MemDetail['nilai_cek'])));
//ShowMessage(QuotedStr(MemDetail['isdpp_prev']));
//if not VarIsNull(MemDetail['tgl_resi']) then
//ShowMessage(QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi'])))
//else ShowMessage( 'Resi NULL, ');
//if not VarIsNull(MemDetail['tgl_resi']) then
//ShowMessage(QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek'])))
//else ShowMessage( 'Tempo NULL, ');

//ShowMessage(QuotedStr(MemDetail['tgl_resi']));

  MemDetail.First;
  while not MemDetail.Eof do
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(  ' INSERT INTO "public"."t_dpp" ("created_at", "created_by", '+
                ' "date_dpp", "date_print", '+
                ' "code_collector", "name_collector", "code_cust", "no_invoice", '+
                ' "no_invoice_tax", "date_trans", "date_tempo", "paid_amount", "cash", '+
                ' "receipt", "counter_bill", "bank_receipt", '+
                ' "date_receipt", "name_bank_cheque", "no_cheque", '+
                ' "cheque_amount1", "cheque_amount2", "date_tempo_cheque",isdpp_prev) '+
                ' Values( '+
                ' NOW(), '+
                ' '+QuotedStr(Nm)+', '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTagih.Date))+', '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtCetak.Date))+', '+
                ' '+QuotedStr(edKodeKolektor.Text)+', '+
                ' '+QuotedStr(edNamaKolektor.Text)+', '+
                ' '+QuotedStr(MemDetail['kode_pel'])+', '+
                ' '+QuotedStr(MemDetail['no_invoice'])+', '+
                ' '+QuotedStr(MemDetail['no_invoice_tax'])+', '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_faktur']))+', '+
                ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo']))+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['jum_piutang']))+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['tunai']))+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['resi']))+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['kontra_bon']))+', '+
                ' '+QuotedStr(MemDetail['bank_resi'])+', ');
                if not VarIsNull(MemDetail['tgl_resi']) then
                sql.add(  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', ')
                else sql.add( ' NULL, ');

//                if (MemDetail['tgl_resi']=NULL) OR (MemDetail['tgl_resi']='')then
//                begin
//                  sql.add( ' NULL, ');
//                end  else
//                  sql.add(  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', ');
      sql.add(  ' '+QuotedStr(MemDetail['nama_bank_cek'])+', '+
                ' '+QuotedStr(MemDetail['no_cek'])+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['nilai_cek']))+', '+
                ' '+QuotedStr(FloatToStr(MemDetail['nilai_cek']))+', ');

                if not VarIsNull(MemDetail['tgl_tempo_cek']) then
                sql.add( ''+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek']))+',')
                else sql.add( ' NULL, ');

                if not VarIsNull(MemDetail['isdpp_prev']) then
                sql.add( ' '+QuotedStr(MemDetail['isdpp_prev'])+' );')
                else sql.add( 'False );');


//              if ((MemDetail['tgl_tempo_cek']=NULL) OR (MemDetail['tgl_tempo_cek']=''))then
//              begin
//                sql.add( ' NULL,'+QuotedStr(MemDetail['isdpp_prev'])+' );');
//              end  else
//                sql.add( ''+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek']))+','+QuotedStr(MemDetail['isdpp_prev'])+' );');

      ExecSQL;
    end;
    MemDetail.Next;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  FDataPenagihanPiutang.Refresh;
  Close;
end;

procedure TFDataPenagihanPiutang.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPenagihanPiutang.BSaveClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
   dm.Koneksi.StartTransaction;
  try
  if edKodeKolektor.Text='' then
  begin
    MessageDlg('Data Kolektor Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKodeKolektor.SetFocus;
  end
  else if MemDetail.RecordCount=0 then
  begin
    MessageDlg('Tidak Ada Data Yang Dapat Diproses..!!',mtInformation,[mbRetry],0);
    edKodeKolektor.SetFocus;
  end
  else if Status = 0 then
  begin
  if MessageDlg ('Apa Anda Yakin Akan Simpan Data Ini.'+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
  begin
    Save;
    Dm.Koneksi.Commit;
  end;
  end
  else if Status = 1 then
  begin
  if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
  begin
    Update;
    Dm.Koneksi.Commit;
  end;
  end;
  Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFDataPenagihanPiutang.BtnCetakDppClick(Sender: TObject);
begin
  with QdppSudahTagih do
  begin
    close;
    sql.clear;
    sql.add('SELECT b.customer_code,b.customer_name,case when c.total_receivables is NULL '+
            'then 0 else c.total_receivables end total_receivables,a.no_invoice,a.date_dpp,'+
            'a.date_trans,a.date_tempo,a.paid_amount,a.cash,a.receipt,case when a.bank_receipt=''0'' then '''' else a.bank_receipt end bank_receipt,a.date_receipt,'+
            'a.name_bank_cheque,a.no_cheque,a.cheque_amount1,a.cheque_amount2,a.date_tempo_cheque from "public"."t_dpp" a  '+
            'LEFT JOIN t_customer b ON a."code_cust"=b.customer_code '+
            'LEFT JOIN (SELECT no_trans,code_cust,total_receivables  FROM "public"."vget_piutang") c '+
            'on c.code_cust=a.code_cust and c.no_trans=a.no_invoice '+
            'WHERE "code_collector"='+QuotedStr(edKodeKolektor.Text)+' AND '+
            ' "date_dpp"='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTagih.Date))+' '+
            'and isdpp_prev=True  Order By "date_dpp", "no_invoice" desc');
    open;
  end;

  with Qdppbelumditagih do
  begin
    close;
    sql.clear;
    sql.add('SELECT b.customer_code,b.customer_name,case when c.total_receivables is NULL '+
            'then 0 else c.total_receivables end total_receivables,a.no_invoice,a.date_dpp,'+
            'a.date_trans,a.date_tempo,a.paid_amount,a.cash,a.receipt,case when a.bank_receipt=''0'' then '''' else a.bank_receipt end bank_receipt,a.date_receipt,'+
            'a.name_bank_cheque,a.no_cheque,a.cheque_amount1,a.cheque_amount2,a.date_tempo_cheque from "public"."t_dpp" a  '+
            'LEFT JOIN t_customer b ON a."code_cust"=b.customer_code '+
            'LEFT JOIN (SELECT no_trans,code_cust,total_receivables  FROM "public"."vget_piutang") c '+
            'on c.code_cust=a.code_cust and c.no_trans=a.no_invoice '+
            'WHERE "code_collector"='+QuotedStr(edKodeKolektor.Text)+' AND '+
            ' "date_dpp"='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTagih.Date))+' '+
            'and isdpp_prev=False Order By "date_dpp", "no_invoice" desc');
    open;
  end;

  cLocation := ExtractFilePath(Application.ExeName);

  //ShowMessage(cLocation);
  Report.LoadFromFile(cLocation +'report/rpt_daftar_penagihan_piutang'+ '.fr3');
//  SetMemo(Report,'nama_pt',FHomeLogin.vNamaPRSH);
//  SetMemo(Report,'kota',FHomeLogin.vKotaPRSH);
//  SetMemo(Report,'alamat',FHomeLogin.vAlamatPRSH);
//  SetMemo(Report,'telp','Phone : '+FHomeLogin.vTelpPRSH);

   //Report.DesignReport();
   //Report.ShowReport();
//  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')= 'dev' then
//  begin
//    Report.DesignReport();
//  end else
//  begin
    Report.ShowReport();
//  end;

end;

procedure TFDataPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  if edNamaKolektor.Text='' then
  begin
    MessageDlg('Kolektor Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    MemDetail.EmptyTable;
    MemDetail.Active:=true;
    RefreshGrid;
  end;
end;

procedure TFDataPenagihanPiutang.Clear;
begin
  dtTagih.Date:=now();
  dtCetak.Date:=now();
  edKdWilayah.Text:='';
  edKaresidenan.Text:='';
  edKabupaten.Text:='';
  edNamaKolektor.Clear;
  edKodeKolektor.Clear;
  MemDetail.EmptyTable;
  QdppSudahTagih.Close;
  Qdppbelumditagih.Close;

  dtCetak.Enabled:=True;
  dtTagih.Enabled:=True;
  edKabupaten.Enabled:=True;
  edKaresidenan.Enabled:=True;
  edNamaKolektor.Enabled:=True;
  btTampilkan.Enabled:=True;
  DBGridDetail.Columns[1].EditButton.Enabled:=True;
  DBGridDetail.Columns[2].EditButton.Enabled:=True;

  MemDetail.Close;
  MemDetail.Open;
end;

procedure TFDataPenagihanPiutang.DBGridDetailColumns1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  if edNamaKolektor.Text<>'' then
  begin
    Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
    Fbrowse_data_pelanggan.vcall:='dpp';
    Fbrowse_data_pelanggan.ShowModal;
  end else
  begin
    MessageDlg('Kolektor Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDataPenagihanPiutang.DBGridDetailColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FDaftarTagihan.vcall:='dpp';
  FDaftarTagihan.kd_outlet:=MemDetail['kode_pel'];
  FDaftarTagihan.RefreshGrid;
  FDaftarTagihan.show;
end;

procedure TFDataPenagihanPiutang.edKabupatenButtonClick(Sender: TObject);
begin
  if edKaresidenan.Text<>'' then
  begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='dppkab';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL AND code_karesidenan='+QuotedStr(strKaresidenanID)+'');
    FMasterData.ShowModal;
  end else
  begin
    MessageDlg('TP wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDataPenagihanPiutang.edKabupatenChange(Sender: TObject);
begin
  edKodeKolektor.Text;
  edNamaKolektor.Text;
end;

procedure TFDataPenagihanPiutang.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data TP';
  FMasterData.vcall:='dppkares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFDataPenagihanPiutang.edKaresidenanChange(Sender: TObject);
begin
  edKabupaten.Text:='';
  strKabupatenID:='';
  edKodeKolektor.Text:='';
  edNamaKolektor.Text:='';
end;

procedure TFDataPenagihanPiutang.edNamaKolektorButtonClick(Sender: TObject);
begin
  if Status=0 then
  begin
    if (MemDetail.RecordCount=0) AND (edKabupaten.Text<>'') then
    begin
      FMasterData.Caption:='Master Data Kolektor';
      FMasterData.vcall:='m_kolektor';
      FMasterData.update_grid('code','name','concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency) ','"public"."t_collector"','WHERE	deleted_at IS NULL AND code_regency='+QuotedStr(strKabupatenID)+' ');
      FMasterData.ShowModal;
    end else begin
      MessageDlg('Kabupaten wajib di isi dan Data harus kosong..!!',mtInformation,[mbRetry],0);
    end;
  end else
  begin
    if (edKabupaten.Text<>'') then
    begin
      FMasterData.Caption:='Master Data Kolektor';
      FMasterData.vcall:='m_kolektor';
      FMasterData.update_grid('code','name','concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency) ','"public"."t_collector"','WHERE	deleted_at IS NULL AND code_regency='+QuotedStr(strKabupatenID)+' ');
      FMasterData.ShowModal;
    end else begin
      MessageDlg('Kabupaten wajib di isi dan Data harus kosong..!!',mtInformation,[mbRetry],0);
    end;
  end;
end;

procedure TFDataPenagihanPiutang.RzBitBtn1Click(Sender: TObject);
begin
  FMovingDPP.show;
end;

end.
