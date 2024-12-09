unit UDashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, frxClass,
  VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, Vcl.WinXPanels, Vcl.ExtCtrls, RzPanel, Vcl.Menus, Data.DB,
  VCLTee.DBChart, RzLabel, Winapi.WebView2, Winapi.ActiveX, Vcl.Edge,
  Vcl.OleCtrls, SHDocVw;

type
  TFDashboard = class(TForm)
    pnlUtama: TRzPanel;
    pnlHeader2: TPanel;
    pnlHeader2Sub1: TPanel;
    pnlHeader2Sub3: TPanel;
    CardPanel7: TCardPanel;
    CardPanel3: TCardPanel;
    CardPanel8: TCardPanel;
    pnlHeader1: TPanel;
    pnlHeaderSub1: TPanel;
    pnlHeaderSub11: TPanel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    Label7: TLabel;
    pnlHeaderSub2: TPanel;
    pnlHeaderSub22: TPanel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    Label8: TLabel;
    CardPanel9: TCardPanel;
    CardPanel10: TCardPanel;
    pnlHeaderSub3: TPanel;
    pnlHeaderSub33: TPanel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    Label9: TLabel;
    pnlHeaderSub6: TPanel;
    pnlHeaderSub66: TPanel;
    RzLabel19: TRzLabel;
    RzLabel20: TRzLabel;
    Label10: TLabel;
    CardPanel11: TCardPanel;
    pnlHeaderSub5: TPanel;
    pnlHeaderSub55: TPanel;
    RzLabel21: TRzLabel;
    RzLabel22: TRzLabel;
    Label11: TLabel;
    CardPanel12: TCardPanel;
    pnlHeaderSub4: TPanel;
    pnlHeaderSub44: TPanel;
    RzLabel23: TRzLabel;
    RzLabel24: TRzLabel;
    Label12: TLabel;
    CardPanel13: TCardPanel;
    CardPanel14: TCardPanel;
    CardPanel1: TCardPanel;
    CardPanel2: TCardPanel;
    CardPanel4: TCardPanel;
    pnlHeader2Sub2: TPanel;
    DBChart1: TDBChart;
    Series5: TPieSeries;
    Chart2: TChart;
    Series4: TBarSeries;
    Chart3: TChart;
    PieSeries1: TPieSeries;
    PieSeries2: TPieSeries;
    PieSeries3: TPieSeries;
    WebBrowser1: TWebBrowser;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDashboard: TFDashboard;

implementation

{$R *.dfm}

procedure TFDashboard.BitBtn1Click(Sender: TObject);
begin
//  frxReport1.ShowReport()
end;

procedure TFDashboard.FormShow(Sender: TObject);
var
  wpnlHeader : Integer;
begin
  //Header 1
  pnlHeader1.Width:=pnlUtama.Width;
  wpnlHeader:=pnlHeader1.Width-60;
  pnlHeaderSub1.Width:=wpnlHeader div 6;
  pnlHeaderSub11.Width:=pnlHeaderSub1.Width;
  pnlHeaderSub2.Width:=wpnlHeader div 6;
  pnlHeaderSub22.Width:=pnlHeaderSub2.Width;
  pnlHeaderSub3.Width:=wpnlHeader div 6;
  pnlHeaderSub33.Width:=pnlHeaderSub3.Width;
  pnlHeaderSub4.Width:=wpnlHeader div 6;
  pnlHeaderSub44.Width:=pnlHeaderSub4.Width;
  pnlHeaderSub5.Width:=wpnlHeader div 6;
  pnlHeaderSub55.Width:=pnlHeaderSub5.Width;
  pnlHeaderSub6.Width:=wpnlHeader div 6;
  pnlHeaderSub66.Width:=pnlHeaderSub6.Width;


  //Header 2
  pnlHeader2.Width:=pnlUtama.Width;
  wpnlHeader:=pnlHeader2.Width-50;
  pnlHeader2Sub1.Width:=1000;
  pnlHeader2Sub2.Width:=(wpnlHeader-1000) div 2;
  pnlHeader2Sub3.Width:=(wpnlHeader-1000) div 2;
end;

Initialization
  RegisterClass(TFDashboard);


end.
