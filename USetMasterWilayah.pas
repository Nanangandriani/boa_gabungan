unit USetMasterWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, RzCmboBx, Vcl.Mask, RzEdit,
  RzBtnEdt, RzTabs, Data.DB, MemDS, DBAccess, Uni;

type
  TFSetMasterWilayah = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSetBagianWilayah: TRzTabSheet;
    TabSetArea: TRzTabSheet;
    TabSetKares: TRzTabSheet;
    TabSetProvinsi: TRzTabSheet;
    TabSetKabupaten: TRzTabSheet;
    TabSetKecamatan: TRzTabSheet;
    DBGrid_setwilayah: TDBGridEh;
    pnSetWilayah: TPanel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    edKode_setwilayah: TEdit;
    cbstatus_setwilayah: TCheckBox;
    edNama_setwilayah: TEdit;
    edKet_setwilayah: TEdit;
    pnSetArea: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label45: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label44: TLabel;
    Label7: TLabel;
    edNama_setarea: TEdit;
    edKet_setarea: TEdit;
    cbstatus_setarea: TCheckBox;
    edKode_setarea: TEdit;
    DBGrid_setarea: TDBGridEh;
    DBGrid_setkares: TDBGridEh;
    pnSetKares: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edKode_setkares: TEdit;
    edNama_setkares: TEdit;
    edKet_setkares: TEdit;
    cbstatus_setkares: TCheckBox;
    edArea_setkares: TRzButtonEdit;
    edKDArea_setkares: TEdit;
    DBGrid_setprov: TDBGridEh;
    pnSetProvinsi: TPanel;
    Label22: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    Label47: TLabel;
    Label46: TLabel;
    Label23: TLabel;
    edKet_setprov: TEdit;
    edNama_setprov: TEdit;
    edKode_setprov: TEdit;
    cbstatus_setprov: TCheckBox;
    edWilayah_setprov: TRzButtonEdit;
    edArea_setprov: TRzButtonEdit;
    edKDWilayah_setprov: TEdit;
    edKDArea_setprov: TEdit;
    DBGrid_setkab: TDBGridEh;
    pnSetKabupaten: TPanel;
    Label41: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label40: TLabel;
    edKet_setkab: TEdit;
    edNama_setkab: TEdit;
    edKode_setkab: TEdit;
    cbstatus_setkab: TCheckBox;
    edProv_setkab: TRzButtonEdit;
    edKDProv_setkab: TEdit;
    DBGrid_setkec: TDBGridEh;
    pnSetKecamatan: TPanel;
    Label34: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label36: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    edKet_setkec: TEdit;
    edNama_setkec: TEdit;
    edKode_setkec: TEdit;
    cbstatus_setkec: TCheckBox;
    edProv_setkec: TRzButtonEdit;
    edKab_setkec: TRzButtonEdit;
    edKDProv_setkec: TEdit;
    edKDKab_setkec: TEdit;
    Panel2: TPanel;
    btBatal_setwilayah: TRzBitBtn;
    btSimpan_setwilayah: TRzBitBtn;
    btRefresh_setwilayah: TRzBitBtn;
    Panel1: TPanel;
    edBatal_setarea: TRzBitBtn;
    edSimpan_setarea: TRzBitBtn;
    btRefresh_setarea: TRzBitBtn;
    Panel4: TPanel;
    btBatal_setkares: TRzBitBtn;
    edSimpan_setkares: TRzBitBtn;
    btRefresh_setkares: TRzBitBtn;
    Panel3: TPanel;
    btBatal_setprov: TRzBitBtn;
    btSimpan_setprov: TRzBitBtn;
    btRefresh_setprov: TRzBitBtn;
    Panel5: TPanel;
    btBatal_setkab: TRzBitBtn;
    btSimpan_setkab: TRzBitBtn;
    btRefresh_setkab: TRzBitBtn;
    Panel6: TPanel;
    btBatal_setkec: TRzBitBtn;
    btSimpan_setkec: TRzBitBtn;
    btRefresh_setkec: TRzBitBtn;
    btBaru_setwilayah: TRzBitBtn;
    edBaru_setarea: TRzBitBtn;
    edBaru_setkares: TRzBitBtn;
    btBaru_setprov: TRzBitBtn;
    btBaru_setkab: TRzBitBtn;
    btBaru_setkec: TRzBitBtn;
    edWilayah_setarea: TRzButtonEdit;
    edKDWilayah_setarea: TEdit;
    dsWilayah: TDataSource;
    QWilayah: TUniQuery;
    QArea: TUniQuery;
    dsArea: TDataSource;
    QKaresidenan: TUniQuery;
    QProvinsi: TUniQuery;
    dsKaresidenan: TDataSource;
    dsProvinsi: TDataSource;
    QKabupaten: TUniQuery;
    dsKabupaten: TDataSource;
    dsKecamatan: TDataSource;
    QKecamatan: TUniQuery;
    RzBitBtn1: TRzBitBtn;
    QWilayahcode: TStringField;
    QWilayahname: TStringField;
    QWilayahdescription: TMemoField;
    QAreacode_region: TStringField;
    QAreaname_region: TStringField;
    QAreacode_region_areas: TStringField;
    QAreaname_region_areas: TStringField;
    QAreadescription: TMemoField;
    QKaresidenancode_areas: TStringField;
    QKaresidenanname_areas: TStringField;
    QKaresidenancode_region_kares: TStringField;
    QKaresidenanname_region_kares: TStringField;
    QKaresidenandescription: TMemoField;
    procedure edArea_setkaresButtonClick(Sender: TObject);
    procedure edWilayah_setprovButtonClick(Sender: TObject);
    procedure edArea_setprovButtonClick(Sender: TObject);
    procedure edProv_setkabButtonClick(Sender: TObject);
    procedure edProv_setkecButtonClick(Sender: TObject);
    procedure edKab_setkecButtonClick(Sender: TObject);
    procedure edWilayah_setareaButtonClick(Sender: TObject);
    procedure btBaru_setwilayahClick(Sender: TObject);
    procedure edBaru_setareaClick(Sender: TObject);
    procedure edBaru_setkaresClick(Sender: TObject);
    procedure btBaru_setprovClick(Sender: TObject);
    procedure btBaru_setkabClick(Sender: TObject);
    procedure btBaru_setkecClick(Sender: TObject);
    procedure DBGrid_setwilayahDblClick(Sender: TObject);
    procedure DBGrid_setareaDblClick(Sender: TObject);
    procedure DBGrid_setkaresDblClick(Sender: TObject);
    procedure DBGrid_setprovDblClick(Sender: TObject);
    procedure DBGrid_setkabDblClick(Sender: TObject);
    procedure DBGrid_setkecDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBatal_setwilayahClick(Sender: TObject);
    procedure edBatal_setareaClick(Sender: TObject);
    procedure btBatal_setkaresClick(Sender: TObject);
    procedure btBatal_setprovClick(Sender: TObject);
    procedure btBatal_setkabClick(Sender: TObject);
    procedure btBatal_setkecClick(Sender: TObject);
    procedure btRefresh_setwilayahClick(Sender: TObject);
    procedure btRefresh_setareaClick(Sender: TObject);
    procedure btRefresh_setkaresClick(Sender: TObject);
    procedure btRefresh_setprovClick(Sender: TObject);
    procedure btRefresh_setkabClick(Sender: TObject);
    procedure btRefresh_setkecClick(Sender: TObject);
    procedure btSimpan_setwilayahClick(Sender: TObject);
    procedure edSimpan_setareaClick(Sender: TObject);
    procedure edSimpan_setkaresClick(Sender: TObject);
    procedure QWilayahdescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QAreadescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QKaresidenandescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
  public
    { Public declarations }
  end;

