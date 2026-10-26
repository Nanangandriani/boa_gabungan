unit UKoreksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzLabel, Vcl.Mask, RzEdit,
  RzButton, Vcl.ExtCtrls, RzBtnEdt, RzCmboBx, Vcl.ComCtrls, RzDTP;

type
  TFKoreksi = class(TForm)
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    RzLabel1: TRzLabel;
    cbMenu: TRzComboBox;
    RzLabel4: TRzLabel;
    memKet: TRzMemo;
    edKode: TRzEdit;
    RzLabel5: TRzLabel;
    RzLabel2: TRzLabel;
    dtTanggal: TRzDateTimePicker;
    RzLabel3: TRzLabel;
    BtnReject: TRzBitBtn;
    BtnApprove: TRzBitBtn;
    edNoTransaksi: TRzButtonEdit;
    RzLabel6: TRzLabel;
    MemKetApprove: TRzMemo;
    edNoNota: TRzEdit;
    edNamaKolektor: TRzEdit;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    dtTglDpp: TRzEdit;
    edNamaPelanggan: TRzEdit;
    RzLabel10: TRzLabel;
    procedure BBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edNoTransaksiButtonClick(Sender: TObject);
    procedure cbMenuChange(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BtnRejectClick(Sender: TObject);
    procedure BtnApproveClick(Sender: TObject);
  private
    { Private declarations }
    procedure Autonumber;
    procedure Save;
    procedure Update;
    procedure Reject;
    procedure Approve;
  public
    { Public declarations }
    kd_kares,tbl,field_no_trans,date_trans,strtgl, strbulan, strtahun,vcall,vcall2,vnotransaksi,kode_koreksi :String;
    Status: Integer;
    AksiTipe: String;
    procedure Clear;
    procedure Detail;
  end;

var
  FKoreksi: TFKoreksi;

implementation

{$R *.dfm}

uses UDataModule, UMy_Function, UListKoreksi, UHomeLogin, UBrowseTransaksi,
  UMainMenu, UListDeliveryOrder;

procedure TFKoreksi.Approve;
begin
  with dm.qtemp2 do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select table_trans,field_no_trans from t_menu_sub where UPPER(submenu)='+QuotedStr(cbMenu.Text);
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  tbl:= dm.QTemp2.FieldValues['table_trans'];
  field_no_trans:= dm.QTemp2.FieldValues['field_no_trans'];
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    Sql.Text := 'Update t_correction_trans set status=1,approved_rejected_by='+QuotedStr(Nm)+', '+
                'approved_rejected_at=NOW(),note_approved_rejected='+QuotedStr(MemKetApprove.Text)+' Where '+
                'code='+QuotedStr(edKode.Text);
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;

  if AksiTipe='DELETE' then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      Sql.Text := 'Update '+tbl+' set status_correction=0,deleted_at=NOW(),'+
                  'deleted_by=(SELECT created_by from t_correction_trans where code='+QuotedStr(edKode.Text)+'), '+
                  ''+ field_no_trans + ' = CONCAT(' + field_no_trans + ', ''-DEL'', ' +
                  '(SELECT COUNT(*) + 1 FROM (SELECT * FROM ' + tbl + ') AS temp_tbl ' +
                  'WHERE ' + field_no_trans + ' LIKE CONCAT(' + QuotedStr(edNoTransaksi.Text) + ', ''-DEL%'') ' +
                  'AND deleted_at IS NOT NULL) ) ' +
                  'Where '+field_no_trans+'='+QuotedStr(edNoTransaksi.Text);
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;

    if FKoreksi.vcall=SelectRow('select Upper(submenu) menu from t_menu_sub '+
                      'where link='+QuotedStr('FListDeliveryOrder')) then
    begin
      FListDeliveryOrder.DeleteDOChakra(edNoTransaksi.Text);
    end;

  end else begin
    with dm.Qtemp do
    begin
      close;
      sql.clear;
      Sql.Text := 'Update '+tbl+' set status_correction=2 '+
                  'Where '+field_no_trans+'='+QuotedStr(edNoTransaksi.Text);
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;
  end;
  MessageDlg('Data Berhasil di Setujui..!!',mtInformation,[MBOK],0);
  FMainMenu.TampilTabForm2;
  Close;
end;

procedure TFKoreksi.Reject;
begin
  with dm.qtemp2 do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select table_trans,field_no_trans from t_menu_sub where UPPER(submenu)='+QuotedStr(cbMenu.Text);
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  tbl:= dm.QTemp2.FieldValues['table_trans'];
  field_no_trans:= dm.QTemp2.FieldValues['field_no_trans'];
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    Sql.Text := 'Update t_correction_trans set status=99,approved_rejected_by='+QuotedStr(Nm)+', '+
                'approved_rejected_at=NOW(),note_approved_rejected='+QuotedStr(MemKetApprove.Text)+' Where '+
                'code='+QuotedStr(edKode.Text);
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.clear;
    Sql.Text := 'Update '+tbl+' set status_correction=0 '+
                'Where '+field_no_trans+'='+QuotedStr(edNoTransaksi.Text);
    try
      ExecSQL;
    except
      Connection.Close;
      Connection.Open;
      ExecSQL;
    end;
  end;
  MessageDlg('Data Berhasil di Tolak ..!!',mtInformation,[MBOK],0);
  FMainMenu.TampilTabForm2;
  Close;
end;

procedure TFKoreksi.Detail;
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.*,b.table_trans,b.field_no_trans from vcorrection_trans a '+
              'LEFT JOIN t_menu_sub b on b.submenu_code=a.menu_trans '+
              'where a.code='+QuotedStr(kode_koreksi);
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  edKode.Text:=dm.Qtemp.FieldValues['code'];
  vnotransaksi:=dm.Qtemp.FieldValues['no_transaksi'];
  vcall:=UpperCase(dm.Qtemp.FieldValues['submenu']);
  dtTanggal.Date:=dm.Qtemp.FieldValues['created_at'];
  memKet.Text:=dm.Qtemp.FieldValues['note'];
  tbl:=dm.Qtemp.FieldValues['table_trans'];
  field_no_trans:=dm.Qtemp.FieldValues['field_no_trans'];

  if vcall=vcall2 then
  begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM get_dpp_temp() WHERE id='+QuotedStr(vnotransaksi);
      try
        Open;
      except
        Connection.Close;
        Connection.Open;
        Open;
      end;
    end;
    edNoNota.Text:=dm.Qtemp.FieldValues['no_invoice'];
    edNamaKolektor.Text:=dm.Qtemp.FieldValues['name_collector'];
    dtTglDpp.Text:=FormatDateTime('dd/mm/yyyy',dm.Qtemp.FieldValues['date_dpp']) ;
    edNamaPelanggan.Text:=dm.Qtemp.FieldValues['customer_name'];
  end;

end;

procedure TFKoreksi.Save;
var Stradditional_code,strKodeSubMenu,strIsDelete: String;
begin
  with dm.Qtemp2 do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select status from t_correction_trans where no_transaksi ='+QuotedStr(edNoTransaksi.Text)+' and '+
              'deleted_at is NULL ORDER BY created_at DESC LIMIT 1;';
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;

  if dm.Qtemp2.FieldByName('status').Value = '0' then
  begin
    MessageDlg('No Transaksi '+edNoTransaksi.Text+' Sedang dalam pengajuan..!!',mtInformation,[mbRetry],0);
  end else begin
    if (kd_kares='') OR (kd_kares='0') then
      Stradditional_code:='NULL'
    else Stradditional_code:=QuotedStr(kd_kares);

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select submenu_code from t_menu_sub where upper(submenu)='+QuotedStr(vcall);
      try
        Open;
      except
        Connection.Close;
        Connection.Open;
        Open;
      end;
    end;
    strKodeSubMenu:=dm.Qtemp.FieldValues['submenu_code'];

    if AksiTipe='DELETE' then strIsDelete:='true' else strIsDelete:='false';

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      sql.Text:='Insert into t_correction_trans(code,created_at,created_by,'+
                'menu_trans,note,no_transaksi,additional_code,order_no,trans_day,trans_month,trans_year,status,is_delete) '+
              ' VALUES (  '+
              ' '+QuotedStr(edKode.Text)+', '+
              'NOW(), '+
              ' '+QuotedStr(Nm)+', '+
              ' '+QuotedStr(strKodeSubMenu)+', '+
              ' '+QuotedStr(memKet.Text)+', '+
              ' '+QuotedStr(edNoTransaksi.Text)+', '+
              ' '+Stradditional_code+', '+
              ' '+QuotedStr(order_no)+', '+
              ' '+QuotedStr(strtgl)+', '+
              ' '+QuotedStr(strbulan)+', '+
              ' '+QuotedStr(strtahun)+',0,'+QuotedStr(strIsDelete)+');';
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;

    with dm.Qtemp do
    begin
      close;
      sql.clear;
      Sql.Text := 'Update '+tbl+' set status_correction=1 '+
                  'Where '+field_no_trans+'='+QuotedStr(edNoTransaksi.Text);
      try
        ExecSQL;
      except
        Connection.Close;
        Connection.Open;
        ExecSQL;
      end;
    end;

    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    AksiTipe:='';
    Clear;
    Close;
  end;
end;

procedure TFKoreksi.Update;
begin

end;

procedure TFKoreksi.Autonumber;
begin
  idmenu:=SelectRow('select submenu_code from t_menu_sub where link='+QuotedStr(FListKoreksi.Name)+'');
  strday2:=dtTanggal.Date;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select a.id,b.additional_status from t_numb_type a inner join t_numb b on a.id=b.reset_type where numb_type='+QuotedStr(idmenu);
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  if dm.Qtemp['additional_status']='0' then kd_kares:='' else kd_kares:=kd_kares;
  edKode.Text:=getNourut(strday2,'public.t_correction_trans',FKoreksi.kd_kares);
//  edKodeOrder.Text:=getNourut(strday2,'public.t_sales_order',kd_kares);
end;

procedure TFKoreksi.Clear;
begin
  edKode.Text:='';
  cbMenu.Text:='';
  memKet.Text:='';
  MemKetApprove.Text:='';
  edNoTransaksi.Text:='';
  dtTanggal.Date:=NOW();

  cbMenu.Clear;
  with dm.Qtemp do
  begin
    Close;
    Sql.Clear;
    Sql.Text:='select b.menu,UPPER(a.submenu) submenu from t_menu_sub a '+
              'inner join t_menu b on a.menu_code=b.menu_code '+
              'inner join t_menu_master c on b.master_code=c.master_code '+
              'where upper(c.master_name)=''TRANSAKSI'' '+
              'GROUP BY b.menu,a.submenu '+
              'order by b.menu,a.submenu ASC';
    try
      Open;
    except
      Connection.Close;
      Connection.Open;
      Open;
    end;
  end;
  while not DM.Qtemp.Eof do
  begin
    cbMenu.Items.Add(DM.Qtemp.FieldByName('submenu').AsString);
    DM.Qtemp.Next;
  end;
end;

procedure TFKoreksi.edNoTransaksiButtonClick(Sender: TObject);
begin
//  if cbMenu.Text='' then
//  begin
//    MessageDlg('Menu Transaksi wajib dipilih..!!',mtInformation,[mbRetry],0);
//  end
//  else
//  begin
//    with FBrowseTransaksi.QTransaksi do
//    begin
//      Close;
//      Sql.Clear;
//      Sql.Text:='select '+field_no_trans+','+date_trans+' from '+tbl+' WHERE status_koreksi=1 order by '+no_trans+' ASC';
//      Open;
//    end;
//    FBrowseTransaksi.Show;
//  end;
end;

procedure TFKoreksi.FormShow(Sender: TObject);
var
  BaseHeight: Integer;
  BaseTopMemKet, BaseTopRzLabel4, BaseTopMemKetApprove, BaseTopRzLabel6: Integer;
begin

  if AksiTipe='DELETE' then FKoreksi.Caption:='Hapus Transaksi' else FKoreksi.Caption:='Koreksi Transaksi';
  Clear;

  cbMenu.Enabled:=False;
  edNoTransaksi.Enabled:=False;

  vcall2 :=SelectRow('select Upper(submenu) menu from t_menu_sub  '+
                    'where link=''FListApproveDaftarPenagihanPiutang'' ');

  if Status=0 then
  begin

    if vcall<>vcall2 then
    begin
      BaseHeight:=294;
      BtnReject.Visible:=False;
      BtnApprove.Visible:=False;
      BSave.Visible:=True;
//      BBatal.Visible:=True;
      memKet.Enabled:=True;
      MemKetApprove.Visible:=False;
      RzLabel6.Visible:=False;


      BaseTopMemKet:=129;
      BaseTopRzLabel4:=132;
      BaseTopMemKetApprove:=225;
      BaseTopRzLabel6:=228;

      edNoNota.Visible:=False;
      edNamaKolektor.Visible:=False;
      dtTglDpp.Visible:=False;
      edNamaPelanggan.Visible:=False;
      RzLabel7.Visible:=False;
      RzLabel8.Visible:=False;
      RzLabel9.Visible:=False;
      RzLabel10.Visible:=False;

    end else begin
      BaseHeight:=410;
      BtnReject.Visible:=False;
      BtnApprove.Visible:=False;
      BSave.Visible:=True;
//      BBatal.Visible:=True;
      memKet.Enabled:=True;
      MemKetApprove.Visible:=False;
      RzLabel6.Visible:=False;

      BaseTopMemKet:=243;
      BaseTopRzLabel4:=246;
      BaseTopMemKetApprove:=339;
      BaseTopRzLabel6:=342;

      edNoNota.Visible:=True;
      edNamaKolektor.Visible:=True;
      dtTglDpp.Visible:=True;
      edNamaPelanggan.Visible:=True;
      RzLabel7.Visible:=True;
      RzLabel8.Visible:=True;
      RzLabel9.Visible:=True;
      RzLabel10.Visible:=True;
    end;

    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select table_trans,field_no_trans FROM t_menu_sub where UPPER(submenu)='+QuotedStr(vcall);
      try
        Open;
      except
        Connection.Close;
        Connection.Open;
        Open;
      end;
    end;
    tbl:= dm.Qtemp.FieldValues['table_trans'];
    field_no_trans:= dm.Qtemp.FieldValues['field_no_trans'];
    memKet.SetFocus;

  end else if Status=1 then begin

    Detail;
    if vcall<>vcall2 then
    begin
      BaseHeight:=394;
      MemKetApprove.Visible:=True;
      RzLabel6.Visible:=True;
      BtnReject.Visible:=False;
      BtnApprove.Visible:=True;
      BSave.Visible:=False;
//      BBatal.Visible:=False;
      memKet.Enabled:=False;

      BaseTopMemKet:=129;
      BaseTopRzLabel4:=132;
      BaseTopMemKetApprove:=225;
      BaseTopRzLabel6:=228;

      edNoNota.Visible:=False;
      edNamaKolektor.Visible:=False;
      dtTglDpp.Visible:=False;
      edNamaPelanggan.Visible:=False;
      RzLabel7.Visible:=False;
      RzLabel8.Visible:=False;
      RzLabel9.Visible:=False;
      RzLabel10.Visible:=False;

    end else begin
      BaseHeight:=510;
      MemKetApprove.Visible:=True;
      RzLabel6.Visible:=True;
      BtnReject.Visible:=False;
      BtnApprove.Visible:=True;
      BSave.Visible:=False;
//      BBatal.Visible:=False;
      memKet.Enabled:=False;

      BaseTopMemKet:=243;
      BaseTopRzLabel4:=246;
      BaseTopMemKetApprove:=339;
      BaseTopRzLabel6:=342;

      edNoNota.Visible:=True;
      edNamaKolektor.Visible:=True;
      dtTglDpp.Visible:=True;
      edNamaPelanggan.Visible:=True;
      RzLabel7.Visible:=True;
      RzLabel8.Visible:=True;
      RzLabel9.Visible:=True;
      RzLabel10.Visible:=True;
    end;
    MemKetApprove.SetFocus;

  end else if Status=2 then begin

    Detail;
    if vcall<>vcall2 then
    begin
      BaseHeight:=394;
      MemKetApprove.Visible:=True;
      RzLabel6.Visible:=True;
      BtnReject.Visible:=True;
      BtnApprove.Visible:=False;
      BSave.Visible:=False;
//      BBatal.Visible:=False;
      memKet.Enabled:=False;

      BaseTopMemKet:=129;
      BaseTopRzLabel4:=132;
      BaseTopMemKetApprove:=225;
      BaseTopRzLabel6:=228;

      edNoNota.Visible:=False;
      edNamaKolektor.Visible:=False;
      dtTglDpp.Visible:=False;
      edNamaPelanggan.Visible:=False;
      RzLabel7.Visible:=False;
      RzLabel8.Visible:=False;
      RzLabel9.Visible:=False;
      RzLabel10.Visible:=False;

    end else begin
      BaseHeight:=510;
      MemKetApprove.Visible:=True;
      RzLabel6.Visible:=True;
      BtnReject.Visible:=True;
      BtnApprove.Visible:=False;
      BSave.Visible:=False;
//      BBatal.Visible:=False;
      memKet.Enabled:=False;

      BaseTopMemKet:=243;
      BaseTopRzLabel4:=246;
      BaseTopMemKetApprove:=339;
      BaseTopRzLabel6:=342;

      edNoNota.Visible:=True;
      edNamaKolektor.Visible:=True;
      dtTglDpp.Visible:=True;
      edNamaPelanggan.Visible:=True;
      RzLabel7.Visible:=True;
      RzLabel8.Visible:=True;
      RzLabel9.Visible:=True;
      RzLabel10.Visible:=True;
    end;
    MemKetApprove.SetFocus;

  end;
  vcall:=UpperCase(vcall);
  edNoTransaksi.Text:=vnotransaksi;
  cbMenu.Text:=vcall;

  FKoreksi.Height             := MulDiv(BaseHeight, CurrentPPI, 96);
  memKet.Top                  := MulDiv(BaseTopMemKet, CurrentPPI, 96);
  RzLabel4.Top                := MulDiv(BaseTopRzLabel4, CurrentPPI, 96);
  MemKetApprove.Top           := MulDiv(BaseTopMemKetApprove, CurrentPPI, 96);
  RzLabel6.Top                := MulDiv(BaseTopRzLabel6, CurrentPPI, 96);
end;

procedure TFKoreksi.BBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFKoreksi.BSaveClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    DecodeDate(dtTanggal.Date, Year, Month, Day);
    strtgl:=IntToStr(Day);
    strbulan:=inttostr(Month);
    strtahun:=inttostr(Year);
    if cbMenu.Text='' then
    begin
      MessageDlg('Menu Transaksi wajib diisi..!!',mtInformation,[mbRetry],0);
    end
    else if edNoTransaksi.Text='' then
    begin
      MessageDlg('No Transaksi wajib diisi..!!',mtInformation,[mbRetry],0);
    end else if memKet.Text='' then
    begin
      MessageDlg('Keterangan wajib diisi..!!',mtInformation,[mbRetry],0);
    end
    else if Status = 0 then
    begin
      if MessageDlg('Apa Anda Yakin Menyimpan No Transaksi. '+edNoTransaksi.text+' '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Autonumber;
        Save;
        Dm.Koneksi.Commit;
      end;
    end;
//    else if Status = 1 then
//    begin
//      if application.MessageBox('Apa Anda Yakin Memperbarui Data ini ?','confirm',mb_yesno or mb_iconquestion)=id_yes then
//      begin
//        Update;
//        Dm.Koneksi.Commit;
//      end;
//    end;
    Except on E :Exception do
    begin
      begin
        MessageDlg(E.ClassName +' : '+E.Message, MtError,[mbok],0);
        Dm.koneksi.Rollback ;
      end;
    end;
  end;
end;

procedure TFKoreksi.BtnApproveClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    if MemKetApprove.Text='' then
    begin
      MessageDlg('Keterangan wajib diisi..!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      if MessageDlg('Apa anda yakin menyetujui pengajuan ini ...?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Approve;
        Dm.Koneksi.Commit;
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
end;

procedure TFKoreksi.BtnRejectClick(Sender: TObject);
begin
  if not dm.Koneksi.InTransaction then
  dm.Koneksi.StartTransaction;
  try
    if MemKetApprove.Text='' then
    begin
      MessageDlg('Keterangan wajib diisi..!!',mtInformation,[mbRetry],0);
    end
    else
    begin
      if MessageDlg('Apa anda yakin menolak pengajuan ini ...?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
      begin
        Reject;
        Dm.Koneksi.Commit;
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

end;

procedure TFKoreksi.cbMenuChange(Sender: TObject);
begin
//  with dm.qtemp2 do
//  begin
//    Close;
//    Sql.Clear;
//    Sql.Text:='select * from t_menu_trans_correct where menu_trans='+QuotedStr(cbMenu.Text);
//    Open;
//  end;
//  tbl:= dm.QTemp2.FieldByName('table_name').AsString;
//  no_trans:= dm.QTemp2.FieldByName('field_name_no_trans').AsString;
//  date_trans:= dm.QTemp2.FieldByName('field_trans_date').AsString;
end;

end.
