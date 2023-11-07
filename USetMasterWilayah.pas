unit USetMasterWilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, RzCmboBx;

type
  TFSetMasterWilayah = class(TForm)
    PageControl1: TPageControl;
    TabSetBagianWilayah: TTabSheet;
    TabSetArea: TTabSheet;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    DBGridEh1: TDBGridEh;
    TabSetProvinsi: TTabSheet;
    Panel3: TPanel;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    RzBitBtn6: TRzBitBtn;
    DBGridEh2: TDBGridEh;
    TabSetKares: TTabSheet;
    Panel4: TPanel;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    RzBitBtn9: TRzBitBtn;
    DBGridEh3: TDBGridEh;
    TabSetKabupaten: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBGridEh4: TDBGridEh;
    Edit11: TEdit;
    Edit12: TEdit;
    CheckBox4: TCheckBox;
    Edit13: TEdit;
    TabSetKecamatan: TTabSheet;
    CheckBox5: TCheckBox;
    DBGridEh5: TDBGridEh;
    Panel6: TPanel;
    RzBitBtn13: TRzBitBtn;
    RzBitBtn14: TRzBitBtn;
    RzBitBtn15: TRzBitBtn;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Cbgolongan: TRzComboBox;
    Label38: TLabel;
    RzComboBox1: TRzComboBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    RzComboBox2: TRzComboBox;
    Panel5: TPanel;
    RzBitBtn10: TRzBitBtn;
    RzBitBtn11: TRzBitBtn;
    RzBitBtn12: TRzBitBtn;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    RzComboBox3: TRzComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    RzComboBox4: TRzComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit9: TEdit;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Label3: TLabel;
    LabelPelanggan: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBGridCustomer: TDBGridEh;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    BRefresh: TRzBitBtn;
    Edkode: TEdit;
    Ednama: TEdit;
    cbstatus: TCheckBox;
    Edit8: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit10: TEdit;
    RzComboBox5: TRzComboBox;
    RzComboBox6: TRzComboBox;
    CheckBox2: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetMasterWilayah: TFSetMasterWilayah;

implementation

{$R *.dfm}

end.
