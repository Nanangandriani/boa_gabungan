unit UDataMasterAkunTrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB, MemTableEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.Samples.Spin, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TFDataMasterAkunTrans = class(TForm)
    Panel1: TPanel;
    LabelPelanggan: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edNamaModul: TRzButtonEdit;
    edKodeModul: TEdit;
    edKodeTrans: TEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edautocode: TEdit;
    RzPageControl1: TRzPageControl;
    TabSDetailPel: TRzTabSheet;
    DBGridDetail: TDBGridEh;
    DSDetail: TDataSource;
    MemDetail: TMemTableEh;
    MemDetailkd_akun: TStringField;
    MemDetailnm_akun: TStringField;
    MemDetailposisi: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    edNamaTrans: TEdit;
    MemKeterangan: TMemo;
    procedure edNamaModulButtonClick(Sender: TObject);
    procedure DBGridDetailColumns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
  end;

var
  FDataMasterAkunTrans: TFDataMasterAkunTrans;
  status: integer;

implementation

{$R *.dfm}

uses UCari_DaftarPerk, UMasterData;

procedure TFDataMasterAkunTrans.Clear;
begin
  edNamaModul.Clear;
  edKodeModul.Clear;
  edKodeTrans.Clear;
  edNamaTrans.Clear;
  MemKeterangan.Clear;
  MemDetail.EmptyTable;
end;


procedure TFDataMasterAkunTrans.DBGridDetailColumns0EditButtons0Click(
  Sender: TObject; var Handled: Boolean);
begin
  with FCari_DaftarPerk do
  begin
    Show;
    vpanggil:='m_akuntrans';
    with QDaftar_Perk do
    begin
      close;
      sql.Clear;
      SQL.Text:='SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det a'+
                ' left join t_ak_account b on a.account_code=b.code  '+
                'left join t_ak_header c on b.header_code=c.header_code';
      Execute;
    end;
  end;
end;

procedure TFDataMasterAkunTrans.edNamaModulButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Modul';
  FMasterData.vcall:='m_modul';
  FMasterData.update_grid('id','module_name','0','t_ak_module','WHERE	deleted_at IS NULL ORDER BY id desc');
  FMasterData.ShowModal;
end;

end.
