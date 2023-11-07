unit UNew_KelompokBarang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, RzEdit, Vcl.StdCtrls,
  RzButton, Vcl.ExtCtrls;

type
  TFNew_KelompokBarang = class(TForm)
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdKategori: TEdit;
    Edno: TEdit;
    Panel1: TPanel;
    BBatal: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BCari: TRzBitBtn;
    EdJenis: TComboBox;
    Edkd_akun1: TRzEdit;
    Edkd: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    CbKategori: TComboBox;
    RzEdit1: TRzEdit;
    procedure FormShow(Sender: TObject);
    procedure EdJenisSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNew_KelompokBarang: TFNew_KelompokBarang;

implementation

{$R *.dfm}

uses UDataModule;

procedure TFNew_KelompokBarang.EdJenisSelect(Sender: TObject);
begin
  cbKategori.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select b.*,a."type" from t_item_type a INNER JOIN t_item_category b on a.id=b.type_id '+
    ' where a."type"='+QuotedStr(edjenis.Text)+' and b.deleted_at isnull order by b.created_by ';
    open;
  end;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      cbKategori.Items.Add(dm.Qtemp['category']);
    dm.Qtemp.Next;
    end;
end;

procedure TFNew_KelompokBarang.FormShow(Sender: TObject);
begin
  EdJenis.Clear;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_item_type where deleted_at isnull order by created_by ';
    open;
  end;
    dm.Qtemp.First;
    while not dm.Qtemp.Eof do
    begin
      EdJenis.Items.Add(dm.Qtemp['type']);
    dm.Qtemp.Next;
    end;
end;

end.
