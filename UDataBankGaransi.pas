unit UDataBankGaransi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, MemTableDataEh,
  Data.DB, MemTableEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls;

type
  TFDataBankGaransi = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    DSMaster: TDataSource;
    MemMaster: TMemTableEh;
    Panel6: TPanel;
    RzPageControl1: TRzPageControl;
    TabSDetail: TRzTabSheet;
    DBGrid: TDBGridEh;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Edkode: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Ednama: TEdit;
    Ednamawilayah: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    MemMasterkode_bank: TStringField;
    MemMasternama_bank: TStringField;
    MemMasterkode_kategori: TStringField;
    MemMasternama_kategori: TStringField;
    MemMastertgl_aktif: TDateField;
    MemMasternomor_bg: TStringField;
    MemMastertgl_tempo: TDateField;
    MemMasternilai: TFloatField;
    procedure DBGridCustomerColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridCustomerColumns3EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataBankGaransi: TFDataBankGaransi;

implementation

{$R *.dfm}

uses UMasterData;

procedure TFDataBankGaransi.DBGridCustomerColumns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Bank';
  FMasterData.vcall:='m_bank_garansi';
  FMasterData.update_grid('code','name','description','t_list_bank','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDataBankGaransi.DBGridCustomerColumns3EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Data Kategori';
  FMasterData.vcall:='kategori_bank_garansi';
  FMasterData.update_grid('group_id','group_name','0','t_item_group','WHERE	deleted_at IS NULL Order By code Asc');
  FMasterData.ShowModal;
end;

procedure TFDataBankGaransi.FormShow(Sender: TObject);
begin
  MemMaster.active:=false;
  MemMaster.active:=true;
  MemMaster.EmptyTable;
end;

end.
