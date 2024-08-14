unit UMasterSales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzButton, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzTabs, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls,
  MemTableDataEh, Data.DB, MemTableEh;

type
  TFMasterSales = class(TForm)
    Panel1: TPanel;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    dsSales: TDataSource;
    MemSales: TMemTableEh;
    Label23: TLabel;
    Label24: TLabel;
    Edkodewilayah: TRzButtonEdit;
    Ednamawilayah: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edEmail: TEdit;
    edNoTelp: TEdit;
    edNamaSales: TEdit;
    edKodeSales: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    btBaru: TRzBitBtn;
    btSimpan: TRzBitBtn;
    btRefresh: TRzBitBtn;
    btBatal: TRzBitBtn;
    btAddDetail: TRzBitBtn;
    procedure EdkodewilayahButtonClick(Sender: TObject);
    procedure RefreshGrid;
    procedure Clear;
    procedure Autocode;
    procedure btRefreshClick(Sender: TObject);
    procedure btBaruClick(Sender: TObject);
    procedure btBatalClick(Sender: TObject);
    procedure btSimpanClick(Sender: TObject);
    procedure DBGridDetailDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMasterSales: TFMasterSales;
  status:Integer;

implementation

{$R *.dfm}

uses UMasterWilayah, UDataModule, UHomeLogin;


procedure TFMasterSales.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_sales  ';
    open;
  end;

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select count(code) as hasil from t_sales ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('hasil').AsInteger + 1;
  end;
  edKodeSales.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  edKodeSales.Text := 'SE'+Kode;
  edKodeSales.Text := 'SE'+Kode;
end;


procedure TFMasterSales.Clear;
begin
  Edkodewilayah.Clear;
  Ednamawilayah.Clear;
  edEmail.Clear;
  edNoTelp.Clear;
  edNamaSales.Clear;
  edKodeSales.Clear;
end;

procedure TFMasterSales.DBGridDetailDblClick(Sender: TObject);
begin
  status:=1;
  edKodeSales.Text:=MemSales['KD_SALES'];
  edNamaSales.Text:=MemSales['NM_SALES'];
  edNoTelp.Text:=MemSales['NOTELP'];
  edEmail.Text:=MemSales['EMAIL'];
  Edkodewilayah.Text:=MemSales['KODE_WILAYAH'];
  Ednamawilayah.Text:=MemSales['NAMA_WILAYAH'];
end;

procedure TFMasterSales.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' select * from t_sales a '+
            ' where deleted_at is null ');
    sql.add(' ORDER BY code Desc ');
    open;
  end;

    MemSales.active:=false;
    MemSales.active:=true;
    MemSales.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      Showmessage('Maaf, Data Tidak Ditemukan..');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     MemSales.insert;
     MemSales['KD_SALES']:=Dm.Qtemp.fieldbyname('code').value;
     MemSales['NM_SALES']:=Dm.Qtemp.fieldbyname('name').value;
     MemSales['NOTELP']:=Dm.Qtemp.fieldbyname('no_telp').value;
     MemSales['EMAIL']:=Dm.Qtemp.fieldbyname('email').value;
     MemSales['KODE_WILAYAH']:=Dm.Qtemp.fieldbyname('code_region').value;
     MemSales['NAMA_WILAYAH']:=Dm.Qtemp.fieldbyname('name_region').value;
     MemSales.post;
     Dm.Qtemp.next;
    end;
    end;
end;


procedure TFMasterSales.btBaruClick(Sender: TObject);
begin
  status:=0;
  Clear;
  Autocode;
  btRefreshClick(Sender);
end;

procedure TFMasterSales.btBatalClick(Sender: TObject);
begin
  status:=0;
  Close;
end;

procedure TFMasterSales.btRefreshClick(Sender: TObject);
begin
  RefreshGrid;
  Clear;
end;

procedure TFMasterSales.btSimpanClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeSales.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKodeSales.SetFocus;
      end
      else if edNamaSales.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNamaSales.SetFocus;
      end
      else if Status = 0 then
      begin
      if application.MessageBox('Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Autocode;
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "t_sales" ("created_at", "code", "name", "no_telp", '+
                    ' "email", "code_region", "name_region", "created_by" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(edKodeSales.Text)+', '+
                    ' '+QuotedStr(edNamaSales.Text)+', '+
                    ' '+QuotedStr(edNoTelp.Text)+', '+
                    ' '+QuotedStr(edEmail.Text)+', '+
                    ' '+QuotedStr(Edkodewilayah.Text)+', '+
                    ' '+QuotedStr(Ednamawilayah.Text)+', '+
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
          sql.Text:=' UPDATE "t_sales" SET '+
                    ' "name"='+QuotedStr(edNamaSales.Text)+', '+
                    ' "no_telp"='+QuotedStr(edNoTelp.Text)+', '+
                    ' "email"='+QuotedStr(edEmail.Text)+', '+
                    ' "code_region"='+QuotedStr(Edkodewilayah.Text)+', '+
                    ' "name_region"='+QuotedStr(Ednamawilayah.Text)+', '+
                    ' "updated_at"=now(), '+
                    ' "updated_by"='+QuotedStr(FHomeLogin.Eduser.Text)+' '+
                    ' WHERE "code"='+QuotedStr(edKodeSales.Text)+';';
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
      btRefreshClick(Sender);
end;

procedure TFMasterSales.EdkodewilayahButtonClick(Sender: TObject);
begin
  FMasterWilayah.vcall:='m_sales';
  FMasterWilayah.Showmodal;
end;

end.
