unit UKolektifPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, RzCmboBx, RzButton, Vcl.ExtCtrls,
  RzPanel, RzLabel, Vcl.Mask, RzEdit, RzBtnEdt;

type
  TFKolektifPenjualan = class(TForm)
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzPanel1: TRzPanel;
    BBatal: TRzBitBtn;
    BPrint: TRzBitBtn;
    dtTanggalAwal: TRzDateTimePicker;
    dtTanggalAkhir: TRzDateTimePicker;
    Report: TfrxReport;
    frxDBDPenjualan: TfrxDBDataset;
    frxDBDatasetPenjualanDet: TfrxDBDataset;
    QPenjualan: TUniQuery;
    QPenjualanDet: TUniQuery;
    DSBuktiTerima: TDataSource;
    edKaresidenan: TRzButtonEdit;
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKolektifPenjualan: TFKolektifPenjualan;

implementation

{$R *.dfm}

procedure TFKolektifPenjualan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFKolektifPenjualan.FormShow(Sender: TObject);
begin
  edKaresidenan.Text:='';
  dtTanggalAwal.Date:=NOW();
  dtTanggalAkhir.Date:=NOW();
end;

end.
