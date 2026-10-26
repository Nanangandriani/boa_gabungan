unit UDataPeLakuBiaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, RzButton, RzCmboBx;

type
  TFDataPeLakuBiaya = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    edNama: TEdit;
    edNikKaryawan: TEdit;
    edKode: TEdit;
    Panel2: TPanel;
    btSimpan: TRzBitBtn;
    btBatal: TRzBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    edNoTelp: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    memAlamat: TMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdKaresidenan: TRzButtonEdit;
    kd_karesidenan: TEdit;
    Cb_sbu: TRzComboBox;
    Ed_serial: TEdit;
    Labelsbu2: TLabel;
    Labelsbu: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ednik_ktp: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    edno_rek: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    ednm_ptkp: TRzButtonEdit;
    edkd_ptkp: TEdit;
    Label21: TLabel;
    cbjenis_kelamin: TRzComboBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cbjenis_biaya: TRzComboBox;
    procedure btBatalClick(Sender: TObject);
    procedure btSimpanClick(Sender: TObject);
    procedure EdKaresidenanButtonClick(Sender: TObject);
    procedure kd_karesidenanChange(Sender: TObject);
    procedure Cb_sbuSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ednm_ptkpButtonClick(Sender: TObject);

  private
    { Private declarations }
  public
    Status :integer;
    { Public declarations }
    procedure Clear;
    procedure Autocode;
    procedure Autocode_perkiraan;
    procedure load_sbu_code;
    procedure load_combo;
  end;

var
  FDataPeLakuBiaya: TFDataPeLakuBiaya;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UDataListPelakuBiaya,UMasterData, UMy_Function;

procedure TFDataPeLakuBiaya.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With Dm.Qtemp do
  begin
    Close;
    SQL.Clear;
    Sql.Text :=' select * from t_cost_actors ';
    open;
  end;

  if  Dm.Qtemp.RecordCount = 0 then urut := 1 else
  if  Dm.Qtemp.RecordCount > 0 then
  begin
      With  Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text :=' select count(code) as hasil '+
                   ' from t_cost_actors ';
        Open;
      end;
      Urut :=  Dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  Edkode.Clear;
  kode := inttostr(urut);
  if Length(kode)=1 then
  begin
    kode := '0000'+kode;
  end
  else
  if Length(kode)=2 then
  begin
    kode := '000'+kode;
  end
  else
  if Length(kode)=3 then
  begin
    kode := '00'+kode;
  end
  else
  if Length(kode)=4 then
  begin
    kode := '0'+kode;
  end
  else
  if Length(kode)=5 then
  begin
    kode := kode;
  end;
  Edkode.Text := 'PB'+(ed_serial.Text)+Kode;
end;

