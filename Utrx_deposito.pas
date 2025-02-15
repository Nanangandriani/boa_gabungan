unit Utrx_deposito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, RzEdit, Vcl.Mask,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ExtDlgs, RzPanel, RzButton;

type
  TFtrx_deposito = class(TForm)
    Panel2: TPanel;
    Btutup: TRzBitBtn;
    btnsave: TRzBitBtn;
    btnnew: TRzBitBtn;
    BBrowse: TRzBitBtn;
    RzPanel1: TRzPanel;
    cbuploadfoto: TCheckBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
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
    btnambilfoto: TButton;
    Panel1: TPanel;
    Image1: TImage;
    Label10: TLabel;
    txtatasnama: TEdit;
    txtnobk: TEdit;
    txtnodeposito: TEdit;
    txtket: TEdit;
    dptgljatuhtempo: TDateTimePicker;
    rznilaideposiito: TRzNumericEdit;
    txtnorekbank: TEdit;
    txtnabank: TEdit;
    dptgldeposito: TRzDateTimeEdit;
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
    procedure BBrowseClick(Sender: TObject);
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
  //Ftrx_deposito: TFtrx_deposito;

 function  Ftrx_deposito: TFtrx_deposito;

implementation

{$R *.dfm}

uses Udaftar_deposito;

var
  RealFtrx_deposito : TFtrx_deposito;
// implementasi function
function Ftrx_deposito: TFtrx_deposito;
begin
  if RealFtrx_deposito <> nil then
     Ftrx_deposito:= RealFtrx_deposito
  else
    Application.CreateForm(TFtrx_deposito, Result);
end;

procedure TFtrx_deposito.baru;
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
   txtatasnama.clear;
   image1.picture:=nil;
   btnambilfoto.Enabled:=false;
end;

procedure TFtrx_deposito.BBrowseClick(Sender: TObject);
begin
  Fdaftar_deposito.stat:='deposito1';
  Fdaftar_deposito.SHOW;
end;

procedure TFtrx_deposito.btnnewClick(Sender: TObject);
begin
   if application.MessageBox('Data baru?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   baru;
end;

end.
