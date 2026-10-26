unit UFtpHelper;

interface
uses
  System.SysUtils, System.Classes, IdFTP, IdFTPList;
type
  TFtpHelper = class
  private
    class procedure ForceMakeDir(Ftp: TIdFTP; const RemoteDir: string);
    class function GetFtpHost: string;
    class function GetFtpPort: Integer;
    class function GetFtpUser: string;
    class function GetFtpPass: string;
  public
    class function UploadFile(const LocalFilePath, RemoteFileName, RelDirectory: string; var ErrMsg: string): Boolean;
    class function DownloadFile(const RemoteRelPath, LocalDestPath: string; var ErrMsg: string): Boolean;
  end;
implementation
uses
   UMy_Function;
{ Helper Fungsi Pengambilan Parameter DB }
class function TFtpHelper.GetFtpHost: string;
begin
  Result := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''host_uploaddoc''');
  if Result = '' then Result := '192.18.19.247'; // Default fallback jika DB kosong
end;
class function TFtpHelper.GetFtpPort: Integer;
var
  StrPort: string;
begin
  StrPort := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''port_uploaddoc''');
  Result := StrToIntDef(StrPort, 40247); // Default fallback ke port 40247
end;
class function TFtpHelper.GetFtpUser: string;
begin
  Result := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''user_uploaddoc''');
  if Result = '' then Result := 'HasimJaya';
end;
class function TFtpHelper.GetFtpPass: string;
begin
  Result := SelectRow('SELECT value_parameter FROM "public"."t_parameter" WHERE key_parameter=''pass_uploaddoc''');
end;
{ Realisasi Penggunaan Parameter di Prosedur FTP }
class procedure TFtpHelper.ForceMakeDir(Ftp: TIdFTP; const RemoteDir: string);
var
  DirList: TStringList;
  I: Integer;
  SubDir: string;
begin
  DirList := TStringList.Create;
  try
    DirList.StrictDelimiter := True;
    DirList.Delimiter := '/';
    DirList.DelimitedText := StringReplace(RemoteDir, '\', '/', [rfReplaceAll]);
    Ftp.ChangeDir('/');
    for I := 0 to DirList.Count - 1 do
    begin
      SubDir := Trim(DirList[I]);
      if SubDir <> '' then
      begin
        try
          Ftp.ChangeDir(SubDir);
        except
          Ftp.MakeDir(SubDir);
          Ftp.ChangeDir(SubDir);
        end;
      end;
    end;
  finally
    DirList.Free;
  end;
end;
class function TFtpHelper.UploadFile(const LocalFilePath, RemoteFileName, RelDirectory: string; var ErrMsg: string): Boolean;
var
  Ftp: TIdFTP;
begin
  Result := False;
  ErrMsg := '';
  Ftp := TIdFTP.Create(nil);
  try
    try
      // Memanggil Nilai Parameter Dinamis dari Database
      Ftp.Host     := GetFtpHost;
      Ftp.Port     := GetFtpPort;
      Ftp.Username := GetFtpUser;
      Ftp.Password := GetFtpPass;
      Ftp.Passive  := True; // Wajib True untuk melintasi firewall
      Ftp.Connect;
      ForceMakeDir(Ftp, RelDirectory);
      Ftp.Put(LocalFilePath, RemoteFileName, False); // Overwrite jika file sudah ada
      Ftp.Disconnect;
      Result := True;
    except
      on E: Exception do
      begin
        ErrMsg := 'Gagal Upload FTP: ' + E.Message;
        if Ftp.Connected then Ftp.Disconnect;
      end;
    end;
  finally
    Ftp.Free;
  end;
end;
class function TFtpHelper.DownloadFile(const RemoteRelPath, LocalDestPath: string; var ErrMsg: string): Boolean;
var
  Ftp: TIdFTP;
  RemoteCleanPath, DestDir: string;
begin
  Result := False;
  ErrMsg := '';
  // 1. Pastikan folder lokal penampung temp sudah dibuat
  DestDir := ExtractFilePath(LocalDestPath);
  if (DestDir <> '') and (not DirectoryExists(DestDir)) then
    ForceDirectories(DestDir);
  // 2. Normalisasi Path FTP (Ubah '\' menjadi '/')
  RemoteCleanPath := StringReplace(Trim(RemoteRelPath), '\', '/', [rfReplaceAll]);
  // Pastikan path tidak diawali '//'
  while (Length(RemoteCleanPath) > 1) and (Copy(RemoteCleanPath, 1, 2) = '//') do
    Delete(RemoteCleanPath, 1, 1);
  if (RemoteCleanPath <> '') and (RemoteCleanPath[1] <> '/') then
    RemoteCleanPath := '/' + RemoteCleanPath;
  Ftp := TIdFTP.Create(nil);
  try
    try
      Ftp.Host     := GetFtpHost;
      Ftp.Port     := GetFtpPort;
      Ftp.Username := GetFtpUser;
      Ftp.Password := GetFtpPass;
      Ftp.Passive  := True; // Wajib Passive Mode
      Ftp.Connect;
      // Hapus file temp lokal lama jika ada, untuk menghindari konflik lock file
      if FileExists(LocalDestPath) then
        DeleteFile(LocalDestPath);
      // Download file dari FTP
      // Parameter: RemoteFileName, LocalFileName, Overwrite, Resume
      Ftp.Get(RemoteCleanPath, LocalDestPath, True, False);
      Ftp.Disconnect;
      Result := True;
    except
      on E: Exception do
      begin
        ErrMsg := 'Gagal Download FTP (' + RemoteCleanPath + '): ' + E.Message;
        if Ftp.Connected then
        begin
          try
            Ftp.Disconnect;
          except
          end;
        end;
      end;
    end;
  finally
    Ftp.Free;
  end;
end;
end.
