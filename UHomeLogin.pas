unit UHomeLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel, Vcl.Mask, RzEdit, ShellAPI,
  RzCmboBx, RzLabel, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, ABSMain,
  Vcl.DBCtrls, Data.DB, frxClass;

type
  TFHomeLogin = class(TForm)
    pnApproval: TRzPanel;
    ImgApproval: TImage;
    EdPass: TEdit;
    Eduser: TEdit;
    ImgTransaksi: TImage;
    Image1: TImage;
    CbSBU: TcxComboBox;
    procedure ImgTransaksiClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure EdPassKeyPress(Sender: TObject; var Key: Char);
    procedure CbSBUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbSBUKeyPress(Sender: TObject; var Key: Char);
    procedure EduserKeyPress(Sender: TObject; var Key: Char);
    procedure ImgTransaksiMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgTransaksiMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgTransaksiDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    vKodePRSH, vNamaPRSH, vAlamatPRSH, vTelpPRSH, vKotaPRSH, vPosition : string;
    vStatOffice : Integer;
    { Public declarations }
   // nm,loksbu,kdsbu,id_dept:string;
    procedure Clear;
  end;

var
  FHomeLogin: TFHomeLogin;

implementation

{$R *.dfm}

uses UMainMenu, UDataModule, UMy_Function;
    //FMainMenu.show;
    //FHomeLogin.Close;

procedure TFHomeLogin.CbSBUClick(Sender: TObject);
begin
  with dm.abstable1 do
  begin
  Filtered:=false;
  Filter:='Nama_Sbu='+QuotedStr(CbSBU.Text);
  FilterOptions:=[];
  Filtered:=true;
  end;
  TRY
    DM.Koneksi.Connected:=False;
    DM.Koneksi.Server:=dm.abstable1Ip_db.AsString;
    DM.Koneksi.ProviderName:='PostgreSQL';
    DM.Koneksi.Database:=dm.abstable1Db_Name.AsString;
    DM.Koneksi.Password:=dm.abstable1Password.AsString;
    DM.Koneksi.Username:=dm.abstable1User_db.AsString;
    Dm.Koneksi.Port:=dm.abstable1Port_db.AsInteger;
    DM.Koneksi.Connected:=True;
    //Showmessage(dm.ABSTable1.FieldByName('Sbu_Code').AsString);
  EXCEPT
    showmessage('Tidak terkoneksi dengan server !');
    exit;
  END;
end;


procedure TFHomeLogin.Clear;
begin
  Eduser.Text:='';
  EdPass.Text:='';

  DM.ABSDatabase1.DatabaseFileName:=cLocation+'Conectdb'+ '.abs';
  DM.ABSTable1.Open;
  CbSBU.Properties.Items.Clear;
  while not DM.ABSTable1.Eof do
  begin
    CbSBU.Properties.Items.Add(DM.ABSTable1.FieldByName('nama_sbu').AsString);
    DM.ABSTable1.Next;
  end;

//  DM.ABSDatabase1.Close;

//  DM.ABSDatabase1.DatabaseFileName:=cLocation+'Conectdb'+ '.abs';
////  DM.ABSDatabase1.Open;
////  DM.ABSTable1.Close;
//  DM.ABSTable1.Open;
////  DM.ABSTable1.Filtered:=False;
//  FHomeLogin.CbSBU.Properties.Items.Clear;
//  DM.ABSTable1.First;
//  while not DM.ABSTable1.Eof do
//  begin
//    FHomeLogin.CbSBU.Properties.Items.Add(DM.ABSTable1.FieldByName('nama_sbu').AsString);
//    DM.ABSTable1.Next;
//  end;
end;


procedure TFHomeLogin.CbSBUKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     Eduser.SetFocus;
  end;
end;

procedure TFHomeLogin.EdPassKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     ImgTransaksiClick(sender);
  end;
end;

procedure TFHomeLogin.EduserKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     EdPass.SetFocus;
  end;
end;

procedure TFHomeLogin.FormShow(Sender: TObject);
begin
  Clear;
end;

procedure TFHomeLogin.Image1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFHomeLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    cLocation := ExtractFilePath(Application.ExeName);
//   Image1.Picture.LoadFromFile('BCancelo.png');
   Image1.Picture.LoadFromFile(cLocation +'Image/BCancelo.png');
end;

procedure TFHomeLogin.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  cLocation := ExtractFilePath(Application.ExeName);
//   image1.Picture.LoadFromFile('BCancel.png');
   Image1.Picture.LoadFromFile(cLocation +'Image/BCancel.png');
