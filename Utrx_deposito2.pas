unit Utrx_deposito2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, RzEdit,
  Vcl.ComCtrls, Vcl.Mask, Data.DB, MemDS, DBAccess, Uni, RzPanel, RzButton,
  Vcl.ExtCtrls;

type
  TFtrx_deposito2 = class(TForm)
    Panel2: TPanel;
    Btutup: TRzBitBtn;
    btnsave: TRzBitBtn;
    btnnew: TRzBitBtn;
    BBrowse: TRzBitBtn;
    RzPanel1: TRzPanel;
    txtket: TEdit;
    qtmpmutasikonsinyasi: TUniQuery;
    qtmpmutasikonsinyasiid: TIntegerField;
    qtmpmutasikonsinyasikode_mutasi: TStringField;
    qtmpmutasikonsinyasikode_brg: TStringField;
    qtmpmutasikonsinyasiqty: TIntegerField;
    qtmpmutasikonsinyasisatuan: TStringField;
    qtmpmutasikonsinyasinama_barang: TStringField;
    qexec2: TUniQuery;
    qexec: TUniQuery;
    DataSource1: TDataSource;
    Query1: TUniQuery;
    Query1kode_bank: TStringField;
    Query1norekbank: TStringField;
    Query1tgl_deposito: TDateField;
    Query1tgl_jatuhtempo: TDateField;
    Query1nilai_deposito: TFloatField;
    Query1keterangan: TStringField;
    txtatasnama: TEdit;
    rzbungadeposito: TRzNumericEdit;
    txtnobk: TEdit;
    txtnodeposito: TEdit;
    dptgljatuhtempo: TDateTimePicker;
    rznilaideposiito: TRzNumericEdit;
    txtnorekbank: TEdit;
    txtnabank: TEdit;
    dptgldeposito: TRzDateTimeEdit;
    Button2: TButton;
    Label10: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    btnajuan: TRzBitBtn;
    procedure btnnewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure BtutupClick(Sender: TObject);
    procedure BBrowseClick(Sender: TObject);
    procedure btnajuanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat,kd_bank,norek:string;
    delneto, neto : real;
    next_proses:boolean;
    id_deposito:integer;
    procedure baru;
  end;

//var
  //Ftrx_deposito2: TFtrx_deposito2;

function Ftrx_deposito2: TFtrx_deposito2;

implementation

{$R *.dfm}

uses UDataModule, Udaftar_deposito;

var
  RealFtrx_deposito2 : TFtrx_deposito2;
// implementasi function
function Ftrx_deposito2: TFtrx_deposito2;
begin
  if RealFtrx_deposito2 <> nil then
     Ftrx_deposito2:= RealFtrx_deposito2
  else
    Application.CreateForm(TFtrx_deposito2, Result);
end;

function parsing_koma(nilai:string):string;
var
  pos1,pos2:Integer;
  hasil_pars:string;
begin
  if Pos(',',nilai)<>0 then
  pos1:=Pos(',',nilai)
  else
  if Pos('.',nilai)<>0 then
  pos1:=Pos('.',nilai);

  if pos1<>0 then
  hasil_pars:=Copy(nilai,1,pos1-1)
  else
  hasil_pars:=nilai;

  result:=hasil_pars;
end;

procedure TFtrx_deposito2.baru;
begin
   dptgldeposito.Date:=date;
   dptgljatuhtempo.date:=date;
   txtnabank.Clear;
   txtnorekbank.Clear;
   txtket.Clear;
   rznilaideposiito.Value:=0;
   btnajuan.Enabled:=true;
   stat:='new';
   txtnodeposito.Clear;
   txtnobk.Clear;
   rzbungadeposito.Value:=0;
   txtatasnama.clear;
end;

procedure TFtrx_deposito2.BBrowseClick(Sender: TObject);
begin
   Fdaftar_deposito.stat:='deposito2';
   Fdaftar_deposito.show;
end;

procedure TFtrx_deposito2.btnajuanClick(Sender: TObject);
begin
   Fdaftar_deposito.stat:='deposito2';
   Fdaftar_deposito.show;
end;

procedure TFtrx_deposito2.btnnewClick(Sender: TObject);
begin
   if application.MessageBox('Data baru?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   baru;
end;

procedure TFtrx_deposito2.btnsaveClick(Sender: TObject);
var tot_dpp,tot_ppn:real;
    dd,mm,yy:word;
    next_proses:boolean;
begin
   if application.MessageBox('Data akan disimpan?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   begin
       with dm.Qtemp do
       begin
         close;
         sql.clear;
         sql.add('update t_deposito set description2=:1,bm_no=:2,interest_value=:3,status=:stat where id=:ids');

         ParamByName('1').asstring:=txtket.Text;
         ParamByName('2').asstring:=txtnobk.Text;
         ParamByName('3').asfloat:= rzbungadeposito.Value;
         ParamByName('ids').asinteger:=id_deposito;
         ParamByName('stat').asinteger:=2;
         Execute;
       end;
       showmessage('Data berhasil disimpan !');
       btnajuan.Enabled:=false;
   end;
end;

procedure TFtrx_deposito2.BtutupClick(Sender: TObject);
begin
   Close;
end;

procedure TFtrx_deposito2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TFtrx_deposito2.FormCreate(Sender: TObject);
begin
   RealFtrx_deposito2:=self;
end;

procedure TFtrx_deposito2.FormDestroy(Sender: TObject);
begin
   RealFtrx_deposito2:=Nil;
end;

end.
