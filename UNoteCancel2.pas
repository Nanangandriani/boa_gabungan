unit UNoteCancel2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzEdit, RzLabel;

type
  TFNoteCancel2 = class(TForm)
    RzLabel1: TRzLabel;
    MemAlasan: TRzMemo;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall,vtransno: String;
  end;

var
  FNoteCancel2: TFNoteCancel2;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UListApproveDaftarPenagihanPiutang, UMainMenu;

procedure TFNoteCancel2.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNoteCancel2.BSaveClick(Sender: TObject);
begin
  if MemAlasan.Text='' then
  begin
    MessageDlg('Alasan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else begin
    if vcall='REJECT BAYAR DPP' then
    begin

      if MessageDlg('Apakah Anda yakin ingin Reject data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if not dm.Koneksi.InTransaction then
        dm.Koneksi.StartTransaction;
        try
          with dm.Qtemp do
          begin
            close;
            sql.clear;
            sql.Text:='UPDATE "t_dpp_temp" SET '+
                    ' status=99, '+
                    ' updated_at=NOW(),'+
                    ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
                    ' approved_rejected_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
                    ' approved_rejected_at=NOW(), '+
                    ' approved_rejected_note='+QuotedStr(MemAlasan.Text)+' '+
                    ' Where id in ('+Copy(vtransno, 1, Length(vtransno) - 1)+')';
            ExecSQL;
          end;
          Dm.Koneksi.Commit;
          MessageDlg('Reject Berhasil..!!',mtInformation,[MBOK],0);
          FListApproveDaftarPenagihanPiutang.QDPP.Close;
          FListApproveDaftarPenagihanPiutang.QDPP.Open;
          Close;
    //      FListApproveDaftarPenagihanPiutang.QDetail.Close;
    //      FListApproveDaftarPenagihanPiutang.QDetail.Open;
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

    if vcall='NOTE BAYAR DPP' then
    begin
      if not dm.Koneksi.InTransaction then
      dm.Koneksi.StartTransaction;
      try
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:='INSERT INTO "public"."t_dpp_temp_note" (name,note,created_at,id_dpp_temp) '+
                    'VALUES ('+QuotedStr(NmFull)+','+QuotedStr(MemAlasan.Text)+',NOW(),'+vtransno+')';
          ExecSQL;
        end;
        Dm.Koneksi.Commit;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        FListApproveDaftarPenagihanPiutang.QDPP.Close;
        FListApproveDaftarPenagihanPiutang.QDPP.Open;
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
end;

procedure TFNoteCancel2.FormShow(Sender: TObject);
begin
  MemAlasan.Text:='';
end;

end.
