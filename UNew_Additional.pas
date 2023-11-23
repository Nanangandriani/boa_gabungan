unit UNew_Additional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzTabs;

type
  TFNew_Additional = class(TForm)
    QAdditional: TUniQuery;
    DSAdditional: TDataSource;
    PG1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Edkode: TEdit;
    EdNama: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    BAdd: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
    procedure BAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure refresh;
  end;

var
  FNew_Additional: TFNew_Additional;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFNew_Additional.refresh;
begin
  with QAdditional do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from t_additional order by id ASC');
    Open;
  end;
  QAdditional.Close;
  QAdditional.Open;
end;

procedure TFNew_Additional.BAddClick(Sender: TObject);
begin
   PG1.ActivePage:=Tabsheet2;
   TabSheet2.TabVisible:=true;
end;

procedure TFNew_Additional.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFNew_Additional.BSimpanClick(Sender: TObject);
begin
   with QAdditional do
   begin
      close;
      sql.Clear;
      sql.Text:='select * from t_Additional order by id ASC';
      open;
   end;

   with dm.Qtemp do
   begin
       close;
       sql.clear;
       sql.add('insert into t_Additional (code,description)');
       sql.add('values(:1,:2)');
       params.parambyname('1').value:=Edkode.Text;
       params.parambyname('2').value:=EdNama.text;
       execute;
   end;
   QAdditional.close;
   QAdditional.Open;
   showmessage('Simpan data berhasil');
   Close;
end;

procedure TFNew_Additional.FormShow(Sender: TObject);
begin
   if QAdditional.Active=false then
      QAdditional.Active:=True;
   QAdditional.Close;
   QAdditional.Open;
   Edkode.Text:='';
   Ednama.text:='';
   PG1.ActivePage:=Tabsheet1;
   TabSheet2.TabVisible:=False;
end;

end.
