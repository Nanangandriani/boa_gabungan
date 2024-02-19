unit UAkun_Perkiraan_UM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, MemDS, DBAccess, Uni;

type
  TFAkun_Perkiraan = class(TForm)
    DBGridEh1: TDBGridEh;
    QAkun: TUniQuery;
    DsAkun: TDataSource;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statustr:string;
  end;

var
  FAkun_Perkiraan: TFAkun_Perkiraan;

implementation

{$R *.dfm}

uses UInput_um;

procedure TFAkun_Perkiraan.DBGridEh1DblClick(Sender: TObject);
begin
    if statustr='um' then
    begin
      with FNew_UM_Pembelian do
      begin
        Edkd_akun.Text:=QAkun['code'];
        EdNm_akun.Text:=QAkun['account_name'];
      end;
    end;
    close;
end;

end.
