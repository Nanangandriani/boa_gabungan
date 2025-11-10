unit Usingkronisasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, MemTableEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, Vcl.ComCtrls, RzDTP, RzButton, RzCmboBx;

type
  TFSingkronisasi = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    RzPageControl1: TRzPageControl;
    TabSData: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    gbPeriode: TGroupBox;
    dtAwal: TRzDateTimePicker;
    Label4: TLabel;
    dtAkhir: TRzDateTimePicker;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    MemTableEh1nama_task: TStringField;
    MemTableEh1last_sync: TDateField;
    MemTableEh1aksi: TStringField;
    RzBitBtn1: TRzBitBtn;
    cbModul: TRzComboBox;
    cbServerData: TRzComboBox;
    cbServerPenerima: TRzComboBox;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure cbModulChange(Sender: TObject);
  private
    { Private declarations }
    procedure Load;
    procedure RefreshGrid;
  public
    { Public declarations }
  end;

var
  FSingkronisasi: TFSingkronisasi;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function;

Procedure TFSingkronisasi.Load;
begin
  //Modul
  cbModul.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT modul FROM "tsynchronization" group by modul ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbModul.Items.Add(Dm.Qtemp['modul']);
    Dm.Qtemp.Next;
  end;
end;

procedure TFSingkronisasi.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.Add(' SELECT name_task, last_sync FROM "tsynchronization" '+
            ' where modul='+QuotedStr(cbModul.Text)+'  '+
            ' group by name_task,last_sync  order by name_task asc;');

    open;
  end;

  FSingkronisasi.MemTableEh1.active:=false;
  FSingkronisasi.MemTableEh1.active:=true;
  FSingkronisasi.MemTableEh1.EmptyTable;

  if  Dm.Qtemp.RecordCount=0 then
  begin
  FSingkronisasi.MemTableEh1.active:=false;
  FSingkronisasi.MemTableEh1.active:=true;
  FSingkronisasi.MemTableEh1.EmptyTable;
  end;

  if  Dm.Qtemp.RecordCount<>0 then
  begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
      FSingkronisasi.MemTableEh1.insert;
      FSingkronisasi.MemTableEh1['nama_task']:=Dm.Qtemp.fieldbyname('name_task').value;
      FSingkronisasi.MemTableEh1['last_sync']:=Dm.Qtemp.FieldByName('last_sync').AsDateTime;
      FSingkronisasi.MemTableEh1.post;
      Dm.Qtemp.next;
    end;
  end;
end;

procedure TFSingkronisasi.RzBitBtn1Click(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TFSingkronisasi.cbModulChange(Sender: TObject);
begin
  if cbModul.Text='MASTER' then
  begin
  gbPeriode.Visible:=false;
  end;
  if cbModul.Text<>'MASTER' then
  begin
  gbPeriode.Visible:=true;
  end;

  //Server Data
  cbServerData.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT company_code FROM "t_company" where company_code=''PST'' '+
              ' group by company_code '+
              ' union all '+
              ' SELECT company_code FROM "t_company" where company_code<>''PST'' '+
              ' group by company_code  ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbServerData.Items.Add(Dm.Qtemp['company_code']);
    Dm.Qtemp.Next;
  end;

  //Server Penerima
  cbServerPenerima.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:=' SELECT company_code FROM "t_company" where company_code=''PST'' '+
              ' group by company_code '+
              ' union all '+
              ' SELECT company_code FROM "t_company" where company_code<>''PST'' '+
              ' group by company_code  ';
    ExecSQL;
  end;
  Dm.Qtemp.First;
  while not Dm.Qtemp.Eof do
  begin
    cbServerPenerima.Items.Add(Dm.Qtemp['company_code']);
    Dm.Qtemp.Next;
  end;


  cbServerData.Enabled:= true;
  cbServerPenerima.Enabled:= true;

  if Length(SelectRow('SELECT data_servers FROM "tsynchronization"  where modul='+QuotedStr(cbModul.Text)+'' ))<>0 then
  begin
    cbServerData.Text:=SelectRow('SELECT data_servers FROM "tsynchronization"  where modul='+QuotedStr(cbModul.Text)+'' );
    cbServerData.Enabled:= false;
  end;
  if Length(SelectRow('SELECT recipient_servers FROM "tsynchronization"  where modul='+QuotedStr(cbModul.Text)+'' ))<>0 then
  begin
    cbServerPenerima.Text:=SelectRow('SELECT recipient_servers FROM "tsynchronization"  where modul='+QuotedStr(cbModul.Text)+'' );
    cbServerPenerima.Enabled:= false;
  end;

end;

procedure TFSingkronisasi.FormShow(Sender: TObject);
begin
  Load;
end;

end.
