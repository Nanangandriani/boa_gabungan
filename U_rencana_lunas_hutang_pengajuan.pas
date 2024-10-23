unit U_rencana_lunas_hutang_pengajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  RzTabs, Vcl.StdCtrls, RzButton, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFRencana_Pengajuan_Pelunasan_Hutang = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lblnmprinciple: TLabel;
    lbnabank: TLabel;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button5: TButton;
    txtkdsupp: TEdit;
    txtnmsupp: TEdit;
    cblunas: TCheckBox;
    BCari: TRzBitBtn;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CBJenisHutang: TComboBox;
    Ed_KdAkun: TEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    Panel2: TPanel;
    CheckBox2: TCheckBox;
    Button2: TButton;
    Panel3: TPanel;
    CheckBox3: TCheckBox;
    Button3: TButton;
    Panel4: TPanel;
    CheckBox4: TCheckBox;
    Button4: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh2: TDBGridEh;
    TabSheet4: TRzTabSheet;
    Panel5: TPanel;
    CheckBox5: TCheckBox;
    Button6: TButton;
    DBGridEh4: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRencana_Pengajuan_Pelunasan_Hutang: TFRencana_Pengajuan_Pelunasan_Hutang;

implementation

{$R *.dfm}

end.
