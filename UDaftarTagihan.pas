unit UDaftarTagihan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs;

type
  TFDaftarTagihan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabDetailFaktur: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    dsDetailPiutang: TDataSource;
    MemDetailPiutang: TMemTableEh;
    MemDetailPiutangno_tagihan: TStringField;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    MemDetailPiutangpilih: TBooleanField;
    MemDetailPiutangno_faktur: TStringField;
    MemDetailPiutangtgl_faktur: TDateField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangtgl_tempo: TDateField;
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    kd_outlet, vcall: string;
    Status: Integer;
    periode1, periode2: TDate;
    { Public declarations }
    procedure RefreshGrid;
    procedure ProsesTerimaBank;
    procedure ProsesRencanaLunasPiutang;
  end;

var
  FDaftarTagihan: TFDaftarTagihan;

implementation

{$R *.dfm}

uses UDataModule, UDataPenerimaanBank, UDataRencanaLunasPiutang;

procedure TFDaftarTagihan.ProsesRencanaLunasPiutang;
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
           FDataRencanaLunasPiutang.MemDetailPiutang.active:=false;
           FDataRencanaLunasPiutang.MemDetailPiutang.active:=true;
           FDataRencanaLunasPiutang.MemDetailPiutang.EmptyTable;

           MemDetailPiutang.First;
           while not MemDetailPiutang.Eof do
           begin
             if MemDetailPiutang['pilih']=true then
             begin
                  FDataRencanaLunasPiutang.MemDetailPiutang.insert;
                  FDataRencanaLunasPiutang.MemDetailPiutang['tgl_faktur']:=MemDetailPiutang['tgl_faktur'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['tgl_tempo']:=MemDetailPiutang['tgl_tempo'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['no_faktur']:=MemDetailPiutang['no_faktur'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['no_tagihan']:=MemDetailPiutang['no_tagihan'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['jum_piutang']:=MemDetailPiutang['jum_piutang'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['jum_piutang_real']:=MemDetailPiutang['jum_piutang'];
                  FDataRencanaLunasPiutang.MemDetailPiutang['keterangan']:='-';
                  FDataRencanaLunasPiutang.MemDetailPiutang.post;
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

procedure TFDaftarTagihan.ProsesTerimaBank;
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
                  FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']:=MemDetailPiutang['tgl_faktur'];
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

procedure TFDaftarTagihan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftarTagihan.BSaveClick(Sender: TObject);
begin
  if vcall='terima_bank' then
  begin
    ProsesTerimaBank;
  end;
  if vcall='rencana_lunas_piutang' then
  begin
    ProsesRencanaLunasPiutang;
  end;
end;

procedure TFDaftarTagihan.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  if vcall='terima_bank' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * '+
              ' FROM "cash_banks"."vget_piutang") a '+
              ' WHERE "code_cust"='+QuotedStr(kd_outlet)+' '+
              ' ORDER BY date_tempo desc');
      open;
    end;
  end;

  if vcall='rencana_lunas_piutang' then
  begin
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * '+
              ' FROM "cash_banks"."vget_piutang") a '+
              ' WHERE "code_cust"='+QuotedStr(kd_outlet)+' '+
              ' AND date_tempo BETWEEN '+QuotedStr(formatdatetime('yyyy-mm-dd',periode1))+' '+
              ' AND '+QuotedStr(formatdatetime('yyyy-mm-dd',periode2))+' '+
              ' ORDER BY date_tempo desc');
      open;
    end;
  end;

    FDaftarTagihan.MemDetailPiutang.active:=false;
    FDaftarTagihan.MemDetailPiutang.active:=true;
    FDaftarTagihan.MemDetailPiutang.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDaftarTagihan.MemDetailPiutang.active:=false;
      FDaftarTagihan.MemDetailPiutang.active:=true;
      FDaftarTagihan.MemDetailPiutang.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDaftarTagihan.MemDetailPiutang.insert;
     FDaftarTagihan.MemDetailPiutang['tgl_faktur']:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
     FDaftarTagihan.MemDetailPiutang['tgl_tempo']:=Dm.Qtemp.FieldByName('date_tempo').AsDateTime;
     FDaftarTagihan.MemDetailPiutang['no_tagihan']:=Dm.Qtemp.FieldByName('no_trans').AsString;
     FDaftarTagihan.MemDetailPiutang['no_faktur']:=Dm.Qtemp.FieldByName('no_inv_tax').AsString;
     FDaftarTagihan.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('total_receivables').AsFloat;
     FDaftarTagihan.MemDetailPiutang['pilih']:=0;
     FDaftarTagihan.MemDetailPiutang.post;
     Dm.Qtemp.next;
    end;
    end;
end;


end.
