unit USetMasterPelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFSetMasterPelanggan = class(TForm)
    PageControl1: TPageControl;
    TabSetTypeJual: TTabSheet;
    TabSetGolongan: TTabSheet;
    TabSetJenisPelanggan: TTabSheet;
    DBGridCustomer: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BRefresh: TRzBitBtn;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Edkode: TEdit;
    Ednama: TEdit;
    cbstatus: TCheckBox;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    DBGridEh2: TDBGridEh;
    Edit3: TEdit;
    Edit4: TEdit;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    TabSetDetail: TTabSheet;
    Panel4: TPanel;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    DBGridEh3: TDBGridEh;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox3: TCheckBox;
    Edit7: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit8: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Edit9: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Edit10: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    dsJenisPelanggan: TDataSource;
    QJenisPelanggan: TUniQuery;
    dsTypeJual: TDataSource;
    QTypeJual: TUniQuery;
    dsSettingGolongan: TDataSource;
    QSettingGolongan: TUniQuery;
    dsDetailPel: TDataSource;
    QDetailPel: TUniQuery;
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetMasterPelanggan: TFSetMasterPelanggan;

implementation

{$R *.dfm}

uses UDataModule;

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

procedure TFSetMasterPelanggan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetMasterPelanggan.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFSetMasterPelanggan.RzBitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFSetMasterPelanggan.RzBitBtn7Click(Sender: TObject);
begin
  Close;
end;

end.
