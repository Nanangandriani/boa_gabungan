unit USearch_MaterialRetur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Vcl.ExtCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, MemDS, DBAccess, Uni;

type
  TFSearch_MaterialRetur = class(TForm)
    Qmaterial: TUniQuery;
    DBGridEh1: TDBGridEh;
    DsMaterial: TDataSource;
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jenis_tr:string;
  end;

//var
Function  FSearch_MaterialRetur: TFSearch_MaterialRetur;

implementation

{$R *.dfm}

uses UDataModule, UNew_ReturnPembelian;//, UNew_PotPembelian;
var
  realfsmr : TFSearch_MaterialRetur;

// implementasi function
function fsearch_materialretur: TFSearch_MaterialRetur;
begin
  if realfsmr <> nil then
    FSearch_MaterialRetur:= realfsmr
  else
    Application.CreateForm(TFSearch_MaterialRetur, Result);
end;

procedure TFSearch_MaterialRetur.DBGridEh1CellClick(Column: TColumnEh);
begin
if jenis_tr='rt_pemb' then
begin
with Qmaterial do
begin
  with FNew_returnPemb do
  begin
    MemDetail.Insert;
    Memdetail['no_terima']:=Qmaterial['trans_no'];
    Memdetail['nofaktur']:=Qmaterial['faktur_no'];
    memdetail['kd_material']:=QMaterial['item_stock_code'];
    if Qmaterial['po_no']='' then
    begin MemDetail['nopo']:='0'
    end else
    if Qmaterial['po_no']<>'' then
    begin MemDetail['nopo']:=Qmaterial['po_no'];
    end;
    MemDetail['kd_stok']:=QMaterial['stock_code'];
    MemDetail['nm_material']:=QMaterial['item_Name'];
    MemDetail['harga']:=QMaterial['price'];
    MemDetail['satuan']:=QMaterial['unit'];
    MemDetail.Post;
  end;
end;
end;
if jenis_tr='pot_pemb' then
begin
with Qmaterial do
begin
 { with FNew_PotPembelian do
  begin
    MemDetail.Insert;
    Memdetail['no_terima']:=Qmaterial['no_terima'];
    Memdetail['nofaktur']:=Qmaterial['nofaktur'];
    memdetail['kd_material']:=QMaterial['kd_material_stok'];
    if Qmaterial['nopo']='' then
    begin MemDetail['nopo']:='0'
    end else
    if Qmaterial['nopo']<>'' then
    begin MemDetail['nopo']:=Qmaterial['nopo'];
    end;
    Memdetail['nopo']:=QMaterial['nopo'];
    MemDetail['kd_stok']:=QMaterial['kd_stok'];
    MemDetail['nm_material']:=QMaterial['nm_material'];
    MemDetail['harga']:=QMaterial['harga'];
    MemDetail['satuan']:=QMaterial['satuan'];
    MemDetail.Post;
  end;       }
end;
end;
  Close;
end;

procedure TFSearch_MaterialRetur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=cafree;
end;

procedure TFSearch_MaterialRetur.FormCreate(Sender: TObject);
begin
  realfsmr:=self;
end;

procedure TFSearch_MaterialRetur.FormDestroy(Sender: TObject);
begin
  realfsmr:=nil;
end;

procedure TFSearch_MaterialRetur.FormShow(Sender: TObject);
begin
if Qmaterial.Active=false then Qmaterial.Active:=true;
end;

end.
