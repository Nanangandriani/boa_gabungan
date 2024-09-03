unit USetMasterPenjulan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, Vcl.ExtCtrls, RzTabs;

type
  TFSetMasterPenjulan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSetSumberOrder: TRzTabSheet;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edKodeSumberOrder: TEdit;
    edNamaSumberOrder: TEdit;
    edKetSumberOrder: TEdit;
    cbSumberOrder: TCheckBox;
    Panel2: TPanel;
    btBatalSumberOrder: TRzBitBtn;
    btSimpanSumberOrder: TRzBitBtn;
    btRefreshSumberOrder: TRzBitBtn;
    btBaruSumberOrder: TRzBitBtn;
    DBGrid_SumberOrder: TDBGridEh;
    TabSetSumberJual: TRzTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edKodeSumberJual: TEdit;
    edNamaSumberJual: TEdit;
    edKetSumberJual: TEdit;
    cbSumberJual: TCheckBox;
    Panel1: TPanel;
    btBatalSumberJual: TRzBitBtn;
    btSimpanSumberJual: TRzBitBtn;
    btRefreshSumberJual: TRzBitBtn;
    btBaruSumberJual: TRzBitBtn;
    DBGridSumberPenjualan: TDBGridEh;
    dsSumberOrder: TDataSource;
    QSumberOrder: TUniQuery;
    dsSumberPenjualan: TDataSource;
    QSumberPenjualan: TUniQuery;
    Label8: TLabel;
    Label9: TLabel;
    edLinkSumberOrder: TEdit;
    Label10: TLabel;
    edLinkSumberJual: TEdit;
    Label11: TLabel;
    TabParameter: TRzTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    DBGridEhParameter: TDBGridEh;
    Panel3: TPanel;
    btBatalParameter: TRzBitBtn;
    btSaveParameter: TRzBitBtn;
    btRefreshParameter: TRzBitBtn;
    btBaruParameter: TRzBitBtn;
    Panel4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edKeyParameter: TEdit;
    edModulParameter: TEdit;
    QParameter: TUniQuery;
    dsParameter: TDataSource;
    QSumberOrderkd_master: TStringField;
    QSumberOrdernm_master: TMemoField;
    QSumberOrderketerangan: TStringField;
    QSumberOrderform_target: TStringField;
    QSumberPenjualankd_master: TStringField;
    QSumberPenjualannm_master: TMemoField;
    QSumberPenjualanketerangan: TStringField;
    QSumberPenjualanform_target: TStringField;
    QParameterkd_master: TStringField;
    QParameternm_master: TMemoField;
    QParameterketerangan: TStringField;
    QParametermodul: TStringField;
    edValueParameter: TMemo;
    TabSetJenisReturJual: TRzTabSheet;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edKodeJenisRetur: TEdit;
    edNamaJenisRetur: TEdit;
    edKetJenisRetur: TEdit;
    cbStatus_JenisRetur: TCheckBox;
    Panel8: TPanel;
    btBatal_JenisRetur: TRzBitBtn;
    btSimpan_JenisRetur: TRzBitBtn;
    btRefresh_JenisRetur: TRzBitBtn;
    btBaru_JenisRetur: TRzBitBtn;
    DBGrid_JenisRetur: TDBGridEh;
    QJenisRetur: TUniQuery;
    dsJenisRetur: TDataSource;
    QJenisReturkd_master: TStringField;
    QJenisReturnm_master: TMemoField;
    QJenisReturketerangan: TStringField;
    edKetParameter: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_SumberOrderDblClick(Sender: TObject);
    procedure DBGridSumberPenjualanDblClick(Sender: TObject);
    procedure DBGridEhParameterDblClick(Sender: TObject);
    procedure btRefreshSumberOrderClick(Sender: TObject);
    procedure btRefreshSumberJualClick(Sender: TObject);
    procedure btRefreshParameterClick(Sender: TObject);
    procedure btBaruParameterClick(Sender: TObject);
    procedure btBaruSumberJualClick(Sender: TObject);
    procedure btBaruSumberOrderClick(Sender: TObject);
    procedure btBatalSumberOrderClick(Sender: TObject);
    procedure btBatalSumberJualClick(Sender: TObject);
    procedure btBatalParameterClick(Sender: TObject);
    procedure btSimpanSumberOrderClick(Sender: TObject);
    procedure btSimpanSumberJualClick(Sender: TObject);
    procedure btSaveParameterClick(Sender: TObject);
    procedure QSumberOrdernm_masterGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QSumberOrderketeranganGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QSumberPenjualannm_masterGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QSumberPenjualanketeranganGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QParameternm_masterGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btBatal_JenisReturClick(Sender: TObject);
    procedure btRefresh_JenisReturClick(Sender: TObject);
    procedure btBaru_JenisReturClick(Sender: TObject);
    procedure btSimpan_JenisReturClick(Sender: TObject);
    procedure DBGrid_JenisReturDblClick(Sender: TObject);
    procedure QJenisReturnm_masterGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QJenisReturketeranganGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    status:Integer;
    procedure Clear;
  end;

