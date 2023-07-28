unit UCari_Modul;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_Data_Modul = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BEdit: TRzBitBtn;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    procedure BBatalClick(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
Function  FCari_Data_Modul: TFCari_Data_Modul;
var
  ItemReturn :Integer;

implementation

{$R *.dfm}

uses UNewDaftar_perkiraan;
var
  realfbdm : TFCari_Data_Modul;
// implementasi function
function FCari_Data_Modul: TFCari_Data_Modul;
begin
  if realfbdm <> nil then
    FCari_Data_Modul:= realfbdm
  else
    Application.CreateForm(TFCari_Data_Modul, Result);
end;

procedure TFCari_Data_Modul.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFCari_Data_Modul.BEditClick(Sender: TObject);
VAR I :integer;
begin
if ItemReturn=0 then
  begin
  if DBGridEh1.SelectedRows.Count > 0 then
    begin
      with DBGridEh1.DataSource.DataSet do
      begin
      for i := 0 to DBGridEh1.SelectedRows.Count-1 do
        begin
          GotoBookmark(DBGridEh1.SelectedRows.Items[i]);
          with UniQuery1 do
          begin
            FNewdaftar_perkiraan_bank.Memdetail.Insert;
            FNewdaftar_perkiraan_bank.Memdetail['id']:=UniQuery1.FieldByName('id').AsString;
            FNewdaftar_perkiraan_bank.Memdetail['nama_modul']:=UniQuery1.FieldByName('module_name').AsString;
            FNewdaftar_perkiraan_bank.Memdetail.Post;
          end;
        end;
      end;
    end;
  end;
  Close;
end;

procedure TFCari_Data_Modul.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFCari_Data_Modul.FormCreate(Sender: TObject);
begin
  realfbdm:=self;
end;

procedure TFCari_Data_Modul.FormDestroy(Sender: TObject);
begin
  realfbdm:=nil;
end;

procedure TFCari_Data_Modul.FormShow(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.Open;
end;

end.
