unit U_keluarkasbank_ajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, RzEdit, RzButton,
  Vcl.ExtCtrls, RzPanel, RzTabs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFKeluarKasBank_Ajuan = class(TForm)
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    Panel2: TPanel;
    Btutup: TRzBitBtn;
    BCetak: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BBrowse: TRzBitBtn;
    Button6: TRzBitBtn;
    btnpilihhutangkredit: TButton;
    btnnew: TRzBitBtn;
    btndeposito: TRzBitBtn;
    Edkurs: TRzNumericEdit;
    lbkurs: TLabel;
    cbmatauang: TComboBox;
    Label14: TLabel;
    cbsumberdata: TComboBox;
    Edrencanake: TComboBox;
    Label9: TLabel;
    Label16: TLabel;
    RzBitBtn3: TRzBitBtn;
    Label5: TLabel;
    gbbayarhutang: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    txtkdsupp: TEdit;
    txtnmsupp: TEdit;
    cbbayarhutang: TCheckBox;
    txtket: TMemo;
    txtutkkeluar: TEdit;
    txtdibayar: TEdit;
    SpeedButton4: TSpeedButton;
    txtnmakunkredit: TEdit;
    txtkdakunkredit: TEdit;
    txtkdbank: TEdit;
    txtnocek: TEdit;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    edno_bon: TEdit;
    Btnambil_data_bon: TButton;
    GroupBox2: TGroupBox;
    RadioButton_bon: TRadioButton;
    RadioButton_bk_kas_kecil: TRadioButton;
    lbstat: TLabel;
    periode2: TDateTimePicker;
    Label12: TLabel;
    periode1: TDateTimePicker;
    cbtanggal: TDateTimePicker;
    txtnovoucher: TEdit;
    Label8: TLabel;
    Label2: TLabel;
    lblKepada: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    RzPanel3: TRzPanel;
    RzPageControl2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    RzBitBtn1: TRzBitBtn;
    TabSheet4: TRzTabSheet;
    RzBitBtn2: TRzBitBtn;
    DBGridEh2: TDBGridEh;
    ComboBox1: TComboBox;
    Label10: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKeluarKasBank_Ajuan: TFKeluarKasBank_Ajuan;

implementation

{$R *.dfm}

end.
