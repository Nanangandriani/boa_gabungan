unit UHomeLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RzPanel, Vcl.Mask, RzEdit, ShellAPI,
  RzCmboBx, RzLabel, Vcl.ComCtrls;

type
  TFHomeLogin = class(TForm)
    pnApproval: TRzPanel;
    ImgApproval: TImage;
    EdPass: TEdit;
    Eduser: TEdit;
    ImgTransaksi: TImage;
    Image1: TImage;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    procedure RzPanel1Paint(Sender: TObject);
    procedure ImgTransaksiClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure EdPassKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vKodePRSH, vNamaPRSH, vAlamatPRSH, vTelpPRSH, vKotaPRSH : string;
    { Public declarations }
   // nm,loksbu,kdsbu,id_dept:string;
  end;

var
  FHomeLogin: TFHomeLogin;

implementation

{$R *.dfm}

uses UMainMenu, UDataModule;
    //FMainMenu.show;
    //FHomeLogin.Close;

procedure TFHomeLogin.EdPassKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     ImgTransaksiClick(sender);
  end;
end;

procedure TFHomeLogin.Image1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFHomeLogin.ImgTransaksiClick(Sender: TObject);
begin
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
      vKodePRSH:=dm.Qtemp.FieldByName('company_code').AsString;
      vNamaPRSH:=dm.Qtemp.FieldByName('company_name').AsString;
      vAlamatPRSH:=dm.Qtemp.FieldByName('address').AsString;
      vTelpPRSH:=dm.Qtemp.FieldByName('telp').AsString;
      vKotaPRSH:=dm.Qtemp.FieldByName('city').AsString;
    end;
   Nm:=Eduser.Text;
   FMainMenu.showmodal;
//   Nm:=Eduser.Text;
   FHomeLogin.Close;
end;

procedure TFHomeLogin.RzPanel1Paint(Sender: TObject);
begin

end;
//ShowMessage('A');
//ShellExecute(0, 'open', PChar('https://helpdesk.hastaprimasolusi.com/'), nil, nil, SW_SHOWNORMAL);

initialization
  RegisterClass(TFHomeLogin);

end.
