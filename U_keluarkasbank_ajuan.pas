unit U_keluarkasbank_ajuan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, RzEdit, RzButton,
  Vcl.ExtCtrls, RzPanel, RzTabs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFKeluarKasBank_Ajuan = class(TForm)
    PGC1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    RzPanel2: TRzPanel;
    RzPanel1: TRzPanel;
    Panel2: TPanel;
    Btutup: TRzBitBtn;
    BCetak: TRzBitBtn;
    BSimpan: TRzBitBtn;
    BBrowse: TRzBitBtn;
    Button6: TRzBitBtn;
    btnpilihhutangkredit: TButton;
    btnnew: TRzBitBtn;
    btndeposito: TRzBitBtn;
    Edkurs: TRzNumericEdit;
    lbkurs: TLabel;
    cbmatauang: TComboBox;
    Label14: TLabel;
    cbsumberdata: TComboBox;
    Edrencanake: TComboBox;
    Label9: TLabel;
    Label16: TLabel;
    RzBitBtn3: TRzBitBtn;
    Label5: TLabel;
    gbbayarhutang: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    txtkdsupp: TEdit;
    txtnmsupp: TEdit;
    cbbayarhutang: TCheckBox;
    txtket: TMemo;
    txtutkkeluar: TEdit;
    txtdibayar: TEdit;
    SpeedButton4: TSpeedButton;
    txtnmakunkredit: TEdit;
    txtkdakunkredit: TEdit;
    txtkdbank: TEdit;
    txtnocek: TEdit;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    edno_bon: TEdit;
    Btnambil_data_bon: TButton;
    GroupBox2: TGroupBox;
    RadioButton_bon: TRadioButton;
    RadioButton_bk_kas_kecil: TRadioButton;
    lbstat: TLabel;
    periode2: TDateTimePicker;
    Label12: TLabel;
    periode1: TDateTimePicker;
    cbtanggal: TDateTimePicker;
    txtnovoucher: TEdit;
    Label8: TLabel;
    Label2: TLabel;
    lblKepada: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    RzPanel3: TRzPanel;
    PGC2: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBGridEh1: TDBGridEh;
    RzBitBtn1: TRzBitBtn;
    TabSheet4: TRzTabSheet;
    RzBitBtn2: TRzBitBtn;
    DBGridEh2: TDBGridEh;
    ComboBox1: TComboBox;
    Label10: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cbsumberdataSelect(Sender: TObject);
    procedure BtutupClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cbbayarhutangClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure load_sumber_data;
  end;

var
  FKeluarKasBank_Ajuan: TFKeluarKasBank_Ajuan;

implementation

{$R *.dfm}

uses UDataModule, U_Data_rencana_lunas_hutang_pengajuan, UCari_DaftarPerk,
  USearch_Supplier;


procedure TFKeluarKasBank_Ajuan.BtutupClick(Sender: TObject);
begin
  Close;
end;

procedure TFKeluarKasBank_Ajuan.Button6Click(Sender: TObject);
begin
   PGC2.ActivePage:=tabsheet4;
end;

procedure TFKeluarKasBank_Ajuan.cbbayarhutangClick(Sender: TObject);
begin
   if cbbayarhutang.Checked=true then
      gbbayarhutang.Enabled:=true
  else
      gbbayarhutang.Enabled:=false;
end;

procedure TFKeluarKasBank_Ajuan.cbsumberdataSelect(Sender: TObject);
begin
  if cbsumberdata.ItemIndex=0 then
  begin
    FDataRencanaLunasHutangPengajuan.Show;
  end;
end;

procedure TFKeluarKasBank_Ajuan.FormShow(Sender: TObject);
begin
  self.load_sumber_data;
  cbtanggal.Date:=Now;
  periode1.Date:=Now;
  periode2.Date:=Now;
  PGC2.ActivePage:=tabsheet3;
end;

procedure TFKeluarKasBank_Ajuan.load_sumber_data;
begin
    with Dm.Qtemp do
    begin
      close;
      sql.Text:='SELECT * from t_settlement_data_source where status=''true'' ';
      Open;
    end;
    Dm.Qtemp.First;
    cbsumberdata.Items.Clear;
    while not dm.Qtemp.Eof do
    begin
      cbsumberdata.Items.Add(Dm.Qtemp.FieldByName('source_name').AsString);
      Dm.Qtemp.Next;
    end;
end;

procedure TFKeluarKasBank_Ajuan.SpeedButton1Click(Sender: TObject);
begin
   FSearch_Supplier.vcall:= 'Datarencanalunashutangajuan';
   FSearch_Supplier.Show;
end;

procedure TFKeluarKasBank_Ajuan.SpeedButton4Click(Sender: TObject);
begin
    FCari_DaftarPerk.vpanggil:='ajuankeluarkasbank';
    FCari_DaftarPerk.show;
end;

end.
