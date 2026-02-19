unit UDaftarTagihan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzBtnEdt, RzPanel, RzLabel;

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
    MemDetailPiutangcode_cust: TStringField;
    MemDetailPiutangname_cust: TStringField;
    MemDetailPiutangcustomer_name_pkp: TStringField;
    MemDetailPiutangkabupaten: TStringField;
    RzPanel1: TRzPanel;
    edKaresidenan: TRzButtonEdit;
    edKabupaten: TRzButtonEdit;
    edKecamatan: TRzButtonEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzButton1: TRzButton;
    MemDetailPiutangkecamatan: TStringField;
    procedure BSaveClick(Sender: TObject);
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure edKaresidenanButtonClick(Sender: TObject);
    procedure edKabupatenButtonClick(Sender: TObject);
    procedure edKecamatanButtonClick(Sender: TObject);
    procedure edKaresidenanChange(Sender: TObject);
    procedure edKabupatenChange(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    kd_outlet, vcall,strKdKaresidenan,strKdKabupaten,strKdKecamatan: string;
    Status: Integer;
    periode1, periode2: TDate;
    { Public declarations }
    procedure RefreshGrid;
    procedure ProsesDPP;
    procedure ProsesTerimaBank;
    procedure ProsesRencanaLunasPiutang;
  end;

var
  FDaftarTagihan: TFDaftarTagihan;

implementation

{$R *.dfm}

uses UDataModule, UDataPenerimaanBank, UDataRencanaLunasPiutang,
  UDataPenagihanPiutang, UMasterData;

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

procedure TFDaftarTagihan.ProsesDPP;
var
  rec,countInv: Integer;
  NoInv: String;
begin
  Status:=0;
  rec:=0;
  countInv:=0;
  NoInv:='';
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
        with dm.Qtemp do
        begin
          close;
          sql.Clear;
          sql.Text:='select no_invoice from t_dpp WHERE no_invoice='+QuotedStr(MemDetailPiutang['no_tagihan'])+' AND date_dpp='+QuotedStr(FormatDateTime('yyyy-mm-dd',FDataPenagihanPiutang.dtTagih.Date))+' AND deleted_at is NULL';
          open;
        end;

        if dm.Qtemp.RecordCount>0 then
        begin
          countInv:=countInv+1;
          NoInv:=NoInv+','+dm.Qtemp.FieldValues['no_invoice'];
        end;


       end;
       MemDetailPiutang.Next;
     end;

     if rec=0 then
     begin
       ShowMessage('Tidak Ada Data Yang Di Tandai.. !!');
       exit;
     end;
//     if rec>1 then
//     begin
//       ShowMessage('Lakukan Tandai Per Satu Tagihan.. !!');
//       exit;
//     end;

     if countInv>0 then
     begin
      if (Length(NoInv) > 0) and (NoInv[1] = ',') then
      begin
          NoInv := Copy(NoInv, 2, Length(NoInv) - 1);
      end;
       ShowMessage('Nota Tagihan ' + NoInv + ' Sudah Ada DPP.. !!');
       exit;
     end;

     //data di tandai kirm ke do
     if (rec>0) AND (countInv=0) then
     begin
       FDataPenagihanPiutang.MemDetail.active:=false;
       FDataPenagihanPiutang.MemDetail.active:=true;
       //FDataPenagihanPiutang.MemDetail.EmptyTable;

       MemDetailPiutang.First;
       while not MemDetailPiutang.Eof do
       begin
         if MemDetailPiutang['pilih']=true then
         begin
              FDataPenagihanPiutang.MemDetail.Insert;
              FDataPenagihanPiutang.MemDetail['kode_pel']:=MemDetailPiutang['code_cust'];
              FDataPenagihanPiutang.MemDetail['nama_pel']:=MemDetailPiutang['name_cust'];
              FDataPenagihanPiutang.MemDetail['tgl_faktur']:=MemDetailPiutang['tgl_faktur'];
              FDataPenagihanPiutang.MemDetail['tgl_tempo']:=MemDetailPiutang['tgl_tempo'];
              FDataPenagihanPiutang.MemDetail['no_invoice_tax']:=MemDetailPiutang['no_faktur'];
              FDataPenagihanPiutang.MemDetail['no_invoice']:=MemDetailPiutang['no_tagihan'];
              FDataPenagihanPiutang.MemDetail['jum_piutang']:=MemDetailPiutang['jum_piutang'];
              FDataPenagihanPiutang.MemDetail['tunai']:='0';
              FDataPenagihanPiutang.MemDetail['bank_resi']:='0';
              FDataPenagihanPiutang.MemDetail['tgl_resi']:=null;
              FDataPenagihanPiutang.MemDetail['resi']:='0';
              FDataPenagihanPiutang.MemDetail['nama_bank_cek']:='';
              FDataPenagihanPiutang.MemDetail['no_cek']:='';
              //FDataPenagihanPiutang.MemDetail['tgl_tempo_cek']:='';
              FDataPenagihanPiutang.MemDetail['nilai_cek']:='0';
              FDataPenagihanPiutang.MemDetail['kontra_bon']:='0';
              FDataPenagihanPiutang.MemDetail.post;
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
//           FDataPenerimaanBank.MemDetailPiutang.active:=false;
//           FDataPenerimaanBank.MemDetailPiutang.active:=true;
//           FDataPenerimaanBank.MemDetailPiutang.EmptyTable;

           MemDetailPiutang.First;
           while not MemDetailPiutang.Eof do
           begin
             if MemDetailPiutang['pilih']=true then
             begin
                if not FDataPenerimaanBank.MemDetailPiutang.Locate('no_faktur', MemDetailPiutang['no_faktur'], []) then
                begin
                  FDataPenerimaanBank.MemDetailPiutang.insert;
                  FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']:=MemDetailPiutang['tgl_faktur'];
                  FDataPenerimaanBank.MemDetailPiutang['no_faktur']:=MemDetailPiutang['no_faktur'];
                  FDataPenerimaanBank.MemDetailPiutang['no_tagihan']:=MemDetailPiutang['no_tagihan'];
                  FDataPenerimaanBank.MemDetailPiutang['jum_piutang']:=MemDetailPiutang['jum_piutang'];
                  FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real']:=MemDetailPiutang['jum_piutang'];
                  FDataPenerimaanBank.MemDetailPiutang['keterangan']:='PELUNASAN PIUTANG ';
                  FDataPenerimaanBank.MemDetailPiutang.post;
                end;
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

procedure TFDaftarTagihan.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFDaftarTagihan.BSaveClick(Sender: TObject);
begin
  if vcall='dpp' then
  begin
    ProsesDPP;
  end;
  if vcall='terima_bank' then
  begin
    ProsesTerimaBank;
  end;
  if vcall='rencana_lunas_piutang' then
  begin
    ProsesRencanaLunasPiutang;
  end;
end;

procedure TFDaftarTagihan.DBGridEh1DblClick(Sender: TObject);
begin
if vcall = 'edit_terima_bank' then
begin
  if FDataPenerimaanBank.MemDetailPiutang.Locate('no_faktur', MemDetailPiutang['no_faktur'], []) then
  begin
    MessageDlg('Nomor Faktur ' + MemDetailPiutang['no_faktur'] + ' sudah masuk dalam daftar penerimaan!',
               mtInformation, [mbOK], 0);
    Exit;
  end;
  FDataPenerimaanBank.MemDetailPiutang.Edit;
  try
    FDataPenerimaanBank.MemDetailPiutang['tgl_faktur']       := MemDetailPiutang['tgl_faktur'];
    FDataPenerimaanBank.MemDetailPiutang['no_faktur']        := MemDetailPiutang['no_faktur'];
    FDataPenerimaanBank.MemDetailPiutang['no_tagihan']       := MemDetailPiutang['no_tagihan'];
    FDataPenerimaanBank.MemDetailPiutang['jum_piutang']      := MemDetailPiutang['jum_piutang'];
    FDataPenerimaanBank.MemDetailPiutang['jum_piutang_real'] := MemDetailPiutang['jum_piutang'];
    FDataPenerimaanBank.MemDetailPiutang['keterangan']       := 'PELUNASAN PIUTANG ';
    FDataPenerimaanBank.MemDetailPiutang.Post;
    Close;
  except
    on E: Exception do
    begin
      FDataPenerimaanBank.MemDetailPiutang.Cancel;
      MessageDlg('Kesalahan Simpan: ' + E.Message, mtError, [mbOK], 0);
    end;
  end;
end;
end;

procedure TFDaftarTagihan.edKabupatenButtonClick(Sender: TObject);
begin
  if edKaresidenan.Text<>'' then
  begin
    FMasterData.Caption:='Master Data Kabupaten';
    FMasterData.vcall:='daftartagihan_kabupaten';
    FMasterData.update_grid('code','name','description','t_region_regency','WHERE	deleted_at IS NULL AND code_karesidenan='+QuotedStr(strKdKaresidenan)+'');
    FMasterData.ShowModal;
  end else
  begin
    MessageDlg('Karesidenan wajib di isi..!!',mtInformation,[mbRetry],0);
  end;
end;

procedure TFDaftarTagihan.edKabupatenChange(Sender: TObject);
begin
  if edKabupaten.Text='' then
  begin
    edKecamatan.Text:='';
    strKdKecamatan:='';
    strKdKabupaten:='';
  end;
end;

procedure TFDaftarTagihan.edKaresidenanButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Karesidenan';
  FMasterData.vcall:='daftartagihan_kares';
  FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
  FMasterData.ShowModal;
end;

procedure TFDaftarTagihan.edKaresidenanChange(Sender: TObject);
begin
  if edKaresidenan.Text='' then
  begin
    edKabupaten.Text:='';
    strKdKabupaten:='';
    edKecamatan.Text:='';
    strKdKecamatan:='';
    strKdKaresidenan:='';
  end;
end;

procedure TFDaftarTagihan.edKecamatanButtonClick(Sender: TObject);
begin
  if edKabupaten.Text='' then
  begin
    MessageDlg('Kabupaten wajib diisi ..!!',mtInformation,[mbRetry],0);
  end else begin
    FMasterData.Caption:='Master Data Kecamatan';
    FMasterData.vcall:='daftartagihan_kecamatan';
    FMasterData.update_grid('code','name','description','t_region_subdistrict','WHERE	deleted_at IS NULL and code_regency='+QuotedStr(strKdKabupaten)+' ');
    FMasterData.ShowModal;
  end;
end;

procedure TFDaftarTagihan.FormShow(Sender: TObject);
begin
  if vcall='edit_terima_bank' then
  begin
    DBGridEh1.Columns[8].Visible:=False;
    Panel2.Visible:=False;
  end else begin
    DBGridEh1.Columns[8].Visible:=True;
    Panel2.Visible:=True;
  end;

  if vcall='dpp' then RzPanel1.Visible:=True else RzPanel1.Visible:=False;


end;

procedure TFDaftarTagihan.RefreshGrid;
var
URUTAN_KE : Integer;
strWhereKaresidenan,strWhereKabupaten,strWhereKecamatan:String;
begin
  if vcall='dpp' then
  begin
    strWhereKaresidenan:='';
    strWhereKabupaten:='';
    strWhereKecamatan:='';
    if edKaresidenan.Text<>'' then
    begin
      strWhereKaresidenan:=' AND code_karesidenan='+QuotedStr(strKdKaresidenan)+' ';
    end;
    if edKabupaten.Text<>'' then
    begin
      strWhereKabupaten:=' AND code_kabupaten='+QuotedStr(strKdKabupaten)+' ';
    end;
    if edKecamatan.Text<>'' then
    begin
      strWhereKecamatan:=' AND code_kecamatan='+QuotedStr(strKdKecamatan)+' ';
    end;
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='select code_cust,name_cust,customer_name_pkp,trans_no no_trans,trans_date date_trans,date_tempo,no_inv_tax,sisa_piutang total_receivables,code_kabupaten,kabupaten,code_kecamatan,kecamatan '+
                'from get_piutang_invoice('+QuotedStr(formatdatetime('yyyy-mm-dd',FDataPenagihanPiutang.dtTagih.Date))+') '+
                'where '+
//                code_cust='+QuotedStr(kd_outlet)+' and
//                'code_kabupaten='+QuotedStr(FDataPenagihanPiutang.strKabupatenID)+' AND
                'no_inv_tax is not null and no_inv_tax<>'''' AND sisa_piutang>0 '+strWhereKaresidenan+strWhereKabupaten+strWhereKecamatan+
                'order by (kabupaten='+QuotedStr(FDataPenagihanPiutang.edKabupaten.Text)+') ASC,kabupaten DESC, name_cust DESC, trans_no ASC  ';
//      sql.add(' SELECT * from ('+
//              ' SELECT * '+
//              ' FROM "public"."vget_piutang") a '+
//              ' WHERE "code_cust"='+QuotedStr(kd_outlet)+' and no_inv_tax is not null and no_inv_tax<>'''' '+
//              ' ORDER BY date_tempo desc');
      open;
    end;
  end;

  if (vcall='terima_bank') OR (vcall='edit_terima_bank') then
  begin
    strWhereKaresidenan:='';
    strWhereKabupaten:='';
    strWhereKecamatan:='';
    if edKaresidenan.Text<>'' then
    begin
      strWhereKaresidenan:=' AND code_karesidenan='+QuotedStr(strKdKaresidenan)+' ';
    end;
    if edKabupaten.Text<>'' then
    begin
      strWhereKabupaten:=' AND code_kabupaten='+QuotedStr(strKdKabupaten)+' ';
    end;
    if edKecamatan.Text<>'' then
    begin
      strWhereKecamatan:=' AND code_kecamatan='+QuotedStr(strKdKecamatan)+' ';
    end;
    with Dm.Qtemp do
    begin
      close;
      sql.clear;
//      sql.add(' SELECT * from ('+
//              ' SELECT * '+
//              ' FROM "public"."vget_piutang") a '+
//              ' WHERE "code_cust"='+QuotedStr(kd_outlet)+' '+
//              ' ORDER BY date_tempo desc');
      sql.Text:='select  code_cust,name_cust,customer_name_pkp,trans_date date_trans,trans_no no_trans,no_inv_tax,sisa_piutang total_receivables,date_tempo,kabupaten,kecamatan from get_piutang_invoice(NOW()::DATE) '+
                'where code_cust='+QuotedStr(kd_outlet)+' AND sisa_piutang>0'+strWhereKaresidenan+strWhereKabupaten+strWhereKecamatan+' ORDER BY date_tempo desc';
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
              ' FROM "public"."vget_piutang") a '+
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
       if (vcall='dpp') OR (vcall='terima_bank') OR (vcall='edit_terima_bank') then
       begin
        FDaftarTagihan.MemDetailPiutang['code_cust']:=Dm.Qtemp.FieldByName('code_cust').AsString;
        FDaftarTagihan.MemDetailPiutang['name_cust']:=Dm.Qtemp.FieldByName('name_cust').AsString;
        FDaftarTagihan.MemDetailPiutang['customer_name_pkp']:=Dm.Qtemp.FieldByName('customer_name_pkp').AsString;
        FDaftarTagihan.MemDetailPiutang['kabupaten']:=Dm.Qtemp.FieldByName('kabupaten').AsString;
        FDaftarTagihan.MemDetailPiutang['kecamatan']:=Dm.Qtemp.FieldByName('kecamatan').AsString;
       end;

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


procedure TFDaftarTagihan.RzButton1Click(Sender: TObject);
begin
  RefreshGrid;
end;

end.
