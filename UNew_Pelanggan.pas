unit UNew_Pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  RzEdit, Vcl.Mask, RzBtnEdt, RzCmboBx, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.Buttons;

type
  TFNew_Pelanggan = class(TForm)
    Edemail: TEdit;
    Edtempo: TEdit;
    Edkode: TEdit;
    Ednama: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Ednamapkp: TEdit;
    Ednpwp: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Ednik: TEdit;
    cbpkp: TCheckBox;
    Label21: TLabel;
    Label22: TLabel;
    Ednomorva: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Ednamawilayah: TEdit;
    Cbtypejual: TRzComboBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Cbgolongan: TRzComboBox;
    Edkodewilayah: TEdit;
    PageControl1: TPageControl;
    TabSDetailPel: TTabSheet;
    DBGridCustomer: TDBGridEh;
    DSDetailPel: TDataSource;
    MemDetailPel: TMemTableEh;
    MemDetailPelKODE_URUTAN_KE: TStringField;
    MemDetailPelALAMAT: TStringField;
    MemDetailPelCONTACT_PERSON1: TStringField;
    MemDetailPelCONTACT_PERSON2: TStringField;
    MemDetailPelCONTACT_PERSON3: TStringField;
    MemDetailPelURUTAN_KE: TIntegerField;
    btMasterWilayah: TSpeedButton;
    btMasterTypePenjualan: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CbJenisPel: TRzComboBox;
    btJenisPelanggan: TSpeedButton;
    btMasterDetailPel: TSpeedButton;
    BDataProspek: TRzBitBtn;
    btMasterGolongan: TSpeedButton;
    Edautocode: TEdit;
    Edkodepos: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btKlasifikasiHargaHargaJual: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure EdkodeKeyPress(Sender: TObject; var Key: Char);
    procedure EdnamaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtelpKeyPress(Sender: TObject; var Key: Char);
    procedure EdemailKeyPress(Sender: TObject; var Key: Char);
    procedure cbpkpClick(Sender: TObject);
    procedure EdnamapkpKeyPress(Sender: TObject; var Key: Char);
    procedure EdnpwpKeyPress(Sender: TObject; var Key: Char);
    procedure EdnikKeyPress(Sender: TObject; var Key: Char);
    procedure CbtypejualKeyPress(Sender: TObject; var Key: Char);
    procedure CbgolonganKeyPress(Sender: TObject; var Key: Char);
    procedure btJenisPelangganClick(Sender: TObject);
    procedure btMasterTypePenjualanClick(Sender: TObject);
    procedure btMasterGolonganClick(Sender: TObject);
    procedure btMasterDetailPelClick(Sender: TObject);
    procedure BDataProspekClick(Sender: TObject);
    procedure btMasterWilayahClick(Sender: TObject);
    procedure btKlasifikasiHargaHargaJualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure Save;
    procedure Update;
    procedure Autocode;
  end;

var
  FNew_Pelanggan: TFNew_Pelanggan;
  status: integer;

implementation

{$R *.dfm}

uses UDataModule, UListPelanggan, UMainMenu, USetMasterPelanggan,
  UMasterWilayah, UDaftarKlasifikasi;


procedure TFNew_Pelanggan.Autocode;
var
  kode : String;
  Urut : Integer;
begin
  With DM.Qtemp2 do
  begin
    Close;
    SQL.Clear;
    Sql.Text := 'select * from t_customer  ';
    open;
  end;

  if Dm.Qtemp2.RecordCount = 0 then urut := 1 else
  if Dm.Qtemp2.RecordCount > 0 then
  begin
      With Dm.Qtemp do
      begin
        Close;
        Sql.Clear;
        Sql.Text := 'select max(right(customer_code, 5)) as kode from t_customer ';
        Open;
      end;
      Urut := dm.Qtemp.FieldByName('kode').AsInteger + 1;
  end;
  Edkode.Clear;
  kode := inttostr(urut);
  kode := Copy('00000'+kode, length('00000'+kode)-4, 5);
  Edautocode.Text := 'PL'+Kode;
end;