end;
procedure TFHomeLogin.ImgTransaksiClick(Sender: TObject);
begin
   //Cek User
   if CbSBU.Text='' then
   begin
     MessageDlg('Silakan Pilih Koneksi..!!',mtInformation,[mbRetry],0);
     CbSBU.SetFocus;
     exit;
   end
   else if Eduser.Text='' then
   begin
     MessageDlg('Username Wajib Diisi..!!',mtInformation,[mbRetry],0);
     Eduser.SetFocus;
     exit;
   end
   else if (EdPass.Text='') and (Length(EdPass.Text)=0) then
   begin
     MessageDlg('Password Wajib Diisi..!!',mtInformation,[mbRetry],0);
     EdPass.SetFocus;
     exit;
   end
   else if (EdPass.Text<>'') and (Eduser.Text<>'') then
   begin
   //cek User
    with dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' SELECT "user_id", "code", "user_name", "full_name", "branch_id", '+
             ' "password", "role_id", "is_active", "last_login", "last_logout", '+
             ' "signature", aa."position", "status", aa."created_at", aa."updated_at", '+
             ' aa."deleted_at", "job_level_id", aa."created_by", aa."updated_by", '+
             ' aa."deleted_by", aa."dept_code", aa."position_code", "ttd" '+
             ' FROM "public"."t_user" aa '+
             ' INNER JOIN t_dept bb on aa.dept_code=bb.dept_code and bb.deleted_at IS NULL '+
             ' INNER JOIN t_position cc on aa.position_code=cc.position_code and cc.deleted_at IS NULL '+
             ' where "user_name"='+QuotedStr(Eduser.Text)+' and aa.deleted_at IS NULL ');
     open;
    end;
    if dm.Qtemp.RecordCount=0 then
    begin
      ShowMessage('User Anda Tidak Terdaftar..!!!');
      Exit;
    end;
    with dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' SELECT "user_id", "code", "user_name", "full_name", "branch_id", '+
             ' "password", "role_id", "is_active", "last_login", "last_logout", '+
             ' "signature", aa."position", "status", aa."created_at", aa."updated_at", '+
             ' aa."deleted_at", "job_level_id", aa."created_by", aa."updated_by", '+
             ' aa."deleted_by", aa."dept_code", aa."position_code", "ttd" '+
             ' FROM "public"."t_user" aa '+
             ' INNER JOIN t_dept bb on aa.dept_code=bb.dept_code and bb.deleted_at IS NULL '+
             ' INNER JOIN t_position cc on aa.position_code=cc.position_code and cc.deleted_at IS NULL '+
             ' where "user_name"='+QuotedStr(Eduser.Text)+' '+
             ' and "password"='+QuotedStr(EdPass.Text)+'  and aa.deleted_at IS NULL  ');
     open;
    end;
    if dm.Qtemp.RecordCount=0 then
    begin
      ShowMessage('User Pasword Anda Tidak Terdaftar..!!!');
      Exit;
    end;
    //status_akses:=dm.Qtemp['access_status'];
    NmFull:=dm.Qtemp.FieldByName('full_name').AsString;

   //Buat Variable Perusahaan
