unit UPenyesuaianPenjualan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, RzButton, Vcl.ComCtrls, RzDTP, MemDS, DBAccess,
  Uni, DataDriverEh;

type
  TFPenyesuaianPenjualan = class(TForm)
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    edNama_Pelanggan: TRzButtonEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dtTanggal: TRzDateTimePicker;
    RzBitBtn1: TRzBitBtn;
    BSave: TRzBitBtn;
    MemDetailno_reference: TStringField;
    MemDetailno_traveldoc: TStringField;
    MemDetailtrans_no: TStringField;
    MemDetailcode_item: TStringField;
    MemDetailname_item: TStringField;
    MemDetailamount: TFloatField;
    MemDetailname_unit: TStringField;
    MemDetailgross_weight: TFloatField;
    MemDetailtare_weight: TFloatField;
    MemDetailpilih: TBooleanField;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure edNama_PelangganButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    strKodePelanggan:String;
  end;

var
  FPenyesuaianPenjualan: TFPenyesuaianPenjualan;

implementation

{$R *.dfm}

uses Ubrowse_pelanggan, UDataModule, UMainMenu;

procedure TFPenyesuaianPenjualan.BSaveClick(Sender: TObject);
var
  ListTransNo: string;
  rec: Integer;
begin
  rec:=0;


  ListTransNo:='';
  if MemDetail.RecordCount > 0 then
  begin
    MemDetail.first;
    while not MemDetail.Eof do
    begin
      if MemDetail['pilih']=true then
      begin
        rec:=rec+1;
      end;
      MemDetail.next;
    end;

    if rec=0 then
    begin
      ShowMessage('Tidak Ada Data Yang Di Tandai..!!!');
      Exit;
    end else
    begin

      if not dm.Koneksi.Connected then
        dm.Koneksi.Connected := True;

      if not dm.Koneksi.InTransaction then
        dm.Koneksi.StartTransaction;

      try
        if Application.MessageBox('Apa Anda Yakin Memperbarui Data ini?', 'Konfirmasi',
           MB_YESNO or MB_ICONQUESTION) = ID_YES then
        begin
          MemDetail.First;
          while not MemDetail.Eof do
          begin
            if MemDetail['pilih']=true then
            begin
              with dm.Qtemp do
              begin
                Close;
                SQL.Clear;
                SQL.Text :=
                  'UPDATE "public"."t_selling_det" SET ' +
                  ' unit_price=0,' +
                  ' dpp_lain_lain=0,' +
                  ' ppn_value_cortex=0,' +
                  ' ppn_percent_cortex=0,' +
                  ' sub_total=0,' +
                  ' ppn_percent=0,' +
                  ' ppn_value=0,' +
                  ' pph_value=0,' +
                  ' pph_percent=0,' +
                  ' tot_piece_percent=0,' +
                  ' tot_piece_value=0,' +
                  ' grand_tot=0,' +
                  ' amount=' + VarToStrDef(MemDetail['amount'], '0') + ',' +
                  ' gross_weight=' + VarToStrDef(MemDetail['gross_weight'], '0') + ',' +
                  ' tare_weight=' + VarToStrDef(MemDetail['tare_weight'], '0') +
                  ' WHERE trans_no=' + QuotedStr(VarToStr(MemDetail['trans_no'])) +
                  ' AND code_item=' + QuotedStr(VarToStr(MemDetail['code_item']));
                ExecSQL;
              end;

              with dm.Qtemp1 do
              begin
                Close;
                SQL.Clear;
                SQL.Text :=
                  'UPDATE "public"."t_sales_order_det" SET ' +
                  ' amount=' + VarToStrDef(MemDetail['amount'], '0') + ',' +
                  ' gross_weight=' + VarToStrDef(MemDetail['gross_weight'], '0') + ',' +
                  ' tare_weight=' + VarToStrDef(MemDetail['tare_weight'], '0') +
                  ' WHERE notrans=' + QuotedStr(VarToStr(MemDetail['no_reference'])) +
                  ' AND code_item=' + QuotedStr(VarToStr(MemDetail['code_item']));
                ExecSQL;
              end;

              if Pos(QuotedStr(VarToStr(MemDetail['trans_no'])), ListTransNo) = 0 then
              begin
                if ListTransNo <> '' then
                  ListTransNo := ListTransNo + ',';
                ListTransNo := ListTransNo + QuotedStr(VarToStr(MemDetail['trans_no']));
              end;
            end;

            MemDetail.Next;
          end;


          with dm.Qtemp2 do
          begin
            Close;
            SQL.Clear;
            SQL.Text :=
              'UPDATE "public"."t_selling" SET ' +
              ' updated_at=NOW(), ' +
              ' updated_by=' + QuotedStr(Nm) + ', ' +
              ' sub_total=0, ppn_value=0, pph_value=0, ' +
              ' tot_piece_value=0, tot_menj_fee=0, grand_tot=0, ' +
              ' pembulatan_value=0, tot_before_piece=0, ' +
              ' amount_down_payment=0, grand_tot_amount_down_payment=0 ' +
              ' WHERE trans_no IN (' + ListTransNo + ')';
            ExecSQL;
          end;

          dm.Koneksi.Commit;

          MessageDlg('Penyesuaian Berhasil, Silahkan Melakukan Klasifikasi Ulang..!!',
            mtInformation, [MBOK], 0);
          Close;
        end
        else
          Exit;

      except
        on E: Exception do
        begin
          dm.Koneksi.Rollback;
          MessageDlg(E.ClassName + ' : ' + E.Message, mtError, [MBOK], 0);
        end;
      end;
    end;
  end
  else
    MessageDlg('Tidak Ada Data..!!', mtInformation, [MBRetry], 0);
