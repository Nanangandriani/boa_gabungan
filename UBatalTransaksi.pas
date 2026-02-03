unit UBatalTransaksi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzBtnEdt, Vcl.ComCtrls, RzDTP, Vcl.Mask,
  RzEdit, Vcl.StdCtrls, RzCmboBx, RzButton, Vcl.ExtCtrls, RzLabel;

type
  TFBatalTransaksi = class(TForm)
    RzLabel1: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BtnReject: TRzBitBtn;
    BtnApprove: TRzBitBtn;
    cbMenu: TRzComboBox;
    memKet: TRzMemo;
    edKode: TRzEdit;
    dtTanggal: TRzDateTimePicker;
    edNoTransaksi: TRzButtonEdit;
    MemKetApprove: TRzMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBatalTransaksi: TFBatalTransaksi;

implementation

{$R *.dfm}

end.
