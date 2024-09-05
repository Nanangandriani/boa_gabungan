unit UDataPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

type
  TFDataPenagihanPiutang = class(TForm)
    Panel1: TPanel;
    Label39: TLabel;
    Label38: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edNamaKolektor: TRzButtonEdit;
    edKodeKolektor: TEdit;
    dtCetak: TRzDateTimePicker;
    btAddDetail: TRzBitBtn;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabSDetail: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    dtTagih: TRzDateTimePicker;
    MemDetailkode_pel: TStringField;
    MemDetailnama_pel: TStringField;
    MemDetailtgl_faktur: TDateField;
    MemDetailtgl_tempo: TDateField;
    MemDetailjum_piutang: TCurrencyField;
    MemDetailtunai: TCurrencyField;
    MemDetailbank_resi: TStringField;
    MemDetailtgl_resi: TDateField;
    MemDetailresi: TCurrencyField;
    MemDetailnama_bank: TStringField;
    MemDetailno_cek: TStringField;
    MemDetailtgl_tempo_cek: TDateField;
    MemDetailnilai_cek: TCurrencyField;
    MemDetailkontra_bon: TCurrencyField;
    MemDetailno_invoice: TStringField;
    MemDetailno_invoice_tax: TStringField;
    btTampilkan: TRzBitBtn;
    procedure edNamaKolektorButtonClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure DBGridDetailColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridDetailColumns2EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure btTampilkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status : integer;
    { Public declarations }
    procedure Clear;
  end;

var
  FDataPenagihanPiutang: TFDataPenagihanPiutang;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UMasterData;
procedure TFDataPenagihanPiutang.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  MemDetail.EmptyTable;
  MemDetail.Active:=true;
end;

procedure TFDataPenagihanPiutang.Clear;
begin
  dtTagih.Date:=now();
  dtCetak.Date:=now();
  edNamaKolektor.Clear;
  edKodeKolektor.Clear;
  MemDetail.EmptyTable;
end;


procedure TFDataPenagihanPiutang.DBGridDetailColumns1EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='dpp';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFDataPenagihanPiutang.DBGridDetailColumns2EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  ShowMessage('Data Piutang');
end;

procedure TFDataPenagihanPiutang.edNamaKolektorButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kolektor';
  FMasterData.vcall:='m_kolektor';
  FMasterData.update_grid('code','name','concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency) ','"public"."t_collector"','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

end.