var
  FSetMasterWilayah: TFSetMasterWilayah;
  status:Integer;

implementation

{$R *.dfm}

uses UDataModule,UMasterData, UMainMenu, UHomeLogin,
  UMasterWilayahAdministratif;

procedure TFSetMasterWilayah.btBaru_setkabClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setkabClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.btBaru_setkecClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setkecClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.btBaru_setprovClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setprovClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.btBaru_setwilayahClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setwilayahClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.btBatal_setkabClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterWilayah.btBatal_setkaresClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterWilayah.btBatal_setkecClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterWilayah.btBatal_setprovClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterWilayah.btBatal_setwilayahClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterWilayah.btRefresh_setkabClick(Sender: TObject);
begin
  DBGrid_setkab.StartLoadingStatus();
  try
    QKabupaten.Close;
    QKabupaten.Open;
  finally
  DBGrid_setkab.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.btRefresh_setkaresClick(Sender: TObject);
begin
  DBGrid_setkares.StartLoadingStatus();
  try
    QKaresidenan.Close;
    QKaresidenan.Open;
  finally
  DBGrid_setkares.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.btRefresh_setkecClick(Sender: TObject);
begin
  DBGrid_setkec.StartLoadingStatus();
  try
    QKecamatan.Close;
    QKecamatan.Open;
  finally
  DBGrid_setkec.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.btRefresh_setprovClick(Sender: TObject);
begin
  DBGrid_setprov.StartLoadingStatus();
  try
    QProvinsi.Close;
    QProvinsi.Open;
  finally
  DBGrid_setprov.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.btRefresh_setwilayahClick(Sender: TObject);
