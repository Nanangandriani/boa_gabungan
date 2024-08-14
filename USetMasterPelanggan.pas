unit USetMasterPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, Uni,
  RzTabs;

type
  TFSetMasterPelanggan = class(TForm)
    dsJenisPelanggan: TDataSource;
    QJenisPelanggan: TUniQuery;
    dsTypeJual: TDataSource;
    QTypeJual: TUniQuery;
    dsSettingGolongan: TDataSource;
    QSettingGolongan: TUniQuery;
    dsDetailPel: TDataSource;
    QDetailPel: TUniQuery;
    RzPageControl1: TRzPageControl;
    TabSetJenisPelanggan: TRzTabSheet;
    TabSetTypeJual: TRzTabSheet;
    TabSetGolongan: TRzTabSheet;
    TabSetDetail: TRzTabSheet;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    EdKode_jnispel: TEdit;
    EdNama_jnispel: TEdit;
    edKet_jnispel: TEdit;
    cbstatus_jnispel: TCheckBox;
    Panel2: TPanel;
    btBatal_jnispel: TRzBitBtn;
    btSimpan_jnispel: TRzBitBtn;
    btRefresh_jnispel: TRzBitBtn;
    DBGrid_jnispel: TDBGridEh;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edKode_typejual: TEdit;
    EdNama_typejual: TEdit;
    edKet_typejual: TEdit;
    cbstatus_typejual: TCheckBox;
    Panel1: TPanel;
    btBatal_typejual: TRzBitBtn;
    btSimpan_typejual: TRzBitBtn;
    btRefresh_typejual: TRzBitBtn;
    DBGrid_typejual: TDBGridEh;
    Panel7: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edKode_golpel: TEdit;
    edNama_golpel: TEdit;
    edKet_golpel: TEdit;
    cbstatus_golpel: TCheckBox;
    Panel3: TPanel;
    btBatal_golpel: TRzBitBtn;
    btSimpan_golpel: TRzBitBtn;
    btRefresh_golpel: TRzBitBtn;
    DBGrid_golpel: TDBGridEh;
    Panel8: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edKode_detailpel: TEdit;
    edNama_detailpel: TEdit;
    edKet_detailpel: TEdit;
    cbstatus_detailpel: TCheckBox;
    Panel4: TPanel;
    btBatal_detailpel: TRzBitBtn;
    btSimpan_detailpel: TRzBitBtn;
    btRefresh_detailpel: TRzBitBtn;
    DBGrid_detailpel: TDBGridEh;
    btBaru_jnispel: TRzBitBtn;
    btBaru_typejual: TRzBitBtn;
    btBaru_golpel: TRzBitBtn;
    btBaru_detailpel: TRzBitBtn;
    QJenisPelanggancode: TStringField;
    QJenisPelangganname: TStringField;
    QJenisPelanggandescription: TMemoField;
    QJenisPelangganid: TGuidField;
    QJenisPelanggancreated_at: TDateTimeField;
    QJenisPelanggancreated_by: TStringField;
    QJenisPelangganupdated_at: TDateTimeField;
    QJenisPelangganupdated_by: TStringField;
    QJenisPelanggandeleted_at: TDateTimeField;
    QJenisPelanggandeleted_by: TStringField;
    QTypeJualcode: TStringField;
    QTypeJualname: TStringField;
    QTypeJualdescription: TMemoField;
    QTypeJualid: TGuidField;
    QTypeJualcreated_at: TDateTimeField;
    QTypeJualcreated_by: TStringField;
    QTypeJualupdated_at: TDateTimeField;
    QTypeJualupdated_by: TStringField;
    QTypeJualdeleted_at: TDateTimeField;
    QTypeJualdeleted_by: TStringField;
    QSettingGolongancode: TStringField;
    QSettingGolonganname: TStringField;
    QSettingGolongandescription: TMemoField;
    QSettingGolonganid: TGuidField;
    QSettingGolongancreated_at: TDateTimeField;
    QSettingGolongancreated_by: TStringField;
    QSettingGolonganupdated_at: TDateTimeField;
    QSettingGolonganupdated_by: TStringField;
    QSettingGolongandeleted_at: TDateTimeField;
    QSettingGolongandeleted_by: TStringField;
    QDetailPelcode: TStringField;
    QDetailPelname: TStringField;
    QDetailPeldescription: TMemoField;
    QDetailPelid: TGuidField;
    QDetailPelcreated_at: TDateTimeField;
    QDetailPelcreated_by: TStringField;
    QDetailPelupdated_at: TDateTimeField;
    QDetailPelupdated_by: TStringField;
    QDetailPeldeleted_at: TDateTimeField;
    QDetailPeldeleted_by: TStringField;
    procedure btBatal_detailpelClick(Sender: TObject);
    procedure btBatal_golpelClick(Sender: TObject);
    procedure btBatal_typejualClick(Sender: TObject);
    procedure btBatal_jnispelClick(Sender: TObject);
    procedure btRefresh_jnispelClick(Sender: TObject);
    procedure btRefresh_typejualClick(Sender: TObject);
    procedure btRefresh_golpelClick(Sender: TObject);
    procedure btRefresh_detailpelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBaru_detailpelClick(Sender: TObject);
    procedure btBaru_typejualClick(Sender: TObject);
    procedure btBaru_golpelClick(Sender: TObject);
    procedure btBaru_jnispelClick(Sender: TObject);
    procedure DBGrid_jnispelDblClick(Sender: TObject);
    procedure DBGrid_typejualDblClick(Sender: TObject);
    procedure DBGrid_golpelDblClick(Sender: TObject);
    procedure DBGrid_detailpelDblClick(Sender: TObject);
    procedure btSimpan_jnispelClick(Sender: TObject);
    procedure QJenisPelanggandescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure btSimpan_typejualClick(Sender: TObject);
    procedure QTypeJualdescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QSettingGolongandescriptionGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QDetailPeldescriptionGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btSimpan_golpelClick(Sender: TObject);
    procedure btSimpan_detailpelClick(Sender: TObject);
  private
    { Private declarations }
    procedure Clear;
  public
    { Public declarations }
  end;

