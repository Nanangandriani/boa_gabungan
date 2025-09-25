unit UNew_PiutangBeramasalah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzLabel, RzEdit, Vcl.Mask, RzBtnEdt, Vcl.ComCtrls, RzDTP;

type
  TFNew_PiutangBermasalah = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    edPelanggan: TRzButtonEdit;
    edNoNota: TRzButtonEdit;
    MemKet: TRzMemo;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RxLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    dtTglNota: TRzDateTimePicker;
    edJumlahPiutang: TRzNumericEdit;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure edPelangganButtonClick(Sender: TObject);
    procedure edNoNotaButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodePelanggan,strID: String;
    Status: Integer;
    procedure Clear;
    procedure Save;
    procedure Update;
  end;

var
  FNew_PiutangBermasalah: TFNew_PiutangBermasalah;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMainMenu, Ubrowse_pelanggan,
  UBrowseNotaPenjualan, UListPiutangBermasalah;

procedure TFNew_PiutangBermasalah.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.text:='Insert into t_selling_receivables (customer_code, trans_no_nota, '+
              'amount, date_nota, note, created_by, created_at) '+
            ' VALUES ( '+
            ' '+QuotedStr(strKodePelanggan)+', '+
            ' '+QuotedStr(edNoNota.Text)+', '+
            ' '+QuotedStr(FloatToStr(edJumlahPiutang.Value))+', '+
            ' '+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTglNota.Date))+', '+
            ' '+QuotedStr(MemKet.Text)+', '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' NOW()  );';
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Close;
//  FMainMenu.TampilTabForm2;
  FListPiutangBermasalah.Refresh;
end;

procedure TFNew_PiutangBermasalah.Update;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.text:='UPDATE t_selling_receivables  SET customer_code='+QuotedStr(strKodePelanggan)+', '+
              'trans_no_nota='+QuotedStr(edNoNota.Text)+', '+
              'amount='+QuotedStr(FloatToStr(edJumlahPiutang.Value))+', '+
              'date_nota='+QuotedStr(FormatDateTime('yyyy-mm-dd',dtTglNota.Date))+', '+
              'note='+QuotedStr(MemKet.Text)+', updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              'updated_at=NOW() '+
              'WHERE id='+QuotedStr(strID);
    ExecSQL;
  end;
  MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Close;
//  FMainMenu.TampilTabForm2;
  FListPiutangBermasalah.Refresh;
end;

procedure TFNew_PiutangBermasalah.BSaveClick(Sender: TObject);
begin
  if edPelanggan.Text='' then
  begin
    MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if edNoNota.Text='' then
  begin
    MessageDlg('No Nota Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if MemKet.Text='' then
  begin
    MessageDlg('Keterangan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    if not dm.Koneksi.InTransaction then
    dm.Koneksi.StartTransaction;
    try
    begin
      if Status=0 then
      begin
        Save;
        Dm.Koneksi.Commit;
      end
      else if Status = 1 then
      begin
        if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
        begin
          Update;
          Dm.Koneksi.Commit;
        end;
      end;
    end;
    Except on E :Exception do
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFNew_PiutangBermasalah.Clear;
begin
  strID:='';
  strKodePelanggan:='';
  edPelanggan.Text:='';
  edNoNota.Text:='';
  dtTglNota.Date:=NOW;
  edJumlahPiutang.Value:=0.00;
  MemKet.Text:='';
end;

procedure TFNew_PiutangBermasalah.edNoNotaButtonClick(Sender: TObject);
begin
  FBrowseNotaPenjualan.strKodePelanggan:=FNew_PiutangBermasalah.strKodePelanggan;
  FBrowseNotaPenjualan.edPelanggan.Text:=FNew_PiutangBermasalah.edPelanggan.Text;
  FBrowseNotaPenjualan.vcall:='piutang_bermasalah';
  FBrowseNotaPenjualan.ShowModal;
end;

procedure TFNew_PiutangBermasalah.edPelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='piutang_bermasalah';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFNew_PiutangBermasalah.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
