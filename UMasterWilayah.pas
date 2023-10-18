unit UMasterWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, Vcl.Buttons,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh,
  Data.DB, MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls;

type
  TFMasterWilayah = class(TForm)
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    btMasterArea: TSpeedButton;
    Wilayah: TLabel;
    Label2: TLabel;
    btMasterWilayah: TSpeedButton;
    btMasterProvinsi: TSpeedButton;
    Cbtypejual: TRzComboBox;
    Cbgolongan: TRzComboBox;
    CbJenisPel: TRzComboBox;
    Label1: TLabel;
    Label3: TLabel;
    btMasterKaresidenan: TSpeedButton;
    RzComboBox1: TRzComboBox;
    PageControl1: TPageControl;
    TabSDetailData: TTabSheet;
    DBGridCustomer: TDBGridEh;
    MemDetailMasterWil: TMemTableEh;
    DSDetailMasterWil: TDataSource;
    MemDetailMasterWilKODE_DISTRIBUSI: TStringField;
    MemDetailMasterWilKODE_KABUPATEN: TStringField;
    MemDetailMasterWilNAMA_KABUPATEN: TStringField;
    MemDetailMasterWilKODE_KECAMATAN: TStringField;
    MemDetailMasterWilNAMA_KECAMATAN: TStringField;
    procedure btMasterWilayahClick(Sender: TObject);
    procedure btMasterAreaClick(Sender: TObject);
    procedure btMasterProvinsiClick(Sender: TObject);
    procedure btMasterKaresidenanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMasterWilayah: TFMasterWilayah;

implementation

{$R *.dfm}

uses USetMasterWilayah;

procedure TFMasterWilayah.btMasterAreaClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=true;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterKaresidenanClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=true;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterProvinsiClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=false;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=true;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=true;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=true;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.ShowModal;
end;

procedure TFMasterWilayah.btMasterWilayahClick(Sender: TObject);
begin
  FSetMasterWilayah.TabSetBagianWilayah.TabVisible:=true;
  FSetMasterWilayah.TabSetArea.TabVisible:=false;
  FSetMasterWilayah.TabSetProvinsi.TabVisible:=false;
  FSetMasterWilayah.TabSetKabupaten.TabVisible:=false;
  FSetMasterWilayah.TabSetKecamatan.TabVisible:=false;
  FSetMasterWilayah.TabSetKares.TabVisible:=false;
  FSetMasterWilayah.ShowModal;
end;

end.
