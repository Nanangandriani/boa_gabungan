unit UNoteCancel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, RzEdit, RzButton,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TFNoteCancel = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    MemAlasan: TRzMemo;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    edNoTransaksi: TRzEdit;
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall,vfieldtransno,vtbl: String;
  end;

var
  FNoteCancel: TFNoteCancel;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu;

procedure TFNoteCancel.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNoteCancel.BSaveClick(Sender: TObject);
begin
  if edNoTransaksi.Text='' then
  begin
    MessageDlg('No Transaksi Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else if MemAlasan.Text='' then
  begin
    MessageDlg('Alasan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    if not dm.Koneksi.InTransaction then
     dm.Koneksi.StartTransaction;
    try
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE '+vtbl+' SET '+
                  ' "deleted_at"=now(), '+
                  ' "deleted_by"='+QuotedStr(Nm)+','+
                  ' cancel_reason='+QuotedStr(MemAlasan.Text)+' '+
                  ' WHERE '+vfieldtransno+'='+QuotedStr(edNoTransaksi.Text);
        ExecSQL;
      end;

      MessageDlg('Proses Pembatalan Berhasil..!!',mtInformation,[MBOK],0);
      Dm.Koneksi.Commit;
      Close;
    Except on E :Exception do
      begin
        begin
          MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
          Dm.koneksi.Rollback ;
        end;
      end;
    end;
  end;
end;

procedure TFNoteCancel.FormShow(Sender: TObject);
begin
  MemAlasan.Text:='';
end;

end.