procedure TFNew_Pelanggan.CbtypejualKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Cbgolongan.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.Clear;
begin
  Edkode.Text:='';
  Ednama.Text:='';
  Ednamapkp.Text:='';
  Ednpwp.Text:='';
  Ednik.Text:='';
  Edtempo.Text:='';
  Edemail.Text:='';
  Ednomorva.Text:='';
  Edkodewilayah.Text:='';
  Ednamawilayah.Text:='';
  Edtempo.Text:='';
  MemDetailPel.EmptyTable;
end;

procedure TFNew_Pelanggan.EdemailKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednomorva.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdkodeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednama.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnamaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    cbpkp.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnamapkpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednpwp.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnikKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdnpwpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Ednik.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.EdtelpKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edemail.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      Sql.Text := 'Update t_customer set customer_name=:parnama_pelanggan,'+
                  'address=:paralamat,telp=:partelpon,email=:paremail,payment_term=:partempo_pembayaran,updated_at=:updated_at,updated_by=:updated_by '+
                  'Where customer_code=:parkode_pelanggan';
      parambyname('parkode_pelanggan').Value:=Edkode.Text;
      parambyname('parnama_pelanggan').Value:=Ednama.Text;
      //parambyname('paralamat').Value:=MemAlamat.Text;
      //parambyname('partelpon').Value:=Edtelp.Text;
      parambyname('paremail').Value:=edemail.Text;
      parambyname('partempo_pembayaran').Value:=Edtempo.Text;
      parambyname('updated_at').AsDateTime:=Now;
      parambyname('updated_by').AsString:='Admin';

      ExecSQL;
    end;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Close;
    Flistpelanggan.Refresh;
end;

procedure TFNew_Pelanggan.Save;
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
end;

procedure TFNew_Pelanggan.BBatalClick(Sender: TObject);
begin
   Close;
end;

procedure TFNew_Pelanggan.BDataProspekClick(Sender: TObject);
begin
  ShowMessage('Tampil Data Master Prospek Untuk Client Yang Menggunakan Fitur Prospek...');
end;

procedure TFNew_Pelanggan.BSaveClick(Sender: TObject);
begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if Edkode.Text='' then
      begin
        MessageDlg('Kode Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Edkode.SetFocus;
      end
      else if Ednama.Text='' then
      begin
        MessageDlg('Nama Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Edtempo.Text='' then
      begin
        MessageDlg('Tempo Pembayaran Wajib Diisi..!!',mtInformation,[mbRetry],0);
        Ednama.SetFocus;
      end
      else if Status = 0 then
      begin
        Save;
        Dm.Koneksi.Commit;
      end
      else if Status = 1 then
      begin
        Update;
        Dm.Koneksi.Commit;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
      FMainMenu.TampilTabForm2;

end;

procedure TFNew_Pelanggan.btJenisPelangganClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=true;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btKlasifikasiHargaHargaJualClick(Sender: TObject);
begin
  FDaftarKlasifikasi.TabDaftarKlasifikasiPelanggan.TabVisible:=true;
  FDaftarKlasifikasi.TabMasterKlasifikasi.TabVisible:=true;
  FDaftarKlasifikasi.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterDetailPelClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=true;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterGolonganClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=false;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=true;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterTypePenjualanClick(Sender: TObject);
begin
  FSetMasterPelanggan.TabSetJenisPelanggan.TabVisible:=false;
  FSetMasterPelanggan.TabSetTypeJual.TabVisible:=true;
  FSetMasterPelanggan.TabSetGolongan.TabVisible:=false;
  FSetMasterPelanggan.TabSetDetail.TabVisible:=false;
  FSetMasterPelanggan.ShowModal;
end;

procedure TFNew_Pelanggan.btMasterWilayahClick(Sender: TObject);
begin
  FMasterWilayah.Showmodal;
end;

procedure TFNew_Pelanggan.CbgolonganKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(13) then
  begin
    Edtempo.SetFocus;
  end;
end;

procedure TFNew_Pelanggan.cbpkpClick(Sender: TObject);
begin
  if cbpkp.Checked=true then
  begin
    Ednamapkp.ReadOnly:=false;
    Ednpwp.ReadOnly:=false;
  end;
  if cbpkp.Checked=false then
  begin
    Ednamapkp.Text:='0';
    Ednpwp.Text:='0';
    Ednamapkp.ReadOnly:=true;
    Ednpwp.ReadOnly:=true;
  end;
end;

end.