begin
  DBGrid_setwilayah.StartLoadingStatus();
  try
    QWilayah.Close;
    QWilayah.Open;
  finally
  DBGrid_setwilayah.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.btSimpan_setwilayahClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_setwilayah.Text='' then
      begin
        MessageDlg('Kode Wilayah Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_setwilayah.SetFocus;
      end
      else if edNama_setwilayah.Text='' then
      begin
        MessageDlg('Nama Wilayah Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_setwilayah.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_region" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_setwilayah.Text)+', '+
                    ' '+QuotedStr(edNama_setwilayah.Text)+', '+
                    ' '+QuotedStr(edKet_setwilayah.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
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
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_region" SET '+
                    ' "name"='+QuotedStr(edNama_setwilayah.Text)+', '+
                    ' "description"='+QuotedStr(edKet_setwilayah.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_setwilayah.Text)+';';
          ExecSQL;
        end;

        if cbstatus_setwilayah.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_setwilayah.Text)+';';
          ExecSQL;
        end;
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
      btRefresh_setwilayahClick(Sender);
end;

procedure TFSetMasterWilayah.Clear;
begin
  //Jenis Wilayah
  edKode_setwilayah.Text:='';
  edNama_setwilayah.Text:='';
  edKet_setwilayah.Text:='';
  cbstatus_setwilayah.Checked:=True;
  //Type Area
  edWilayah_setarea.Text:='';
  edKDWilayah_setarea.Text:='';
  edKode_setarea.Text:='';
  edNama_setarea.Text:='';
  edKet_setarea.Text:='';
  cbstatus_setarea.Checked:=True;
  //Karesidenan
  edArea_setkares.Text:='';
  edKDArea_setkares.Text:='';
  edKode_setkares.Text:='';
  edNama_setkares.Text:='';
  edKet_setkares.Text:='';
  cbstatus_setkares.Checked:=True;
  //Provinsi
  edWilayah_setprov.Text:='';
  edKDWilayah_setprov.Text:='';
  edArea_setprov.Text:='';
  edKDArea_setprov.Text:='';
  edKode_setprov.Text:='';
  edNama_setprov.Text:='';
  edKet_setprov.Text:='';
  cbstatus_setprov.Checked:=True;
  //Kabupaten
  edProv_setkab.Text:='';
  edKDProv_setkab.Text:='';
  edKode_setkab.Text:='';
  edNama_setkab.Text:='';
  edKet_setkab.Text:='';
  cbstatus_setkab.Checked:=True;
  //Kecamatan
  edProv_setkec.Text:='';
  edKDProv_setkec.Text:='';
  edKab_setkec.Text:='';
  edKDKab_setkec.Text:='';
  edKode_setkec.Text:='';
  edNama_setkec.Text:='';
  edKet_setkec.Text:='';
  cbstatus_setkec.Checked:=True;
end;

procedure TFSetMasterWilayah.DBGrid_setareaDblClick(Sender: TObject);
begin
  status:=1;
  edKDWilayah_setarea.Text:=QAreacode_region.AsString;
  edWilayah_setarea.Text:=QAreaname_region.AsString;
  edKode_setarea.Text:=QAreacode_region_areas.AsString;
  edNama_setarea.Text:=QAreaname_region_areas.AsString;
  edKet_setarea.Text:=QAreadescription.AsString;
end;

procedure TFSetMasterWilayah.DBGrid_setkabDblClick(Sender: TObject);
begin
  status:=1;
end;

procedure TFSetMasterWilayah.DBGrid_setkaresDblClick(Sender: TObject);
begin
  status:=1;
  edKDArea_setkares.Text:=QKaresidenancode_areas.AsString;
  edArea_setkares.Text:=QKaresidenanname_areas.AsString;
  edKode_setkares.Text:=QKaresidenancode_region_kares.AsString;
  edNama_setkares.Text:=QKaresidenanname_region_kares.AsString;
  edKet_setkares.Text:=QKaresidenandescription.AsString;
end;

procedure TFSetMasterWilayah.DBGrid_setkecDblClick(Sender: TObject);
begin
  status:=1;
end;

procedure TFSetMasterWilayah.DBGrid_setprovDblClick(Sender: TObject);
begin
  status:=1;
end;

procedure TFSetMasterWilayah.DBGrid_setwilayahDblClick(Sender: TObject);
begin
  status:=1;
  edKode_setwilayah.Text:=QWilayahcode.AsString;
  edNama_setwilayah.Text:=QWilayahname.AsString;
  edKet_setwilayah.Text:=QWilayahdescription.AsString;
end;

procedure TFSetMasterWilayah.edKab_setkecButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kabupaten';
  FMasterData.vcall:='set_kab_setkec';
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edArea_setkaresButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='set_areakares';
  FMasterData.update_grid('code','name','description','t_region_areas','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edWilayah_setareaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Wilayah';
  FMasterData.vcall:='set_wilayaharea';
  FMasterData.update_grid('code','name','description','t_region','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edWilayah_setprovButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Wilayah';
  FMasterData.vcall:='set_wilayah';
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QWilayah.Close;
  QArea.Close;
  QKaresidenan.Close;
  QProvinsi.Close;
  QKabupaten.Close;
  QKecamatan.Close;
end;

procedure TFSetMasterWilayah.FormShow(Sender: TObject);
begin
  Clear;
  status:=0;
end;

procedure TFSetMasterWilayah.QAreadescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QAreadescription.AsString, 1, 500);
end;

procedure TFSetMasterWilayah.QKaresidenandescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QKaresidenandescription.AsString, 1, 500);
end;

procedure TFSetMasterWilayah.QWilayahdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QWilayahdescription.AsString, 1, 500);
end;

procedure TFSetMasterWilayah.RzBitBtn1Click(Sender: TObject);
begin
  with FMasterWilayahAdministratif do
  begin
    edKode_setkares.Text:=QKaresidenancode_region_kares.AsString;
    edNama_setkares.Text:=QKaresidenanname_region_kares.AsString;
    edKDArea_setkares.Text:=QKaresidenancode_areas.AsString;
    edArea_setkares.Text:=QKaresidenanname_areas.AsString;

    edKodeProvinsi.Clear;
    edNamaProvinsi.Clear;
    edNamaKabupaten.Clear;
    edKodeKabupaten.Clear;
    MemMasterData.EmptyTable;
  end;
  FMasterWilayahAdministratif.show;
end;

procedure TFSetMasterWilayah.edProv_setkabButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='set_provkab';
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edProv_setkecButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Provinsi';
  FMasterData.vcall:='set_prov_setkec';
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edSimpan_setareaClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edWilayah_setarea.Text='' then
      begin
        MessageDlg('Kode Wilayah Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edWilayah_setarea.SetFocus;
      end
      else if edKode_setarea.Text='' then
      begin
        MessageDlg('Kode Area Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_setarea.SetFocus;
      end
      else if edNama_setarea.Text='' then
      begin
        MessageDlg('Nama Area Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_setarea.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_region_areas" ("code", "name", "code_region", "description",'+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_setarea.Text)+', '+
                    ' '+QuotedStr(edNama_setarea.Text)+', '+
                    ' '+QuotedStr(edKDWilayah_setarea.Text)+', '+
                    ' '+QuotedStr(edKet_setarea.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
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
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_region_areas" SET '+
                    ' "name"='+QuotedStr(edNama_setarea.Text)+', '+
                    ' "code_region"='+QuotedStr(edKDWilayah_setarea.Text)+', '+
                    ' "description"='+QuotedStr(edKet_setarea.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_setarea.Text)+';';
          ExecSQL;
        end;

        if cbstatus_setwilayah.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_region_areas" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_setarea.Text)+';';
          ExecSQL;
        end;
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
      btRefresh_setwilayahClick(Sender);
end;

procedure TFSetMasterWilayah.edSimpan_setkaresClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edArea_setkares.Text='' then
      begin
        MessageDlg('Kode Area Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edArea_setkares.SetFocus;
      end
      else if edKode_setkares.Text='' then
      begin
        MessageDlg('Kode Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_setkares.SetFocus;
      end
      else if edNama_setkares.Text='' then
      begin
        MessageDlg('Nama Karesidenan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_setkares.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_region_karesidenan" ("code", "name", "description", "code_areas",'+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_setkares.Text)+', '+
                    ' '+QuotedStr(edNama_setkares.Text)+', '+
                    ' '+QuotedStr(edKet_setkares.Text)+', '+
                    ' '+QuotedStr(edKDArea_setkares.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
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
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_region_karesidenan" SET '+
                    ' "name"='+QuotedStr(edNama_setkares.Text)+', '+
                    ' "code_areas"='+QuotedStr(edKDArea_setkares.Text)+', '+
                    ' "description"='+QuotedStr(edKet_setkares.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_setkares.Text)+';';
          ExecSQL;
        end;

        if cbstatus_setwilayah.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_region_karesidenan" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_setkares.Text)+';';
          ExecSQL;
        end;
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
      btRefresh_setkaresClick(Sender);
end;

procedure TFSetMasterWilayah.btRefresh_setareaClick(Sender: TObject);
begin
  DBGrid_setarea.StartLoadingStatus();
  try
    QArea.Close;
    QArea.Open;
  finally
  DBGrid_setarea.FinishLoadingStatus();
  end;
end;

procedure TFSetMasterWilayah.edArea_setprovButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Area';
  FMasterData.vcall:='set_area';
  FMasterData.ShowModal;
end;

procedure TFSetMasterWilayah.edBaru_setareaClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setareaClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.edBaru_setkaresClick(Sender: TObject);
begin
  status:=0;
  btRefresh_setkaresClick(Sender);
  Clear;
end;

procedure TFSetMasterWilayah.edBatal_setareaClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

end.
