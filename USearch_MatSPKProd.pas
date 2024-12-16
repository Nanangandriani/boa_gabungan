unit USearch_MatSPKProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_MatSPKProd = class(TForm)
    DBGridBaku: TDBGridEh;
    Qmaterial: TUniQuery;
    DsMaterial: TDataSource;
    DBGridKemasan: TDBGridEh;
    DBGridKimia: TDBGridEh;
    procedure DBGridBakuDblClick(Sender: TObject);
    procedure DBGridKimiaDblClick(Sender: TObject);
    procedure DBGridKemasanDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    statustr:string;
  end;

//var
Function  FSearch_MatSPKProd: TFSearch_MatSPKProd;

implementation

{$R *.dfm}

uses UNew_SPKTimbangProd;//, UNew_BonKmsnProd;
var
  realfsmp : TFSearch_MatSPKProd;
// implementasi function
function fSearch_matspkprod: TFSearch_MatSPKProd;
begin
  if realfsmp <> nil then
    FSearch_MatSPKProd:= realfsmp
  else
    Application.CreateForm(TFSearch_MatSPKProd, Result);
end;
procedure TFSearch_MatSPKProd.DBGridBakuDblClick(Sender: TObject);
begin
  FNew_SpkTimbangProd.MemBaku.Edit;
  FNew_SpkTimbangProd.MemBaku['kd_material_stok']:=Qmaterial.FieldByName('kd_material').AsString;
  FNew_SpkTimbangProd.MemBaku['nm_material']:=Qmaterial.FieldByName('nm_material').AsString;
  FNew_SpkTimbangProd.MemBaku.Post;
  Close;
end;

procedure TFSearch_MatSPKProd.DBGridKemasanDblClick(Sender: TObject);
begin
{if statustr='bonkms' then
begin
  with FNew_BonKmsnProd do
  begin
    MemKemasan.Edit;
    MemKemasan['kd_material_stok']:=Qmaterial.FieldByName('kd_material').AsString;
    MemKemasan['nm_material']:=Qmaterial.FieldByName('nm_material').AsString;
    MemKemasan.Post;
  end;
  Close;
end;       }
end;

procedure TFSearch_MatSPKProd.DBGridKimiaDblClick(Sender: TObject);
begin
  FNew_SpkTimbangProd.MemKimia.Edit;
  FNew_SpkTimbangProd.MemKimia['kd_material_stok']:=Qmaterial.FieldByName('kd_material').AsString;
  FNew_SpkTimbangProd.MemKimia['nm_material']:=Qmaterial.FieldByName('nm_material').AsString;
  FNew_SpkTimbangProd.MemKimia.Post;
  Close;
end;

procedure TFSearch_MatSPKProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFSearch_MatSPKProd.FormCreate(Sender: TObject);
begin
  realfsmp:=self;
end;

procedure TFSearch_MatSPKProd.FormDestroy(Sender: TObject);
begin
  realfsmp:=nil;
end;

procedure TFSearch_MatSPKProd.FormShow(Sender: TObject);
begin
Qmaterial.Close;
Qmaterial.Open;
end;

end.
