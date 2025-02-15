unit UCari_ket_memorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, DataDriverEh, MemDS,
  DBAccess, Uni, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  TFKet_Memorial = class(TForm)
    DBGridEh1: TDBGridEh;
    dsket: TDataSource;
    Memket: TMemTableEh;
    Qket: TUniQuery;
    DataSetDriverEh1: TDataSetDriverEh;
    Panel2: TPanel;
    BCancel: TRzBitBtn;
    Label2: TLabel;
    Label1: TLabel;
    edket: TMemo;
    Lblid: TLabel;
    Panel1: TPanel;
    BNew: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Bedit: TRzBitBtn;
    procedure BCancelClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BNewClick(Sender: TObject);
    procedure BeditClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    status:integer;
  end;

Function FKet_Memorial: TFKet_Memorial;

implementation

{$R *.dfm}

uses UDataModule, UNewJurnal_memorial;
var
  RealFKet_Memorial: TFKet_Memorial;
function FKet_Memorial: TFKet_Memorial;
begin
  if RealFKet_Memorial <> nil then
    FKet_Memorial:= RealFKet_Memorial
  else
    Application.CreateForm(TFKet_Memorial, Result);
end;

procedure TFKet_Memorial.DBGridEh1DblClick(Sender: TObject);
begin
  FNewJurnal_memo.Show;
  FNewJurnal_memo.Memket.Text:=Memket['notes'];
  FNewJurnal_memo.Edkd_ket.Text:=Memket['id'];
  close;
end;

procedure TFKet_Memorial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TFKet_Memorial.FormCreate(Sender: TObject);
begin
  RealFKet_Memorial:=self;
end;

procedure TFKet_Memorial.FormDestroy(Sender: TObject);
begin
  RealFKet_Memorial:=nil;
end;

procedure TFKet_Memorial.BNewClick(Sender: TObject);
begin
  status:=0;
  Panel2.Show;
  Panel1.Hide;
  edket.text:='';
end;

procedure TFKet_Memorial.BeditClick(Sender: TObject);
begin
  status:=1;
  edket.Text:=Memket['nm_ket'];
  Lblid.Caption:=Memket['id'];
  Panel2.Show;
  Panel1.Hide;
end;

procedure TFKet_Memorial.BCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFKet_Memorial.BSimpanClick(Sender: TObject);
begin
  Panel1.Show;
  Panel2.Hide;
if status=0 then
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='insert into t_ket_memorial(nm_ket)values(:nm_ket)';
  ParamByName('nm_ket').AsString:=edket.Text;
  Execute;
end;
end;
if status=1 then
begin
with dm.Qtemp do
begin
  close;
  sql.Clear;
  sql.Text:='update t_ket_memorial set nm_ket=:nm_ket where id=:id';
    ParamByName('nm_ket').AsString:=edket.Text;
    ParamByName('id').AsString:=Lblid.Caption;
  Execute;
end;
end;
//  status:='null';
  Qket.Close;
  Qket.Open;
  Memket.Close;
  Memket.Open;
end;

end.