end;

procedure TFPenyesuaianPenjualan.edNama_PelangganButtonClick(Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='penyesuaian_penjualan';
  Fbrowse_data_pelanggan.ShowModal;
end;

procedure TFPenyesuaianPenjualan.FormShow(Sender: TObject);
begin
  strKodePelanggan:='';
  edNama_Pelanggan.Text:='';
  dtTanggal.Date:=NOW();
  MemDetail.Active:=False;
  MemDetail.Active:=True;
  MemDetail.EmptyTable;
end;

procedure TFPenyesuaianPenjualan.RzBitBtn1Click(Sender: TObject);
begin
  if edNama_Pelanggan.Text='' then
  begin
     MessageDlg('Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
  end else
  begin
    MemDetail.Active:=False;
    MemDetail.Active:=True;
    MemDetail.EmptyTable;

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select b.no_reference,b.no_traveldoc,a.trans_no,a.code_item,a.name_item,a.amount,'+
                'a.name_unit,a.gross_weight,a.tare_weight from t_selling_det a '+
                'left join t_selling b on b.trans_no=a.trans_no '+
                'left join t_cash_bank_acceptance_receivable c ON c.no_invoice=a.trans_no '+
                'where b.load_conversion=True AND c.voucher_no IS NULL ';
      Open;
    end;
    if dm.Qtemp.RecordCount>0 then
    begin
      Dm.Qtemp.first;
      while not Dm.Qtemp.Eof do
      begin
       MemDetail.insert;
       MemDetail['no_reference']:=Dm.Qtemp.fieldbyname('no_reference').value;
       MemDetail['no_traveldoc']:=Dm.Qtemp.fieldbyname('no_traveldoc').value;
       MemDetail['trans_no']:=Dm.Qtemp.fieldbyname('trans_no').value;
       MemDetail['code_item']:=Dm.Qtemp.fieldbyname('code_item').value;
       MemDetail['name_item']:=Dm.Qtemp.fieldbyname('name_item').value;
       MemDetail['amount']:=Dm.Qtemp.fieldbyname('amount').value;
       MemDetail['name_unit']:=Dm.Qtemp.fieldbyname('name_unit').value;
       MemDetail['gross_weight']:=Dm.Qtemp.fieldbyname('gross_weight').value;
       MemDetail['tare_weight']:=Dm.Qtemp.fieldbyname('tare_weight').value;
       MemDetail.post;
       Dm.Qtemp.next;
      end;
    end;
  end;

end;


end.
