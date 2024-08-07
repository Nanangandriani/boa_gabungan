unit UNew_Pembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, RzBtnEdt, RzEdit, Vcl.Mask, RzCmboBx, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_Pembelian = class(TForm)
    DBGridDetailpo: TDBGridEh;
    DsMaterial: TDataSource;
    MemterimaDet: TMemTableEh;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    BPosting: TRzBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EdNoSPB: TRzComboBox;
    EdNo: TEdit;
    Dtterima: TRzDateTimeEdit;
    EdKet: TMemo;
    EdSJ: TEdit;
    Edno_Faktur: TEdit;
    DtFaktur: TRzDateTimeEdit;
    Edjatuhtempo: TEdit;
    Edkd_supp: TRzEdit;
    EdNm_supp: TRzButtonEdit;
    EdNm_akun: TRzButtonEdit;
    Edkd_akun: TRzEdit;
    Edjenis: TRzComboBox;
    EdValas: TRzEdit;
    EdNilai_Valas: TRzEdit;
    EdPIB: TEdit;
    GroupBox1: TGroupBox;
    Cksj: TCheckBox;
    CkFk: TCheckBox;
    CkInv: TCheckBox;
    QMaterial1: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_Pembelian: TFNew_Pembelian;

implementation

{$R *.dfm}

end.