var
  FSetMasterPelanggan: TFSetMasterPelanggan;
  status:Integer;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMainMenu;

{procedure TFSetMasterPelanggan.SaveJenis;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Text:='Insert into t_customer(customer_code,customer_name, '+
              'address,telp,email,payment_term,created_at,created_by ) '+
              'Values(:parkode_pelanggan,:parnama_pelanggan,'+
              ':paralamat,:partelpon,:paremail,:partempo_pembayaran,:created_at,:created_by)';
    parambyname('parkode_pelanggan').Value:=Edkode.Text;
    parambyname('parnama_pelanggan').Value:=Ednama.Text;
    //parambyname('paralamat').Value:=MemAlamat.Text;
    //parambyname('partelpon').Value:=Edtelp.Text;
    parambyname('paremail').Value:=edemail.Text;
    parambyname('partempo_pembayaran').Value:=Edtempo.Text;
    parambyname('created_at').AsDateTime:=Now;
    parambyname('created_by').AsString:='Admin';
    ExecSQL;
  end;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  Flistpelanggan.Refresh;
end; }


procedure TFSetMasterPelanggan.Clear;
begin
  //Jenis Pelanggan
  EdKode_jnispel.Text:='';
  EdNama_jnispel.Text:='';
  edKet_jnispel.Text:='';
  cbstatus_jnispel.Checked:=True;
  //Type Penjualan
  edKode_typejual.Text:='';
  EdNama_typejual.Text:='';
  edKet_jnispel.Text:='';
  cbstatus_typejual.Checked:=True;
  //Golongan
  edKode_golpel.Text:='';
  edNama_golpel.Text:='';
  edKet_golpel.Text:='';
  cbstatus_golpel.Checked:=True;
  //Detail Pelangan
  edKode_detailpel.Text:='';
  edNama_detailpel.Text:='';
  edKet_detailpel.Text:='';
  cbstatus_detailpel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_detailpelDblClick(Sender: TObject);
begin
  status:=1;
  edKode_detailpel.Text:=QDetailPel.fieldbyname('code').AsString;
  edNama_detailpel.Text:=QDetailPel.fieldbyname('name').AsString;
  edKet_detailpel.Text:=QDetailPel.fieldbyname('description').AsString;
  cbstatus_detailpel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_golpelDblClick(Sender: TObject);
begin
  status:=1;
  edKode_golpel.Text:=QSettingGolongan.fieldbyname('code').AsString;
  edNama_golpel.Text:=QSettingGolongan.fieldbyname('name').AsString;
  edKet_golpel.Text:=QSettingGolongan.fieldbyname('description').AsString;
  cbstatus_golpel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_jnispelDblClick(Sender: TObject);
begin
  status:=1;
  EdKode_jnispel.Text:=QJenisPelanggan.fieldbyname('code').AsString;
  EdNama_jnispel.Text:=QJenisPelanggan.fieldbyname('name').AsString;
  edKet_jnispel.Text:=QJenisPelanggan.fieldbyname('description').AsString;
  cbstatus_jnispel.Checked:=True;
end;

procedure TFSetMasterPelanggan.DBGrid_typejualDblClick(Sender: TObject);
begin
  status:=1;
  edKode_typejual.Text:=QTypeJual.fieldbyname('code').AsString;
  EdNama_typejual.Text:=QTypeJual.fieldbyname('name').AsString;
  edKet_typejual.Text:=QTypeJual.fieldbyname('description').AsString;
  cbstatus_typejual.Checked:=True;
end;

procedure TFSetMasterPelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QJenisPelanggan.Close;
  QTypeJual.Close;
  QSettingGolongan.Close;
  QDetailPel.Close;
end;

procedure TFSetMasterPelanggan.FormShow(Sender: TObject);
begin
  Clear;
  status:=0;
end;

