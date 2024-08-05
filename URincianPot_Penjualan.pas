unit URincianPot_Penjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, RzButton;

type
  TFRincianPot_Penjualan = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    edNama_Pelanggan: TRzButtonEdit;
    edKode_Pelanggan: TEdit;
    edNomorTrans: TEdit;
    DBGridCustomer: TDBGridEh;
    dsMasterData: TDataSource;
    MemMasterData: TMemTableEh;
    MemMasterDatakd_brg: TStringField;
    MemMasterDatanm_brg: TStringField;
    MemMasterDatapot_value_1: TCurrencyField;
    MemMasterDatapot_value_2: TCurrencyField;
    MemMasterDatapot_value_3: TCurrencyField;
    MemMasterDatapot_value_4: TCurrencyField;
    MemMasterDatapot_persen_1: TFloatField;
    MemMasterDatapot_persen_2: TFloatField;
    MemMasterDatapot_persen_3: TFloatField;
    MemMasterDatapot_persen_4: TFloatField;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRincianPot_Penjualan: TFRincianPot_Penjualan;

implementation

{$R *.dfm}

procedure TFRincianPot_Penjualan.BBatalClick(Sender: TObject);
begin
  MemMasterData.EmptyTable;
  Close;
end;

end.