var
  FSetMasterPenjulan: TFSetMasterPenjulan;

implementation

{$R *.dfm}

uses UDataModule, UHomeLogin, UMy_Function, UDataListParameter;

procedure TFSetMasterPenjulan.btBaruParameterClick(Sender: TObject);
begin
  {status:=0;
  btRefreshParameterClick(Sender);
  Clear;}
end;

procedure TFSetMasterPenjulan.btBaruSumberJualClick(Sender: TObject);
begin
  status:=0;
  btRefreshSumberJualClick(Sender);
  Clear;
end;

procedure TFSetMasterPenjulan.btBaruSumberOrderClick(Sender: TObject);
begin
  status:=0;
  btRefreshSumberOrderClick(Sender);
  Clear;
end;

procedure TFSetMasterPenjulan.btBaru_JenisReturClick(Sender: TObject);
begin
  status:=0;
  btRefresh_JenisReturClick(Sender);
  Clear;
end;

procedure TFSetMasterPenjulan.btBatalParameterClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPenjulan.btBatalSumberJualClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPenjulan.btBatalSumberOrderClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPenjulan.btBatal_JenisReturClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFSetMasterPenjulan.btRefreshParameterClick(Sender: TObject);
begin
  {DBGridEhParameter.StartLoadingStatus();
  try
    QParameter.Close;
    QParameter.Open;
  finally
  DBGridEhParameter.FinishLoadingStatus();
  Clear;
  end;}
end;

procedure TFSetMasterPenjulan.btRefreshSumberJualClick(Sender: TObject);
begin
  DBGridSumberPenjualan.StartLoadingStatus();
  try
    QSumberPenjualan.Close;
    QSumberPenjualan.Open;
  finally
  DBGridSumberPenjualan.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPenjulan.btRefreshSumberOrderClick(Sender: TObject);
begin
  DBGrid_SumberOrder.StartLoadingStatus();
  try
    QSumberOrder.Close;
    QSumberOrder.Open;
  finally
  DBGrid_SumberOrder.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPenjulan.btRefresh_JenisReturClick(Sender: TObject);
begin
  DBGrid_JenisRetur.StartLoadingStatus();
  try
    QJenisRetur.Close;
    QJenisRetur.Open;
  finally
  DBGrid_JenisRetur.FinishLoadingStatus();
  Clear;
  end;
end;

