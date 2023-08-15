unit Unew_spb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, DBGridEh,
  Vcl.StdCtrls, RzEdit, RzButton, Vcl.ExtCtrls, DBCtrlsEh, DBLookupEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, MemDS, DBAccess, Uni, DataDriverEh, MemTableEh,
  Vcl.Mask, RzBtnEdt;

type
  TFnew_spb = class(TForm)
    Ednm_supp: TRzButtonEdit;
    DsDetail: TDataSource;
    Memdetail: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DsPo: TDataSource;
    Mempo: TMemTableEh;
    QPo1: TUniQuery;
    Edkd_supp: TRzEdit;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    EdPo: TDBLookupComboboxEh;
    Eddriver: TRzEdit;
    EdnoKend: TRzEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BEdit: TRzBitBtn;
    EdnoSpb: TRzEdit;
    DtSpb: TRzDateTimeEdit;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
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
  Fnew_spb: TFnew_spb;

implementation

{$R *.dfm}

end.
