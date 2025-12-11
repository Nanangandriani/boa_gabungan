unit UDataKasKecil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, RzButton,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, MemTableEh, Vcl.Mask,
  RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.ComCtrls, RzDTP, Vcl.ExtCtrls, RzCmboBx,
  RzRadChk, RzPanel, RzRadGrp;

type
  TFDataKasKecil = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edKodeKepada: TEdit;
    dtTrans: TRzDateTimePicker;
    MemKeterangan: TMemo;
    edNoTrans: TEdit;
    edNamaKepada: TRzButtonEdit;
    MemDetailAkun: TMemTableEh;
    MemDetailAkunkd_akun: TStringField;
    MemDetailAkunnm_akun: TStringField;
    MemDetailAkunketerangan: TStringField;
    MemDetailAkundebit: TCurrencyField;
    MemDetailAkunkredit: TCurrencyField;
    MemDetailAkunkd_header_akun: TStringField;
    MemDetailAkunkd_group_biaya: TStringField;
    MemDetailAkunnm_group_biaya: TStringField;
    DSDetailAkun: TDataSource;
    PGC: TRzPageControl;
    TabDetailAkun: TRzTabSheet;
    DBGridAkun: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    edNamaSumberKas: TRzButtonEdit;
    edKodeSumberKas: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    gbDataBON: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    edNomorKasBon: TRzButtonEdit;
    Label19: TLabel;
    edJumlah: TRzNumericEdit;
    Label20: TLabel;
    BtnAmbil_Data: TRzBitBtn;
    GbHutang: TGroupBox;
    dtPeriode2: TRzDateTimePicker;
    Label10: TLabel;
    dtPeriode1: TRzDateTimePicker;
    Label11: TLabel;
    Label14: TLabel;
    edKurs: TRzNumericEdit;
    Label16: TLabel;
    Label15: TLabel;
    edNamaMataUang: TRzButtonEdit;
    Label17: TLabel;
    Label18: TLabel;
    edKodeMataUang: TEdit;
    Ed_Jumlah_Hutang: TRzNumericEdit;
    Label21: TLabel;
    Label22: TLabel;
    ak_account: TEdit;
    edKode_supplier: TRzButtonEdit;
    TabDetailFaktur: TRzTabSheet;
    DBGridTagihan: TDBGridEh;
    dsDetailHutang: TDataSource;
    MemDetailHutang: TMemTableEh;
    MemDetailHutangno_tagihan: TStringField;
    MemDetailHutangtgl_faktur: TDateField;
    MemDetailHutangketerangan: TStringField;
    MemDetailHutangno_faktur: TStringField;
    MemDetailHutangno_sj: TStringField;
    MemDetailHutangjum_hutang: TCurrencyField;
    MemDetailHutangjum_hutang_real: TCurrencyField;
    procedure DBGridAkunColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridAkunColumns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure edNamaKepadaButtonClick(Sender: TObject);
    procedure edNamaSumberKasButtonClick(Sender: TObject);
    procedure edNomorKasBonButtonClick(Sender: TObject);
    procedure dtTransChange(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BtnAmbil_DataClick(Sender: TObject);
    procedure edKodeMataUangChange(Sender: TObject);
    procedure edKode_supplierChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    vtotal_debit, vtotal_kredit, vtotal_piutang : real;
    { Private declarations }
  public
    Status, stat_bon : Integer;
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
    procedure InsertDetailHutang;
    procedure RefreshForm;
    procedure RefreshFormBON;
    procedure Clear;
    procedure TambahAkunDefault;
  end;

var
  FDataKasKecil: TFDataKasKecil;

implementation

{$R *.dfm}

uses UMasterData, UCari_DaftarPerk, UDataModule, UMy_Function, UListKasKecil,
  UHomeLogin,udafajuankeluarkasbank,UMainMenu;

//function TFDataKasKecil.GetKodeKasKecil: string;
//begin
//  Q1.Close;
//  Q1.SQL.Text :=
//    'SELECT account_code FROM t_ak_account '+
//    'WHERE LOWER(account_name) LIKE ''%kas kecil%'' LIMIT 1';
//  Q1.Open;
//
//  if Q1.IsEmpty then
//    Result := ''
//  else
//    Result := Q1.FieldByName('account_code').AsString;
//end;

procedure TFDataKasKecil.InsertDetailHutang;
begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "t_petty_cash_expenditure_payable" '+
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
        sql.Text:=' DELETE FROM  "t_petty_cash_expenditure_payable" '+
                  ' WHERE "voucher_no"='+QuotedStr(edNoTrans.Text)+';';
        ExecSQL;
      end;
    end;

    MemDetailHutang.First;
    while not MemDetailHutang.Eof do
    begin
      with dm.Qtemp do
      begin
          close;
          sql.clear;
          sql.Add(' INSERT INTO "t_petty_cash_expenditure_payable" ("voucher_no", '+
                  ' "invoice_no", "sj_no", "faktur_no", "faktur_date", "trans_date", "supplier_code", '+
                  ' "supplier_name", "trans_type_code", "trans_type_name", "bank_number_account", '+
                  ' "bank_name_account", "paid_amount", "description","account_acc") '+
                  ' Values( '+
                  ' '+QuotedStr(edNoTrans.Text)+', '+
                  ' '+QuotedStr(MemDetailHutang['no_tagihan'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_sj'])+', '+
                  ' '+QuotedStr(MemDetailHutang['no_faktur'])+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',MemDetailHutang['tgl_faktur']))+', '+
                  ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
                  ' '+QuotedStr(edKode_supplier.Text)+', '+
                  ' '+QuotedStr(edNamakepada.Text)+', '+
                  ' '+QuotedStr(edKodesumberkas.Text)+', '+
                  ' '+QuotedStr(edNamasumberkas.Text)+', '+
                  ' NULL, '+
                  ' NULL, '+
                  ' '+QuotedStr(FloatToStr(MemDetailHutang['jum_hutang']))+', '+
                  ' '+QuotedStr(MemDetailHutang['keterangan'])+', '+
                  ' '+QuotedStr(ak_account.Text)+') ');
          ExecSQL;
      end;
      MemDetailHutang.Next;
    end;
end;


procedure TFDataKasKecil.Save;
begin
  if (stat_bon=0) or (stat_bon=1)  then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
              //' "additional_code", '+
              ' "order_no", "trans_day", "trans_month", "trans_year") '+
              ' VALUES ( '+
              ' NOW(), '+
              //' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
              ' :created_by, '+
              ' '+QuotedStr(edNoTrans.Text)+', '+
              ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
              ' '+QuotedStr(edKodeKepada.Text)+', '+
              ' '+QuotedStr(edNamaKepada.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+QuotedStr(MemKeterangan.Text)+', '+
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+'  );');

              parambyname('created_by').AsString:=Nm;
      ExecSQL;
    end;

    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListKasKecil .Refresh;
  end;
  if stat_bon=2 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' Insert into "public"."t_petty_cash" ("created_at", "created_by", '+
              ' "voucher_no", "trans_date", "actors_code", "actors_name", "amount", "description", '+
              ' "source_code", "source_name", '+
              ' "voucher_no_receipt", "amount_receipt", "stat_receipt",'+
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
              ' '+QuotedStr(edKodeSumberKas.Text)+', '+
              ' '+QuotedStr(edNamaSumberKas.Text)+', '+
              ' '+QuotedStr(edNomorKasBon.Text)+', '+
              ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
              ' '+IntToStr(stat_bon)+', '+
              ' '+QuotedStr(order_no)+', '+
              //' '+QuotedStr('0')+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+'  );');
      ExecSQL;
    end;

    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    InsertDetailHutang;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;
    Close;
    FListKasKecil .Refresh;
  end;

end;

procedure TFDataKasKecil.Update;
begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash" SET '+
              ' updated_at=NOW(),'+
              ' updated_by='+QuotedStr(FHomeLogin.Eduser.Text)+','+
              ' trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' actors_code='+QuotedStr(edKodeKepada.Text)+','+
              ' actors_name='+QuotedStr(edNamaKepada.Text)+','+
              ' source_code='+QuotedStr(edKodeSumberKas.Text)+','+
              ' source_name='+QuotedStr(edNamaSumberKas.Text)+','+
              ' amount='+QuotedStr(stringreplace(FloatToStr(vtotal_kredit), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' description='+QuotedStr(MemKeterangan.Text)+','+
              ' voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+','+
              ' amount_receipt='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+','+
              ' stat_receipt='+IntToStr(stat_bon)+','+
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
              ' voucher_no_realization='+QuotedStr(edNoTrans.Text)+', '+
              ' trans_date_realization='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_realization='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNomorKasBon.Text)+'');
      ExecSQL;
    end;
    InsertDetailAkun;
    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasKecil .Refresh;
end;

procedure TFDataKasKecil.InsertDetailAkun;
begin
  with Dm.Qtemp1 do
  begin
    close;
    sql.clear;
    sql.add(' SELECT * from ('+
            ' SELECT * from "public"."t_petty_cash_det"'+
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
  sql.Text:=' DELETE FROM  "public"."t_petty_cash_det" '+
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
    sql.Add(' INSERT INTO "public"."t_petty_cash_det" ("voucher_no", '+
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

procedure TFDataKasKecil.VCekBalance;
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

procedure TFDataKasKecil.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListKasKecil.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'public.t_petty_cash','0');
end;

procedure TFDataKasKecil.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

procedure TFDataKasKecil.BSaveClick(Sender: TObject);
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
//      else if edNoTrans.Text='' then
//      begin
//        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
//        edNoTrans.SetFocus;
//      end
      else if (stat_bon=1) and (edJumlah.value=0) then
      begin
        MessageDlg('Pastikan Data Kasbon Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edJumlah.SetFocus;
      end
      else if MemDetailAkun.RecordCount=0 then
      begin
        MessageDlg('Pastikan Akun Anda Sudah Lengkap..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if FDataKasKecil.Status = 0 then
      begin
      FDataKasKecil.Autonumber;
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Disimpan Dengan No . '+edNoTrans.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataKasKecil.Status = 1 then
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

procedure TFDataKasKecil.BtnAmbil_DataClick(Sender: TObject);
begin
   MemDetailAkun.EmptyTable;
   //MemDetailHutang.EmptyTable;
   Fdafajuankeluarkasbank.vcall:='keluar_kas_kecil';
   Fdafajuankeluarkasbank.Show;
end;

procedure TFDataKasKecil.Clear;
begin
  MemDetailAkun.EmptyTable;
  MemDetailAkun.Active:=false;
  MemDetailAkun.Active:=true;
  edNoTrans.Clear;
  dtTrans.date:=now();
  edKodeKepada.Clear;
  edNamaKepada.Clear;
  MemKeterangan.Clear;

  edNomorKasBon.Clear;
  edJumlah.Value:=0.00;
  edKodeSumberKas.Clear;
  edNamaSumberKas.Clear;

  dtPeriode1.Date:=now();
  dtPeriode2.Date:=now();
  edKodeMataUang.Clear;
  edNamaMataUang.Clear;
  edKurs.Clear;
  Ed_Jumlah_Hutang.Clear;
  edKode_supplier.Clear;
  ak_account.Clear;

end;

procedure TFDataKasKecil.RefreshFormBON;
begin
   with Dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt"  a '+
                 ' WHERE "voucher_no"='+QuotedSTr(edNomorKasBon.Text)+' '+
                 ' AND deleted_at is null order by created_at Desc ';
       open;
   end;
  if Dm.Qtemp.RecordCount=0 then
  begin
    ShowMessage('Pastikan Data Yang Anda Pilih Benar...!!!');
    exit;
  end;
  if Dm.Qtemp.RecordCount<>0 then
  begin
  with FDataKasKecil do
  begin
    //Master
    edKodeKepada.Text:=Dm.Qtemp.FieldByName('actors_code').AsString;
    edNamaKepada.Text:=Dm.Qtemp.FieldByName('actors_name').AsString;
    MemKeterangan.Text:=Dm.Qtemp.FieldByName('description').AsString;
    edJumlah.Value:=Dm.Qtemp.FieldByName('amount').Value;

    //detailakun
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_receipt_det"'+
              ' WHERE "voucher_no"='+QuotedStr(edNomorKasBon.Text)+' ) a '+
              ' Order By position asc');
      open;
    end;

    MemDetailAkun.EmptyTable;
    MemDetailAkun.Active:=false;
    MemDetailAkun.Active:=true;
    Dm.Qtemp1.First;
    while not Dm.Qtemp1.Eof do
    begin
        FDataKasKecil.MemDetailAkun.Insert;
        FDataKasKecil.MemDetailAkun['kd_akun']:=Dm.Qtemp1.fieldbyname('code_account').AsString;
        FDataKasKecil.MemDetailAkun['nm_akun']:=Dm.Qtemp1.fieldbyname('name_account').AsString;
        if Dm.Qtemp1.fieldbyname('position').AsString='D' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=0;
          FDataKasKecil.MemDetailAkun['debit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
        end;
        if Dm.Qtemp1.fieldbyname('position').AsString='K' then
        begin
          FDataKasKecil.MemDetailAkun['kredit']:=Dm.Qtemp1.fieldbyname('paid_amount').Value;
          FDataKasKecil.MemDetailAkun['debit']:=0;
        end;
        FDataKasKecil.MemDetailAkun['keterangan']:=Dm.Qtemp1.fieldbyname('description').AsString;
        FDataKasKecil.MemDetailAkun['kd_header_akun']:=Dm.Qtemp1.fieldbyname('code_account_header').AsString;
        FDataKasKecil.MemDetailAkun['kd_group_biaya']:=Dm.Qtemp1.fieldbyname('code_group_cost').AsString;
        FDataKasKecil.MemDetailAkun['nm_group_biaya']:=Dm.Qtemp1.fieldbyname('name_group_cost').AsString;
        FDataKasKecil.MemDetailAkun.post;
    Dm.Qtemp1.Next;
    end;

  end;
  end;
end;

procedure TFDataKasKecil.RefreshForm;
begin
  if stat_bon=1 then
  begin
   gbDataBON.Visible:=true;
   BtnAmbil_Data.Visible:=false;
   GbHutang.Visible:=false;
   edNamaKepada.ButtonVisible:=true;
   TabDetailFaktur.TabVisible:=false;
  end;
  if stat_bon=0 then
  begin
    gbDataBON.Visible:=false;
    edNomorKasBon.Clear;
    edJumlah.Value:=0.00;
    BtnAmbil_Data.Visible:=false;
    GbHutang.Visible:=false;
    edNamaKepada.ButtonVisible:=true;
    TabDetailFaktur.TabVisible:=false;
  end;
  if stat_bon=2 then
  begin
    BtnAmbil_Data.Visible:=true;
    gbDataBON.Visible:=false;
    GbHutang.Visible:=true;
    edNamaKepada.ButtonVisible:=false;
    TabDetailFaktur.TabVisible:=true;
    dbgridTagihan.Visible:=true;
  end;
end;

procedure TFDataKasKecil.DBGridAkunColumns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='kas_kecil';
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

procedure TFDataKasKecil.DBGridAkunColumns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
  FMasterData.Caption:='Master Kelompok Biaya';
  FMasterData.vcall:='kaskecil_group_biaya';
  FMasterData.update_grid('initial_code','name','description','"t_cost_group"','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasKecil.dtTransChange(Sender: TObject);
begin
  //FDataKasKecil.Autonumber;
end;

procedure TFDataKasKecil.edKodeMataUangChange(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.Clear;
     sql.Text:='select * from t_currency where currency_code='+QuotedStr(edKodeMataUang.Text)+' ';
     open;
     edNamaMataUang.Text:=fieldbyname('currency_name').AsString;
   end;
end;

procedure TFDataKasKecil.edKode_supplierChange(Sender: TObject);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT code,account_name,supplier_code from t_ak_account a '+
              'LEFT JOIN t_supplier b ON a.code=b.account_code where supplier_code='+QuotedStr(edKode_supplier.Text);
    open;
    ak_account.Text:=fieldbyname('code').AsString;
  end;
end;

procedure TFDataKasKecil.edNamaKepadaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Pelaku Biaya';
  FMasterData.vcall:='kaskecil_pelaku_biaya';
  FMasterData.update_grid('code','name','nik_employee','"t_cost_actors"','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasKecil.edNamaSumberKasButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Sumber Kas Kecil';
  FMasterData.vcall:='m_sumber_kas';
  FMasterData.update_grid('code','name','description','"t_petty_cash_source"','WHERE	deleted_at is null ORDER BY code desc');
  FMasterData.ShowModal;
  RefreshForm;
end;

procedure TFDataKasKecil.edNomorKasBonButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Data Kasbon';
  FMasterData.vcall:='data_kasbon';
  FMasterData.update_grid('voucher_no','actors_name','amount','(SELECT voucher_no, actors_name, '+
                          '  '''' || to_char(aa.amount, ''FM9,999,999,999.00'') AS amount, created_at  from '+
                          ' (SELECT voucher_no_receipt,amount_receipt-amount_realization as amount '+
                          ' from t_petty_cash_receipt_history)aa '+
                          ' LEFT JOIN (SELECT voucher_no, actors_name, created_at from t_petty_cash_receipt) bb on'+
                          ' aa.voucher_no_receipt=bb.voucher_no where amount>0)aa','ORDER BY created_at desc');
  FMasterData.ShowModal;
  RefreshFormBON;

  //Buat Freesh data grid sesuai bon

end;

procedure TFDataKasKecil.FormShow(Sender: TObject);
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM t_petty_cash_source where code=''KC001'' and deleted_at is null';
      open;
      edNamaSumberKas.Text:=fieldbyname('code').AsString;
      edNamaSumberKas.Text:=fieldbyname('name').AsString;
    end;
end;

procedure TFDataKasKecil.TambahAkunDefault;
begin

end;

end.
