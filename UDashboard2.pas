unit UDashboard2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, ShellAPI,
  Vcl.ExtCtrls, Vcl.Tabs;

type
  TFDashboard2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PanelParent: TPanel;
    Panel1: TPanel;
    TabSet1: TTabSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PanelParentResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDashboard2: TFDashboard2;

implementation

{$R *.dfm}

uses UMy_Function;
procedure TFDashboard2.BitBtn1Click(Sender: TObject);
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  AppHandle: HWND;
begin
  ZeroMemory(@StartInfo, SizeOf(StartInfo));
  StartInfo.cb := SizeOf(StartInfo);

  if CreateProcess(nil, 'D:\DATA HPS\Development\back_office_automation\Win32\Release\powerbi\powerbi.exe',
  nil, nil, False, 0, nil, nil, StartInfo, ProcInfo) then
  begin
    WaitForInputIdle(ProcInfo.hProcess, INFINITE);
    Sleep(1000); // Tambahkan delay jika perlu
    AppHandle := FindWindow(nil, 'Dashboard | ALL COMPANY');
    if AppHandle = 0 then
      ShowMessage('Jendela aplikasi tidak ditemukan.')
    else
      //SetParent(AppHandle, HWND(PanelParent.Handle));
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end
  else
    ShowMessage('Gagal menjalankan aplikasi.');
end;

procedure TFDashboard2.BitBtn2Click(Sender: TObject);
var
  FileName: string;
  AppHandle: HWND;
begin
  // Path aplikasi yang akan dijalankan
  //FileName := 'C:\Windows\Notepad.exe';
  //FileName := cLocation +'powerbi/powerbi.exe';
  FileName := 'D:\DATA HPS\Development\back_office_automation\Win32\Release\powerbi\powerbi.exe';

  // Jalankan aplikasi menggunakan ShellExecute
  if ShellExecute(Handle, 'open', PChar(FileName), nil, nil, SW_SHOWNORMAL) <= 32 then
  begin
    ShowMessage('Gagal menjalankan aplikasi: ' + FileName);
    Exit;
  end;

  // Tunggu beberapa saat agar jendela aplikasi muncul
  Sleep(1000);

  //SetParent(AppHandle, TFDashboard2);
  // Cari handle jendela aplikasi berdasarkan judul
  AppHandle := FindWindow(nil, 'Dashboard | ALL COMPANY'); // Ganti dengan judul aplikasi yang sesuai
  if AppHandle = 0 then
  begin
    ShowMessage('Jendela aplikasi tidak ditemukan.');
    Exit;
  end;
  // Set aplikasi sebagai child dari PanelParent
  {if PanelParent.HandleAllocated then
  SetParent(AppHandle, PanelParent.Handle);
    else
  ShowMessage('PanelParent belum memiliki handle yang valid.');}
   //SetParent(AppHandle, PanelParent.Handle);
  // Atur style window agar sesuai dengan panel
  SetWindowLong(AppHandle, GWL_STYLE, GetWindowLong(AppHandle, GWL_STYLE) and not (WS_CAPTION or WS_THICKFRAME));

  // Sesuaikan ukuran dan posisi aplikasi sesuai dengan panel
  SetWindowPos(AppHandle, 0, 0, 0, PanelParent.Width, PanelParent.Height, SWP_NOZORDER or SWP_NOACTIVATE);
end;

procedure TFDashboard2.PanelParentResize(Sender: TObject);
begin
  //SetWindowPos(AppHandle, 0, 0, 0, PanelParent.Width, PanelParent.Height, SWP_NOZORDER or SWP_NOACTIVATE);
end;

Initialization
  RegisterClass(TFDashboard2);


end.
