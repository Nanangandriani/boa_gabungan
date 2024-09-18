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
    MemDetailnama_bank: TStringField;
    MemDetailno_cek: TStringField;
    MemDetailtgl_tempo_cek: TDateField;
    MemDetailnilai_cek: TCurrencyField;
    MemDetailkontra_bon: TCurrencyField;
    MemDetailno_invoice: TStringField;
    MemDetailno_invoice_tax: TStringField;
    btTampilkan: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
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
  end;

var
  FDataPenagihanPiutang: TFDataPenagihanPiutang;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData, UDaftarTagihan, UMovingDPP, UDataModule,
  UWeb;
procedure TFDataPenagihanPiutang.Update;
begin
  ShowMessage('Update');
end;

procedure TFDataPenagihanPiutang.Save;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM "cash_banks"."t_dpp"'+
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
    sql.Text:=' INSERT INTO "cash_banks"."t_dpp" ("date_dpp", "date_print", '+
              ' "code_collector", "name_collector", "code_cust", "no_invoice", '+
              ' "no_invoice_tax", "date_trans", "date_tempo", "paid_amount", "cash", '+
              ' "receipt", "counter_bill", "code_bank", "code_bank_receipt", '+
              ' "code_bank_resi", "date_receipt", "name_bank", "no_cheque", '+
              ' "cheque_amount1", "cheque_amount2", "date_tempo_cheque") '+
              ' Values( '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTagih.Date))+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtCetak.Date))+', '+
              ' '+QuotedStr(edKodeKolektor.Text)+', '+
              ' '+QuotedStr(edNamaKolektor.Text)+', '+
              ' '+QuotedStr(MemDetail['kode_pel'])+', '+
              ' '+QuotedStr(MemDetail['no_tagihan'])+', '+
              ' '+QuotedStr(MemDetail['no_faktur'])+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_faktur']))+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo']))+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['jum_piutang']))+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['tunai']))+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['resi']))+', '+
              ' '+QuotedStr(FloatToStr(MemDetail['kontra_bon']))+', '+
              ' '+QuotedStr(MemDetail['bank_resi'])+', '+
              ' '+QuotedStr(MemDetail['bank_resi'])+', '+
              ' '+QuotedStr(MemDetail['bank_resi'])+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_resi']))+', '+
              ' '+QuotedStr(MemDetail['nama_bank'])+', '+
              ' '+QuotedStr(MemDetail['no_cek'])+', '+
              ' '+QuotedStr(MemDetail['nilai_cek'])+', '+
              ' '+QuotedStr(MemDetail['nilai_cek'])+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetail['tgl_tempo_cek']))+' );';
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
  FWeb.show
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
