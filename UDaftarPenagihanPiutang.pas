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
    dtTagih: TRzDateTimePicker;
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
    MemDetailPiutangtglfaktur: TDateField;
    MemDetailPiutangpilih: TBooleanField;
    MemDetailPiutangid_dpp: TStringField;
    procedure btTampilkanClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    kd_outlet, vcall: string;
    Status: Integer;
    tglTagih1,tglTagih2: TDate;
    { Public declarations }
    procedure RefreshGrid;
    procedure Clear;
  end;

var
  FDaftarPenagihanPiutang: TFDaftarPenagihanPiutang;

implementation

{$R *.dfm}

uses UDataModule, UDataPenerimaanBank;

procedure TFDaftarPenagihanPiutang.BSaveClick(Sender: TObject);
var
  rec: Integer;
begin
  Status:=0;
  rec:=0;
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if MemDetailPiutang.RecordCount=0 then
      begin
        MessageDlg('Tidak Ada Data',mtInformation,[mbRetry],0);
        //edKodeVendorMuatan.SetFocus;
      end
      else if Status = 0 then
      begin
         //cek ada yang di tandai tidak
         MemDetailPiutang.First;
         while not MemDetailPiutang.Eof do
         begin
           if MemDetailPiutang['pilih']=true then
           begin
            rec:=rec+1;
           end;
         MemDetailPiutang.Next;
         end;

         if rec=0 then
         begin
           ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
           exit;
         end;

         //data di tandai kirm ke do
         if rec>0 then
         begin
           FDataPenerimaanBank.MemDetailPiutang.active:=false;
           FDataPenerimaanBank.MemDetailPiutang.active:=true;
           FDataPenerimaanBank.MemDetailPiutang.EmptyTable;

           MemDetailPiutang.First;
           while not MemDetailPiutang.Eof do
           begin
             if MemDetailPiutang['pilih']=true then
             begin
                  FDataPenerimaanBank.MemDetailPiutang.insert;
                  FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']:=MemDetailPiutang['tglfaktur'];
                  FDataPenerimaanBank.MemDetailPiutang['no_faktur']:=MemDetailPiutang['no_faktur'];
                  FDataPenerimaanBank.MemDetailPiutang['no_tagihan']:=MemDetailPiutang['no_tagihan'];
                  FDataPenerimaanBank.MemDetailPiutang['jum_piutang']:=MemDetailPiutang['jum_piutang'];
                  FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real']:=MemDetailPiutang['jum_piutang'];
                  FDataPenerimaanBank.MemDetailPiutang['keterangan']:='PELUNASAN PIUTANG ';
                  FDataPenerimaanBank.MemDetailPiutang['id_dpp']:=MemDetailPiutang['id_dpp'];;
                  FDataPenerimaanBank.MemDetailPiutang.post;
             end;
           MemDetailPiutang.Next;
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
      FDataPenerimaanBank.GetKeterangan;
      Close;
end;

procedure TFDaftarPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  FDaftarPenagihanPiutang.kd_outlet:=FDaftarPenagihanPiutang.edKode_Pelanggan.Text;
  FDaftarPenagihanPiutang.tglTagih1:=FDaftarPenagihanPiutang.dtTagih.Date;
  FDaftarPenagihanPiutang.RefreshGrid;
end;

procedure TFDaftarPenagihanPiutang.Clear;
begin
  dtTagih.date:=now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemDetailPiutang.EmptyTable;
  MemDetailPiutang.Active:=true;
end;

