unit UDataKasbon2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, RzBtnEdt,
  Vcl.StdCtrls, Vcl.ComCtrls, RzDTP, RzButton, Vcl.ExtCtrls, RzRadChk;

type
  TFDataKasbon2 = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
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
    Label6: TLabel;
    Label7: TLabel;
    edNamaSumber: TRzButtonEdit;
    edKodeSumber: TEdit;
    Label20: TLabel;
    Label19: TLabel;
    edJumlah: TRzNumericEdit;
    memTerbilang: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edNoref: TRzButtonEdit;
    edkeperluan: TEdit;
    edkd_noref: TEdit;
    BCorrection: TRzBitBtn;
    chkNomorPengganti: TRzCheckBox;
    btnNoTransaksi: TRzBitBtn;
    procedure BBatalClick(Sender: TObject);
    procedure edNamaKepadaButtonClick(Sender: TObject);
    procedure edNamaSumberButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure edJumlahChange(Sender: TObject);
    procedure BCorrectionClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkNomorPenggantiClick(Sender: TObject);
    procedure edNorefButtonClick(Sender: TObject);
    procedure btnNoTransaksiClick(Sender: TObject);
  private
    { Private declarations }
  public
    IntStatusKoreksi, iserror, isCancel: integer;
    Status : Integer;
    strNoTransaksiDiGanti : string;
    additional_code1, additional_code2, additional_code3, additional_code4, additional_code5, vregion_code : String;
    strtgl, strbulan, strtahun: string;
    Year, Month, Day: Word;
    next_proses:boolean;
    { Public declarations }
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure Clear;
    procedure CariDefaultSumber;
    procedure SettingHarmoni;
  end;

var
  FDataKasbon2: TFDataKasbon2;

implementation

{$R *.dfm}

uses UMy_Function, UListKasBon, UHomeLogin, UDataModule, UMasterData, UKoreksi,
  UDataRincianHarmoni, UDataKasKecil, UListNoTransaksi;
procedure TFDataKasbon2.SettingHarmoni;
begin
  if edKodeSumber.Text='KC003' then
  begin
    with Dm.Qtemp1 do
    begin
      close;
      sql.clear;
      sql.add(' SELECT * from ('+
              ' SELECT * from "public"."t_petty_cash_receipt_harmoni"'+
              ' WHERE "document_number"='+QuotedStr(edNoref.Text)+' ) a ');
      open;
    end;

    Dm.Qtemp1.First;
    while not Dm.Qtemp1.Eof do
    begin
      with FDataKasKecil do
      begin
          UpdateHarmoni(Dm.Qtemp1.fieldbyname('employee_nik').Value,
                        formatdatetime('yyyy-mm-dd',Dm.Qtemp1.fieldbyname('start_date').Value),
                        formatdatetime('yyyy-mm-dd',Dm.Qtemp1.fieldbyname('end_date').Value),
                        Dm.Qtemp1.fieldbyname('official_travel_id').Value,
                        Dm.Qtemp1.fieldbyname('component_id').Value,
                        '2',
                        FDataKasbon2.edNoTrans.Text,
                        '0' );
      end;
    Dm.Qtemp1.Next;
    end;
  end;
end;

procedure TFDataKasbon2.CariDefaultSumber;
begin
   with dm.Qtemp do
   begin
       close;
       sql.Clear;
       sql.Text:=' select * from "public"."t_petty_cash_receipt_source" '+
                 ' where "default"=true and deleted_at is null  ';
       open;
   end;

   edKodeSumber.Text:=Dm.Qtemp.FieldByName('code').AsString;
   edNamaSumber.Text:=Dm.Qtemp.FieldByName('name').AsString;

end;

procedure TFDataKasbon2.chkNomorPenggantiClick(Sender: TObject);
begin
  if chkNomorPengganti.Checked=True then btnNoTransaksi.Visible:=True
  else btnNoTransaksi.Visible:=False;
  edNoTrans.Clear;

  if chkNomorPengganti.Checked=True then
  begin
    Clear;
    strNoTransaksiDiGanti:='';
  end;
end;

procedure TFDataKasbon2.Clear;
begin
  Edautocode.Clear;
  edKodeKepada.Clear;
  dtTrans.Date:=now();
  MemKeterangan.Clear;
  edNoTrans.Clear;
  edNamaKepada.Clear;
  edNamaSumber.Clear;
  edKodeSumber.Clear;
  edJumlah.Value:=0.00;
  memTerbilang.Clear;
  edNoref.Clear;
  edkeperluan.Clear;
  edkd_noref.Clear;
