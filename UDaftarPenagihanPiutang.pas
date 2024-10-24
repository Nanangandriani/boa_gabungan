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
    MemDetailPiutangtglfaktur: TDateField;
    MemDetailPiutangtgltagih: TDateField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangno_tagihan: TStringField;
    MemDetailPiutangno_Faktur: TStringField;
    MemDetailPiutangpilih: TBooleanField;
    procedure btTampilkanClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
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
        Exit;
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
                  FDataPenerimaanBank.MemDetailPiutang['keterangan']:='-';
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
      Close;
end;

procedure TFDaftarPenagihanPiutang.btTampilkanClick(Sender: TObject);
begin
  FDaftarPenagihanPiutang.kd_outlet:=FDaftarPenagihanPiutang.edKode_Pelanggan.Text;
  FDaftarPenagihanPiutang.tglTagih:=FDaftarPenagihanPiutang.dtTagih.Date;
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
      sql.add(' SELECT *,customer_name from ('+
              ' SELECT * '+
              ' FROM "cash_banks"."t_dpp")  a '+
              ' LEFT JOIN t_customer b ON a.code_cust=b.customer_code '+
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
     FDaftarPenagihanPiutang.MemDetailPiutang['tglfaktur']:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['tgltagih']:=Dm.Qtemp.FieldByName('date_dpp').AsDateTime;
     FDaftarPenagihanPiutang.MemDetailPiutang['notrans']:='0';
     FDaftarPenagihanPiutang.MemDetailPiutang['no_tagihan']:=Dm.Qtemp.FieldByName('no_invoice').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['no_Faktur']:=Dm.Qtemp.FieldByName('no_invoice_tax').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['kode_pelanggan']:=Dm.Qtemp.FieldByName('code_cust').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['nama_pelanggan']:=Dm.Qtemp.FieldByName('customer_name').AsString;
     FDaftarPenagihanPiutang.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('paid_amount').AsFloat;
     FDaftarPenagihanPiutang.MemDetailPiutang['pilih']:=0;
     FDaftarPenagihanPiutang.MemDetailPiutang.post;
     Dm.Qtemp.next;
    end;
    end;
end;

end.
