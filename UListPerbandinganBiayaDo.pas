unit UListPerbandinganBiayaDo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, Data.DB, MemTableEh, Vcl.ExtCtrls, RzPanel, RzButton;

type
  TFListPerbandinganBiayaDo = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    MemDataBiayaLast: TMemTableEh;
    MemDataBiayaLastkd_biaya: TStringField;
    MemDataBiayaLastnm_biaya: TStringField;
    MemDataBiayaLastdpp: TFloatField;
    MemDataBiayaLastakun_ppn: TStringField;
    MemDataBiayaLastnama_ppn: TStringField;
    MemDataBiayaLastpersen_ppn: TFloatField;
    MemDataBiayaLastppn: TFloatField;
    MemDataBiayaLastakun_pph: TStringField;
    MemDataBiayaLastnama_pph: TStringField;
    MemDataBiayaLastpersen_pph: TFloatField;
    MemDataBiayaLastpph: TFloatField;
    MemDataBiayaLasttotal: TFloatField;
    MemDataBiayaLastketerangan: TWideStringField;
    MemDataBiayaLastno_invoice: TStringField;
    MemDataBiayaLasttgl_invoice: TDateField;
    DataSource1: TDataSource;
    RzPanel1: TRzPanel;
    MemDataBiayaCorrection: TMemTableEh;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    DataSource2: TDataSource;
    btSetujui: TRzBitBtn;
    procedure btSetujuiClick(Sender: TObject);
  private
    { Private declarations }
    procedure SavePerubahan;
  public
    { Public declarations }
  end;

var
  FListPerbandinganBiayaDo: TFListPerbandinganBiayaDo;

implementation

{$R *.dfm}

uses UNewDeliveryOrder;

procedure TFListPerbandinganBiayaDo.btSetujuiClick(Sender: TObject);
begin
  SavePerubahan;
  FNewDeliveryOrder.IntAdaPerubahan:=0;
  FListPerbandinganBiayaDo.Close;
end;

procedure TFListPerbandinganBiayaDo.SavePerubahan;
begin
  with FNewDeliveryOrder do
  begin
    MemDataBiayaCorrection.First;
    while not MemDataBiayaCorrection.Eof do
    begin
      MemDataBiaya.First;
      while not MemDataBiaya.Eof do
      begin
        MemDataBiaya.Edit;
        if MemDataBiaya['kd_biaya']=MemDataBiayaCorrection['kd_biaya'] then
        begin
          MemDataBiaya['dpp']:=MemDataBiayaCorrection['dpp'];
        end else
        if MemDataBiaya['kd_biaya']=MemDataBiayaCorrection['kd_biaya'] then
        begin
          MemDataBiaya['dpp']:=MemDataBiayaCorrection['dpp'];
        end else
        if MemDataBiaya['kd_biaya']=MemDataBiayaCorrection['kd_biaya'] then
        begin
          MemDataBiaya['dpp']:=MemDataBiayaCorrection['dpp'];
        end else
        if MemDataBiaya['kd_biaya']=MemDataBiayaCorrection['kd_biaya'] then
        begin
          MemDataBiaya['dpp']:=MemDataBiaya['dpp'];
        end;

        MemDataBiaya.Post;
        FNewDeliveryOrder.HitungGrid;
        MemDataBiaya.Next;
      end;
      MemDataBiayaCorrection.Next;
    end;
  end;
end;

end.