end;

procedure TFDataKasbon2.edJumlahChange(Sender: TObject);
begin
 memTerbilang.Text:=UraikanAngka(FormatFloat('0.##',(edJumlah.Value)));
end;

procedure TFDataKasbon2.edNamaKepadaButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Pelaku Biaya';
  FMasterData.vcall:='kasbon_pelaku_biaya2';
  FMasterData.update_grid('code','name','name_tp','(SELECT a.*,b.name as name_tp  from "public"."t_cost_actors" a '+
                          ' LEFT JOIN t_region_TP b on a.karesidenan_code=b.code)aa','WHERE	deleted_at is null ORDER BY name desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasbon2.edNamaSumberButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Sumber Kas Bon';
  FMasterData.vcall:='m_sumber_kasbon';
  FMasterData.update_grid('code','name','description','"t_petty_cash_receipt_source"','WHERE	deleted_at is null ORDER BY code desc');
  FMasterData.ShowModal;
end;

procedure TFDataKasbon2.edNorefButtonClick(Sender: TObject);
begin
  if edKodeSumber.Text='KC003' then
  begin
    if SelectRow('select nik_employee from t_cost_actors where code='+QuotedStr(FDataKasbon2.edKodeKepada.Text)+' ')='0' then
    begin
      ShowMessage('Data Pelaku Biaya Tidak Punya NIK, Silakan Dilengkapi !!!');
      Exit;
    end else
    begin
    with FDataRincianHarmoni do
    begin
      edNamaKaryawan.Text:=edNamaKepada.Text;
      dtawal.Date:=FDataKasbon2.dtTrans.Date;
      dtakhir.Date:=FDataKasbon2.dtTrans.Date;
      vno_karyawan := SelectRow(' SELECT nik_employee from '+
                                ' t_cost_actors where '+
                                ' code=' + QuotedStr(FDataKasbon2.edKodeKepada.Text));
      edNoKaryawan.Text:=vno_karyawan;
      edKodeKepada.Text:=FDataKasbon2.edKodeKepada.Text;
      dtawal.Enabled:=true;
      dtakhir.Enabled:=true;
      ch_tandai.Checked:=true;
      vcall:='kas_bon';
    end;
    FDataRincianHarmoni.ShowModal;
    end;
  end;
end;

procedure TFDataKasbon2.FormShow(Sender: TObject);
begin
  btnNoTransaksi.Visible:=False;
  strNoTransaksiDiGanti:='';
  chkNomorPengganti.Checked:=False;
  if status = 0 then
  begin
    BSave.Enabled := True;
    BCorrection.Visible := False;
    dtTrans.Enabled := True;
    chkNomorPengganti.Enabled:=true;
  end
  else if (status = 1) and (IntStatusKoreksi = 2) then
  begin
    BSave.Enabled := True;
    BCorrection.Visible := True;
    BCorrection.Enabled := False;
    chkNomorPengganti.Enabled:=False;
  end
  else
  begin
    BSave.Enabled := False;
    BCorrection.Visible := True;
    BCorrection.Enabled := True;

    dtTrans.Enabled := False;
    chkNomorPengganti.Enabled:=False;
  end;
end;

procedure TFDataKasbon2.Autonumber;
begin
   idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListKasBon.Name)+'');
   strday2:=dtTrans.Date;
   edNoTrans.Text:=getNourut(strday2,'public.t_petty_cash_receipt','0');
end;

procedure TFDataKasbon2.BBatalClick(Sender: TObject);
begin
  Clear;
  CLose;
end;

procedure TFDataKasbon2.BCorrectionClick(Sender: TObject);
begin
   with Dm.Qtemp1 do
   begin
       close;
       sql.Clear;
       sql.Text:=' SELECT voucher_no_receipt, '+
                 ' COALESCE(sum(amount_realization),0) as amount_realization '+
                 ' from t_petty_cash_receipt_history '+
                 ' where voucher_no_receipt='+QuotedSTr(edNoTrans.Text)+' '+
                 ' GROUP BY voucher_no_receipt ';
       open;
   end;
  if Dm.Qtemp1.FieldByName('amount_realization').value>0 then
  begin
    ShowMessage('Data Sudah Dilakukan Realisasi Tidak Bisa Diubah...!!!');
    exit;
  end;


  if CheckJurnalPosting(edNoTrans.Text)>0 then
  begin
    MessageDlg('Nota sudah approve jurnal tidak bisa melakukan koreksi..!!',mtInformation,[mbRetry],0);
    iserror:=1;
  end;
  if iserror=0 then
  begin
    FKoreksi.vcall:=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                'where link='+QuotedStr(FListKasBon.Name)); //Mendapatkan nama Menu

    FKoreksi.AksiTipe:='KOREKSI';
    FKoreksi.Status:=0;
    FKoreksi.vnotransaksi:=edNoTrans.Text; //Mendapatkan Nomor Transaksi
    FKoreksi.ShowModal;
  end;
