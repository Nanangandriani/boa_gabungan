unit UImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Net.HttpClient, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  RzButton, RzPanel, Math;

type
  TFImage = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
  LastPos: TPoint;
  IsDragging: Boolean;
  procedure CenterImage;
  procedure FitImageToScreen;
    { Private declarations }
  public
    { Public declarations }
    strUrl: String;
  end;

var
  FImage: TFImage;

implementation

{$R *.dfm}

procedure TFImage.CenterImage;
begin
  if Image1.Width < ScrollBox1.ClientWidth then
    Image1.Left := (ScrollBox1.ClientWidth - Image1.Width) div 2
  else
    Image1.Left := 0;

  if Image1.Height < ScrollBox1.ClientHeight then
    Image1.Top := (ScrollBox1.ClientHeight - Image1.Height) div 2
  else
    Image1.Top := 0;
end;

procedure TFImage.FormCreate(Sender: TObject);
begin
  ScrollBox1.DoubleBuffered := True;
  Self.DoubleBuffered := True;
end;

procedure TFImage.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    IsDragging := True;
    LastPos := Point(X, Y);
    Image1.Cursor := crSizeAll;
  end;
end;

procedure TFImage.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if IsDragging then
  begin
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position + (LastPos.X - X);
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + (LastPos.Y - Y);
  end;
end;

procedure TFImage.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IsDragging := False;
  Image1.Cursor := crDefault;
end;

procedure TFImage.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
const
  ZoomStep = 1.1;
begin
  if WheelDelta > 0 then
  begin
    // Zoom In
    Image1.Width := Round(Image1.Width * ZoomStep);
    Image1.Height := Round(Image1.Height * ZoomStep);
  end
  else
  begin
    // Zoom Out
    Image1.Width := Round(Image1.Width / ZoomStep);
    Image1.Height := Round(Image1.Height / ZoomStep);
  end;
  Handled := True;
end;

procedure TFImage.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    IsDragging := True;
    LastPos := Point(X, Y);
    Image1.Cursor := crSizeAll;
  end;
end;

procedure TFImage.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if IsDragging then
  begin
    ScrollBox1.HorzScrollBar.Position := ScrollBox1.HorzScrollBar.Position + (LastPos.X - X);
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position + (LastPos.Y - Y);
  end;
end;

procedure TFImage.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  IsDragging := False;
  Image1.Cursor := crDefault;
end;

procedure TFImage.RzBitBtn1Click(Sender: TObject);
var
  Ratio: Double;
begin
  if (Image1.Picture.Width > 0) and (Image1.Picture.Height > 0) then
  begin
    Ratio := Min(ScrollBox1.ClientWidth / Image1.Picture.Width,
                 ScrollBox1.ClientHeight / Image1.Picture.Height);
    Image1.Width := Round(Image1.Picture.Width * Ratio);
    Image1.Height := Round(Image1.Picture.Height * Ratio);
    CenterImage;
  end;
end;

procedure TFImage.RzBitBtn2Click(Sender: TObject);
begin
  Image1.Width := Image1.Picture.Width;
  Image1.Height := Image1.Picture.Height;
  CenterImage;
  ScrollBox1.HorzScrollBar.Position := 0;
  ScrollBox1.VertScrollBar.Position := 0;
end;

procedure TFImage.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
const
  ZoomStep = 1.1;
begin
  if WheelDelta > 0 then
  begin
    Image1.Width := Round(Image1.Width * ZoomStep);
    Image1.Height := Round(Image1.Height * ZoomStep);
  end
  else
  begin
    Image1.Width := Round(Image1.Width / ZoomStep);
    Image1.Height := Round(Image1.Height / ZoomStep);
  end;
  Handled := True;
end;

procedure TFImage.FitImageToScreen;
var
  Ratio: Double;
begin
  if (Image1.Picture.Width > 0) and (Image1.Picture.Height > 0) then
  begin
    Ratio := Min(ScrollBox1.ClientWidth / Image1.Picture.Width,
                 ScrollBox1.ClientHeight / Image1.Picture.Height);
    Image1.Width := Round(Image1.Picture.Width * Ratio);
    Image1.Height := Round(Image1.Picture.Height * Ratio);
    CenterImage;
  end;
end;

procedure TFImage.FormShow(Sender: TObject);
var
  LClient: THTTPClient;
  LStream: TMemoryStream;
begin
  Image1.Picture := nil;

  LClient := THTTPClient.Create;
  LStream := TMemoryStream.Create;
  try
    try
      LClient.Get(strUrl, LStream);
      LStream.Position := 0;

      Image1.Picture.LoadFromStream(LStream);
      Image1.Stretch := True;
      Image1.Proportional := True;
      FitImageToScreen;

    except
      on E: Exception do
      begin
        Image1.Picture := nil;
        ShowMessage('Error: ' + E.Message);
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;
  finally
    LClient.Free;
    LStream.Free;
  end;
end;

//procedure TFImage.FormShow(Sender: TObject);
//var
//  LClient: THTTPClient;
//  LStream: TMemoryStream;
//begin
//  LClient := THTTPClient.Create;
//  LStream := TMemoryStream.Create;
//  try
//    try
//      LClient.Get(strUrl, LStream);
//      LStream.Position := 0;
//      Image1.Picture.LoadFromStream(LStream);
//
//      // Mengaktifkan fitur stretch dan proportional
//      Image1.Stretch := True;
//      Image1.Proportional := True;
//
//      // Memanggil fungsi untuk menyesuaikan ukuran dan posisi ke tengah
//      FitImageToScreen;
//
//    except
//      on E: Exception do ShowMessage('Error: ' + E.Message);
//    end;
//  finally
//    LClient.Free;
//    LStream.Free;
//  end;
//end;

end.
