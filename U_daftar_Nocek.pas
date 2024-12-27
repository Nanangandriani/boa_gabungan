unit U_daftar_Nocek;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Uni, MemDS, DBAccess, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls;

type
  TFdaftar_nocek = class(TForm)
    btnok: TButton;
    cbbank: TComboBox;
    cbcek: TComboBox;
    cbrek: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtcari: TEdit;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BCari: TRzBitBtn;
    Table1: TUniTable;
    qdafnocek: TUniQuery;
    DSdafcek: TDataSource;
    qdafnocekcek_no: TStringField;
    qdafnocekbank: TStringField;
    qdafnocekrek_no: TStringField;
    qdafnocekstatus: TStringField;
    qdafnocekcekbg: TStringField;
    qdafnocekbank_name: TStringField;
    qdafnocekaddress: TMemoField;
    qdafnocekcurrency: TStringField;
    qdafnoceksaldo: TFloatField;
    qdafnocekaccount_no: TStringField;
    qdafnocekon_behalf_of: TStringField;
    qdafnocekbank_code: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cbbankChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vcall:string;
  end;

var
  Fdaftar_nocek: TFdaftar_nocek;

implementation

{$R *.dfm}

uses UDataModule, u_rencana_lunas_hutang, u_rencana_lunas_hutang_input;

procedure TFdaftar_nocek.BCariClick(Sender: TObject);
begin
   with qdafnocek do
   begin
    close;
    sql.clear;
    sql.add(' SELECT a.cek_no,a.bank,a.rek_no,a.status,a.cekbg,b.bank_name,b.address,b.currency,'+
            ' b.saldo,b.account_no,b.on_behalf_of,b.bank_code FROM t_nocek AS "a"	INNER JOIN '+
            ' t_bank AS b ON a.rek_no = b.rekening_no AND a.bank = b.bank_code');
    sql.add('where status=''N'''+'and bank=:bnk and rek_no=:nrk and cekbg=:cbg');
    params.ParamByName('bnk').asstring:=cbbank.Text;
    params.ParamByName('nrk').asstring:=cbrek.Text;
    params.ParamByName('cbg').asstring:=cbcek.Text;
    open;
   end;

end;

procedure TFdaftar_nocek.btnokClick(Sender: TObject);
begin
  if vcall='rencanalunashutang' then
  begin
      FRencana_Lunas_Hutang.txtnocek.text:= qdafnocek.fieldbyname('cek_no').asstring;
      Fdaftar_nocek.close;
  end;
end;

procedure TFdaftar_nocek.cbbankChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select * from t_bank');
     sql.add('where bank_code=:kdb');
     params.ParamByName('kdb').asstring:=cbbank.Text;
     open;
   end;
   Dm.Qtemp.First;
   cbbank.Items.Clear;
   while not dm.Qtemp.Eof do
   begin
      cbrek.Items.Add(dm.Qtemp.fieldbyname('rekening_no').asstring);
      dm.Qtemp.Next;
   end;
end;

procedure TFdaftar_nocek.DBGridEh1DblClick(Sender: TObject);
begin
   btnokclick(sender);
end;

procedure TFdaftar_nocek.FormShow(Sender: TObject);
begin
    cbbank.Clear;
    cbrek.Clear;
    cbcek.Text:='';
    txtcari.Clear;

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add('select distinct bank_code from t_bank order by bank_code asc');
      open;
    end;
    Dm.Qtemp.First;
    cbbank.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      cbbank.Items.add(dm.Qtemp.fieldbyname('bank_code').asstring);
      dm.Qtemp.Next;
    end;
    BCariClick(sender);
end;

end.
