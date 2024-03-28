unit UCari_Barang2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_Barang2 = class(TForm)
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

Function FCari_Barang2: TFCari_Barang2;

implementation

{$R *.dfm}

uses Udatamodule, UItem_TransferBarang, UNew_PengStok, UMainMenu,
  UNew_PercBarang;
var
  RealFCari_Barang2: TFCari_Barang2;
function FCari_Barang2: TFCari_Barang2;
begin
  if RealFCari_Barang2 <> nil then FCari_Barang2:= RealFCari_Barang2 else Application.CreateForm(TFCari_Barang2, Result);
end;

procedure TFCari_Barang2.DBGridEh1DblClick(Sender: TObject);
begin
  if VMenu='0' then
  begin
    with FNew_PengStok do
    begin
      Edkdbr.Text:=Qbarang['item_code'];
      Edkd_Barang.Text:=Qbarang['item_stock_code'];
      EdNm_Barang.Text:=Qbarang['item_name'];
      sp:=Qbarang['supplier_code'];
      satuan:=Qbarang['unit'];
    end;
  end;
  if VMenu='1' then
  begin
    with FNew_PercBarang do
    begin
      MemMaterial.edit;
      MemMaterial['kd_material']:=Qbarang['item_stock_code'];
      MemMaterial['nm_material']:=Qbarang['item_name'];
      MemMaterial['kd_stok']:=Qbarang['item_stock_code'];
      MemMaterial['total']:=Qbarang['outstanding'];
      MemMaterial['total_stok']:=Qbarang['outstanding'];
      MemMaterial['satuan']:=Qbarang['unit'];
      MemMaterial['kd_gudang']:=Qbarang['wh_code'];
      MemMaterial['gudang']:=Qbarang['wh_name'];
      MemMaterial.Post;
    end;
  end;
  Close;
end;

procedure TFCari_Barang2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCari_Barang2.FormCreate(Sender: TObject);
begin
  RealFCari_Barang2:=self;
end;

procedure TFCari_Barang2.FormDestroy(Sender: TObject);
begin
   RealFCari_Barang2:=nil;
end;

procedure TFCari_Barang2.FormShow(Sender: TObject);
begin
  Qbarang.Close;
  Qbarang.Open;
end;

end.
