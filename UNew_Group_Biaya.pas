unit UNew_Group_Biaya;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RzEdit,
  RzBtnEdt, Vcl.Buttons, RzCmboBx, RzButton, Vcl.ExtCtrls;

type
  TFNew_Group_biaya = class(TForm)
    Label6: TLabel;
    Label1: TLabel;
    EdNm_Persd: TRzButtonEdit;
    EdKd_Persd: TRzEdit;
    Panel2: TPanel;
    BBatal: TRzBitBtn;
    BSave: TRzBitBtn;
    Edkd_by: TRzEdit;
    SpeedButton3: TSpeedButton;
    EdNm_by: TRzComboBox;
    procedure BBatalClick(Sender: TObject);
    procedure EdNm_PersdButtonClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdNm_bySelect(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Save;
    procedure clear;
    var modul:string;
  end;

var
  FNew_Group_biaya: TFNew_Group_biaya;

implementation

{$R *.dfm}

uses UMasterData, UDataModule, UListBank_perusahaan, UNew_Posting, UGroup_Biaya;

procedure TFNew_Group_biaya.Save;
begin
    with dm.Qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='update t_ak_account(code,) '+
                'Values (:parnama_bank,:parno_rekening,:parkode_bank,:paron_behalf_of,:parsaldo,:parexchange_rate,:paraccount_no,:parheader_account_no,:parmatauang,:created_at,:created_by,:company_code,:sbu_code)';
 {     parambyname('parnama_bank').Value:=edbank.Text;
      parambyname('parno_rekening').Value:=edno_rek.Text;
      parambyname('parkode_bank').Value:=edkode_bank.Text;
      parambyname('paron_behalf_of').Value:=Ed_atas_nama.Text;
      parambyname('parsaldo').Value:=edsaldo.Value;
      parambyname('parexchange_rate').Value:=edkurs.Value;
      parambyname('paraccount_no').Value:=edkodeperkiraan.Text;
      parambyname('parheader_account_no').Value:=edkd_akun1.Text;
      parambyname('parmatauang').Value:=CBmata_uang.Text;
      parambyname('created_at').AsDateTime:=Now;
      parambyname('created_by').AsString:=Nm;
      parambyname('company_code').AsString:=Ed_VA_bank.Text;
      parambyname('sbu_code').AsString:=CB_SBU.Text;
      execsql;
    end;
    MessageDlg('Simpan Berhasil..!!',mtInformation,[MBOK],0);
    Clear;           }
    Close;
    FListBank.Refresh;
    end;
end;

procedure TFNew_Group_biaya.SpeedButton3Click(Sender: TObject);
begin
  with FNewPosting do
  begin
    jenis:='by';
    caption:='Form New Group By';
    ednama_posting.Text:='';
    Pnlposting.visible:=false;
    PnlLr.visible:=false;
    PnlPosnr.visible:=false;
    Pnlcost.visible:=true;
    Edby.Text:='';
    Show;
  end;

end;

procedure TFNew_Group_biaya.clear;
begin
    EdKd_Persd.Text:='';
    Ednm_Persd.Text:='';
    Edkd_by.Text:='';
    Ednm_by.Text:='';
end;

procedure TFNew_Group_biaya.BBatalClick(Sender: TObject);
begin
  close;
end;

procedure TFNew_Group_biaya.BSaveClick(Sender: TObject);
begin
    if modul='by' then
    begin
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:=' Update t_ak_account set cost_st_id='+QuotedStr(EdKd_by.Text)+' where code='+QuotedStr(EdKd_Persd.Text)+'';
         Execute;
       end;
       ShowMessage('Data Berhasil di simpan');
       FGroup_biaya.ActRoExecute(sender);
       Close;
    end;
    if modul='lr' then
    begin
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:=' Update t_ak_account set lr_st_id='+QuotedStr(EdKd_by.Text)+' where code='+QuotedStr(EdKd_Persd.Text)+'';
         Execute;
       end;
       ShowMessage('Data Berhasil di simpan');
       FGroup_biaya.ActRoExecute(sender);
       Close;
    end;
    if modul='bylr' then
    begin
       with dm.Qtemp do
       begin
         close;
         sql.Clear;
         sql.Text:=' Update t_ak_account set by_st_id='+QuotedStr(EdKd_by.Text)+' where code='+QuotedStr(EdKd_Persd.Text)+'';
         Execute;
       end;
       ShowMessage('Data Berhasil di simpan');
       FGroup_biaya.ActRoExecute(sender);
       Close;
    end;

end;

procedure TFNew_Group_biaya.EdNm_bySelect(Sender: TObject);
begin

   if modul='by' then
   begin
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_cost where cost_type='+QuotedStr(EdNm_by.Text);
        Open;
      end;
        Edkd_by.Text:=dm.Qtemp1['id'];
   end;

   if modul='lr' then
   begin
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_lr where lr2='+QuotedStr(EdNm_by.Text);
        Open;
      end;
        Edkd_by.Text:=dm.Qtemp1['id'];
   end;
  if modul='bylr' then
   begin
      with dm.Qtemp1 do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_by where type_by='+QuotedStr(EdNm_by.Text);
        Open;
      end;
        Edkd_by.Text:=dm.Qtemp1['id'];
   end;

end;

procedure TFNew_Group_biaya.EdNm_PersdButtonClick(Sender: TObject);
begin
   FMasterData.DBGridCustomer.SearchPanel.SearchingText:='';
   FMasterData.Caption:='Master Data Perkiraan';
   FMasterData.vcall:='group_biaya';
   FMasterData.update_grid('code','account_name','''''','t_ak_account','WHERE	deleted_at IS NULL');
   FMasterData.Showmodal;
 //  Autocode_perkiraan;
end;

procedure TFNew_Group_biaya.FormShow(Sender: TObject);
begin
  EdNm_by.Clear;
  if modul='by' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_cost where deleted_at ISNULL';
        open;
      end;
      while not dm.Qtemp.Eof do
      begin
        EdNm_by.Items.Add(dm.Qtemp['cost_type']);
        dm.Qtemp.Next;
      end;
  end;
  if modul='lr' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_lr where deleted_at ISNULL';
        open;
      end;
      while not dm.Qtemp.Eof do
      begin
        EdNm_by.Items.Add(dm.Qtemp['lr2']);
        dm.Qtemp.Next;
      end;
  end;
  if modul='bylr' then
  begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='select * from t_ak_type_by where deleted_at ISNULL';
        open;
      end;
      while not dm.Qtemp.Eof do
      begin
        EdNm_by.Items.Add(dm.Qtemp['type_by']);
        dm.Qtemp.Next;
      end;
  end;
end;

end.
