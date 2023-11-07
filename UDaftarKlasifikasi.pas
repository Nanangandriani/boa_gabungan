unit UDaftarKlasifikasi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzButton, Vcl.StdCtrls, RzCmboBx,
  Vcl.Buttons;

type
  TFDaftarKlasifikasi = class(TForm)
    PageControl1: TPageControl;
    TabMasterKlasifikasi: TTabSheet;
    TabDaftarKlasifikasiPelanggan: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BRefresh: TRzBitBtn;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Ednama: TEdit;
    Edkode: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Wilayah: TLabel;
    Label2: TLabel;
    Cbtypejual: TRzComboBox;
    Cbgolongan: TRzComboBox;
    CbJenisPel: TRzComboBox;
    GroupBox1: TGroupBox;
    DBGridCustomer: TDBGridEh;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzComboBox3: TRzComboBox;
    GroupBox3: TGroupBox;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    Label4: TLabel;
    RzComboBox4: TRzComboBox;
    Label7: TLabel;
    Label8: TLabel;
    RzComboBox5: TRzComboBox;
    RzComboBox6: TRzComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    RzComboBox7: TRzComboBox;
    RzComboBox8: TRzComboBox;
    RzComboBox9: TRzComboBox;
    Panel4: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    btMasterArea: TSpeedButton;
    btMasterWilayah: TSpeedButton;
    btMasterProvinsi: TSpeedButton;
    btMasterKaresidenan: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDaftarKlasifikasi: TFDaftarKlasifikasi;

implementation

{$R *.dfm}

end.
