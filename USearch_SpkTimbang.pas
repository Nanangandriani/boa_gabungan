unit USearch_SpkTimbang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFSearch_SpkTimbang = class(TForm)
    Qspktimbang: TUniQuery;
    DsSpkTimbang: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statustr:string;
  end;

Function FSearch_SpkTimbang: TFSearch_SpkTimbang;

implementation

{$R *.dfm}

uses UDataModule, UNew_BonProduksi;
var
  RealFSearch_SpkTimbang: TFSearch_SpkTimbang;
function FSearch_SpkTimbang: TFSearch_SpkTimbang;
begin
  if RealFSearch_SpkTimbang <> nil then
    FSearch_SpkTimbang:= RealFSearch_SpkTimbang
  else
    Application.CreateForm(TFSearch_SpkTimbang, Result);
end;
procedure TFSearch_SpkTimbang.DBGridEh1DblClick(Sender: TObject);
begin
if statustr='bonproduksi' then
begin
with FNew_BonProduksi do
begin
  CbSpk_Timbang.Text:=Qspktimbang['no_timbang'];
  EdNo_SPk.Text:=Qspktimbang['no_spk_prod'];
  edmesin.Text:= Qspktimbang['mc'];
  edproduk.Text:=Qspktimbang['nm_produk'];
  EdNo_Formula.Text:=Qspktimbang['no_formula'];
  EdTimbang.Text:=Qspktimbang['total'];
  EdSisa.Text:=Qspktimbang['sisatb'];
  EdNo_FormulaChange(sender);
end;
end;
 close;
end;

procedure TFSearch_SpkTimbang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFSearch_SpkTimbang.FormCreate(Sender: TObject);
begin
  RealFSearch_SpkTimbang:=Self;
end;

procedure TFSearch_SpkTimbang.FormDestroy(Sender: TObject);
begin
  RealFSearch_SpkTimbang:=nil;
end;

end.
