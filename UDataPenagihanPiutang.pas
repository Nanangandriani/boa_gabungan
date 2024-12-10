unit UDataPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

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
    procedure edNamaKolektorButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridDetailColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btTampilkanClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status : integer;
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
  UHomeLogin;

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
     FDataPenagihanPiutang.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
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
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
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
                sql.add( '  "date_receipt"=null, ');
              end  else
                sql.add(  '  "date_receipt"='+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', ');
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
              ' "cheque_amount1", "cheque_amount2", "date_tempo_cheque") '+
              ' Values( '+
              ' NOW(), '+
              ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
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
              if ((MemDetail['tgl_resi']=null) OR (MemDetail['tgl_resi']=''))then
              begin
                sql.add( ' null, ');
              end  else
                sql.add(  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', ');
    sql.add(  ' '+QuotedStr(MemDetail['nama_bank_cek'])+', '+
              ' '+QuotedStr(MemDetail['no_cek'])+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['nilai_cek']))+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['nilai_cek']))+', ');
              if ((MemDetail['tgl_tempo_cek']=null) OR (MemDetail['tgl_tempo_cek']=''))then
              begin
                sql.add( ' null );');
              end  else
                sql.add( ''+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek']))+' );');
    ExecSQL;
    end;
  MemDetail.Next;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FDataPenagihanPiutang.Refresh;
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

procedure TFDataPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  MemDetail.EmptyTable;
  MemDetail.Active:=true;
  RefreshGrid;
end;

procedure TFDataPenagihanPiutang.Clear;
begin
  dtTagih.Date:=now();
  dtCetak.Date:=now();
  edNamaKolektor.Clear;
  edKodeKolektor.Clear;
  MemDetail.EmptyTable;
end;


procedure TFDataPenagihanPiutang.DBGridDetailColumns1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='dpp';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataPenagihanPiutang.DBGridDetailColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  FDaftarTagihan.vcall:='dpp';
  FDaftarTagihan.kd_outlet:=MemDetail['kode_pel'];
  FDaftarTagihan.RefreshGrid;
  FDaftarTagihan.show;
end;

procedure TFDataPenagihanPiutang.edNamaKolektorButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kolektor';
  FMasterData.vcall:='m_kolektor';
  FMasterData.update_grid('code','name','concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency) ','"public"."t_collector"','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFDataPenagihanPiutang.RzBitBtn1Click(Sender: TObject);
begin
  FMovingDPP.show;
end;

end.
