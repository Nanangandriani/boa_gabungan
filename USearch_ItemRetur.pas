unit USearch_ItemRetur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFSearch_MaterialRetur = class(TForm)
    DsMaterial: TDataSource;
    Qmaterial: TUniQuery;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    jenis_tr:string;
  end;

var
  FSearch_MaterialRetur: TFSearch_MaterialRetur;

implementation

{$R *.dfm}

uses UNew_ReturnPembelian, UNew_Pot_Pembelian, UPot_Pembelian;

procedure TFSearch_MaterialRetur.DBGridEh1DblClick(Sender: TObject);
begin
    if jenis_tr='rt_pemb' then
    begin
      with Qmaterial do
      begin
        with FNew_returnPemb do
        begin
          MemDetail.Insert;
          Memdetail['no_terima']:=Qmaterial['receive_no'];
          Memdetail['nofaktur']:=Qmaterial['faktur_no'];
          memdetail['kd_material']:=QMaterial['item_stock_code'];
          if Qmaterial['po_no']='' then
          begin
             MemDetail['nopo']:='0'
          end
          else
          if Qmaterial['po_no']<>'' then
          begin
             MemDetail['nopo']:=Qmaterial['po_no'];
          end;
          MemDetail['kd_stok']:=QMaterial['stock_code'];
          MemDetail['nm_material']:=QMaterial['item_name'];
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
        with FNew_Pot_Pembelian do
        begin
          MemDetail.Insert;
          Memdetail['no_terima']:=Qmaterial['no_terima'];
          Memdetail['nofaktur']:=Qmaterial['nofaktur'];
          memdetail['kd_material']:=QMaterial['item_stock_code'];
          if Qmaterial['po_no']='' then
          begin
            MemDetail['nopo']:='0'
          end
          else
          if Qmaterial['nopo']<>'' then
          begin
            MemDetail['nopo']:=Qmaterial['po_no'];
          end;
          Memdetail['nopo']:=QMaterial['po_no'];
          MemDetail['kd_stok']:=QMaterial['stock_code'];
          MemDetail['nm_material']:=QMaterial['item_name'];
          MemDetail['harga']:=QMaterial['price'];
          MemDetail['satuan']:=QMaterial['unit'];
          MemDetail.Post;
        end;
      end;
    end;
    Close;
end;

procedure TFSearch_MaterialRetur.FormShow(Sender: TObject);
begin
   if Qmaterial.Active=false then Qmaterial.Active:=true;
end;

end.
