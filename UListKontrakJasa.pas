unit UListKontrakJasa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.Mask, RzEdit, RzBtnEdt,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFListKontrakJasa = class(TForm)
    pnlFilter: TPanel;
    GBType1: TGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Ednamawilayah: TEdit;
    Edkodewilayah: TRzButtonEdit;
    Panel2: TPanel;
    Edautocode: TEdit;
    btTampilkan: TRzBitBtn;
    GBType2: TGroupBox;
    DBGridCustomer: TDBGridEh;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    MemMasterDataWILAYAH: TStringField;
    MemMasterDataKD_PELANGGAN: TStringField;
    MemMasterDataNM_PELANGGAN: TStringField;
    MemMasterDataKD_WILAYAH: TStringField;
    MemMasterDataNO_KONTRAK: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListKontrakJasa: TFListKontrakJasa;

implementation

{$R *.dfm}

uses UNew_SalesOrder;

procedure TFListKontrakJasa.FormShow(Sender: TObject);
begin
  if Length(FNew_SalesOrder.edKode_Pelanggan.Text)=0 then
  begin
    pnlFilter.Visible:=false;
  end else
  if Length(FNew_SalesOrder.edKode_Pelanggan.Text)<>0 then
  begin
    pnlFilter.Visible:=true;
    GBType1.Visible:=true;
    GBType2.Visible:=false;
  end;
end;

end.
