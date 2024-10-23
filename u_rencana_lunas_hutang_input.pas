unit u_rencana_lunas_hutang_input;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  RzButton, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableDataEh, Data.DB, MemTableEh;

type
  TFRencana_Lunas_Hutang = class(TForm)
    DBGridEh1: TDBGridEh;
    lblrencanake: TPanel;
    Btutup: TRzBitBtn;
    BHapus: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    lbnabank: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btncek: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dptgllunas: TDateTimePicker;
    dpperiode1: TDateTimePicker;
    cbbank: TComboBox;
    dpperiode2: TDateTimePicker;
    txtnocek: TEdit;
    dptglcek: TDateTimePicker;
    dpperiodetmp1: TDateTimePicker;
    dpperiodetmp2: TDateTimePicker;
    rbkas: TRadioButton;
    rbbank: TRadioButton;
    Bdaftar: TRzBitBtn;
    cbjenishutang: TComboBox;
    CBrencanake: TComboBox;
    Edit1: TEdit;
    MemRencana: TMemTableEh;
    DSRencana: TDataSource;
    procedure BdaftarClick(Sender: TObject);
    procedure BtutupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRencana_Lunas_Hutang: TFRencana_Lunas_Hutang;

implementation

{$R *.dfm}

uses U_daftar_hutang;

procedure TFRencana_Lunas_Hutang.BdaftarClick(Sender: TObject);
begin
   FDaftar_Hutang.Show;
end;

procedure TFRencana_Lunas_Hutang.BtutupClick(Sender: TObject);
begin
   Close;
end;

end.