procedure TFSetMasterPenjulan.btSaveParameterClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKeyParameter.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKeyParameter.SetFocus;
      end
      else if edValueParameter.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edValueParameter.SetFocus;
      end
      else if FSetMasterPenjulan.Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_parameter" ("key_parameter", "value_parameter", '+
                    ' "description_parameter", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKeyParameter.Text)+', '+
                    ' '+QuotedStr(edValueParameter.Text)+', '+
                    ' '+QuotedStr(edKetParameter.Text)+', '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+' );';
          ExecSQL;
        end;
        MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
      end;
      end
      else if FSetMasterPenjulan.Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_parameter" SET '+
                    ' "value_parameter"='+QuotedStr(edValueParameter.Text)+', '+
                    ' "description_parameter"='+QuotedStr(edKetParameter.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "key_parameter"='+QuotedStr(edKeyParameter.Text)+';';
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
      FDataListParameter.Refresh;
      //btRefreshParameterClick(Sender);
      Close;
end;

procedure TFSetMasterPenjulan.btSimpanSumberJualClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeSumberJual.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSumberJual.SetFocus;
      end
      else if edNamaSumberJual.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaSumberJual.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_selling_source" ("code", "name", "description", "form_target", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKodeSumberJual.Text)+', '+
                    ' '+QuotedStr(edNamaSumberJual.Text)+', '+
                    ' '+QuotedStr(edKetSumberJual.Text)+', '+
                    ' '+QuotedStr(edLinkSumberJual.Text)+', '+
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
          sql.Text:=' UPDATE "t_selling_source" SET '+
                    ' "name"='+QuotedStr(edNamaSumberJual.Text)+', '+
                    ' "description"='+QuotedStr(edKetSumberJual.Text)+', '+
                    ' "form_target"='+QuotedStr(edLinkSumberJual.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKodeSumberJual.Text)+';';
          ExecSQL;
        end;

        if cbSumberJual.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_selling_source" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKodeSumberJual.Text)+';';
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
      btRefreshSumberJualClick(Sender);
end;

procedure TFSetMasterPenjulan.btSimpanSumberOrderClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeSumberOrder.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSumberOrder.SetFocus;
      end
      else if edNamaSumberOrder.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSumberOrder.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_order_source" ("code", "name", "description", "form_target", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKodeSumberOrder.Text)+', '+
                    ' '+QuotedStr(edNamaSumberOrder.Text)+', '+
                    ' '+QuotedStr(edKetSumberOrder.Text)+', '+
                    ' '+QuotedStr(edLinkSumberOrder.Text)+', '+
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
          sql.Text:=' UPDATE "t_order_source" SET '+
                    ' "name"='+QuotedStr(edNamaSumberOrder.Text)+', '+
                    ' "description"='+QuotedStr(edKetSumberOrder.Text)+', '+
                    ' "form_target"='+QuotedStr(edLinkSumberOrder.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKodeSumberOrder.Text)+';';
          ExecSQL;
        end;

        if cbSumberOrder.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_order_source" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKodeSumberOrder.Text)+';';
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
      btRefreshSumberOrderClick(Sender);
end;

procedure TFSetMasterPenjulan.btSimpan_JenisReturClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeJenisRetur.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeJenisRetur.SetFocus;
      end
      else if edNamaJenisRetur.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaJenisRetur.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_type_sales_return" ("code", "name", "description", '+
                    ' "created_by" ) '+
                    ' Values( '+
                    ' '+QuotedStr(edKodeJenisRetur.Text)+', '+
                    ' '+QuotedStr(edNamaJenisRetur.Text)+', '+
                    ' '+QuotedStr(edKetJenisRetur.Text)+', '+
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
          sql.Text:=' UPDATE "t_type_sales_return" SET '+
                    ' "name"='+QuotedStr(edNamaJenisRetur.Text)+', '+
                    ' "description"='+QuotedStr(edKetJenisRetur.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKodeJenisRetur.Text)+';';
          ExecSQL;
        end;

        if cbSumberOrder.Checked=false then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' UPDATE "t_type_sales_return" SET '+
                    ' "deleted_at"=now(), '+
                    ' "deleted_by"='+QuotedStr(FHomeLogin.Eduser.Text)+'  '+
                    ' WHERE "code"='+QuotedStr(edKodeJenisRetur.Text)+';';
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
      btRefresh_JenisReturClick(Sender);
end;

procedure TFSetMasterPenjulan.Clear;
begin
  //Sumber Order
  edKodeSumberOrder.Text:='';
  edNamaSumberOrder.Text:='';
  edKetSumberOrder.Text:='';
  edLinkSumberOrder.Text:='';
  cbSumberOrder.Checked:=True;
  //Sumber Penjualan
  edKodeSumberJual.Text:='';
  edNamaSumberJual.Text:='';
  edKetSumberJual.Text:='';
  edLinkSumberJual.Text:='';
  cbSumberJual.Checked:=True;
  //Parameter
  {edKeyParameter.Text:='';
  edValueParameter.Text:='';
  edKetParameter.Text:='';
  edModulParameter.Text:='';}
  //Jenis Retur
  edKodeJenisRetur.Clear;
  edNamaJenisRetur.Clear;
  edKetJenisRetur.Clear;
end;

procedure TFSetMasterPenjulan.DBGridEhParameterDblClick(Sender: TObject);
begin
  status:=1;
  edKeyParameter.Text:=QParameter.fieldbyname('kd_master').AsString;
  edValueParameter.Text:=QParameter.fieldbyname('nm_master').AsString;
  edKetParameter.Text:=QParameter.fieldbyname('keterangan').AsString;
  edModulParameter.Text:=QParameter.fieldbyname('modul').AsString;
end;

procedure TFSetMasterPenjulan.DBGridSumberPenjualanDblClick(Sender: TObject);
begin
  status:=1;
  edKodeSumberJual.Text:=QSumberPenjualan.fieldbyname('kd_master').AsString;
  edNamaSumberJual.Text:=QSumberPenjualan.fieldbyname('nm_master').AsString;
  edKetSumberJual.Text:=QSumberPenjualan.fieldbyname('keterangan').AsString;
  edLinkSumberJual.Text:=QSumberPenjualan.fieldbyname('form_target').AsString;
  cbSumberJual.Checked:=True;
end;

procedure TFSetMasterPenjulan.DBGrid_JenisReturDblClick(Sender: TObject);
begin
  status:=1;
  edKodeJenisRetur.Text:=QJenisRetur.fieldbyname('kd_master').AsString;
  edNamaJenisRetur.Text:=QJenisRetur.fieldbyname('nm_master').AsString;
  edKetJenisRetur.Text:=QJenisRetur.fieldbyname('keterangan').AsString;
  cbStatus_JenisRetur.Checked:=True;
end;

procedure TFSetMasterPenjulan.DBGrid_SumberOrderDblClick(Sender: TObject);
begin
  status:=1;
  edKodeSumberOrder.Text:=QSumberOrder.fieldbyname('kd_master').AsString;
  edNamaSumberOrder.Text:=QSumberOrder.fieldbyname('nm_master').AsString;
  edKetSumberOrder.Text:=QSumberOrder.fieldbyname('keterangan').AsString;
  edLinkSumberOrder.Text:=QSumberOrder.fieldbyname('form_target').AsString;
  cbSumberOrder.Checked:=True;
end;

procedure TFSetMasterPenjulan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QSumberOrder.Close;
  QSumberPenjualan.Close;
  QParameter.Close;
end;

procedure TFSetMasterPenjulan.FormShow(Sender: TObject);
begin
  Clear;
  //status:=0;
  if SelectRow('select value_parameter from t_parameter where key_parameter=''mode'' ')<> 'dev' then
  begin
    edLinkSumberOrder.Visible:=false;
    edLinkSumberJual.Visible:=false;
    edModulParameter.Visible:=false;
    Label24.Visible:=false;
    Label25.Visible:=false;
  end else begin
    edLinkSumberOrder.Visible:=true;
    edLinkSumberJual.Visible:=true;
    edModulParameter.Visible:=true;
    Label24.Visible:=true;
    Label25.Visible:=true;
  end;
end;

procedure TFSetMasterPenjulan.QJenisReturketeranganGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QJenisReturketerangan.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QJenisReturnm_masterGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QJenisReturnm_master.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QParameternm_masterGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QParameternm_master.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QSumberOrderketeranganGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QSumberOrderketerangan.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QSumberOrdernm_masterGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QSumberOrdernm_master.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QSumberPenjualanketeranganGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QSumberPenjualanketerangan.AsString, 1, 255);
end;

procedure TFSetMasterPenjulan.QSumberPenjualannm_masterGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QSumberPenjualannm_master.AsString, 1, 255);
end;

end.
