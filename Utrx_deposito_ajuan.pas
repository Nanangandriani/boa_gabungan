unit Utrx_deposito_ajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  RzEdit, Vcl.Mask, Vcl.ComCtrls, RzPanel;

type
  TFtrx_deposito_ajuan = class(TForm)
    Panel3: TPanel;
    BTutup: TRzBitBtn;
    btnnew: TRzBitBtn;
    btnsave: TRzBitBtn;
    BCari: TRzBitBtn;
    RzPanel1: TRzPanel;
    txtnorekbank: TEdit;
    txtnobkpengajuan: TEdit;
    txtatasnama: TEdit;
    txtket: TEdit;
    dptgljatuhtempo: TDateTimePicker;
    rznilaideposiito: TRzNumericEdit;
    Button6: TButton;
    txtnabank: TEdit;
    dptgldeposito: TRzDateTimeEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    RzBitBtn1: TRzBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTutupClick(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure btnnewClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat,kd_bank,norek,vcall:string;
    delneto, neto : real;
    next_proses:boolean;
    id_deposito:integer;
    procedure baru;
  end;

//var
  //Ftrx_deposito_ajuan: TFtrx_deposito_ajuan;


Function Ftrx_deposito_ajuan: TFtrx_deposito_ajuan;

implementation

{$R *.dfm}

uses Udaftar_deposito_ajuan, UDataModule, UHomeLogin,Upengajuan_deposito,
  UMutasi_Bank;

var
  RealFtrx_deposito_ajuan : TFtrx_deposito_ajuan;
// implementasi function
function Ftrx_deposito_ajuan: TFtrx_deposito_ajuan;
begin
  if RealFtrx_deposito_ajuan <> nil then
     Ftrx_deposito_ajuan:= RealFtrx_deposito_ajuan
  else
    Application.CreateForm(TFtrx_deposito_ajuan, Result);
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

procedure TFtrx_deposito_ajuan.baru;
begin
     dptgldeposito.Date:=date;
     dptgljatuhtempo.date:=date;
     txtnabank.Clear;
     txtnorekbank.Clear;
     txtket.Clear;
     rznilaideposiito.Value:=0;
     stat:='new';
     txtatasnama.clear;
end;

procedure TFtrx_deposito_ajuan.BCariClick(Sender: TObject);
begin
   fdaftar_deposito_ajuan.stat:='daf_ajuan';
   fdaftar_deposito_ajuan.show;
end;

procedure TFtrx_deposito_ajuan.btnnewClick(Sender: TObject);
begin
   if application.MessageBox('Data baru?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   baru;
end;

procedure TFtrx_deposito_ajuan.btnsaveClick(Sender: TObject);
var tot_dpp,tot_ppn:real;
    dd,mm,yy:word;
    next_proses:boolean;
begin
   if application.MessageBox('Data akan disimpan?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   begin
    if stat='new' then
    begin
       with dm.Qtemp do
       begin
         close;
         sql.clear;
         sql.add('insert into t_deposito_submission(bank_code,on_behalf,bank_norek,deposito_date,due_date,deposito_value,description,nobk_submission,company_code)');
         sql.add('values(:1,:2,:3,:4,:5,:6,:7,:8,:9)');
         ParamByName('1').asstring:=kd_bank;
         ParamByName('2').asstring:=txtatasnama.Text;
         ParamByName('3').asstring:=txtnorekbank.Text;
         ParamByName('4').asdatetime:=dptgldeposito.Date;
         ParamByName('5').asdatetime:=dptgljatuhtempo.Date ;
         ParamByName('6').asfloat:=rznilaideposiito.Value;
         ParamByName('7').asstring:=txtket.Text;
         ParamByName('8').asstring:=txtnobkpengajuan.Text;
         ParamByName('9').asstring:=FHomeLogin.vKodePRSH;
         Execute;
       end;
    end
    else
    if stat='edit' then
    begin
       with dm.Qtemp do
       begin
         close;
         sql.clear;
         sql.add('update t_deposito_tmp set bank_code=:1,bank_norek=:2,deposito_date=:3,due_date=:4,deposito_value=:5,description=:6,on_behalf=:7,nobk_submission=:8,company_code=:9 where id=:ids');
         ParamByName('1').asstring:=kd_bank;
         ParamByName('2').asstring:=txtnorekbank.Text;
         ParamByName('3').asdatetime:=dptgldeposito.Date;
         ParamByName('4').asdatetime:=dptgljatuhtempo.Date ;
         ParamByName('5').asfloat:=rznilaideposiito.Value;
         ParamByName('6').asstring:=txtket.Text;
         ParamByName('7').asstring:=txtatasnama.Text;
         ParamByName('8').asstring:=txtnobkpengajuan.Text;
         ParamByName('9').asstring:=FHomeLogin.vKodePRSH;
         ParamByName('ids').asinteger:=id_deposito;
         Execute;
       end;
    end;
    showmessage('Data berhasil disimpan !');
   end;
end;

procedure TFtrx_deposito_ajuan.BTutupClick(Sender: TObject);
begin
   Close;
end;

procedure TFtrx_deposito_ajuan.Button6Click(Sender: TObject);
begin
   FMutasiBank.vpanggilbank:='deposito_ajuan';
   FMutasiBank.show;
end;

procedure TFtrx_deposito_ajuan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFtrx_deposito_ajuan.FormCreate(Sender: TObject);
begin
   RealFtrx_deposito_ajuan:=self;
end;

procedure TFtrx_deposito_ajuan.FormDestroy(Sender: TObject);
begin
   RealFtrx_deposito_ajuan:=Nil;
end;

procedure TFtrx_deposito_ajuan.FormShow(Sender: TObject);
begin
  dptgljatuhtempo.Date:=now();
  //Fpengajuan_deposito.stat:='daf_ajuan';
  //Fpengajuan_deposito.SHOW;
end;

end.
