unit UCari_Barang2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFSearch_Barang = class(TForm)
    DBGridEh1: TDBGridEh;
    Qbarang: TUniQuery;
    DsBarang: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function FSearch_Barang: TFSearch_Barang;

implementation

{$R *.dfm}

uses Udatamodule, UItem_TransferBarang, UNew_PengStok;
var
  RealFSearch_Barang: TFSearch_Barang;
function FSearch_Barang: TFSearch_Barang;
begin
  if RealFSearch_Barang <> nil then
    FSearch_Barang:= RealFSearch_Barang
  else
    Application.CreateForm(TFSearch_Barang, Result);
end;

procedure TFSearch_Barang.DBGridEh1DblClick(Sender: TObject);
begin
  with FNew_PengStok do
  begin
    Edkdbr.Text:=Qbarang['item_code'];
    Edkd_Barang.Text:=Qbarang['item_stock_code'];
    EdNm_Barang.Text:=Qbarang['item_name'];
    sp:=Qbarang['supplier_code'];
    satuan:=Qbarang['unit'];
  end;
  Close;
end;

procedure TFSearch_Barang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFSearch_Barang.FormCreate(Sender: TObject);
begin
  RealFSearch_Barang:=self;
end;

procedure TFSearch_Barang.FormDestroy(Sender: TObject);
begin
   RealFSearch_Barang:=nil;
end;

procedure TFSearch_Barang.FormShow(Sender: TObject);
begin
  Qbarang.Close;
  Qbarang.Open;
end;

end.