procedure TFDaftarPenagihanPiutang.DBGridEh1DblClick(Sender: TObject);
begin
  if (vcall = 'edit_PenagihanPiutang') then
  begin
    if FDataPenerimaanBank.MemDetailPiutang.Locate('no_faktur', MemDetailPiutang['no_faktur'], []) then
    begin
      MessageDlg('No. Faktur: ' + MemDetailPiutang['no_faktur'] + ' sudah ada di daftar!',
                 mtWarning, [mbOK], 0);
      Exit;
    end;

    FDataPenerimaanBank.MemDetailPiutang.Edit;
    try
      FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']       := MemDetailPiutang['tglfaktur'];
      FDataPenerimaanBank.MemDetailPiutang['no_faktur']        := MemDetailPiutang['no_faktur'];
      FDataPenerimaanBank.MemDetailPiutang['no_tagihan']       := MemDetailPiutang['no_tagihan'];
      FDataPenerimaanBank.MemDetailPiutang['jum_piutang']      := MemDetailPiutang['jum_piutang'];
      FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real'] := MemDetailPiutang['jum_piutang'];
      FDataPenerimaanBank.MemDetailPiutang['keterangan']       := 'PELUNASAN PIUTANG ';
      FDataPenerimaanBank.MemDetailPiutang['id_dpp']          := MemDetailPiutang['id_dpp'];
      FDataPenerimaanBank.MemDetailPiutang.Post;
      Close;

    except
      on E: Exception do
      begin
        FDataPenerimaanBank.MemDetailPiutang.Cancel;
        MessageDlg('Gagal menambah data: ' + E.Message, mtError, [mbOK], 0);
      end;
    end;
  end;
end;

procedure TFDaftarPenagihanPiutang.FormShow(Sender: TObject);
begin
  if (vcall='PenagihanPiutang') or (vcall='edit_PenagihanPiutang') then
  begin
    Panel1.Visible:=False;
  end
  else begin
    Panel1.Visible:=True;
  end;

  if vcall='edit_PenagihanPiutang' then
  begin
    DBGridEh1.Columns[7].Visible:=False;
    Panel2.Visible:=False;
  end else begin
    DBGridEh1.Columns[7].Visible:=True;
    Panel2.Visible:=True;
  end;

end;

procedure TFDaftarPenagihanPiutang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if (vcall='PenagihanPiutang') or (vcall='edit_PenagihanPiutang') then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='SELECT * from get_dpp_cash_bank_acceptance('+QuotedStr(FormatDateTime('yyyy-mm-dd',FDataPenerimaanBank.dtTrans.Date))+','+QuotedStr(kd_outlet)+')';

      {sql.add('SELECT DISTINCT a.id,a.date_trans,a.date_dpp,a.no_invoice,a.no_invoice_tax,'+
              'a.code_cust,b.customer_name,a.paid_amount from t_dpp  a '+
              'LEFT JOIN t_customer b ON a.code_cust=b.customer_code '+
              'LEFT JOIN  (SELECT no_invoice,SUM(kredit) bayar FROM t_selling_general '+
              'WHERE deleted_at is NULL GROUP BY no_invoice) c ON c.no_invoice=a.no_invoice '+
              'LEFT join (SELECT * FROM get_piutang_invoice('+QuotedStr(FormatDateTime('yyyy-mm-dd',FDataPenerimaanBank.dtTrans.Date))+') '+
              'WHERE code_cust='+QuotedStr(kd_outlet)+') d on d.code_cust=a.code_cust '+
              'WHERE d.sisa_piutang>0 and a.date_dpp<='+QuotedStr(FormatDateTime('yyyy-mm-dd',FDataPenerimaanBank.dtTrans.Date))+' AND '+
              'a.deleted_at IS NULL ');
      if Length(edKode_Pelanggan.Text)<>0 then
      begin
        sql.add(' AND a.code_cust='+QuotedStr(kd_outlet)+' ');
      end;
      sql.add(' ORDER BY a.code_cust,a.date_dpp desc');    }
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
     FDaftarPenagihanPiutang.MemDetailPiutang['tglfaktur']:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['tgltagih']:=Dm.Qtemp.FieldByName('date_dpp').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['notrans']:='0';
     FDaftarPenagihanPiutang.MemDetailPiutang['no_tagihan']:=Dm.Qtemp.FieldByName('no_invoice').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['no_Faktur']:=Dm.Qtemp.FieldByName('no_invoice_tax').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['kode_pelanggan']:=Dm.Qtemp.FieldByName('code_cust').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['nama_pelanggan']:=Dm.Qtemp.FieldByName('customer_name').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('paid_amount').AsFloat;
     FDaftarPenagihanPiutang.MemDetailPiutang['pilih']:=0;
     FDaftarPenagihanPiutang.MemDetailPiutang['id_dpp']:=dm.Qtemp.FieldValues['id'];
     FDaftarPenagihanPiutang.MemDetailPiutang.post;
     Dm.Qtemp.next;
    end;
  end;
  Dm.Qtemp.Close;
end;

end.
