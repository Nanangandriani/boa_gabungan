unit USearch_SuppSPKProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_SuppSPKProd = class(TForm)
    DBGridKemasan: TDBGridEh;
    QSupplier: TUniQuery;
    DsSupplier: TDataSource;
    DBGridBaku: TDBGridEh;
    DBGridKimia: TDBGridEh;
    procedure DBGridKimiaDblClick(Sender: TObject);
    procedure DBGridBakuDblClick(Sender: TObject);
    procedure DBGridKemasanDblClick(Sender: TObject);
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
Function FSearch_SuppSPKProd: TFSearch_SuppSPKProd;

implementation

{$R *.dfm}

uses UNew_SPKTimbangProd;//, UNew_BonKmsnProd;
var
  realfsearch_Suppsp : TFSearch_SuppSPKProd;
// implementasi function
function fSearch_SuppSPKProd: TFSearch_SuppSPKProd;
begin
  if realfsearch_Suppsp <> nil then
    FSearch_SuppSPKProd:= realfsearch_Suppsp
  else
    Application.CreateForm(TFSearch_SuppSPKProd, Result);
end;
procedure TFSearch_SuppSPKProd.DBGridBakuDblClick(Sender: TObject);
begin
FNew_SpkTimbangProd.Show;
FNew_SpkTimbangProd.MemBaku.Edit;
FNew_SpkTimbangProd.MemBaku['kd_material_stok']:=QSupplier.FieldByName('kd_material_stok').AsString;
FNew_SpkTimbangProd.MemBaku['nm_supplier']:=QSupplier.FieldByName('nm_supplier').AsString;
FNew_SpkTimbangProd.MemBaku['kd_supplier']:=QSupplier.FieldByName('kd_supplier').AsString;
FNew_SpkTimbangProd.MemBaku['kd_stok']:=QSupplier.FieldByName('kd_stok').AsString;
FNew_SpkTimbangProd.MemBaku['Satuan']:=QSupplier.FieldByName('konversi').AsString;
FNew_SpkTimbangProd.MemBaku['gudang']:=QSupplier.FieldByName('Gudang').AsString;
FNew_SpkTimbangProd.MemBaku['satuankemasan']:=QSupplier.FieldByName('satuan').AsString;
FNew_SpkTimbangProd.MemBaku.Post;
end;

procedure TFSearch_SuppSPKProd.DBGridKemasanDblClick(Sender: TObject);
begin
//FNew_SpkTimbangProd.Show;
{FNew_SpkTimbangProd.MemKemasan.Edit;
FNew_SpkTimbangProd.MemKemasan['kd_material']:=QSupplier.FieldByName('kd_material_stok').AsString;
FNew_SpkTimbangProd.MemKemasan['nm_supplier']:=QSupplier.FieldByName('nm_supplier').AsString;
FNew_SpkTimbangProd.MemKemasan['kd_supplier']:=QSupplier.FieldByName('kd_supplier').AsString;
FNew_SpkTimbangProd.MemKemasan['kd_stok']:=QSupplier.FieldByName('kd_stok').AsString;
FNew_SpkTimbangProd.MemKemasan['Satuan']:=QSupplier.FieldByName('konversi').AsString;
FNew_SpkTimbangProd.MemKemasan['gudang']:=QSupplier.FieldByName('Gudang').AsString;
FNew_SpkTimbangProd.MemKemasan['satuankemasan']:=QSupplier.FieldByName('satuan').AsString;
FNew_SpkTimbangProd.MemKemasan.Post;
with FNew_BonKmsnProd do
begin
  MemKemasan.Edit;
  MemKemasan['kd_material_stok']:=QSupplier.FieldByName('kd_material_stok').AsString;
  MemKemasan['nm_supplier']:=QSupplier.FieldByName('nm_supplier').AsString;
  MemKemasan['kd_supplier']:=QSupplier.FieldByName('kd_supplier').AsString;
  MemKemasan['kd_stok']:=QSupplier.FieldByName('kd_stok').AsString;
  MemKemasan['Satuan']:=QSupplier.FieldByName('konversi').AsString;
  MemKemasan['gudang']:=QSupplier.FieldByName('Gudang').AsString;
  MemKemasan['satuankemasan']:=QSupplier.FieldByName('satuan').AsString;
  MemKemasan.Post;
end;
Close;     }
{ off 12-12-2024
with FNew_BonKmsnProd do
begin
  MemKemasan.Edit;
  MemKemasan['kd_material_stok']:=QSupplier.FieldByName('kd_material_stok').AsString;
  MemKemasan['nm_supplier']:=QSupplier.FieldByName('nm_supplier').AsString;
  MemKemasan['kd_supplier']:=QSupplier.FieldByName('kd_supplier').AsString;
  MemKemasan['kd_stok']:=QSupplier.FieldByName('kd_stok').AsString;
  MemKemasan['Satuan']:=QSupplier.FieldByName('konversi').AsString;
  MemKemasan['gudang']:=QSupplier.FieldByName('Gudang').AsString;
  MemKemasan['satuankemasan']:=QSupplier.FieldByName('satuan').AsString;
  MemKemasan['ttlberat']:=QSupplier.FieldByName('qty').AsString;
//  MemKemasan['jmlh_kt']:=QSupplier.FieldByName('qty').AsFloat /
  MemKemasan.Post;
end;               }
  Close;
end;

procedure TFSearch_SuppSPKProd.DBGridKimiaDblClick(Sender: TObject);
begin
FNew_SpkTimbangProd.Show;
FNew_SpkTimbangProd.MemKimia.Edit;
FNew_SpkTimbangProd.MemKimia['kd_material_stok']:=QSupplier.FieldByName('kd_material_stok').AsString;
FNew_SpkTimbangProd.MemKimia['nm_supplier']:=QSupplier.FieldByName('nm_supplier').AsString;
FNew_SpkTimbangProd.MemKimia['kd_supplier']:=QSupplier.FieldByName('kd_supplier').AsString;
FNew_SpkTimbangProd.MemKimia['kd_stok']:=QSupplier.FieldByName('kd_stok').AsString;
FNew_SpkTimbangProd.MemKimia['Satuan']:=QSupplier.FieldByName('konversi').AsString;
FNew_SpkTimbangProd.MemKimia['gudang']:=QSupplier.FieldByName('Gudang').AsString;
FNew_SpkTimbangProd.MemKimia['satuankemasan']:=QSupplier.FieldByName('satuan').AsString;
FNew_SpkTimbangProd.MemKimia.Post;
end;

procedure TFSearch_SuppSPKProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFSearch_SuppSPKProd.FormCreate(Sender: TObject);
begin
  realfsearch_Suppsp:=self;
end;

procedure TFSearch_SuppSPKProd.FormDestroy(Sender: TObject);
begin
  realfsearch_Suppsp:=nil;
end;

procedure TFSearch_SuppSPKProd.FormShow(Sender: TObject);
begin
  QSupplier.Close;
  QSupplier.Open;
end;

end.
