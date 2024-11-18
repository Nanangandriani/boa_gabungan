unit UMaster_DataHeader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzTabs, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  Data.DB, MemDS, DBAccess, Uni, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFMaster_DataHeader = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Pn_TombolHeader1: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Pnl_NewHeader1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    edkode_header: TEdit;
    ednama_header: TEdit;
    Label17: TLabel;
    Label16: TLabel;
    DBGrid_header1: TDBGridEh;
    Qheader1: TUniQuery;
    DsHeader1: TDataSource;
    QHeader2: TUniQuery;
    DsHeader2: TDataSource;
    QHeader3: TUniQuery;
    DsHeader3: TDataSource;
    Btambah: TRzBitBtn;
    procedure BSaveClick(Sender: TObject);
    procedure DBGrid_header1DblClick(Sender: TObject);
    procedure BtambahClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Simpan;
    Procedure Update;
  end;

var
  FMaster_DataHeader: TFMaster_DataHeader;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UMy_Function;

procedure TFMaster_DataHeader.BtambahClick(Sender: TObject);
begin
  Pnl_NewHeader1.Visible:=true;
  DBGrid_header1.Visible:=False;
  edkode_header.SetFocus;
  Btambah.Enabled:=false;
end;

procedure TFMaster_DataHeader.DBGrid_header1DblClick(Sender: TObject);
begin
MessageDlg('Pilih tindakan yang ingin dilakukan:', mtConfirmation,
                             [mbYes, mbNo], 0);
  Pnl_NewHeader1.Visible:=true;
  Btambah.Enabled:=false;
  edkode_header.Text:=Qheader1['header_code1'];
  ednama_header.Text:=Qheader1['header_name1'];
  statustr:='0';
  DBGrid_header1.Visible:=False;
end;

Procedure TFMaster_DataHeader.Simpan;
begin
    if edkode_header.Text='' then
  begin
    MessageDlg('Kode Header Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if ednama_header.Text='' then
  begin
    MessageDlg('Nama Header Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='Insert Into t_ak_header1(header_code1,header_name1) '+
                'Values (:parkode_header,:parnama_header)';
      parambyname('parkode_header').Value:=edkode_header.Text;
      parambyname('parnama_header').Value:=ednama_header.Text;
      execsql;
    end;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  end;
  Close;
end;

Procedure TFMaster_DataHeader.Update;
begin
    if edkode_header.Text='' then
  begin
    MessageDlg('Kode Header Diisi..!!',mtInformation,[mbRetry],0);
  end
  else if ednama_header.Text='' then
  begin
    MessageDlg('Nama Header Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end
  else
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_ak_header1 set header_name1=:name,updated_at=now(),updated_by=:updated_by where header_code1=:kode ';
      parambyname('kode').Value:=edkode_header.Text;
      parambyname('name').Value:=ednama_header.Text;
      parambyname('updated_by').Value:=Nm;
      execsql;
    end;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  end;
  Close;
end;

procedure TFMaster_DataHeader.BBatalClick(Sender: TObject);
begin
  Pnl_NewHeader1.Visible:=false;
  DBGrid_header1.Visible:=true;
  Btambah.Enabled:=true;
  BSave.Enabled:=False;
end;

procedure TFMaster_DataHeader.BSaveClick(Sender: TObject);
begin
//if statustr=
end;

end.
