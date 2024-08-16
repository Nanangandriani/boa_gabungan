unit UReturPenjualan_Sumber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

type
  TFReturPenjualan_Sumber = class(TForm)
    Panel5: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    dtTanggal1: TRzDateTimePicker;
    dtTanggal2: TRzDateTimePicker;
    btTampilkan: TRzBitBtn;
    btProses: TRzBitBtn;
    ckTandai: TCheckBox;
    DBGrid_SumberOrder: TDBGridEh;
    dsDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailno_trans: TStringField;
    MemDetaildate_trans: TDateField;
    MemDetailcode_cust: TStringField;
    MemDetailname_cust: TStringField;
    MemDetailcode_source: TStringField;
    MemDetailname_source: TStringField;
    MemDetailno_reference: TStringField;
    MemDetailpilih: TBooleanField;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btTampilkanClick(Sender: TObject);
  private
    Status:Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
  end;

var
  FReturPenjualan_Sumber: TFReturPenjualan_Sumber;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UDataModule;

procedure TFReturPenjualan_Sumber.FormShow(Sender: TObject);
begin
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  dtTanggal1.Date:=Now();
  dtTanggal2.Date:=Now();
  ckTandai.Checked:=true;
end;

procedure TFReturPenjualan_Sumber.RefreshGrid;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select *  from ('+
              ' select no_trans, date_trans, code_cust, name_cust, code_source, '+
              ' name_source, no_reference from "sale"."t_selling" '+
              ' where deleted_at is null order by created_at Desc) aa ');
      sql.add(' Where date_trans between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
      if Length(edKode_Pelanggan.Text)<>0 then
      begin
        sql.add(' AND code_cust='+QuotedStr(edKode_Pelanggan.Text)+' ');
      end;
      sql.add(' ORDER BY aa.no_trans desc');
      open;
    end;

    FReturPenjualan_Sumber.MemDetail.active:=false;
    FReturPenjualan_Sumber.MemDetail.active:=true;
    FReturPenjualan_Sumber.MemDetail.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FReturPenjualan_Sumber.MemDetail.active:=false;
      FReturPenjualan_Sumber.MemDetail.active:=true;
      FReturPenjualan_Sumber.MemDetail.EmptyTable;
      ShowMessage('Tidak Ditemukan Data...!!!')
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FReturPenjualan_Sumber.MemDetail.insert;
     FReturPenjualan_Sumber.MemDetail['no_trans']:=Dm.Qtemp.fieldbyname('no_trans').value;
     FReturPenjualan_Sumber.MemDetail['date_trans']:=Dm.Qtemp.fieldbyname('date_trans').value;
     FReturPenjualan_Sumber.MemDetail['code_cust']:=Dm.Qtemp.fieldbyname('code_cust').value;
     FReturPenjualan_Sumber.MemDetail['name_cust']:=Dm.Qtemp.fieldbyname('name_cust').value;
     FReturPenjualan_Sumber.MemDetail['code_source']:=Dm.Qtemp.fieldbyname('code_source').value;
     FReturPenjualan_Sumber.MemDetail['name_source']:=Dm.Qtemp.fieldbyname('name_source').value;
     FReturPenjualan_Sumber.MemDetail['no_reference']:=Dm.Qtemp.fieldbyname('no_reference').value;
     FReturPenjualan_Sumber.MemDetail['pilih']:=ckTandai.Checked;
     FReturPenjualan_Sumber.MemDetail.post;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFReturPenjualan_Sumber.btTampilkanClick(Sender: TObject);
begin
  Status:=0;
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
  if edKode_Pelanggan.Text='' then
  begin
    //MessageDlg('Data Vendor Wajib Diisi..!!',mtInformation,[mbRetry],0);
    edKode_Pelanggan.SetFocus;
  end
  else if Status = 0 then
  begin
    FReturPenjualan_Sumber.RefreshGrid;
  end
  Except on E :Exception do
  begin
    begin
      MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
      Dm.koneksi.Rollback ;
    end;
  end;
  end;
end;

procedure TFReturPenjualan_Sumber.edKode_PelangganButtonClick(
  Sender: TObject);
begin
    Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
    Fbrowse_data_pelanggan.vcall:='retur_penjualan_sumber';
    Fbrowse_data_pelanggan.ShowModal;
end;

end.
