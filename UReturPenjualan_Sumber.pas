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
    procedure btProsesClick(Sender: TObject);
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

uses Ubrowse_pelanggan, UDataModule, UDataReturPenjualan, UMy_Function;

procedure TFReturPenjualan_Sumber.FormShow(Sender: TObject);
begin
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  dtTanggal1.Date:=Now();
  dtTanggal2.Date:=Now();
  ckTandai.Checked:=true;
  MemDetail.EmptyTable;
end;

procedure TFReturPenjualan_Sumber.RefreshGrid;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' select *  from ('+
              ' select trans_no, trans_date, code_cust, name_cust, code_source, '+
              ' name_source, no_reference from "public"."t_selling" '+
              ' where deleted_at is null order by created_at Desc) aa ');
      sql.add(' Where trans_date between '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal1.Date))+' AND '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTanggal2.Date))+' ');
      if Length(edKode_Pelanggan.Text)<>0 then
      begin
        sql.add(' AND code_cust='+QuotedStr(edKode_Pelanggan.Text)+' ');
      end;
      sql.add(' ORDER BY aa.trans_no desc');
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
     FReturPenjualan_Sumber.MemDetail['no_trans']:=Dm.Qtemp.fieldbyname('trans_no').value;
     FReturPenjualan_Sumber.MemDetail['date_trans']:=Dm.Qtemp.fieldbyname('trans_date').value;
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

procedure TFReturPenjualan_Sumber.btProsesClick(Sender: TObject);
var
  rec: Integer;
begin
  Status:=0;
  rec:=0;
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_Pelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
      end
      else if Status = 0 then
      begin
         //cek ada yang di tandai tidak
         MemDetail.First;
         while not MemDetail.Eof do
         begin
           if MemDetail['pilih']=true then
           begin
            rec:=rec+1;
           end;
         MemDetail.Next;
         end;

         if rec=0 then
         begin
           ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
           exit;
         end;

         //data di tandai kirm ke do
         if rec>0 then
         begin
           FDataReturPenjualan.MemDetail.active:=false;
           FDataReturPenjualan.MemDetail.active:=true;
           FDataReturPenjualan.MemDetail.EmptyTable;

           MemDetail.First;
           while not MemDetail.Eof do
           begin
             if MemDetail['pilih']=true then
             begin
              with Dm.Qtemp do //Cari Penjualan
              begin
                close;
                sql.clear;
                sql.add(' SELECT * from ( SELECT "trans_no", "code_item", "name_item", '+
                        ' "amount", "code_unit",  "name_unit", "no_reference", "unit_price", '+
                        ' "sub_total", "ppn_percent",  "ppn_value", "pph_account", "pph_name", '+
                        ' "pph_percent", "pph_value",  "tot_piece_value", "tot_piece_percent", '+
                        ' "grand_tot", "ppn_account", "account_code"  FROM  "public"."t_selling_det"  WHERE deleted_at IS NULL ) a '+
                        ' WHERE trans_no='+QuotedStr(MemDetail['no_trans'])+'  '+
                        ' Order By trans_no, code_item desc');
                open;
              end;
              if  Dm.Qtemp.RecordCount<>0 then
              begin
              Dm.Qtemp.first;
              FDataReturPenjualan.MemDetail.active:=false;
              FDataReturPenjualan.MemDetail.active:=true;
              while not Dm.Qtemp.Eof do
              begin
                FDataReturPenjualan.MemDetail.insert;
                FDataReturPenjualan.MemDetail['NO_JUAL']:=Dm.Qtemp.FieldByName('trans_no').AsString;
                FDataReturPenjualan.MemDetail['KD_ITEM']:=Dm.Qtemp.FieldByName('code_item').AsString;
                FDataReturPenjualan.MemDetail['NM_ITEM']:=Dm.Qtemp.FieldByName('name_item').AsString;
                FDataReturPenjualan.MemDetail['JUMLAH']:=Dm.Qtemp.FieldByName('amount').AsFloat;
                FDataReturPenjualan.MemDetail['JUMLAH_JUAL']:=Dm.Qtemp.FieldByName('amount').AsFloat;
                FDataReturPenjualan.MemDetail['HARGA_SATUAN']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
                FDataReturPenjualan.MemDetail['HARGA_SATUAN_JUAL']:=Dm.Qtemp.FieldByName('unit_price').AsFloat;
                FDataReturPenjualan.MemDetail['KD_SATUAN']:=Dm.Qtemp.FieldByName('code_unit').AsString;
                FDataReturPenjualan.MemDetail['NM_SATUAN']:=Dm.Qtemp.FieldByName('name_unit').AsString;
                FDataReturPenjualan.MemDetail['SUB_TOTAL']:= Dm.Qtemp.FieldByName('amount').AsFloat*Dm.Qtemp.FieldByName('unit_price').AsFloat;
                FDataReturPenjualan.MemDetail['PPN_AKUN']:=Dm.Qtemp.fieldbyname('ppn_account').value;
                FDataReturPenjualan.MemDetail['PPN_PERSEN']:=Dm.Qtemp.fieldbyname('ppn_percent').value;
                FDataReturPenjualan.MemDetail['PPN_NILAI']:=Dm.Qtemp.fieldbyname('ppn_value').value;
                FDataReturPenjualan.MemDetail['PPH_AKUN']:=Dm.Qtemp.fieldbyname('pph_account').value;
                FDataReturPenjualan.MemDetail['NAMA_PPH']:=Dm.Qtemp.fieldbyname('pph_name').value;
                FDataReturPenjualan.MemDetail['PPH_PERSEN']:=Dm.Qtemp.fieldbyname('pph_percent').value;
                FDataReturPenjualan.MemDetail['PPH_NILAI']:=Dm.Qtemp.fieldbyname('pph_value').value;
                FDataReturPenjualan.MemDetail['GRAND_TOTAL']:=Dm.Qtemp.fieldbyname('grand_tot').value;
                FDataReturPenjualan.MemDetail['AKUN_PERK_ITEM']:=Dm.Qtemp.fieldbyname('account_code').value;
                FDataReturPenjualan.MemDetail.post;
                FDataReturPenjualan.HitungGrid;
              Dm.Qtemp.next;
              end;
            end;

             end;
           MemDetail.Next;
         end;
         end;

      end
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
      FDataReturPenjualan.edKode_Pelanggan.Text:=FReturPenjualan_Sumber.edKode_Pelanggan.Text;
      FDataReturPenjualan.edNama_Pelanggan.Text:=FReturPenjualan_Sumber.edNama_Pelanggan.Text;
      Close;
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