//    with dm.Qtemp do
//    begin
//      close;
//      sql.clear;
//      sql.add(' SELECT "company_code", "company_name", "address", "telp", "email", '+
//             ' "npwp", "city", "address2", "type_of_business", "latitude", "longitude", '+
//             ' "tax_status", "currency" FROM "t_company" ');
//      open;
//    end;
//    if dm.Qtemp.RecordCount<>0 then
//    begin
//      with FHomeLogin do
//      begin
//        vKodePRSH:=dm.Qtemp.FieldByName('company_code').AsString;
//        vNamaPRSH:=dm.Qtemp.FieldByName('company_name').AsString;
//        vAlamatPRSH:=dm.Qtemp.FieldByName('address').AsString;
//        vTelpPRSH:=dm.Qtemp.FieldByName('telp').AsString;
//        vKotaPRSH:=dm.Qtemp.FieldByName('city').AsString;
//        FMainMenu.StatusPerusahaan.Caption:=dm.Qtemp.FieldByName('company_name').AsString;
//      end;
//    end;
    //Rudi
    with dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' SELECT "company_code", "company_name", "address", "telp", "email", '+
             ' "npwp", "city", "address2", "type_of_business", "latitude", "longitude", '+
             ' "tax_status", "currency", stat_office FROM "t_company" ');
     open;
    end;
    if dm.Qtemp.RecordCount<>0 then
    begin
      if dm.Qtemp.RecordCount=1 then
      begin
        with FHomeLogin do
        begin
          vKodePRSH:=dm.Qtemp.FieldByName('company_code').AsString;
          vNamaPRSH:=dm.Qtemp.FieldByName('company_name').AsString;
          vAlamatPRSH:=dm.Qtemp.FieldByName('address').AsString;
          vTelpPRSH:=dm.Qtemp.FieldByName('telp').AsString;
          vKotaPRSH:=dm.Qtemp.FieldByName('city').AsString;
          vStatOffice:=dm.Qtemp.FieldByName('stat_office').AsInteger;
          FMainMenu.StatusPerusahaan.Caption:=dm.Qtemp.FieldByName('company_name').AsString;
        end;
      end;
      if dm.Qtemp.RecordCount>1 then
      begin
        with dm.Qtemp1 do
        begin
         close;
         sql.clear;
         sql.add(' SELECT "company_code", "company_name", "address", "telp", "email", '+
                 ' "npwp", "city", "address2", "type_of_business", "latitude", "longitude", '+
                 ' "tax_status", "currency", stat_office FROM "t_company" where stat_office=0 limit 1 ');
         open;
        end;
        with FHomeLogin do
        begin
          vKodePRSH:=dm.Qtemp1.FieldByName('company_code').AsString;
          vNamaPRSH:=dm.Qtemp1.FieldByName('company_name').AsString;
          vAlamatPRSH:=dm.Qtemp1.FieldByName('address').AsString;
          vTelpPRSH:=dm.Qtemp1.FieldByName('telp').AsString;
          vKotaPRSH:=dm.Qtemp1.FieldByName('city').AsString;
          vStatOffice:=dm.Qtemp1.FieldByName('stat_office').AsInteger;
          FMainMenu.StatusPerusahaan.Caption:=dm.Qtemp1.FieldByName('company_name').AsString;
        end;
      end;
    end;
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='CALL "InsertSPLogLogin" ('+QuotedStr(Eduser.Text)+','+QuotedStr(GetLocalIP)+',True,False,''2.0'');';
      ExecSQL;
    end;
    Nm:=Eduser.Text;
  end;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='SELECT * FROM app_versions ORDER BY release_date DESC LIMIT 1';
    open;
  end;
  if (dm.Qtemp.FieldValues['version_number']<>FMainMenu.RzVersionInfo1.ProductVersion) AND (dm.Qtemp.FieldValues['status_must_change']=0) then
  begin
//    ShowMessage('Aplikasi tidak update');
    MessageDlg('Aplikasi harus diperbaharui..!!', mtWarning, [mbOK], 0);
    if MessageDlg('Apakah anda mau update?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      FMainMenu.UpdateVersi;
    end;
  end else if (dm.Qtemp.FieldValues['version_number']<>FMainMenu.RzVersionInfo1.ProductVersion) AND (dm.Qtemp.FieldValues['status_must_change']=1) then
  begin
    MessageDlg('Aplikasi harus diperbaharui..!!', mtWarning, [mbOK], 0);
    FMainMenu.UpdateVersi;
  end;
//  Application.CreateForm(TFMainMenu, FMainMenu);
//  CbSBU.Clear;
  Self.Hide;
  FMainMenu.Show;
  Application.Run;
end;

procedure TFHomeLogin.ImgTransaksiDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
//   ImgTransaksi.Picture.LoadFromFile('BOrange.png');
end;

procedure TFHomeLogin.ImgTransaksiMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  cLocation := ExtractFilePath(Application.ExeName);
  ImgTransaksi.Picture.LoadFromFile(cLocation +'Image/BOrange.png');
//   ImgTransaksi.Picture.LoadFromFile('BOrange.png');
end;

procedure TFHomeLogin.ImgTransaksiMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  cLocation := ExtractFilePath(Application.ExeName);
  ImgTransaksi.Picture.LoadFromFile(cLocation +'Image/login.png');
//   ImgTransaksi.Picture.LoadFromFile('login.png');
end;

//ShowMessage('A');
//ShellExecute(0, 'open', PChar('https://helpdesk.hastaprimasolusi.com/'), nil, nil, SW_SHOWNORMAL);

initialization
  RegisterClass(TFHomeLogin);

end.
