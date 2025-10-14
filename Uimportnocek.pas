unit Uimportnocek;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.ComCtrls,
  Vcl.Samples.Spin, Data.DB, MemDS, DBAccess, Uni;

type
  TFImportnocek = class(TForm)
    cbbank: TComboBox;
    MyQuery2: TUniQuery;
    MyQuery1: TUniQuery;
    OpenDialogExcel: TOpenDialog;
    cbcek: TComboBox;
    cbrek: TComboBox;
    BProses: TButton;
    SpinEdit2: TSpinEdit;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    Ed_header: TEdit;
    ProgressBar: TProgressBar;
    bConvertExcel: TButton;
    bCariExcel: TButton;
    eLokasiExcel: TEdit;
    sgExcel: TStringGrid;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    LProgress: TLabel;
    Label2: TLabel;
    QMaster_Nocek: TUniQuery;
    DSMaster_nocek: TDataSource;
    Ed_trans_no: TEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbankChange(Sender: TObject);
    procedure BProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure clear;
  end;

var
  FImportnocek: TFImportnocek;

implementation

{$R *.dfm}

uses UMainMenu, UDataModule, Udafcek_entry, UHomeLogin;

procedure TFImportnocek.BProsesClick(Sender: TObject);
var i,j:integer;
    no_faktur,no_urut:string;
    trans_no:integer;
begin
   if cbbank.Text='' then
   begin
      MessageDlg('Kode Bank Tidak boleh Kosong ',MtWarning,[MbOk],0);
      cbbank.SetFocus;
      Exit;
   end;
   if Cbrek.Text='' then
   begin
      MessageDlg('Rekening Bank Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Cbrek.SetFocus;
      Exit;
   end;
   if Cbcek.Text='' then
   begin
      MessageDlg('Cek atau Giro Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Cbrek.SetFocus;
      Exit;
   end;
   if Ed_header.Text='' then
   begin
      MessageDlg('Header Cek atau Giro Tidak boleh Kosong ',MtWarning,[MbOk],0);
      Cbrek.SetFocus;
      Exit;
   end;


   if Application.MessageBox('Import data No.Cek/BG akan diproses?','confirm',mb_yesno or mb_iconquestion)=id_yes then
   begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT max(trans_no) as transno FROM t_nocek_master';
        Open;
        trans_no:=fieldbyname('transno').AsInteger+1;
              //showmessage(inttostr(trans_no));
      end;
      with dm.Qtemp do
      begin
        close;
        sql.clear;
        sql.Add('insert into t_nocek_master(trans_no,bank,rek_no,created_at,created_by,header)');
        sql.Add('values (:trans,:bnk,:nrk,:created_at,:created_by,:parheader)');
        Params.ParamByName('trans').Value:=trans_no;
        Params.ParamByName('bnk').Value:=cbbank.Text;;
        Params.ParamByName('nrk').Value:=cbrek.Text;
        Params.parambyname('created_at').AsDateTime:=Now;
        Params.parambyname('created_by').AsString:=FHomeLogin.Eduser.Text;
        Params.ParamByName('parheader').Value:=Ed_header.Text;
        Execute;
      end;

      ProgressBar.Position:=0;
      j:=0;
      ProgressBar.Max:=SpinEdit2.Value-SpinEdit1.Value;

      if (Length(cbbank.text)=0) or(Length(cbrek.Text)=0) or(Length(cbcek.Text)=0) or(Length(Ed_header.Text)=0) then
      begin
        showmessage('Data tidak dapat diproses, parameter belum lengkap !');
        exit;
      end;

      for i:=SpinEdit1.Value to SpinEdit2.Value do
      begin
         j:=j+1;
         if i<=9 then
         no_urut:='0000000'+inttostr(i);
         if (i>9) and (i<100) then
         no_urut:='000000'+inttostr(i);
         if (i>=100) and (i<1000) then
         no_urut:='00000'+inttostr(i);
         if (i>=1000) and (i<10000) then
         no_urut:='0000'+inttostr(i);
         if (i>=10000) and (i<100000) then
         no_urut:='000'+inttostr(i);
         if (i>=100000) and (i<1000000) then
         no_urut:='00'+inttostr(i);
         if (i>=1000000) and (i<10000000) then
         no_urut:='0'+inttostr(i);
         if  (i>10000000) then
         no_urut:=inttostr(i);

         no_faktur:=Ed_header.Text+no_urut;
         with MyQuery1 do
         begin
            Close;
            sql.Clear;
            sql.Add('select cek_no from t_nocek where cek_no=:nc');
            Params.ParamByName('nc').Value:=no_faktur;
            open;
         end;

         if MyQuery1.RecordCount=0 then
         begin
            with MyQuery2 do
            begin
              close;
              sql.clear;
              sql.Add('insert into t_nocek(cek_no,bank,rek_no,cekbg,status,created_at,created_by,trans_no)');
              sql.Add('values (:nc,:kdb,:nrk,:ckb,:stat,:created_at,:created_by,:trans_no)');
              Params.ParamByName('nc').Value:=no_faktur;
              Params.ParamByName('kdb').Value:=cbbank.Text;
              Params.ParamByName('nrk').Value:=cbrek.Text;
              Params.ParamByName('ckb').Value:=cbcek.Text;
              Params.ParamByName('stat').Value:='N';
              Params.parambyname('created_at').AsDateTime:=Now;
              Params.parambyname('created_by').AsString:=FHomeLogin.Eduser.Text;
              Params.parambyname('trans_no').Value:=trans_no;
              Execute;
            end;
         end;
         ProgressBar.Position:=j;
      end;
      progressbar.Position:=0;
      showmessage('Proses import No. Cek berhasil !');
      FDaf_EntryCek.qnocek.close;
      FDaf_EntryCek.qnocek.open;
   end;
end;

procedure TFImportnocek.cbbankChange(Sender: TObject);
begin
   with dm.Qtemp1 do
   begin
     close;
     sql.clear;
     sql.add('select * from t_bank');
     sql.add('where bank_code=:kdb');
     params.ParamByName('kdb').asstring:=cbbank.Text;
     open;
     first;
   end;
   cbrek.Clear;
   while not dm.Qtemp1.Eof do
   begin
      cbrek.Items.Add(dm.Qtemp1.fieldbyname('rekening_no').asstring);
      dm.Qtemp1.Next;
   end;
end;

procedure TFImportnocek.FormShow(Sender: TObject);
begin
   with dm.Qtemp do
   begin
     close;
     sql.clear;
     sql.add('select bank_code from t_bank where deleted_at is null');
     open;
     first;
   end;
   cbbank.clear;
   while not dm.Qtemp.eof do
   begin
     cbbank.Items.add(dm.Qtemp.fieldbyname('bank_code').asstring);
     dm.Qtemp.next;
   end;
end;


procedure TFImportnocek.clear;
begin
  Ed_trans_no.Text:='';
  cbbank.Text:='';
  cbcek.Text:='';
  cbrek.Text:='';
  Ed_header.Text:='';
end;

end.
