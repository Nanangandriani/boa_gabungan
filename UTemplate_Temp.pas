unit UTemplate_Temp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.OleCtrls, SHDocVw, Vcl.Edge, Vcl.ExtCtrls, RzTabs;

type
  TFTemplate_Temp = class(TForm)
    PageControl1: TRzPageControl;
    TabForm: TRzTabSheet;
    PanelParent: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTemplate_Temp: TFTemplate_Temp;

implementation

{$R *.dfm}

initialization
RegisterClass(TFTemplate_Temp);

end.