procedure TFSetMasterPelanggan.QDetailPeldescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QDetailPel.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QJenisPelanggandescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QJenisPelanggan.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QSettingGolongandescriptionGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=QSettingGolongan.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.QTypeJualdescriptionGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=QTypeJual.fieldbyname('description').AsString;
end;

procedure TFSetMasterPelanggan.btBatal_jnispelClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetMasterPelanggan.btBatal_typejualClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetMasterPelanggan.btRefresh_detailpelClick(Sender: TObject);
begin
  DBGrid_detailpel.StartLoadingStatus();
  try
    QDetailPel.Close;
    QDetailPel.Open;
  finally
  DBGrid_detailpel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_golpelClick(Sender: TObject);
begin
  DBGrid_golpel.StartLoadingStatus();
  try
    QSettingGolongan.Close;
    QSettingGolongan.Open;
  finally
  DBGrid_golpel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_jnispelClick(Sender: TObject);
begin
  DBGrid_jnispel.StartLoadingStatus();
  try
    QJenisPelanggan.Close;
    QJenisPelanggan.Open;
  finally
  DBGrid_jnispel.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btRefresh_typejualClick(Sender: TObject);
begin
  DBGrid_typejual.StartLoadingStatus();
  try
    QTypeJual.Close;
    QTypeJual.Open;
  finally
  DBGrid_typejual.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPelanggan.btSimpan_detailpelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_detailpel.Text='' then
      begin
        MessageDlg('Kode Detail Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_detailpel.SetFocus;
      end
      else if edNama_detailpel.Text='' then
      begin
        MessageDlg('Nama Detail Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_detailpel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_details" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_detailpel.Text)+', '+
                    ' '+QuotedStr(edNama_detailpel.Text)+', '+
                    ' '+QuotedStr(edKet_detailpel.Text)+', '+
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
          sql.Text:=' UPDATE "t_customer_details" SET '+
                    ' "name"='+QuotedStr(edNama_detailpel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_detailpel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_detailpel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_detailpel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_details" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_detailpel.Text)+';';
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
      btRefresh_detailpelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_golpelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_golpel.Text='' then
      begin
        MessageDlg('Kode Golongan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_golpel.SetFocus;
      end
      else if edNama_golpel.Text='' then
      begin
        MessageDlg('Nama Golongan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama_golpel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_group" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_golpel.Text)+', '+
                    ' '+QuotedStr(edNama_golpel.Text)+', '+
                    ' '+QuotedStr(edKet_golpel.Text)+', '+
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
          sql.Text:=' UPDATE "t_customer_group" SET '+
                    ' "name"='+QuotedStr(edNama_golpel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_golpel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_golpel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_golpel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_group" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_golpel.Text)+';';
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
      btRefresh_golpelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_jnispelClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if EdKode_jnispel.Text='' then
      begin
        MessageDlg('Kode Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdKode_jnispel.SetFocus;
      end
      else if EdNama_jnispel.Text='' then
      begin
        MessageDlg('Nama Jenis Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdNama_jnispel.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_type" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(EdKode_jnispel.Text)+', '+
                    ' '+QuotedStr(EdNama_jnispel.Text)+', '+
                    ' '+QuotedStr(edKet_jnispel.Text)+', '+
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
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "name"='+QuotedStr(EdNama_jnispel.Text)+', '+
                    ' "description"='+QuotedStr(edKet_jnispel.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnispel.Text)+';';
          ExecSQL;
        end;

        if cbstatus_jnispel.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(EdKode_jnispel.Text)+';';
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
      btRefresh_jnispelClick(Sender);
end;

procedure TFSetMasterPelanggan.btSimpan_typejualClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_typejual.Text='' then
      begin
        MessageDlg('Kode Type Penjualan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_typejual.SetFocus;
      end
      else if EdNama_typejual.Text='' then
      begin
        MessageDlg('Nama Type Penjualan Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        EdNama_typejual.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_customer_selling_type" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKode_typejual.Text)+', '+
                    ' '+QuotedStr(EdNama_typejual.Text)+', '+
                    ' '+QuotedStr(edKet_typejual.Text)+', '+
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
          sql.Text:=' UPDATE "t_customer_selling_type" SET '+
                    ' "name"='+QuotedStr(EdNama_typejual.Text)+', '+
                    ' "description"='+QuotedStr(edKet_typejual.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKode_typejual.Text)+';';
          ExecSQL;
        end;

        if cbstatus_typejual.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_customer_type" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKode_typejual.Text)+';';
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
      btRefresh_typejualClick(Sender);
end;

procedure TFSetMasterPelanggan.btBatal_golpelClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPelanggan.btBaru_detailpelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_detailpelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_golpelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_golpelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_jnispelClick(Sender: TObject);
begin
  status:=0;
  btRefresh_jnispelClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBaru_typejualClick(Sender: TObject);
begin
  status:=0;
  btRefresh_typejualClick(Sender);
  Clear;
end;

procedure TFSetMasterPelanggan.btBatal_detailpelClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

end.
