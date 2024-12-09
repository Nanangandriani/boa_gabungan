unit UDataRencanaLunasPiutang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.StdCtrls, RzEdit,
  Vcl.ComCtrls, RzDTP, Vcl.Mask, RzBtnEdt, Vcl.ExtCtrls;

type
  TFDataRencanaLunasPiutang = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dtPeriode1: TRzDateTimePicker;
    dtPeriode2: TRzDateTimePicker;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailPiutang: TDataSource;
    MemDetailPiutang: TMemTableEh;
    MemDetailPiutangno_tagihan: TStringField;
    MemDetailPiutangtgl_faktur: TDateField;
    MemDetailPiutangketerangan: TStringField;
    MemDetailPiutangno_faktur: TStringField;
    MemDetailPiutangjum_piutang: TCurrencyField;
    MemDetailPiutangjum_piutang_real: TCurrencyField;
    MemDetailPiutangtgl_tempo: TDateField;
    Label21: TLabel;
    Label22: TLabel;
    edKode_Pelanggan: TRzButtonEdit;
    edNama_Pelanggan: TEdit;
    Label3: TLabel;
    edNoTrans: TEdit;
    LabelPelanggan: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MemKeterangan: TMemo;
    dtTrans: TRzDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure edKode_PelangganButtonClick(Sender: TObject);
    procedure DBGridTagihanColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BSaveClick(Sender: TObject);
    procedure DBGridTagihanCellClick(Column: TColumnEh);
    procedure DBGridTagihanColEnter(Sender: TObject);
    procedure DBGridTagihanColExit(Sender: TObject);
    procedure DBGridTagihanEnter(Sender: TObject);
    procedure DBGridTagihanExit(Sender: TObject);
    procedure DBGridTagihanMouseEnter(Sender: TObject);
    procedure DBGridTagihanMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridTagihanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridTagihanKeyPress(Sender: TObject; var Key: Char);
    procedure dtTransChange(Sender: TObject);
  private
    { Private declarations }
  tot_piutang : real;
  public
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    Status: Integer;
    { Public declarations }
    procedure Clear;
    procedure Autonumber;
    procedure HitungGrid;
    procedure Save;
    procedure Update;
    procedure InsertDetail;
    procedure RefreshGrid;
  end;

var
  FDataRencanaLunasPiutang: TFDataRencanaLunasPiutang;

implementation

{$R *.dfm}

uses UDaftarTagihan, Ubrowse_pelanggan, UMy_Function, UListRencanaLunasPiutang,
  UDataModule, UHomeLogin;

procedure TFDataRencanaLunasPiutang.RefreshGrid;
var
URUTAN_KE : Integer;
begin
  with Dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT "notrans", "no_invoice", "no_invoice_tax", "date_trans", '+
            ' "date_tempo", "paid_amount", "description"'+
            ' FROM  "public"."t_plan_receivable_det") a '+
            ' WHERE notrans='+QuotedStr(edNoTrans.Text)+' '+
            ' Order By notrans, no_invoice_tax desc');
    open;
  end;

    FDataRencanaLunasPiutang.MemDetailPiutang.active:=false;
    FDataRencanaLunasPiutang.MemDetailPiutang.active:=true;
    FDataRencanaLunasPiutang.MemDetailPiutang.EmptyTable;

    if  Dm.Qtemp.RecordCount=0 then
    begin
      FDataRencanaLunasPiutang.MemDetailPiutang.active:=false;
      FDataRencanaLunasPiutang.MemDetailPiutang.active:=true;
      FDataRencanaLunasPiutang.MemDetailPiutang.EmptyTable;
    end;

    if  Dm.Qtemp.RecordCount<>0 then
    begin
    Dm.Qtemp.first;
    while not Dm.Qtemp.Eof do
    begin
     FDataRencanaLunasPiutang.MemDetailPiutang.insert;
     FDataRencanaLunasPiutang.MemDetailPiutang['tgl_faktur']:=Dm.Qtemp.FieldByName('date_trans').AsDateTime;
     FDataRencanaLunasPiutang.MemDetailPiutang['tgl_tempo']:=Dm.Qtemp.FieldByName('date_tempo').AsDateTime;
     FDataRencanaLunasPiutang.MemDetailPiutang['no_faktur']:=Dm.Qtemp.FieldByName('no_invoice_tax').AsString;
     FDataRencanaLunasPiutang.MemDetailPiutang['no_tagihan']:=Dm.Qtemp.FieldByName('no_invoice').AsString;
     FDataRencanaLunasPiutang.MemDetailPiutang['jum_piutang']:=Dm.Qtemp.FieldByName('paid_amount').AsString;
     FDataRencanaLunasPiutang.MemDetailPiutang['jum_piutang_real']:=Dm.Qtemp.FieldByName('paid_amount').AsString;
     FDataRencanaLunasPiutang.MemDetailPiutang['keterangan']:=Dm.Qtemp.FieldByName('description').AsString;
     FDataRencanaLunasPiutang.MemDetailPiutang.post;
     FDataRencanaLunasPiutang.HitungGrid;
     Dm.Qtemp.next;
    end;
    end;
end;

