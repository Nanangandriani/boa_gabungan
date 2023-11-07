unit Ubrowse_pelanggan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, MemDS, DBAccess, Uni, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFbrowse_data_pelanggan = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fbrowse_data_pelanggan: TFbrowse_data_pelanggan;
  status_browse_pelanggan: Integer;

implementation

{$R *.dfm}

uses {UDm, UNewRencana_pelunasan_piutang,
  Ubuku_harian_penerimaan_kas, UNewPenjualan,
  Urekap_piutang, UNewSPMuat, UNewSPMuat_promosi, UNewPenjualan_Promosi, }
  UDataModule, UNew_Penjualan;

procedure TFbrowse_data_pelanggan.DBGridEh1DblClick(Sender: TObject);
begin
   if status_browse_pelanggan= 1 then
  begin
    with UniQuery1 do
    begin
    //  FNew_rencana_pelunasan.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
//  if status_browse_pelanggan= 2 then
//  begin
//    with UniQuery1 do
//    begin
//      FNew_penerimaan_kas_bank_non_dagang.edditerima.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
//    end;
//  end;
  if status_browse_pelanggan= 3 then
  begin
    with UniQuery1 do
    begin
    //  Fbuku_harian_penerimaan_kas.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
//  if status_browse_pelanggan= 4 then
//  begin
//    with UniQuery1 do
//    begin
//      FNew_pelunasan_piutang_dgng_nondpp.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
//    end;
//  end;
//  if status_browse_pelanggan= 5 then
//  begin
//    with UniQuery1 do
//    begin
//      FNew_peunasan_piutang_dgng_dpp.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
//    end;
//  end;
  if status_browse_pelanggan= 6 then
  begin
    with UniQuery1 do
    begin
   //   Finput_sp_muat.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
  if status_browse_pelanggan= 7 then
  begin
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='SELECT customer_name,payment_term from t_customer where customer_name = '+QuotedStr(UniQuery1.FieldByName('customer_name').AsString);
      Open;
    end;
    with dm.Qtemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select CURRENT_DATE + INTEGER '+QuotedStr(DM.Qtemp.FieldByName('payment_term').AsString)+'payment_term';
      Open;
    end;
    Finput_penjualan.DTtgl_jatuh_tempo.Text := DM.Qtemp2.FieldByName('payment_term').AsString;
    with UniQuery1 do
    begin
      Finput_penjualan.edpelanggan.Text:=UniQuery1.FieldByName('customer_name').AsString;
    end;
  end;
  if status_browse_pelanggan= 8 then
  begin
    with UniQuery1 do
    begin
    //  Frekap_piutang.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
  if status_browse_pelanggan= 9 then
  begin
    with UniQuery1 do
    begin
    //  Fnewsp_muat_promosi.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
  if status_browse_pelanggan= 10 then
  begin
    with dm.Qtemp do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='SELECT nama_pelanggan,tempo_pembayaran from t_pelanggan where nama_pelanggan = '+QuotedStr(UniQuery1.FieldByName('nama_pelanggan').AsString);
      Open;
    end;
    with dm.Qtemp2 do
    begin
      Close;
      Sql.Clear;
      Sql.Text:='select CURRENT_DATE + INTEGER '+QuotedStr(DM.Qtemp.FieldByName('tempo_pembayaran').AsString)+'tempo_pembayaran';
      Open;
    end;
      //Fnewpenjualan_promosi.DTtgl_jatuh_tempo.Text := DM.Qtemp2.FieldByName('tempo_pembayaran').AsString;
    with UniQuery1 do
    begin
    // Fnewpenjualan_promosi.edpelanggan.Text:=UniQuery1.FieldByName('nama_pelanggan').AsString;
    end;
  end;
  Close;
end;

procedure TFbrowse_data_pelanggan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  UniQuery1.Close;
end;

procedure TFbrowse_data_pelanggan.FormShow(Sender: TObject);
begin
  UniQuery1.Close;
  UniQuery1.Open;
end;

end.
