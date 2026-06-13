unit UDataApproveDaftarPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, RzLabel, Vcl.Mask, RzEdit, Vcl.ComCtrls, RzDTP;

type
  TFDataApproveDaftarPenagihanPiutang = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPanel1: TRzPanel;
    edTglDPP: TRzEdit;
    RzLabel1: TRzLabel;
    edKodeKolektor: TRzEdit;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    edNikKolektor: TRzEdit;
    RzLabel4: TRzLabel;
    edNamaKolektor: TRzEdit;
    edNamaPelanggan: TRzEdit;
    RzLabel5: TRzLabel;
    edNamaPKP: TRzEdit;
    RzLabel6: TRzLabel;
    edNoNota: TRzEdit;
    RzLabel7: TRzLabel;
    edTglFaktur: TRzEdit;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    RzLabel10: TRzLabel;
    edTunai: TRzNumericEdit;
    edJumlahResi: TRzNumericEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    edBankResi: TRzEdit;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    edKontraBon: TRzNumericEdit;
    RzLabel15: TRzLabel;
    edJumlahCekGiro: TRzNumericEdit;
    RzLabel16: TRzLabel;
    edBankCekGiro: TRzEdit;
    RzLabel17: TRzLabel;
    edNoCekGiro: TRzEdit;
    RzLabel18: TRzLabel;
    edPiutang: TRzNumericEdit;
    edTglResi: TRzDateTimePicker;
    edTglCekGiro: TRzDateTimePicker;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_dpp:String;
    procedure Clear;

  end;

var
  FDataApproveDaftarPenagihanPiutang: TFDataApproveDaftarPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UHomeLogin, UMy_Function,
  UListApproveDaftarPenagihanPiutang;

procedure TFDataApproveDaftarPenagihanPiutang.BSaveClick(Sender: TObject);
begin

  if MessageDlg ('Anda Yakin Ingin Menyimpan Data Ini?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
  begin
    if not dm.Koneksi.InTransaction then
     dm.Koneksi.StartTransaction;
    try
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.add(' UPDATE "public"."t_dpp_temp" SET '+
                ' status_correction=0, '+
                ' updated_at=NOW(),'+
                ' updated_by='+QuotedStr(Nm)+','+
                ' cash='+QuotedStr(StringReplace(FloatToStr(edTunai.value),',','.',[]))+','+
                ' receipt='+QuotedStr(StringReplace(FloatToStr(edJumlahResi.value),',','.',[]))+','+
                ' counter_bill='+QuotedStr(StringReplace(FloatToStr(edKontraBon.value),',','.',[]))+','+
                ' bank_receipt='+QuotedStr(edBankResi.Text)+','+
                ' date_receipt='+QuotedStr(FormatDateTime('yyyy-mm-dd',edTglResi.Date))+','+
                ' name_bank_cheque='+QuotedStr(edBankCekGiro.Text)+','+
                ' no_cheque='+QuotedStr(edNoCekGiro.Text)+','+
                ' cheque_amount1='+QuotedStr(StringReplace(FloatToStr(edJumlahCekGiro.value),',','.',[]))+','+
                ' date_tempo_cheque='+QuotedStr(FormatDateTime('yyyy-mm-dd',edTglCekGiro.Date))+' '+
                ' Where id='+QuotedStr(id_dpp)+'');
        ExecSQL;
      end;
      Dm.Koneksi.Commit;
      MessageDlg('Data berhasil disimpan!', mtInformation, [mbOK], 0);
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

procedure TFDataApproveDaftarPenagihanPiutang.Clear;
begin
  id_dpp:='';
  edKodeKolektor.Text:='';
  edNamaKolektor.Text:='';
  edNikKolektor.Text:='';
  edTglDPP.Text:='';
  edNamaPelanggan.Text:='';
  edNamaPKP.Text:='';
  edNoNota.Text:='';
  edTglFaktur.Text:='';
  edPiutang.value:=0.00;
  edTunai.value:=0.00;
  edJumlahResi.value:=0.00;
  edKontraBon.Value:=0.00;
  edJumlahCekGiro.Value:=0.00;
  edBankResi.Text:='';
  edTglResi.Checked := False;
  edBankCekGiro.Text:='';
  edNoCekGiro.Text:='';
  edTglCekGiro.Checked := False;
end;

procedure TFDataApproveDaftarPenagihanPiutang.BBatalClick(Sender: TObject);
begin
  Close;
end;

end.
