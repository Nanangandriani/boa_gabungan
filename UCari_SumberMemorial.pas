unit UCari_SumberMemorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, RzCmboBx, Vcl.Mask,
  RzEdit, RzLabel, Vcl.ExtCtrls, RzPanel;

type
  TFCari_SumberMemorial = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel4: TRzLabel;
    DTtgl: TRzDateTimeEdit;
    RzBitBtn1: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    QSumber_memo: TUniQuery;
    RzLabel2: TRzLabel;
    Dttgl2: TRzDateTimeEdit;
    Edit1: TEdit;
    QSumber_memo2: TUniQuery;
    DataSource2: TDataSource;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FCari_SumberMemorial: TFCari_SumberMemorial;

implementation

{$R *.dfm}

uses UNewJurnal_memorial;
var
  RealFCari_SumberMemorial: TFCari_SumberMemorial;
function FCari_SumberMemorial: TFCari_SumberMemorial;
begin
  if RealFCari_SumberMemorial <> nil then
    FCari_SumberMemorial:= RealFCari_SumberMemorial
  else
    Application.CreateForm(TFCari_SumberMemorial, Result);
end;

procedure TFCari_SumberMemorial.DBGridEh1DblClick(Sender: TObject);
begin
with FNewJurnal_memo do
begin
  with QSumber_memo do
  begin
    FNewJurnal_memo.edno_bk_pembulatan.Text:= FieldByName('notrans').AsString;
    FNewJurnal_memo.edno_faktur_pembulatan.Text:= FieldByName('nofaktur').AsString;
  end;
  MemTableEh1.EmptyTable;
    WITH QSumber_memo2 DO
    BEGIN
      close;
      sql.Clear;
      sql.Text:='select * from "V_SumberMemorial2" where notrans='+QuotedStr(QSumber_memo['notrans'])+' and ket='+QuotedStr(Edit1.Text) ;
           open;
    END;
  QSumber_memo2.First;
  while not QSumber_memo2.Eof do
    begin
       MemTableEh1.Insert;
       MemTableEh1['kode_akun']:=QSumber_memo2['kd_akun'];
       MemTableEh1['debit']:=QSumber_memo2['db'];
       MemTableEh1['kredit']:=QSumber_memo2['kr'];
       MemTableEh1['nama_akun']:=QSumber_memo2['nm_akun'];
       MemTableEh1.Post;
       QSumber_memo2.Next;
     end;
  end;
  Close;
end;

procedure TFCari_SumberMemorial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFCari_SumberMemorial.FormCreate(Sender: TObject);
begin
  RealFCari_SumberMemorial:=self;
end;

procedure TFCari_SumberMemorial.FormDestroy(Sender: TObject);
begin
  RealFCari_SumberMemorial:=nil;
end;

procedure TFCari_SumberMemorial.RzBitBtn1Click(Sender: TObject);
begin
  WITH QSumber_memo DO
  begin
    close;
    sql.Clear;
    sql.Text:='select * from "V_Sumbermemorial" where ket='+QuotedStr(Edit1.Text)+' and tgl>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtgl.Date))+' and tgl>='+QuotedStr(FormatDateTime('yyyy-mm-dd',DTtgl.Date));
    Open
  end;
end;

end.
