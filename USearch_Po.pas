unit USearch_Po;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFsearch_po = class(TForm)
    DBGridEh1: TDBGridEh;
    DsPo: TDataSource;
    Qpo: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
  //Fsearch_po: TFsearch_po;
Function Fsearch_po: TFsearch_po;


implementation

{$R *.dfm}

uses Unew_spb;

var
  realfspo : TFsearch_po;
  status:integer;
  kdsb,no_urut:string;

// implementasi function
function fsearch_po: TFsearch_po;
begin
  if realfspo <> nil then
    Fsearch_po:= realfspo
  else
    Application.CreateForm(TFsearch_po, Result);
end;


procedure TFsearch_po.DBGridEh1DblClick(Sender: TObject);
begin
  with Fnew_spb do
  begin
    ednopo.text:=qpo['po_no'];
    edkd_supp.text:=qpo['supplier_code'];
    ednm_supp.text:=qpo['supplier_name'];
    kategori_tr:=Qpo['trans_category'];
    kdsb:=Qpo['sbu_code'];
  end;
    close;
end;

procedure TFsearch_po.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFsearch_po.FormCreate(Sender: TObject);
begin
   realfspo:=self;
end;

procedure TFsearch_po.FormDestroy(Sender: TObject);
begin
   realfspo:=nil;
end;

procedure TFsearch_po.FormShow(Sender: TObject);
begin
   if Qpo.Active=false then
      Qpo.Active:=true;
   Qpo.Close;
   Qpo.Open;
end;

end.
