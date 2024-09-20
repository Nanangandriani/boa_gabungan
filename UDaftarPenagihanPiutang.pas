unit UDaftarPenagihanPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls;

type
  TFDaftarPenagihanPiutang = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dtPeriode1: TRzDateTimePicker;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    btTampilkan: TRzBitBtn;
    RzPageControl1: TRzPageControl;
    TabDetailFaktur: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    MemDetailPiutang: TMemTableEh;
    dsDetailPiutang: TDataSource;
    MemDetailPiutangnotrans: TStringField;
    MemDetailPiutangkode_pelanggan: TStringField;
    MemDetailPiutangnama_pelanggan: TStringField;
    MemDetailPiutangtgltagih: TDateField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangno_tagihan: TStringField;
    MemDetailPiutangno_Faktur: TStringField;
    procedure btTampilkanClick(Sender: TObject);
  private
    { Private declarations }
  public
    kd_outlet, vcall: string;
    Status: Integer;
    tglTagih: TDate;
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FDaftarPenagihanPiutang: TFDaftarPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFDaftarPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  {FDaftarRencanaLunasPiutang.kd_outlet:=FDaftarRencanaLunasPiutang.edKode_Pelanggan.Text;
  FDaftarRencanaLunasPiutang.tglTagih:=FDaftarRencanaLunasPiutang.dtPeriode1.Date;
  FDaftarRencanaLunasPiutang.RefreshGrid;}
end;

procedure TFDaftarPenagihanPiutang.Clear;
begin
  dtPeriode1.date:=now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemDetailPiutang.EmptyTable;
  MemDetailPiutang.Active:=true;
end;

procedure TFDaftarPenagihanPiutang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if vcall='PenagihanPiutang' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * '+
              ' FROM "cash_banks"."t_dpp") a '+
              ' WHERE date_dpp ='+QuotedStr(formatdatetime('yyyy-mm-dd',tglTagih))+' ');
      if Length(edKode_Pelanggan.Text)<>0 then
      begin
        sql.add(' AND "code_cust"='+QuotedStr(kd_outlet)+' ');
      end;
      sql.add(' ORDER BY code_cust,date_dpp desc');
      open;
    end;
  end;

    FDaftarPenagihanPiutang.MemDetailPiutang.active:=false;
    FDaftarPenagihanPiutang.MemDetailPiutang.active:=true;
    FDaftarPenagihanPiutang.MemDetailPiutang.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDaftarPenagihanPiutang.MemDetailPiutang.active:=false;
      FDaftarPenagihanPiutang.MemDetailPiutang.active:=true;
      FDaftarPenagihanPiutang.MemDetailPiutang.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...');
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDaftarPenagihanPiutang.MemDetailPiutang.insert;
     FDaftarPenagihanPiutang.MemDetailPiutang['periode1']:=Dm.Qtemp.FieldByName('period_date1').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['periode2']:=Dm.Qtemp.FieldByName('period_date2').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['notrans']:=Dm.Qtemp.FieldByName('notrans').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['kode_pelanggan']:=Dm.Qtemp.FieldByName('code_cust').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['nama_pelanggan']:=Dm.Qtemp.FieldByName('name_cust').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('tot_paid_amount').AsFloat;
     FDaftarPenagihanPiutang.MemDetailPiutang['pilih']:=0;
     FDaftarPenagihanPiutang.MemDetailPiutang.post;
     Dm.Qtemp.next;
    end;
    end;
end;

end.
