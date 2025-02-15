unit UMutasi_Bank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.StdCtrls, Uni, MemDS, DBAccess,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFMutasiBank = class(TForm)
    DBGrid1: TDBGridEh;
    DataSourceQMutasi: TDataSource;
    QMutasi01: TUniQuery;
    DataSourceMutasiBank01: TDataSource;
    TableMutasi01: TUniTable;
    Button1: TButton;
    QMutasi01bank_name: TStringField;
    QMutasi01rekening_no: TStringField;
    QMutasi01address: TMemoField;
    QMutasi01currency: TStringField;
    QMutasi01saldo: TFloatField;
    QMutasi01bank_code: TStringField;
    QMutasi01account_no: TStringField;
    QMutasi01on_behalf_of: TStringField;
    QMutasi01start_date: TDateField;
    QMutasi01exchange_rate: TFloatField;
    QMutasi01id: TGuidField;
    QMutasi01created_at: TDateTimeField;
    QMutasi01created_by: TStringField;
    QMutasi01updated_at: TDateTimeField;
    QMutasi01updated_by: TStringField;
    QMutasi01deleted_at: TDateTimeField;
    QMutasi01deleted_by: TStringField;
    QMutasi01header_account_no: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpanggilbank,vnorek:string;
    tgl_trans:tdate;
  end;

//var
  //FMutasiBank: TFMutasiBank;

Function  FMutasiBank: TFMutasiBank;

implementation

{$R *.dfm}

 Uses Utrx_deposito_ajuan;

var
  realFMutasiBank : TFMutasiBank;

function FMutasiBank : TFMutasiBank;
begin
  if realFMutasiBank <> nil then
     FMutasiBank := realFMutasiBank
  else
    Application.CreateForm(TFMutasiBank, Result);
end;

procedure TFMutasiBank.Button1Click(Sender: TObject);
begin
      if FMutasiBank.vpanggilbank = 'deposito_ajuan' then
      begin
        with Ftrx_deposito_ajuan do
        begin
          kd_bank :=FMutasiBank.QMutasi01.fieldbyname('bank_code').AsString;
          norek :=FMutasiBank.QMutasi01.fieldbyname('account_no').AsString;;
          txtnorekbank.Text:=FMutasiBank.QMutasi01.fieldbyname('rekening_no').AsString;
          txtnabank.Text:=FMutasiBank.QMutasi01.fieldbyname('bank_name').AsString;
          txtatasnama.Text:=FMutasiBank.QMutasi01.fieldbyname('on_behalf_of').AsString;
          show;
         end;
      end
end;

procedure TFMutasiBank.DBGrid1DblClick(Sender: TObject);
begin
   Button1Click(sender);
end;

procedure TFMutasiBank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFMutasiBank.FormCreate(Sender: TObject);
begin
  realFMutasiBank:=self;
end;

procedure TFMutasiBank.FormDestroy(Sender: TObject);
begin
   realFMutasiBank:=nil;
end;

procedure TFMutasiBank.FormShow(Sender: TObject);
begin
    with QMutasi01 do
    begin
      close;
      sql.clear;
      sql.Add('select * from t_bank');
      open;
    end;
    QMutasi01.Close;
    QMutasi01.Open;
end;

end.
