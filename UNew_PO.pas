unit UNew_PO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, RzButton, RzBtnEdt, RzEdit, RzCmboBx, Vcl.Mask, Vcl.ExtCtrls;

type
  TFNew_PO = class(TForm)
    pninput: TPanel;
    Label1: TLabel;
    qty: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label15: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    EdKd_supp: TEdit;
    DtPO: TRzDateTimeEdit;
    EdNo: TEdit;
    DtBln: TRzDateTimeEdit;
    DtTh: TRzDateTimeEdit;
    Edno_kontrak: TRzComboBox;
    EdNopo: TRzEdit;
    EdCurr: TRzComboBox;
    EdStatus: TComboBox;
    EdJenisAngkut: TRzComboBox;
    Edjenispo: TRzComboBox;
    Edjatuh_tempo: TRzEdit;
    EdNm_supp: TRzButtonEdit;
    DtDelivery: TRzDateTimeEdit;
    Ednilai_curr: TRzEdit;
    RzBitBtn1: TRzBitBtn;
    DtDelivery2: TRzDateTimeEdit;
    cb_gudang: TComboBox;
    DBGridDetail: TDBGridEh;
    Panel2: TPanel;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    EdPPn: TEdit;
    EdPPh23: TEdit;
    EdSubtotal: TRzEdit;
    Edpph: TRzEdit;
    Edppn2: TRzEdit;
    EdGrandtotal: TRzEdit;
    EdKet: TMemo;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_PO: TFNew_PO;

implementation

{$R *.dfm}

end.
