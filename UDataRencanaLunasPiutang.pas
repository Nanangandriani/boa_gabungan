unit UDataRencanaLunasPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.StdCtrls, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzBtnEdt, Vcl.ExtCtrls;

type
  TFDataRencanaLunasPiutang = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailPiutang: TDataSource;
    MemDetailPiutang: TMemTableEh;
    MemDetailPiutangno_tagihan: TStringField;
    MemDetailPiutangtgl_faktur: TDateField;
    MemDetailPiutangketerangan: TStringField;
    MemDetailPiutangno_faktur: TStringField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangjum_piutang_real: TCurrencyField;
    MemDetailPiutangtgl_tempo: TDateField;
    Label21: TLabel;
    Label22: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    Label3: TLabel;
    edNoTrans: TEdit;
    LabelPelanggan: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MemKeterangan: TMemo;
    dtTrans: TRzDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Status:integer;
    { Public declarations }
    procedure Clear;
  end;

var
  FDataRencanaLunasPiutang: TFDataRencanaLunasPiutang;

implementation

{$R *.dfm}

uses UDaftarTagihan, Ubrowse_pelanggan;
procedure TFDataRencanaLunasPiutang.BSaveClick(Sender: TObject);
begin
  ShowMessage('Save/update');
end;

procedure TFDataRencanaLunasPiutang.Clear;
begin
  edNoTrans.Clear;
  dtTrans.date:=now();
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemKeterangan.Clear;
  MemDetailPiutang.EmptyTable;
  MemDetailPiutang.Active:=true;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    FDaftarTagihan.vcall:='rencana_lunas_piutang';
    FDaftarTagihan.periode1:=dtPeriode1.Date;
    FDaftarTagihan.periode2:=dtPeriode2.Date;
    FDaftarTagihan.kd_outlet:=edKode_Pelanggan.Text;
    FDaftarTagihan.RefreshGrid;
    FDaftarTagihan.show;
end;

procedure TFDataRencanaLunasPiutang.edKode_PelangganButtonClick(
  Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='rencana_lunas_piutang';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
