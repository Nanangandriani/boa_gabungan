unit UNewFakturPajak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, Vcl.StdCtrls, RzCmboBx,
  RzButton, Vcl.ExtCtrls, Vcl.Samples.Gauges, RzPanel, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFinput_faktur_pajak = class(TForm)
    DBGridEh1: TDBGridEh;
    Memfaktur: TMemTableEh;
    Memfakturno_faktur_pajak: TStringField;
    panel_loader: TRzPanel;
    progress: TGauge;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    eddari: TEdit;
    edsampai: TEdit;
    ednoawal_fak: TEdit;
    pninput: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    CBtahun: TRzComboBox;
    RzPanel1: TRzPanel;
    BSimpan: TRzBitBtn;
    BBatal: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
  end;

var
  Finput_faktur_pajak: TFinput_faktur_pajak;
  Status: Integer;

implementation

{$R *.dfm}

uses UDataModule, UFakturPajak;


procedure isiTahun(RzCombobox: TRzComboBox);
var
   thn, bln, hari: Word;
   i: Integer;
begin
   DecodeDate(Date(),thn,bln,hari);
   RzCombobox.Items.Clear;
   for i := thn to (thn+5) do
   begin
    RzCombobox.Items.Add(IntToStr(i));
   end;
   RzCombobox.ItemIndex:=0;
end;

procedure TFinput_faktur_pajak.BSimpanClick(Sender: TObject);
begin
    if not dm.Koneksi.InTransaction then
      dm.Koneksi.StartTransaction;
    try
    if CBtahun.Text='' then
    begin
      MessageDlg('Tahun Wajib Diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Memfaktur['no_faktur_pajak'] = null then
    begin
      MessageDlg('Faktur Tidak Boleh Kosong..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      Save;
      Dm.Koneksi.Commit;
    end
    else if Status = 1 then
    begin
      //Update;
      //Dm.Koneksi.Commit;
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

procedure TFinput_faktur_pajak.clear;
begin
   eddari.Text:='';
   edsampai.Text:='';
   Memfaktur.EmptyTable;
end;

procedure TFinput_faktur_pajak.FormCreate(Sender: TObject);
begin
   isiTahun(Cbtahun);
end;

procedure TFinput_faktur_pajak.RzBitBtn1Click(Sender: TObject);
var
c,dari,sampai,urut:Integer;
kode,cek_faktur : String;
begin
    Memfaktur.EmptyTable;
    dari:=StrToInt(eddari.Text);
    sampai:=StrToInt(edsampai.Text);

    kode := Copy('00000000'+eddari.Text, length('00000000'+eddari.Text)-7, 8);
    cek_faktur:=ednoawal_fak.Text+'.'+kode;

    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select no_faktur from t_faktur where no_faktur='+QuotedStr(cek_faktur);
      open;
    end;

    if dm.Qtemp.RecordCount=1 then
    begin
      MessageDlg('Salah satu No Faktur sudah ada..!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      Memfaktur.Insert;
      Memfaktur['no_faktur_pajak']:=ednoawal_fak.Text+'.'+kode;
      for c:= dari to sampai do
      begin
        urut := c+1;
        kode := inttostr(urut);
        kode := Copy('00000000'+kode, length('00000000'+kode)-7, 8);
        Memfaktur.Insert;
        Memfaktur['no_faktur_pajak']:=ednoawal_fak.Text+'.'+kode;
      end;
      Memfaktur.First;
      Memfaktur.Delete;
    end;
end;

procedure TFinput_faktur_pajak.Save;
var
  Urut,max,min : Integer;
begin
    with dm.QTemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select periode from t_faktur where tahun='+QuotedStr(CBtahun.Text);
      Open;
    end;

    if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
    if Dm.Qtemp2.RecordCount > 0 then
    begin
        With Dm.Qtemp2 do
        begin
          Close;
          Sql.Clear;
          Sql.Text := 'select max(periode) as periode from t_faktur where tahun='+QuotedStr(CBtahun.Text);
          Open;
        end;
        Urut := dm.Qtemp2.FieldByName('periode').AsInteger + 1;
    end;

    max:= dm.Qtemp2.RecordCount;
    Memfaktur.First;
    progress.Progress:=0;
    progress.MaxValue:= max;
    while not Memfaktur.Eof do
    begin
      Panel_loader.Visible:= True;
      Application.ProcessMessages;
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='Insert Into t_faktur(tahun,periode,no_faktur,status) '+
        'Values (:partahun,:parperiode,:parnofaktur, :parstatus)';
        parambyname('partahun').Value:=CBtahun.Text;
        parambyname('parperiode').Value:=urut;
        parambyname('parnofaktur').Value:=Memfaktur['no_faktur_pajak'];
        parambyname('parstatus').Value:='Non Aktif';
        execsql;
      end;
      progress.Progress:= progress.Progress+1;
      Memfaktur.Next;
    end;
    panel_loader.Visible:=false;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FFakturPajak.Refresh;
end;

procedure TFinput_faktur_pajak.BBatalClick(Sender: TObject);
begin
   Close;
end;

end.
