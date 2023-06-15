program Smart_BOA;

uses
  Vcl.Forms,
  UMainMenu in 'UMainMenu.pas' {FMainMenu},
  UDataModule in 'UDataModule.pas' {dm: TDataModule},
  UDashboard in 'UDashboard.pas' {FDashboard},
  UHomeSreen in 'UHomeSreen.pas' {FHomeSreen},
  UHomeLogin in 'UHomeLogin.pas' {FHomeLogin},
  UFakturPajak in 'UFakturPajak.pas' {FFakturPajak};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFHomeSreen, FHomeSreen);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFHomeLogin, FHomeLogin);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFFakturPajak, FFakturPajak);
  Application.Run;
end.
