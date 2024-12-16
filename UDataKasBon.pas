unit UDataKasBon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, RzDTP,
  Vcl.ExtCtrls, MemTableDataEh, Data.DB, MemTableEh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzTabs, Vcl.Mask, RzEdit, RzBtnEdt, RzButton;

type
  TFDataKasBon = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edKodeKepada: TEdit;
    dtTrans: TRzDateTimePicker;
    MemKeterangan: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    edNoTrans: TEdit;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    DSDetailAkun: TDataSource;
    RzPageControl1: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    MemDetailAkunkd_group_biaya: TStringField;
    MemDetailAkunnm_group_biaya: TStringField;
    edNamaKepada: TRzButtonEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    procedure DBGridAkunColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure edNamaKepadaButtonClick(Sender: TObject);
    procedure dtTransChange(Sender: TObject);
  private
    vtotal_debit, vtotal_kredit, vtotal_piutang : real;
    { Private declarations }
  public
    Status : Integer;
    additional_code1, additional_code2, additional_code3, additional_code4, additional_code5 : String;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    next_proses:boolean;
    { Public declarations }
    procedure Autonumber;
    procedure VCekBalance;
    procedure Save;
    procedure Update;
    procedure InsertDetailAkun;
    procedure Clear;
  end;

var
  FDataKasBon: TFDataKasBon;

implementation

{$R *.dfm}

uses UMy_Function, UListKasBon, UDataModule, UHomeLogin, UMasterData,
  UCari_DaftarPerk;

procedure TFDataKasBon.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataKasBon.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  VCekBalance;
  DecodeDate(dtTrans.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
      //ShowMessage(IntToStr(Status));
    if next_proses=true then
    begin
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
      if edKodeKepada.Text='' then
      begin
        MessageDlg('Data Kepada Tidak Bisa Kosong..!!',mtInformation,[mbRetry],0);
        edKodeKepada.SetFocus;
      end
      else if edNoTrans.Text='' then
      begin
        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if MemDetailAkun.RecordCount=0 then
      begin
        MessageDlg('Pastikan Akun Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if FDataKasBon.Status = 0 then
      begin
      FDataKasBon.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Dengan No . '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataKasBon.Status = 1 then
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
end;

procedure TFDataKasBon.Clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailAkun.Active:=false;
  MemDetailAkun.Active:=true;
  edNoTrans.Clear;
  dtTrans.date:=now();
  edKodeKepada.Clear;
  edNamaKepada.Clear;
  MemKeterangan.Clear;
end;

procedure TFDataKasBon.Save;
begin
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_petty_cash_receipt" ("created_at", "created_by", '+
            '  "voucher_no", "trans_date", "actors_code", "actors_name", "amount", "description", '+
            //' "additional_code", '+
            ' "order_no", "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(edKodeKepada.Text)+', '+
            ' '+QuotedStr(edNamaKepada.Text)+', '+
            ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(order_no)+', '+
            //' '+QuotedStr('0')+', '+
            ' '+QuotedStr(strtgl)+', '+
            ' '+QuotedStr(strbulan)+', '+
            ' '+QuotedStr(strtahun)+'  );');
    ExecSQL;
  end;

  with dm.Qtemp do //history
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_petty_cash_receipt_history" '+
            ' ("voucher_no_receipt", "trans_date_receipt", "amount_receipt") '+
            ' VALUES ( '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+'  );');
    ExecSQL;
  end;
  InsertDetailAkun;
  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasBon .Refresh;
end;

procedure TFDataKasBon.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' actors_code='+QuotedStr(edKodeKepada.Text)+','+
              ' actors_name='+QuotedStr(edNamaKepada.Text)+','+
              ' amount='+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' order_no='+QuotedStr(order_no)+','+
              //' additional_code='+QuotedStr('0')+','+
              ' trans_day='+QuotedStr(strtgl)+','+
              ' trans_month='+QuotedStr(strbulan)+','+
              ' trans_year='+QuotedStr(strtahun)+' '+
              ' Where voucher_no='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' trans_date_receipt='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_receipt='+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasBon .Refresh;
