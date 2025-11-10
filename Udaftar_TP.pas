unit Udaftar_TP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, MemTableDataEh, Data.DB,
  MemTableEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFDaftar_TP = class(TForm)
    Panel1: TPanel;
    DBGridTP_Ajuan: TDBGridEh;
    MemTP: TMemTableEh;
    DSTP: TDataSource;
    DBGridTP_Real: TDBGridEh;
    DSTP_Real: TDataSource;
    MemTP_Real: TMemTableEh;
    procedure DBGridEh1Columns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridTP_AjuanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridTP_RealColumns1EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridTP_RealKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  var vcall:string;
    { Public declarations }
  end;

var
  FDaftar_TP: TFDaftar_TP;

implementation

{$R *.dfm}

uses UMasterData;

procedure TFDaftar_TP.DBGridEh1Columns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   //if vcall='CashbankAjuan' then
   //begin
     FMasterData.Caption:='Daftar Pelaku Biaya';
     FMasterData.vcall:='cash_bank_pelaku_biaya_ajuan';
     FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
     FMasterData.ShowModal;
   //end
   {else
   if vcall='Cashbank' then
   begin
     FMasterData.Caption:='Daftar Pelaku Biaya';
     FMasterData.vcall:='cash_bank_pelaku_biaya';
     FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
     FMasterData.ShowModal;
   end;}

end;

procedure TFDaftar_TP.DBGridTP_AjuanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then
   begin
     Key := 0; // hentikan default behavior
     DBGridTP_Ajuan.Perform(WM_KEYDOWN, VK_DOWN, 0); // pindah ke baris bawah
   end;
end;

procedure TFDaftar_TP.DBGridTP_RealColumns1EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
begin
   FMasterData.Caption:='Daftar Pelaku Biaya';
   FMasterData.vcall:='cash_bank_pelaku_biaya';
   FMasterData.update_grid('code','name','description','t_region_karesidenan','WHERE	deleted_at IS NULL');
   FMasterData.ShowModal;
end;

procedure TFDaftar_TP.DBGridTP_RealKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_RETURN then
   begin
     Key := 0; // hentikan default behavior
     DBGridTP_Real.Perform(WM_KEYDOWN, VK_DOWN, 0); // pindah ke baris bawah
   end;
end;

end.
