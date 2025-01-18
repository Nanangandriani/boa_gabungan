unit UDataBankGaransi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, MemTableDataEh,
  Data.DB, MemTableEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls;

type
  TFDataBankGaransi = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    DSMaster: TDataSource;
    MemMaster: TMemTableEh;
    Panel6: TPanel;
    RzPageControl1: TRzPageControl;
    TabSDetail: TRzTabSheet;
    DBGrid: TDBGridEh;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Edkode: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Ednama: TEdit;
    Ednamawilayah: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    MemMasterkode_bank: TStringField;
    MemMasternama_bank: TStringField;
    MemMasterkode_kategori: TStringField;
    MemMasternama_kategori: TStringField;
    MemMastertgl_aktif: TDateField;
    MemMasternomor_bg: TStringField;
    MemMastertgl_tempo: TDateField;
    MemMasternilai: TFloatField;
    procedure DBGridCustomerColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridCustomerColumns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status :integer;
    { Public declarations }
    procedure RefreshGrid;
  end;

var
  FDataBankGaransi: TFDataBankGaransi;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UMy_Function, UHomeLogin, UListPelanggan;


procedure TFDataBankGaransi.RefreshGrid;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT * from "public"."t_customer_bank_guarantee" '+
                ' where "customer_code"='+QuotedStr(Edkode.Text)+'';
      Execute;
    end;

    FDataBankGaransi.MemMaster.active:=false;
    FDataBankGaransi.MemMaster.active:=true;
    FDataBankGaransi.MemMaster.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataBankGaransi.MemMaster.active:=false;
      FDataBankGaransi.MemMaster.active:=true;
      FDataBankGaransi.MemMaster.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataBankGaransi.MemMaster.insert;
     FDataBankGaransi.MemMaster['kode_bank']:=Dm.Qtemp.FieldByName('bank_code').AsString;
     FDataBankGaransi.MemMaster['nama_bank']:=Dm.Qtemp.FieldByName('bank_name').AsString;
     FDataBankGaransi.MemMaster['kode_kategori']:=Dm.Qtemp.FieldByName('category_item_code').AsString;
     FDataBankGaransi.MemMaster['nama_kategori']:=Dm.Qtemp.FieldByName('category_item_name').AsString;
     FDataBankGaransi.MemMaster['tgl_aktif']:=Dm.Qtemp.FieldByName('first_date').AsDateTime;
     FDataBankGaransi.MemMaster['tgl_tempo']:=Dm.Qtemp.FieldByName('end_date').AsDateTime;
     FDataBankGaransi.MemMaster['nomor_bg']:=Dm.Qtemp.FieldByName('guarantee_number').Value;
     FDataBankGaransi.MemMaster['nilai']:=Dm.Qtemp.FieldByName('amount').Value;
     FDataBankGaransi.MemMaster.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataBankGaransi.BSaveClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Edkode.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else begin
      //if application.MessageBox('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+'ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Apa Anda Yakin Menyimpan Data '+Edkode.Text+' - '+Ednama.Text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin

        if MemMaster.RecordCount=0 then
        begin
          MessageDlg('Detail Data Tidak Ditemukan !!!',mtInformation,[mbCancel],0);
          exit;
        end;

        if MemMaster.RecordCount<>0 then
        begin
        with dm.Qtemp1 do
        begin
          close;
          sql.Clear;
          SQL.Text:=' SELECT * from "public"."t_customer_bank_guarantee" '+
                    ' where "customer_code"='+QuotedStr(Edkode.Text)+'';
          Execute;
        end;

        if dm.Qtemp1.RecordCount<>0 then
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' delete from "public"."t_customer_bank_guarantee" '+
                    ' where "customer_code"='+QuotedStr(Edkode.Text)+';';
          ExecSQL;
        end;
        end;

        MemMaster.First;
        while not MemMaster.Eof do
        begin
        with dm.Qtemp do
        begin
          close;
          sql.clear;
          sql.Text:=' INSERT INTO "public"."t_customer_bank_guarantee" ("created_at", "created_by", '+
                    ' "customer_code", "bank_code", "bank_name", "category_item_code",'+
                    ' "category_item_name", "first_date", "end_date", "guarantee_number", "amount" ) '+
                    ' Values( '+
                    ' NOW(), '+
                    ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
                    ' '+QuotedStr(Edkode.Text)+', '+
                    ' '+QuotedStr(MemMaster['kode_bank'])+', '+
                    ' '+QuotedStr(MemMaster['nama_bank'])+', '+
                    ' '+QuotedStr(MemMaster['kode_kategori'])+', '+
                    ' '+QuotedStr(MemMaster['nama_kategori'])+', '+
                    ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemMaster['tgl_aktif']))+', '+
                    ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemMaster['tgl_tempo']))+', '+
                    ' '+QuotedStr(MemMaster['nomor_bg'])+', '+
                    ' '+QuotedStr(MemMaster['nilai'])+');';
          ExecSQL;
        end;
        MemMaster.Next;
        end;
        MessageDlg('Proses Berhasil..!!',mtInformation,[MBOK],0);
        Dm.Koneksi.Commit;
        FDataBankGaransi.Close;
        end;
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
end;

procedure TFDataBankGaransi.DBGridCustomerColumns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='m_bank_garansi';
  FMasterData.update_grid('code','name','description','t_list_bank','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDataBankGaransi.DBGridCustomerColumns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Kategori';
  FMasterData.vcall:='kategori_bank_garansi';
  FMasterData.update_grid('group_id','group_name','0','t_item_group','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

end.