procedure TFDataPeLakuBiaya.btBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPeLakuBiaya.btSimpanClick(Sender: TObject);
var
  vjns_kelamin :string;
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Ednama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Status = 0 then
      begin
      Autocode;
      //if application.MessageBox('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+'ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        vjns_kelamin:=SelectRow('SELECT code FROM t_type_gender where description='+QuotedSTR(cbjenis_kelamin.text)+' ');
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "public"."t_cost_actors" ("created_at", "code", '+
                    ' "name", "nik_employee", "phone_number", "address", "created_by", "karesidenan_code", '+
                    ' "no_rekening", "nik_ktp", "stat_ptkp", "type_gender", "type_cost" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(Edkode.Text)+', '+
                    ' '+QuotedStr(Ednama.Text)+', '+
                    ' '+QuotedStr(edNikKaryawan.Text)+', '+
                    ' '+QuotedStr(EdNoTelp.Text)+', '+
                    ' '+QuotedStr(MemAlamat.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                    ' '+QuotedStr(kd_karesidenan.Text)+', '+
                    ' '+QuotedStr(edno_rek.Text)+', '+
                    ' '+QuotedStr(ednik_ktp.Text)+', '+
                    ' '+QuotedStr(edkd_ptkp.Text)+', '+
                    ' '+QuotedStr(vjns_kelamin)+', '+
                    ' '+IntToStr(cbjenis_biaya.ItemIndex)+' '+
                    ' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        vjns_kelamin:=SelectRow('SELECT code FROM t_type_gender where description='+QuotedSTR(cbjenis_kelamin.text)+' ');
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "public"."t_cost_actors" SET '+
                    ' "name"='+QuotedStr(Ednama.Text)+', '+
                    ' "nik_employee"='+QuotedStr(edNikKaryawan.Text)+', '+
                    ' "phone_number"='+QuotedStr(EdNoTelp.Text)+', '+
                    ' "address"='+QuotedStr(MemAlamat.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                    ' "karesidenan_code"='+QuotedStr(kd_karesidenan.Text)+', '+
                    ' "no_rekening"='+QuotedStr(edno_rek.Text)+', '+
                    ' "nik_ktp"='+QuotedStr(ednik_ktp.Text)+', '+
                    ' "stat_ptkp"='+QuotedStr(edkd_ptkp.Text)+', '+
                    ' "type_gender"='+QuotedStr(vjns_kelamin)+', '+
                    ' "type_cost"='+IntToStr(cbjenis_biaya.ItemIndex)+' '+
                    ' WHERE "code"='+QuotedStr(Edkode.Text)+';';
          ExecSQL;
        end;
        MessageDlg('Update Berhasil..!!',mtInformation,[MBOK],0);
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
      FDataListPelakuBiaya.ActROExecute(Sender);
      FDataPeLakuBiaya.Close;
end;

procedure TFDataPeLakuBiaya.Cb_sbuSelect(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:=' SELECT company_code,company_serial FROM t_company '+
               ' WHERE company_code='+QuotedStr(Cb_sbu.Text)+' ';
     Open;
   end;
   ed_serial.Text:=dm.Qtemp.FieldByName('company_serial').AsString;
   Autocode;
end;

procedure TFDataPeLakuBiaya.Clear;
begin
  Edkode.Clear;
  Ednama.Clear;
  edNikKaryawan.Clear;
  EdNoTelp.Clear;
  MemAlamat.Clear;

   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='SELECT company_code,company_serial FROM t_company WHERE company_code='+QuotedStr(FHomeLogin.vKodePRSH)+' ';
     Open;
   end;
   ed_serial.Text:=dm.Qtemp.FieldByName('company_serial').AsString;
end;


procedure TFDataPeLakuBiaya.EdKaresidenanButtonClick(Sender: TObject);
begin
    FMasterData.Caption:='Master Data Karesidenan';
    FMasterData.vcall:='pelaku_biaya';
    FMasterData.update_grid('code','name','description','t_region_tp','WHERE	deleted_at IS NULL');
    FMasterData.ShowModal;
end;

procedure TFDataPeLakuBiaya.ednm_ptkpButtonClick(Sender: TObject);
begin
    FMasterData.Caption:='Master Data Status PTKP';
    FMasterData.vcall:='status_pkp_pelaku';
    FMasterData.update_grid('code','description','description','t_m_ptkp','WHERE	deleted_at IS NULL');
    FMasterData.ShowModal;
end;

procedure TFDataPeLakuBiaya.FormShow(Sender: TObject);
begin
  FillSBUBarCombo2(CB_SBU,labelsbu, labelsbu2);
end;

procedure TFDataPeLakuBiaya.kd_karesidenanChange(Sender: TObject);
begin
   with dm.Qtemp3 do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_region_tp where code='+QuotedStr(kd_karesidenan.Text)+' ';
     Open;
     EdKaresidenan.Text:=fieldbyname('name').AsString;
   end;
end;

procedure TFDataPeLakuBiaya.load_sbu_code;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT company_code,company_serial FROM t_company WHERE company_serial<>0';
    Open;
  end;
  cb_sbu.items.clear;
  dm.Qtemp.First;
  while not dm.Qtemp.Eof do
  begin
     cb_sbu.Items.Add(dm.Qtemp['company_code']);
     dm.Qtemp.Next;
  end;
end;

procedure TFDataPeLakuBiaya.load_combo;
begin

  cbjenis_biaya.Clear;
  with dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add('select description from t_type_cost_actor order by id');
    open;
    first;
  end;

  cbjenis_biaya.Items.Add('');
  while not dm.Qtemp3.Eof do
  begin
    cbjenis_biaya.Items.Add(dm.Qtemp3.fieldbyname('description').Value) ;
    dm.Qtemp3.Next;
  end;

  cbjenis_kelamin.Clear;
  with dm.Qtemp3 do
  begin
    close;
    sql.clear;
    sql.add('select description from t_type_gender order by id');
    open;
    first;
  end;

  cbjenis_kelamin.Items.Add('');
  while not dm.Qtemp3.Eof do
  begin
    cbjenis_kelamin.Items.Add(dm.Qtemp3.fieldbyname('description').Value) ;
    dm.Qtemp3.Next;
  end;

end;

procedure TFDataPeLakuBiaya.Autocode_perkiraan;
begin


end;

end.
