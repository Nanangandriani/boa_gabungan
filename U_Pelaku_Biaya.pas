unit U_Pelaku_Biaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzCmboBx, RzButton,
  Vcl.ExtCtrls;

type
  TFPelaku_Biaya = class(TForm)
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Panel1: TPanel;
    BTutup: TRzBitBtn;
    BSimpan: TRzBitBtn;
    txtket: TEdit;
    txtpelaku: TEdit;
    cbkaresidenan: TRzComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Ed_id: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BTutupClick(Sender: TObject);
    procedure BSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stat:string;
    id_pelaku:integer;
    procedure load_pelaku_biaya;
  end;

var
  FPelaku_Biaya: TFPelaku_Biaya;

implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UList_Pelaku_Biaya;


procedure TFPelaku_Biaya.load_pelaku_biaya;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from t_sbu ';
      Open;
    end;
    Dm.Qtemp.First;
    cbkaresidenan.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      cbkaresidenan.Items.Add(Dm.Qtemp.FieldByName('sbu_code').AsString);
      Dm.Qtemp.Next;
    end;
end;

procedure TFPelaku_Biaya.BSimpanClick(Sender: TObject);
begin
  if application.MessageBox('Data pelaku biaya akan disimpan?','confirm',mb_yesno or mb_iconquestion)=id_yes then
  begin
     if stat='new' then
     begin
        with dm.Qtemp do
        begin
         close;
         sql.clear;
         sql.add('insert into t_cost_performer (performer,description,factory_code,tp_code) values(:plk,:ket,:kdp,:kdtp)');
         params.parambyname('plk').AsString:=txtpelaku.text;
         params.parambyname('kdtp').AsString:=cbkaresidenan.Text;
         params.parambyname('ket').AsString:=txtket.Text;
         //params.parambyname('kdp').AsString:=FMainMenu.vKODEPRSH;
         execute;
        end;
     end
     else
     begin
       with dm.Qtemp do
       begin
         close;
         sql.clear;
         sql.add('update t_cost_performer set performer=:plk,description=:ket,tp_code=:ktp where id=:ids');
         params.parambyname('plk').AsString:=txtpelaku.text;
         params.parambyname('ktp').AsString:=cbkaresidenan.Text;
         params.parambyname('ket').AsString:=txtket.Text;
         params.parambyname('ids').AsInteger:=strtoint(Ed_id.Text);
         //params.parambyname('ids').AsInteger:=id_pelaku;
         execute;
      end;
     end;
     FListPelakuBiaya.QPelaku_Biaya.close;
     FListPelakuBiaya.QPelaku_Biaya.open;
     showmessage('Data berhasil disimpan !');
  end;
  FPelaku_Biaya.Close;
  FListPelakuBiaya.ActROExecute(sender);
end;

procedure TFPelaku_Biaya.BTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFPelaku_Biaya.FormShow(Sender: TObject);
begin
   self.load_pelaku_biaya;
end;

end.