procedure TFDataRencanaLunasPiutang.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_plan_receivable" ("created_at", "created_by", '+
            ' "notrans", "period_date1", "period_date2", "code_cust", "name_cust", '+
            ' "description", "tot_paid_amount", "date_trans", "order_no", "additional_code", '+
            ' "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+', '+
            ' '+QuotedStr(edKode_Pelanggan.Text)+', '+
            ' '+QuotedStr(edNama_Pelanggan.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(FloatToStr(tot_piutang))+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(order_no)+', '+
            ' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;
  InsertDetail;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FDataRencanaLunasPiutang.Refresh;
end;

procedure TFDataRencanaLunasPiutang.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_plan_receivable" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' date_trans='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' period_date1='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode1.Date))+','+
              ' period_date2='+QuotedStr(formatdatetime('yyyy-mm-dd',dtPeriode2.Date))+','+
              ' code_cust='+QuotedStr(edKode_Pelanggan.Text)+','+
              ' name_cust='+QuotedStr(edNama_Pelanggan.Text)+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' tot_paid_amount='+QuotedStr(FloatToStr(tot_piutang))+', '+
              ' order_no='+QuotedStr(order_no)+','+
              ' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where notrans='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    InsertDetail;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FDataRencanaLunasPiutang.Refresh;
end;

procedure TFDataRencanaLunasPiutang.InsertDetail;
begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM "public"."t_plan_receivable_det"'+
            ' WHERE "notrans"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;

  MemDetailPiutang.First;
  while not MemDetailPiutang.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Text:=' INSERT INTO "public"."t_plan_receivable_det" ("notrans", "no_invoice", '+
              ' "no_invoice_tax", "date_trans", "date_tempo", "paid_amount", "description") '+
              ' Values( '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(MemDetailPiutang['no_tagihan'])+', '+
              ' '+QuotedStr(MemDetailPiutang['no_faktur'])+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailPiutang['tgl_faktur']))+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailPiutang['tgl_tempo']))+', '+
              ' '+QuotedStr(MemDetailPiutang['jum_piutang'])+', '+
              ' '+QuotedStr(MemDetailPiutang['keterangan'])+' );';
    ExecSQL;
    end;
  MemDetailPiutang.Next;
  end;
end;

procedure TFDataRencanaLunasPiutang.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListRencanaLunasPiutang.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'"public"."t_plan_receivable"','0');
end;

procedure TFDataRencanaLunasPiutang.HitungGrid;
begin
   try
      begin
      if MemDetailPiutang['jum_piutang']>MemDetailPiutang['jum_piutang_real'] then
      begin
        ShowMessage('Jumlah Rencana Piutang '+MemDetailPiutang['no_faktur']+' Melebihi Jumlah Piutang...!!!');
        MemDetailPiutang.Edit;
        MemDetailPiutang['jum_piutang']:=MemDetailPiutang['jum_piutang_real'];
        MemDetailPiutang.Post;
        exit;
      end;
        MemDetailPiutang.Post;
      end;
        Except;
   end;
end;

procedure TFDataRencanaLunasPiutang.BSaveClick(Sender: TObject);
begin
   DecodeDate(dtTrans.Date, Year, Month, Day);
   strtgl:=IntToStr(Day);
   strbulan:=inttostr(Month);
   strtahun:=inttostr(Year);
  //refresh grid
  tot_piutang:=0;

  MemDetailPiutang.First;
  while not MemDetailPiutang.Eof do
  begin
    HitungGrid;
      tot_piutang:=tot_piutang+MemDetailPiutang['jum_piutang'];
    MemDetailPiutang.Next;
  end;

      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKode_Pelanggan.Text='' then
      begin
        MessageDlg('Data Pelanggan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edKode_Pelanggan.SetFocus;
      end
      else if edNoTrans.Text='' then
      begin
        MessageDlg('Data Penjualan Wajib Diisi..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if Status = 0 then
      begin
      FDataRencanaLunasPiutang.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Rencana No. '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if Status = 1 then
      begin
      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      begin
        Update;
        Dm.Koneksi.Commit;
      end;
      end;
      Except on E :Exception do
        begin
          begin
            MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
            Dm.koneksi.Rollback ;
          end;
        end;
      end;
end;

procedure TFDataRencanaLunasPiutang.Clear;
begin
  edNoTrans.Clear;
  dtTrans.date:=now();
  dtPeriode1.date:=now();
  dtPeriode2.date:=now();
  edKode_Pelanggan.Clear;
  edNama_Pelanggan.Clear;
  MemKeterangan.Clear;
  MemDetailPiutang.EmptyTable;
  MemDetailPiutang.Active:=true;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanCellClick(Column: TColumnEh);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanColEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanColExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
    FDaftarTagihan.vcall:='rencana_lunas_piutang';
    FDaftarTagihan.periode1:=dtPeriode1.Date;
    FDaftarTagihan.periode2:=dtPeriode2.Date;
    FDaftarTagihan.kd_outlet:=edKode_Pelanggan.Text;
    FDaftarTagihan.RefreshGrid;
    FDaftarTagihan.show;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanExit(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
  HitungGrid;
  end;

  if Key = VK_ESCAPE then
  begin
  HitungGrid;
  end;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then // 13 adalah kode untuk Enter
  begin
    HitungGrid;
  end;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.DBGridTagihanMouseEnter(Sender: TObject);
begin
  HitungGrid;
end;

procedure TFDataRencanaLunasPiutang.dtTransChange(Sender: TObject);
begin
  FDataRencanaLunasPiutang.Autonumber;
end;

procedure TFDataRencanaLunasPiutang.edKode_PelangganButtonClick(
  Sender: TObject);
begin
  Fbrowse_data_pelanggan.Caption:='Master Data Pelanggan';
  Fbrowse_data_pelanggan.vcall:='rencana_lunas_piutang';
  Fbrowse_data_pelanggan.ShowModal;
end;

end.
