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
FHomeSreen :=TFHomeSreen.Create(Application);
FHomeSreen.Show;
FHomeSreen.Update;

while FHomeSreen.Timer1.Enabled do
  Application.ProcessMessages;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFHomeLogin, FHomeLogin);
  Application.CreateForm(TFHomeSreen, FHomeSreen);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFFakturPajak, FFakturPajak);
  FHomeSreen.Hide;
  FHomeSreen.Free;
  Application.Run;
end.
