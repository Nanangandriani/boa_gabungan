unit UEdit_Penomoran;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, Vcl.StdCtrls, RzButton, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzCmboBx, RzBtnEdt, Vcl.Mask, RzEdit,
  MemTableDataEh, Data.DB, MemTableEh, DataDriverEh, MemDS, DBAccess, Uni;

type
  TFEdit_Penomoran = class(TForm)
    eddigit_count: TRzEdit;
    EdAdd: TEdit;
    BCari: TRzButtonEdit;
    CbAdd: TRzComboBox;
    CheckAdd: TCheckBox;
    BTNclear: TRzBitBtn;
    Kd: TRzEdit;
    KdKonter: TRzEdit;
    KdType: TRzEdit;
    Kdsubmenu: TRzEdit;
    CbTipe_transaksi: TRzComboBox;
    IdComp: TEdit;
    Ed_comp: TEdit;
    Edhasil: TEdit;
    btnplus: TRzBitBtn;
    CBKomponen_No: TRzComboBox;
    CbTipeNo: TRzComboBox;
    EdNama: TRzEdit;
    Label13: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    BCancel: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    Panel2: TPanel;
    DBGridNotemp: TDBGridEh;
    DataSource1: TDataSource;
    Mem_component: TMemTableEh;
    procedure BCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEdit_Penomoran: TFEdit_Penomoran;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFEdit_Penomoran.BCancelClick(Sender: TObject);
begin
  Close;
end;

end.
