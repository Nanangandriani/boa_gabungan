unit UCari_Barang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFCari_Barang = class(TForm)
    DBGridEh1: TDBGridEh;
    QBarang: TUniQuery;
    DsBarang: TDataSource;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    status_tr,jenistr:string;
  end;

//var
Function  FCari_Barang: TFCari_Barang;

implementation

{$R *.dfm}

uses UNew_Barang_stok, UNew_BonPermtBarang;
var
  realfCari_barang: TFCari_Barang;
// implementasi function
function FCari_Barang: TFCari_Barang;
begin
  if RealFCari_Barang <> nil then
    FCari_Barang:= RealfCari_barang
  else
    Application.CreateForm(TFCari_Barang, Result);
end;
procedure TFCari_Barang.DBGridEh1DblClick(Sender: TObject);
begin
if status_tr='MatStok' then
  begin
  with Fnew_Barang_stok do
  begin
    EdKd_Material.Text:=QBarang.FieldByName('kd_material').AsString;
    Edmerk.Text:=QBarang.FieldByName('merk').AsString;
    EdNm_Material.Text:=QBarang.FieldByName('nm_material').AsString;
    no_material:=QBarang.FieldByName('no_material').AsString;
    EdSatuan.Text:=QBarang.FieldByName('satuan').AsString;
    EdNm_supp.Enabled:=True;;
  end;
    close;
  end;
end;

procedure TFCari_Barang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFCari_Barang.FormCreate(Sender: TObject);
begin
  RealFCari_barang:=self;
end;

procedure TFCari_Barang.FormDestroy(Sender: TObject);
begin
  RealFCari_barang:=nil;
end;

end.
