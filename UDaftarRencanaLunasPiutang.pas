unit UDaftarRencanaLunasPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton;

type
  TFDaftarRencanaLunasPiutang = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailFaktur: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    MemDetailPiutang: TMemTableEh;
    MemDetailPiutangpilih: TBooleanField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    dsDetailPiutang: TDataSource;
    btTampilkan: TRzBitBtn;
    MemDetailPiutangkode_pelanggan: TStringField;
    MemDetailPiutangnama_pelanggan: TStringField;
    MemDetailPiutangperiode1: TDateField;
    MemDetailPiutangperiode2: TDateField;
    MemDetailPiutangnotrans: TStringField;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    procedure btTampilkanClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    kd_outlet, vcall: string;
    Status: Integer;
    periode1, periode2: TDate;
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FDaftarRencanaLunasPiutang: TFDaftarRencanaLunasPiutang;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFDaftarRencanaLunasPiutang.Clear;
begin
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemDetailPiutang.EmptyTable;
  MemDetailPiutang.Active:=true;
end;

procedure TFDaftarRencanaLunasPiutang.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftarRencanaLunasPiutang.btTampilkanClick(Sender: TObject);
begin
  FDaftarRencanaLunasPiutang.kd_outlet:=FDaftarRencanaLunasPiutang.edKode_Pelanggan.Text;
  FDaftarRencanaLunasPiutang.periode1:=FDaftarRencanaLunasPiutang.dtPeriode1.Date;
  FDaftarRencanaLunasPiutang.periode2:=FDaftarRencanaLunasPiutang.dtPeriode2.Date;
  FDaftarRencanaLunasPiutang.RefreshGrid;
end;

procedure TFDaftarRencanaLunasPiutang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if vcall='rencana_lunas_piutang' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * '+
              ' FROM "cash_banks"."t_plan_receivable") a '+
              ' WHERE period_date1 = '+QuotedStr(formatdatetime('yyyy-mm-dd',periode1))+' '+
              ' AND period_date2 ='+QuotedStr(formatdatetime('yyyy-mm-dd',periode2))+' ');
      if Length(edKode_Pelanggan.Text)<>0 then
      begin
        sql.add(' AND "code_cust"='+QuotedStr(kd_outlet)+' ');
      end;
      sql.add(' ORDER BY code_cust,period_date1 desc');
      open;
    end;
  end;

    FDaftarRencanaLunasPiutang.MemDetailPiutang.active:=false;
    FDaftarRencanaLunasPiutang.MemDetailPiutang.active:=true;
    FDaftarRencanaLunasPiutang.MemDetailPiutang.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDaftarRencanaLunasPiutang.MemDetailPiutang.active:=false;
      FDaftarRencanaLunasPiutang.MemDetailPiutang.active:=true;
      FDaftarRencanaLunasPiutang.MemDetailPiutang.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDaftarRencanaLunasPiutang.MemDetailPiutang.insert;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['periode1']:=Dm.Qtemp.FieldByName('period_date1').AsDateTime;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['periode2']:=Dm.Qtemp.FieldByName('period_date2').AsDateTime;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['notrans']:=Dm.Qtemp.FieldByName('notrans').AsString;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['kode_pelanggan']:=Dm.Qtemp.FieldByName('code_cust').AsString;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['nama_pelanggan']:=Dm.Qtemp.FieldByName('name_cust').AsString;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('tot_paid_amount').AsFloat;
     FDaftarRencanaLunasPiutang.MemDetailPiutang['pilih']:=0;
     FDaftarRencanaLunasPiutang.MemDetailPiutang.post;
     Dm.Qtemp.next;
    end;
    end;
end;


end.
