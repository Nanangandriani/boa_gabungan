unit UNew_ReturnPembelian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemDS, DBAccess, Uni,
  RzBtnEdt, Vcl.StdCtrls, RzCmboBx, RzEdit, Vcl.Mask, RzButton, Vcl.ExtCtrls,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFNew_ReturnPemb = class(TForm)
    edno_terima: TRzComboBox;
    DsDetail: TDataSource;
    MemDetail: TMemTableEh;
    QFaktur: TUniQuery;
    Edgrandtotal: TRzEdit;
    edppn: TRzEdit;
    EdNoFaktur: TRzComboBox;
    DtFaktur: TRzDateTimeEdit;
    DBGridEh3: TDBGridEh;
    Edppnrp: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    Edno: TRzEdit;
    DtReturn: TRzDateTimeEdit;
    Ednm_supp: TRzButtonEdit;
    Edkd_supp: TRzEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_ReturnPemb: TFNew_ReturnPemb;

implementation

{$R *.dfm}

end.
