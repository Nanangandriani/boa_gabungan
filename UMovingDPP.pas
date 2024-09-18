unit UMovingDPP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ComCtrls, RzDTP,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, RzBtnEdt, Vcl.ExtCtrls;

type
  TFMovingDPP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    GroupBox1: TGroupBox;
    Label38: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    dtTagih_old: TRzDateTimePicker;
    dtCetak_old: TRzDateTimePicker;
    edNamaKolektor: TRzButtonEdit;
    edKodeKolektor: TEdit;
    Label39: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dtTagih_new: TRzDateTimePicker;
    dtCetak_new: TRzDateTimePicker;
    procedure BBatalClick(Sender: TObject);
    procedure edNamaKolektorButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure  Clear;
  end;

var
  FMovingDPP: TFMovingDPP;

implementation

{$R *.dfm}

uses UMasterData;
procedure TFMovingDPP.Clear;
begin
  dtTagih_old.Date:=now;
  dtCetak_old.Date:=now;
  dtTagih_new.Date:=now;
  dtCetak_new.Date:=now;
  edKodeKolektor.Clear;
  edNamaKolektor.Clear;

end;

procedure TFMovingDPP.edNamaKolektorButtonClick(Sender: TObject);
begin
  FMasterData.Caption:='Master Data Kolektor';
  FMasterData.vcall:='m_kolektor_moving';
  FMasterData.update_grid('code','name','concat(''Kares. '', name_kares, '', Kabupaten. '', name_regency) ','"public"."t_collector"','WHERE	deleted_at IS NULL ');
  FMasterData.ShowModal;
end;

procedure TFMovingDPP.BBatalClick(Sender: TObject);
begin
  Clear;
  Close;
end;

end.