end;

procedure TFDataKasBon.InsertDetailAkun;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_petty_cash_receipt_det"'+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+' ) a '+
            ' Order By voucher_no desc');
    open;
  end;

  if Dm.Qtemp1.RecordCount>0 then
  begin
  with dm.Qtemp do
  begin
  close;
  sql.clear;
  sql.Text:=' DELETE FROM  "public"."t_petty_cash_receipt_det" '+
            ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
  ExecSQL;
  end;
  end;

  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    with dm.Qtemp do
    begin
    close;
    sql.clear;
    sql.Add(' INSERT INTO "public"."t_petty_cash_receipt_det" ("voucher_no", '+
            ' "code_account", "name_account", "position", "paid_amount", "description", '+
            ' "code_account_header", "code_group_cost", "name_group_cost") '+
            ' Values( '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(MemDetailAkun['kd_akun'])+', '+
            ' '+QuotedStr(MemDetailAkun['nm_akun'])+', ');
            if MemDetailAkun['debit']<>0 then
            begin
              sql.Add(' '+QuotedStr('D')+', ');
              sql.Add(' '+QuotedStr(stringreplace(MemDetailAkun['debit'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', ');
            end;
            if MemDetailAkun['kredit']<>0 then
            begin
              sql.Add(' '+QuotedStr('K')+', ');
              sql.Add(' '+QuotedStr(stringreplace(MemDetailAkun['kredit'], ',', '.',[rfReplaceAll, rfIgnoreCase]))+', ');
            end;
    sql.Add(' '+QuotedStr(MemDetailAkun['keterangan'])+', '+
            ' '+QuotedStr(MemDetailAkun['kd_header_akun'])+', '+
            ' '+QuotedStr(MemDetailAkun['kd_group_biaya'])+', '+
            ' '+QuotedStr(MemDetailAkun['nm_group_biaya'])+'  );');
    ExecSQL;
    end;
  MemDetailAkun.Next;
  end;
end;

procedure TFDataKasBon.VCekBalance;
begin
  //Cek Balance Debit Kredit
  next_proses:=true;
  vtotal_debit:=0;
  vtotal_kredit:=0;
  MemDetailAkun.First;
  while not MemDetailAkun.Eof do
  begin
    vtotal_debit:=vtotal_debit+MemDetailAkun['debit'];
    vtotal_kredit:=vtotal_kredit+MemDetailAkun['kredit'];
    MemDetailAkun.Next;
  end;

  if vtotal_debit <> vtotal_kredit then
  begin
    ShowMessage('Nominal Tidak Balance, Pastikan Debit Kredit Anda Sudah Benar...!!!');
    next_proses:=false;
    exit;
  end;
end;

procedure TFDataKasBon.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListKasBon.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'public.t_petty_cash_receipt','0');
end;

procedure TFDataKasBon.DBGridAkunColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kas_bon';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:=' SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                ' left join t_ak_header c on b.header_code=c.header_code'+
                ' GROUP BY b.code,b.account_name,c.header_name '+
                ' ORDER BY b.code,b.account_name,c.header_name';
      Execute;
    end;
  end;
end;

procedure TFDataKasBon.DBGridAkunColumns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Kelompok Biaya';
  FMasterData.vcall:='kasbon_group_biaya';
  FMasterData.update_grid('initial_code','name','description','"t_cost_group"','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasBon.dtTransChange(Sender: TObject);
begin
  FDataKasBon.Autonumber;
end;

procedure TFDataKasBon.edNamaKepadaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Pelaku Biaya';
  FMasterData.vcall:='kasbon_pelaku_biaya';
  FMasterData.update_grid('code','name','nik_employee','"t_cost_actors"','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

end.