end;

procedure TFDataKasbon2.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
  LOriginalName: string;
  LBaseName: string;
  LLastUnderscorePos: Integer;
  LSuffix: string;
  LDummyInt: Integer;
begin
  DecodeDate(dtTrans.Date, Year, Month, Day);
  strtgl:=IntToStr(Day);
  strbulan:=inttostr(Month);
  strtahun:=inttostr(Year);
  //refresh grid
    //ShowMessage(IntToStr(Status));
      if not dm.Koneksi.InTransaction then
       dm.Koneksi.StartTransaction;
      try
          if (chkNomorPengganti.Checked=True) AND (edNoTrans.Text<>'') then
          begin
            if status=0 then
            begin
              with dm.Qtemp2 do
              begin
                close;
                sql.Clear;
                sql.Text:=' SELECT * FROM t_petty_cash_receipt '+
                          ' WHERE voucher_no='+QuotedStr(edNoTrans.Text);
                open;
              end;
            end;

            if (dm.Qtemp2.RecordCount>0) AND (status=0) then
            begin
              MessageDlg('No Transaksi Sudah Ada..!!',mtInformation,[mbRetry],0);
              Exit;
            end else begin
              LOriginalName := FListKasBon.Name;
              LBaseName := LOriginalName;
              LLastUnderscorePos := LastDelimiter('_', LBaseName);
              if (LLastUnderscorePos > 0) and (LLastUnderscorePos < Length(LBaseName)) then
              begin
                LSuffix := Copy(LBaseName, LLastUnderscorePos + 1, MaxInt);
                if TryStrToInt(LSuffix, LDummyInt) then
                begin
                  LBaseName := Copy(LBaseName, 1, LLastUnderscorePos - 1);
                end;
              end;

              idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(LBaseName)+'');
            end;
          end;
          //else

      if edKodeKepada.Text='' then
      begin
        MessageDlg('Data Kepada Tidak Bisa Kosong..!!',mtInformation,[mbRetry],0);
        edKodeKepada.SetFocus;
      end
      {else if edNoTrans.Text='' then
      begin
        MessageDlg('Pastikan Nomor Transaksi Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end }
      else if edJumlah.value<1 then
      begin
        MessageDlg('Pastikan Nominal Anda Sudah Benar..!!',mtInformation,[mbRetry],0);
        edNoTrans.SetFocus;
      end
      else if FDataKasBon2.Status = 0 then
      begin
      //if application.MessageBox('Data Anda Akan Tersimpan Dengan Nomor '+edKodeOrder.text+' Apa Anda Yakin Menyimpan Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
      if MessageDlg ('Anda Yakin Memproses Simpan Data Ini ?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        //FDataKasBon2.Autonumber;
        if chkNomorPengganti.Checked=False then Autonumber;
        Save;
        Dm.Koneksi.Commit;
      end;
      end
      else if FDataKasBon2.Status = 1 then
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

procedure TFDataKasbon2.btnNoTransaksiClick(Sender: TObject);
begin
  FListNoTransaksi.vcall:='kas_bon';
  FListNoTransaksi.update_grid('voucher_no','order_no','t_petty_cash_receipt','WHERE trans_date='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+' and deleted_at is NOT NULL '+
  'AND (trans_no_replacement is NULL OR trans_no_replacement='''') ORDER BY voucher_no ASC');
  FListNoTransaksi.ShowModal;
end;

procedure TFDataKasbon2.Save;
begin
  vregion_code:=SelectRow('select karesidenan_code from t_cost_actors where code='+QuotedStr(edKodeKepada.Text)+' ');
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    sql.add(' Insert into "public"."t_petty_cash_receipt" ("created_at", "created_by", '+
            ' "voucher_no", "trans_date", "source_code", "actors_code", "actors_name", '+
            ' "referensi_no", "referensi_code", "amount", "spelled_out", "needs", "description", '+
            //' "additional_code", '+
            ' "region_code", "order_no", "trans_day", "trans_month", "trans_year") '+
            ' VALUES ( '+
            ' NOW(), '+
            ' '+QuotedStr(FHomeLogin.Eduser.Text)+', '+
            ' '+QuotedStr(edNoTrans.Text)+', '+
            ' '+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+', '+
            ' '+QuotedStr(edKodeSumber.Text)+', '+
            ' '+QuotedStr(edKodeKepada.Text)+', '+
            ' '+QuotedStr(edNamaKepada.Text)+', '+
            ' '+QuotedStr(edNoref.Text)+', '+
            ' '+QuotedStr(edkd_noref.Text)+', '+
            ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+', '+
            ' '+QuotedStr(memTerbilang.Text)+', '+
            ' '+QuotedStr(edkeperluan.Text)+', '+
            ' '+QuotedStr(MemKeterangan.Text)+', '+
            ' '+QuotedStr(vregion_code)+', '+
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
            ' '+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+'  );');
    ExecSQL;
  end;
  if chkNomorPengganti.Checked=True then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' UPDATE "public"."t_petty_cash_receipt" SET'+
                ' trans_no_replacement='+QuotedStr(edNoTrans.Text)+
                ' Where voucher_no='+QuotedStr(strNoTransaksiDiGanti);
      ExecSQL;
    end;
  end;
  if edKodeSumber.Text='KC003' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:=' UPDATE "public"."t_petty_cash_receipt_harmoni" SET'+
                ' voucher_no='+QuotedStr(edNoTrans.Text)+
                ' Where "document_number"='+QuotedStr(edNoref.Text);
      ExecSQL;
    end;
    SettingHarmoni;
  end;

  MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasBon .Refresh;
end;

procedure TFDataKasbon2.Update;
begin
    vregion_code:=SelectRow('select karesidenan_code from t_cost_actors where code='+QuotedStr(edKodeKepada.Text)+' ');
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt" SET ' +
              '   "updated_at" = NOW(), ' +
              '   "updated_by" = ' + QuotedStr(FHomeLogin.Eduser.Text) + ', ' +
              '   "trans_date" = ' + QuotedStr(formatdatetime('yyyy-mm-dd', dtTrans.Date)) + ', ' +
              '   "source_code" = ' + QuotedStr(edKodeSumber.Text) + ', ' +
              '   "region_code" = ' + QuotedStr(vregion_code) + ', ' +
              '   "actors_code" = ' + QuotedStr(edKodeKepada.Text) + ', ' +
              '   "actors_name" = ' + QuotedStr(edNamaKepada.Text) + ', ' +
              '   "referensi_no" = ' + QuotedStr(edNoref.Text) + ', ' +
              '   "referensi_code" = ' + QuotedStr(edkd_noref.Text) + ', ' +
              '   "amount" = ' + QuotedStr(StringReplace(FloatToStr(edJumlah.Value), ',', '.', [rfReplaceAll, rfIgnoreCase])) + ', ' +
              '   "spelled_out" = ' + QuotedStr(memTerbilang.Text) + ', ' +
              '   "needs" = ' + QuotedStr(edkeperluan.Text) + ', ' +
              '   "description" = ' + QuotedStr(MemKeterangan.Text) + ', ' +
              '   "order_no" = ' + QuotedStr(order_no) + ', ' +
              '   "trans_day" = ' + QuotedStr(strtgl) + ', ' +
              '   "trans_month" = ' + QuotedStr(strbulan) + ', ' +
              '   "trans_year" = ' + QuotedStr(strtahun) + ', ' +
              '   "status_correction"= 0 '+
              ' WHERE "voucher_no" = ' + QuotedStr(edNoTrans.Text) + ';');
      ExecSQL;
    end;
    with dm.Qtemp do  //history
    begin
      close;
      sql.clear;
      sql.add(' UPDATE "public"."t_petty_cash_receipt_history" SET '+
              ' trans_date_receipt='+QuotedStr(formatdatetime('yyyy-mm-dd',dtTrans.Date))+','+
              ' amount_receipt='+QuotedStr(stringreplace(FloatToStr(edJumlah.Value), ',', '.',[rfReplaceAll, rfIgnoreCase]))+' '+
              ' Where voucher_no_receipt='+QuotedStr(edNoTrans.Text)+'');
      ExecSQL;
    end;

    if edKodeSumber.Text='KC003' then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Text:=' UPDATE "public"."t_petty_cash_receipt_harmoni" SET'+
                  ' voucher_no='+QuotedStr(edNoTrans.Text)+
                  ' Where "document_number"='+QuotedStr(edNoref.Text);
        ExecSQL;
      end;
      SettingHarmoni;
    end;

    MessageDlg('Ubah Berhasil..!!',mtInformation,[MBOK],0);
  Clear;
  Close;
  FListKasBon .Refresh;
end;



end.
