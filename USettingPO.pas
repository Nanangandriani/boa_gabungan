unit USettingPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Vcl.Mask, RzEdit,System.StrUtils;

type
  TFSettingPO = class(TForm)
    RzPanel1: TRzPanel;
    simpan: TRzBitBtn;
    edtBatasPO: TRzNumericEdit;
    chkWajibNPWP: TCheckBox;
    btnClose: TRzBitBtn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure simpanClick(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function GetSetting(Kode: string): string;
    procedure SetSetting(Kode, Nilai: string);
  end;

var
  FSettingPO: TFSettingPO;

implementation

{$R *.dfm}

uses UDataModule;


procedure TFSettingPO.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFSettingPO.CloseClick(Sender: TObject);
begin
  close;
end;

procedure TFSettingPO.FormShow(Sender: TObject);
begin
   edtBatasPO.Text := GetSetting('BATAS_PO_NPWP');

   chkWajibNPWP.Checked :=
    (GetSetting('WAJIB_NPWP') = '1');
end;

function TFSettingPO.GetSetting(Kode: string): string;
begin
  Result := '';
  with dm.Qtemp do
  begin
    Close;
    SQL.Text := 'SELECT "value" FROM t_setting_po WHERE code = :k';
    ParamByName('k').AsString := Kode;
    Open;
    if not IsEmpty then
      Result := FieldByName('value').AsString;
  end;
end;


procedure TFSettingPO.simpanClick(Sender: TObject);
begin
     SetSetting('BATAS_PO_NPWP', edtBatasPO.Text);
     SetSetting('WAJIB_NPWP', IfThen(chkWajibNPWP.Checked, '1', '0'));

     ShowMessage('Setting berhasil disimpan.');
end;

procedure TFSettingPO.SetSetting(Kode, Nilai: string);
begin
  with dm.Qtemp do
  begin
    Close;
    SQL.Text :=
      'INSERT INTO t_setting_po (code, value) VALUES(:k, :v) ' +
      'ON CONFLICT(code) DO UPDATE SET "value" = EXCLUDED."value"';
    ParamByName('k').AsString := Kode;
    ParamByName('v').AsString := Nilai;
    ExecSQL;
  end;
end;





end.
