unit USetDeliveryOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.ExtCtrls, RzTabs,
  MemTableDataEh, MemTableEh, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFSetDeliveryOrder = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSetJenis: TRzTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Panel5: TPanel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edKode: TEdit;
    edNama: TEdit;
    edKet: TEdit;
    Panel2: TPanel;
    btBatalSumberOrder: TRzBitBtn;
    btSimpanSumberOrder: TRzBitBtn;
    btBaruSumberOrder: TRzBitBtn;
    DBGrid_SumberOrder: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    dsJenisDO: TDataSource;
    MemJenisDO: TMemTableEh;
    MemJenisDOkode: TStringField;
    MemJenisDOnama: TStringField;
    MemJenisDOketerangan: TStringField;
    edLinkVendor: TEdit;
    edLinkSumber: TEdit;
    edNamaLinkVendor: TRzButtonEdit;
    edNamaLinkSumber: TRzButtonEdit;
    procedure btBaruSumberOrderClick(Sender: TObject);
    procedure btSimpanSumberOrderClick(Sender: TObject);
    procedure edNamaLinkVendorButtonClick(Sender: TObject);
    procedure edNamaLinkSumberButtonClick(Sender: TObject);
    procedure btBatalSumberOrderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Status : Integer;
    procedure Clear;
    procedure RefreshGrid;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
  end;

var
  FSetDeliveryOrder: TFSetDeliveryOrder;

implementation

{$R *.dfm}

uses UDataModule, UMasterData, UHomeLogin;

procedure TFSetDeliveryOrder.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_type_delivery_order_det" '+
            ' WHERE "code_master"='+QuotedStr(edKode.Text)+';';
  ExecSQL;
  end;

  MemJenisDO.First;
  while not MemJenisDO.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_type_delivery_order_det" ("code_master", "code", "name", '+
              ' "description") '+
              ' Values( '+
              ' '+QuotedStr(edKode.Text)+', '+
              ' '+QuotedStr(MemJenisDO['kode'])+', '+
              ' '+QuotedStr(MemJenisDO['nama'])+', '+
              ' '+QuotedStr(MemJenisDO['keterangan'])+' );';
    ExecSQL;
    end;
  MemJenisDO.Next;
  end;
end;

procedure TFSetDeliveryOrder.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_type_delivery_order" ("created_at", '+
            ' "created_by", "code", "name", "description", "form_target_vendor", '+
            ' "form_target_source") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edKode.Text)+', '+
            ' '+QuotedStr(edNama.Text)+', '+
            ' '+QuotedStr(edKet.Text)+', '+
            ' '+QuotedStr(edLinkVendor.Text)+', '+
            ' '+QuotedStr(edLinkSumber.Text)+');');
    ExecSQL;
  end;
  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
end;

procedure TFSetDeliveryOrder.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_type_delivery_order" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' code='+QuotedStr(edKode.Text)+','+
              ' name='+QuotedStr(edNama.Text)+','+
              ' description='+QuotedStr(edKet.Text)+','+
              ' form_target_vendor='+QuotedStr(edLinkVendor.Text)+','+
              ' form_target_source='+QuotedStr(edLinkSumber.Text)+'  '+
              ' WHERE code='+QuotedStr(edKode.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
end;

procedure TFSetDeliveryOrder.RefreshGrid;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "code", "name", "description", "code_master" FROM '+
            ' "t_type_delivery_order_det" where deleted_at IS NULL ) a '+
            ' WHERE "code_master"='+QuotedStr(edKode.Text)+' '+
            ' Order By code, name desc');
    open;
  end;

    FSetDeliveryOrder.MemJenisDO.active:=false;
    FSetDeliveryOrder.MemJenisDO.active:=true;
    FSetDeliveryOrder.MemJenisDO.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FSetDeliveryOrder.MemJenisDO.active:=false;
      FSetDeliveryOrder.MemJenisDO.active:=true;
      FSetDeliveryOrder.MemJenisDO.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FSetDeliveryOrder.MemJenisDO.insert;
     FSetDeliveryOrder.MemJenisDO['kode']:=Dm.Qtemp.fieldbyname('code').value;
     FSetDeliveryOrder.MemJenisDO['nama']:=Dm.Qtemp.fieldbyname('name').value;
     FSetDeliveryOrder.MemJenisDO['keterangan']:=Dm.Qtemp.fieldbyname('description').value;
     FSetDeliveryOrder.MemJenisDO.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFSetDeliveryOrder.btBaruSumberOrderClick(Sender: TObject);
begin
  FSetDeliveryOrder.Clear;
  Status:=0;
end;

procedure TFSetDeliveryOrder.btBatalSumberOrderClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetDeliveryOrder.btSimpanSumberOrderClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode.Text='' then
      begin
        MessageDlg('Kode Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode.SetFocus;
      end
      else if edNama.Text='' then
      begin
        MessageDlg('Nama Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNama.SetFocus;
      end
      else if Status = 0 then
      begin
      if MessageDlg ('Apa Anda Yakin Menyimpan Data ini  ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
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
end;

procedure TFSetDeliveryOrder.Clear;
begin
  edKode.Clear;
  edNama.Clear;
  edKet.Clear;
  edLinkVendor.Clear;
  edNamaLinkVendor.Clear;
  edLinkSumber.Clear;
  edNamaLinkSumber.Clear;
  MemJenisDO.EmptyTable;
end;

procedure TFSetDeliveryOrder.edNamaLinkSumberButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='link_vendor_sumber';
  FMasterData.update_grid('key_link','name_link','description_parameter','t_module_link','WHERE	deleted_at IS NULL AND key_link=''crud_do_sumber'' ');
  FMasterData.ShowModal;
end;

procedure TFSetDeliveryOrder.edNamaLinkVendorButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data';
  FMasterData.vcall:='link_vendor';
  FMasterData.update_grid('key_link','name_link','description_parameter','t_module_link','WHERE	deleted_at IS NULL AND key_link=''crud_do'' ');
  FMasterData.ShowModal;
end;

end.
