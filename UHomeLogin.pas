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
    { Public declarations }
   // nm,loksbu,kdsbu,id_dept:string;
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
  // Misalnya menggunakan query untuk mendapatkan item di TcxDBComboBox
  DM.ABSDatabase1.DatabaseFileName:=cLocation+'Conectdb'+ '.abs';
  DM.ABSTable1.Open;
  CbSBU.Clear;
  while not DM.ABSTable1.Eof do
  begin
    CbSBU.Properties.Items.Add(DM.ABSTable1.FieldByName('nama_sbu').AsString);
    DM.ABSTable1.Next;
  end;
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
             ' "signature", "position", "status", "created_at", "updated_at", '+
             ' "deleted_at", "job_level_id", "created_by", "updated_by", '+
             ' "deleted_by", "dept_code", "position_code", "ttd" '+
             ' FROM "public"."t_user" '+
             ' where "user_name"='+QuotedStr(Eduser.Text)+' ');
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
             ' "signature", "position", "status", "created_at", "updated_at", '+
             ' "deleted_at", "job_level_id", "created_by", "updated_by", '+
             ' "deleted_by", "dept_code", "position_code", "ttd","access_status" '+
             ' FROM "public"."t_user" '+
             ' where "user_name"='+QuotedStr(Eduser.Text)+' '+
             ' and "password"='+QuotedStr(EdPass.Text)+'  ');
     open;
    end;
    status_akses:=dm.Qtemp['access_status'];
    if dm.Qtemp.RecordCount=0 then
    begin
      ShowMessage('User Pasword Anda Tidak Terdaftar..!!!');
      Exit;
    end;

   //Buat Variable Perusahaan
   with dm.Qtemp do
    begin
     close;
     sql.clear;
     sql.add(' SELECT "company_code", "company_name", "address", "telp", "email", '+
             ' "npwp", "city", "address2", "type_of_business", "latitude", "longitude", '+
             ' "tax_status", "currency" FROM "t_company" ');
     open;
    end;
    if dm.Qtemp.RecordCount<>0 then
    begin
      with FHomeLogin do
      begin
        vKodePRSH:=dm.Qtemp.FieldByName('company_code').AsString;
        vNamaPRSH:=dm.Qtemp.FieldByName('company_name').AsString;
        vAlamatPRSH:=dm.Qtemp.FieldByName('address').AsString;
        vTelpPRSH:=dm.Qtemp.FieldByName('telp').AsString;
        vKotaPRSH:=dm.Qtemp.FieldByName('city').AsString;
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
   FHomeLogin.Close;
   FMainMenu.show;//modal;
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
