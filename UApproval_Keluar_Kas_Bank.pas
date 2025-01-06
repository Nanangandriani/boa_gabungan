unit UApproval_Keluar_Kas_Bank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  dxRibbon, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, RzButton, RzRadChk,
  Vcl.ExtCtrls, RzPanel, RzTabs, dxBar, cxClasses, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, RzRadGrp;

type
  TFApproval_Keluar_Kas_Bank = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarBaru: TdxBarLargeButton;
    dxBarUpdate: TdxBarButton;
    dxbarRefresh: TdxBarButton;
    dxBarDelete: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    PG1: TRzPageControl;
    Tab_Rencana_Pelunasan: TRzTabSheet;
    RzPanel1: TRzPanel;
    Combo_Approve: TRzCheckBox;
    DBGrid_Rencana_Pelunasan: TDBGridEh;
    TabPengajuan_Keluar_KasBank: TRzTabSheet;
    RzPanel2: TRzPanel;
    Cb_Ajuan: TRzCheckBox;
    DBGridPengajuan: TDBGridEh;
    DBGridEh1: TDBGridEh;
    TabPengeluaran_KasBank: TRzTabSheet;
    RzPanel3: TRzPanel;
    Cb_spb: TRzCheckBox;
    DBGridPengeluaran: TDBGridEh;
    DBGridEh5: TDBGridEh;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
    QRencana: TUniQuery;
    DSRencana: TDataSource;
    cblunas: TCheckBox;
    BCari: TRzBitBtn;
    Ed_KdAkun: TEdit;
    CBJenisHutang: TComboBox;
    CbRencanake: TComboBox;
    Button5: TButton;
    txtnmsupp: TEdit;
    txtkdsupp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TRzDateTimePicker;
    DTP2: TRzDateTimePicker;
    Label5: TLabel;
    QRencanajumlah: TFloatField;
    QRencanaid: TLargeintField;
    QRencanafaktur_no: TStringField;
    QRencanainv_no: TStringField;
    QRencanasj_no: TStringField;
    QRencanafaktur_date: TDateField;
    QRencanaperiode1: TDateField;
    QRencanaperiode2: TDateField;
    QRencanabank: TStringField;
    QRencanacek_no: TStringField;
    QRencanaplan_to: TSmallintField;
    QRencanasupplier_code: TStringField;
    QRencanasupplier_name: TStringField;
    QRencanapaid_date: TDateField;
    QRencanaperiodetempo1: TDateField;
    QRencanaperiodetempo2: TDateField;
    QRencanapaid_status: TSmallintField;
    QRencanaapprove_status: TBooleanField;
    QRencanadebt_type: TIntegerField;
    QRencanaaccount_code: TStringField;
    QRencanaaccount_name: TStringField;
    QRencanatrans_date: TDateField;
    QRencanatrans_no: TStringField;
    Cari2: TRzBitBtn;
    DT2: TRzDateTimePicker;
    Label6: TLabel;
    DT1: TRzDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    rbkas: TRadioButton;
    rbbank: TRadioButton;
    cbapprove: TCheckBox;
    QPengajuanKasBank: TUniQuery;
    DSPengajuanKasBank: TDataSource;
    procedure ActRoExecute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BCariClick(Sender: TObject);
    procedure Combo_ApproveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure Cari2Click(Sender: TObject);
    procedure Cb_AjuanClick(Sender: TObject);
    procedure TabPengajuan_Keluar_KasBankShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Refresh;
    procedure Approve;
  end;

//var
function
  FApproval_Keluar_Kas_Bank: TFApproval_Keluar_Kas_Bank;

implementation

{$R *.dfm}

uses UDataModule, USearch_Supplier, UMainMenu;

var
  RealFApproval_Keluar_Kas_Bank: TFApproval_Keluar_Kas_Bank;

function FApproval_Keluar_Kas_Bank: TFApproval_Keluar_Kas_Bank;
begin
  if RealFApproval_Keluar_Kas_Bank <> nil then
     FApproval_Keluar_Kas_Bank:= RealFApproval_Keluar_Kas_Bank
  else
    Application.CreateForm(TFApproval_Keluar_Kas_Bank, Result);
end;

procedure TFApproval_Keluar_Kas_Bank.Approve;
var i:integer;
begin
   if not dm.koneksi.InTransaction then
   dm.koneksi.StartTransaction;
   try
      if PG1.ActivePage=Tab_Rencana_Pelunasan then
      begin
        if DBGrid_Rencana_Pelunasan.SelectedRows.Count=0 then
        begin
           ShowMessage('Jenis Transaksi Belum di Pilih');
        end
        else
        if messageDlg ('Yakin Approve No.'+DBGrid_Rencana_Pelunasan.Fields[2].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
           if DBGrid_Rencana_Pelunasan.SelectedRows.Count > 0 then
           begin
              with DBGrid_Rencana_Pelunasan.DataSource.DataSet do
              begin
                 for i := 0 to DBGrid_Rencana_Pelunasan.SelectedRows.Count-1 do
                 begin
                    GotoBookmark(DBGrid_Rencana_Pelunasan.SelectedRows.Items[i]);
                    with dm.Qtemp do
                    begin
                        Close;
                        sql.Clear;
                        sql.Text:='Update t_paid_debt_det set "approve_status"=''1'', approve_name='+QuotedStr(Nm)+' '+
                                  'WHERE id='+QuotedStr(DBGrid_Rencana_Pelunasan.Fields[10].AsString);
                        Execute;
                    end;
                 end;
              end;
           end;
           Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
        end;
      end;
   Except
   on E :Exception do
     begin
       MessageDlg(E.Message,mtError,[MBok],0);
       dm.koneksi.Rollback;
     end;

   end;



    {if application.MessageBox('Data rencana pelunasan akan diapprove?','confirm',mb_yesno or mb_iconquestion)=id_yes then
    begin
       QRencana.First;
       while not QRencana.Eof do
       begin
         with QRencana do
         begin
           close;
           sql.Clear;
           sql.Add('update tbl_det_lunas_hutang set stat_approve=:bool where nofaktur=:nofak and periode1=:tgl1 and periode2=:tgl2 ');
           params.ParamByName('nofak').AsString:=qtmprencananofaktur.AsString;
           params.ParamByName('tgl1').asdatetime:=qtmprencanaperiode1.asdatetime;
           params.ParamByName('tgl2').asdatetime:=qtmprencanaperiode2.asdatetime;
           params.ParamByName('bool').value:=qtmprencanapilih.value;

           Execute;
         end;
         QRencana.Next;
     end;
     QRencana.close;
     QRencana.open;

     showmessage('Approve berhasil !');
    end;}
end;

procedure TFApproval_Keluar_Kas_Bank.ActAppExecute(Sender: TObject);
var i:integer;
begin
   //Approve;
   //if not dm.koneksi.InTransaction then
   //dm.koneksi.StartTransaction;
   //try
      if PG1.ActivePage=Tab_Rencana_Pelunasan then
      begin
        if DBGrid_Rencana_Pelunasan.SelectedRows.Count=0 then
        begin
           ShowMessage('Jenis Transaksi Belum di Pilih');
        end
        else
        if messageDlg ('Yakin Approve No.'+DBGrid_Rencana_Pelunasan.Fields[2].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
           if DBGrid_Rencana_Pelunasan.SelectedRows.Count > 0 then
           begin
              with DBGrid_Rencana_Pelunasan.DataSource.DataSet do
              begin
                 for i := 0 to DBGrid_Rencana_Pelunasan.SelectedRows.Count-1 do
                 begin
                    GotoBookmark(DBGrid_Rencana_Pelunasan.SelectedRows.Items[i]);
                    with dm.Qtemp do
                    begin
                        Close;
                        sql.Clear;
                        sql.Text:='Update t_paid_debt_det set "approve_status"=''1'' '+
                                  ', approve_name='+QuotedStr(Nm)+' '+
                                  'WHERE id='+QuotedStr(DBGrid_Rencana_Pelunasan.Fields[10].AsString);
                        Execute;
                    end;
                 end;
              end;
           end;
           //Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
        end;
      end;
   //Except
   //on E :Exception do
     //begin
       //MessageDlg(E.Message,mtError,[MBok],0);
       //dm.koneksi.Rollback;
     //end;

   //end;
      if PG1.ActivePage=TabPengajuan_Keluar_KasBank then
      begin
        if DBGridPengajuan.SelectedRows.Count=0 then
        begin
           ShowMessage('Jenis Transaksi Belum di Pilih');
        end
        else
        if messageDlg ('Yakin Approve No.'+DBGridPengajuan.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
           if DBGridPengajuan.SelectedRows.Count > 0 then
           begin
              with DBGridPengajuan.DataSource.DataSet do
              begin
                 for i := 0 to DBGridPengajuan.SelectedRows.Count-1 do
                 begin
                    GotoBookmark(DBGridPengajuan.SelectedRows.Items[i]);
                    with dm.Qtemp do
                    begin
                        Close;
                        sql.Clear;
                        sql.Text:='Update t_cash_bank_expenditure_submission set "app_stat"=true '+
                                  ', approval='+QuotedStr(Nm)+' '+
                                  'WHERE voucher_no='+QuotedStr(DBGridPengajuan.Fields[0].AsString);
                        Execute;
                    end;
                 end;
              end;
           end;
           //Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
        end;
      end;
     Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
     refresh;
end;

procedure TFApproval_Keluar_Kas_Bank.ActRoExecute(Sender: TObject);
begin
   Refresh;
   BCariClick(sender);
end;

procedure TFApproval_Keluar_Kas_Bank.BCariClick(Sender: TObject);
var query:string;
begin
  query:='SELECT * from v_plan_paid_debt ';
  if cblunas.Checked=false then
  begin
       with QRencana do
       begin
         close;
         sql.clear;
         sql.add(query);
         if Length(txtkdsupp.Text) and Length(CBJenisHutang.Text)=0  then
            sql.add('where approve_status=false and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.Date))+'')
         else
         begin
            sql.add('where supplier_code='+QuotedStr(txtkdsupp.Text)+' and approve_status=false and  periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.Date))+' and account_code='+Quotedstr(Ed_KdAkun.Text));
         end;
         sql.add('order by trans_date,cek_no,trans_no');
         open;
       end;
  end
  else
  begin
       with QRencana do
       begin
         close;
         sql.clear;
         sql.add(query);
         if Length(txtkdsupp.Text) and Length(CBJenisHutang.Text)=0 then
         sql.add('where approve_status=true and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.Date))+' ')
         //sql.add('where supplier_code='+QuotedStr(txtkdsupp.Text)+'  and approve_status=true and periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.Date))+' and periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.Date))+' ')
         else
         begin
           sql.add('where supplier_code='+QuotedStr(txtkdsupp.Text)+' and approve_status=true and periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP1.Date))+' and '+QuotedStr(formatdatetime('yyyy-mm-dd',DTP2.Date))+' and c.kd_akun='+Quotedstr(Ed_KdAkun.Text));
           Params.ParamByName('kds').asstring:=txtkdsupp.Text;
         end;
         sql.add('order by trans_date,cek_no,trans_no');
         open;
       end;
  end;

  {if QRencana.RecordCount<>0 then
  begin
     if cblunas.Checked=true then
     begin
     with qtmprencana do
     begin
       close;
       sql.Clear;
       sql.Add('select a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=true and a.noinv=c.noinv and a.username=:usr  and b.kd_akun=''2110'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+'');  //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;

     with QHutangBiaya do   //15-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select  a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=true and a.noinv=c.noinv and a.username=:usr  and b.kd_akun=''2130'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+''); //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;

     with QHutangAktiva do  //15-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select distinct a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=true and a.noinv=c.noinv and a.username=:usr  and b.kd_akun=''2120'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+'');  //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;
     PG1.ActivePage:=Tabsheet1;
     Tabsheet2.TabVisible:=true;
     Tabsheet3.TabVisible:=true;
     end
     else
     if cblunas.Checked=false then
     begin
     with qtmprencana do
     begin
       close;
       sql.Clear;
       sql.Add('select  a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=false and a.noinv=c.noinv and a.username=:usr and b.kd_akun=''2110'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+' ');  //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;

     with QHutangBiaya do   //17-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select  a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=false and a.noinv=c.noinv and a.username=:usr  and b.kd_akun=''2130'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+''); //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;

     with QHutangAktiva do  //17-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select  a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.pilih=false and a.noinv=c.noinv and a.username=:usr  and b.kd_akun=''2120'' and c.periode1='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker1.Date))+' and c.periode2='+QuotedStr(formatdatetime('yyyy-mm-dd',DateTimePicker2.Date))+''); //14-11-2023
       if CbRencanake.Text<>'' then
       sql.Add('and c.rencanake='+Quotedstr(cbrencanake.Text));
       if length(txtkdsupp.Text)<>0 then
       sql.add('order by c.nofaktur,c.tglfaktur,b.tgl_terima,a.no_cek,b.no_terima')
       else
       sql.Add('order by a.kd_sup,b.tgl_terima,b.nofaktur ASC '); //10-04-2022
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;
     PG1.ActivePage:=Tabsheet1;
     Tabsheet1.TabVisible:=true;
     Tabsheet2.TabVisible:=true;
     Tabsheet3.TabVisible:=true;
     end;

  end;

  if uniquery1.RecordCount=0 then
  begin
     with fmainmenu.qexec do
     begin
        close;
        sql.Clear;
        sql.Add('delete from tbl_det_lunas_hutang_tmp2 where username=:usr');
        params.ParamByName('usr').AsString:=fmainmenu.username;
        execute;
     end;
     with qtmprencana do
     begin
       close;
       sql.Clear;
       sql.Add('select a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.username=:usr ');
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;
     with qhutangbiaya do //21-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.username=:usr ');
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;
     with qhutangaktiva do //21-06-2022
     begin
       close;
       sql.Clear;
       sql.Add('select a.*,b.*,c.rencanake as rencanake2 from tbl_det_lunas_hutang_tmp2 a,t_terima_material b,tbl_det_lunas_hutang c where a.noinv=b.no_terima and a.username=:usr ');
       params.ParamByName('usr').AsString:=fmainmenu.username;
       open;
     end;
    end;}
end;

procedure TFApproval_Keluar_Kas_Bank.Button5Click(Sender: TObject);
begin
  with FSearch_Supplier do
  begin
     QSupplier.Close;
     QSupplier.Open;
  end;
  FSearch_Supplier.Caption:='Master Data Supplier';
  FSearch_Supplier.vcall:='rencana_approve';
  FSearch_Supplier.ShowModal;
end;

procedure TFApproval_Keluar_Kas_Bank.Cb_AjuanClick(Sender: TObject);
begin
   if  Cb_Ajuan.Checked=true then
   begin
      DBGridPengajuan.SelectedRows.SelectAll;
   end
   else
      DBGridPengajuan.SelectedRows.Clear;
end;

procedure TFApproval_Keluar_Kas_Bank.Combo_ApproveClick(Sender: TObject);
begin
   if  Combo_Approve.Checked=true then
   begin
      DBGrid_Rencana_Pelunasan.SelectedRows.SelectAll;
   end
   else
      DBGrid_Rencana_Pelunasan.SelectedRows.Clear;
end;

procedure TFApproval_Keluar_Kas_Bank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFApproval_Keluar_Kas_Bank.FormCreate(Sender: TObject);
begin
   RealFApproval_Keluar_Kas_Bank:=self;
end;

procedure TFApproval_Keluar_Kas_Bank.FormDestroy(Sender: TObject);
begin
    RealFApproval_Keluar_Kas_Bank:=nil;
end;

procedure TFApproval_Keluar_Kas_Bank.FormShow(Sender: TObject);
begin
   if QRencana.Active=false then
   QRencana.Active:=true;
   DTP1.Date:=Now;
   DTP2.Date:=Now;
   if QPengajuanKasBank.Active=false then
      QPengajuanKasBank.Active:=true;
end;

procedure TFApproval_Keluar_Kas_Bank.Refresh;
begin
  if PG1.ActivePage=Tab_Rencana_Pelunasan then
  begin
    DBGrid_Rencana_Pelunasan.StartLoadingStatus();
    QRencana.Close;
    QRencana.Open;
    DBGrid_Rencana_Pelunasan.FinishLoadingStatus();
  end;

  if PG1.ActivePage=TabPengajuan_Keluar_KasBank then
  begin
    DBGridPengajuan.StartLoadingStatus();
    QPengajuanKasBank.Close;
    QPengajuanKasBank.Open;
    DBGridPengajuan.FinishLoadingStatus();
  end;

end;


procedure TFApproval_Keluar_Kas_Bank.Cari2Click(Sender: TObject);
var
   query:string;
begin
   query:='select a.*,b.position,b.code_account,b.code_account_header from t_cash_bank_expenditure_submission a '+
          'inner join t_cash_bank_expenditure_submission_det b '+
          'on a.voucher_no=b.no_voucher '+
          'where ((periode1 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DT1.Date))+' '+
          'and '+QuotedStr(formatdatetime('yyyy-mm-dd',DT2.Date))+') or (periode2 between '+QuotedStr(formatdatetime('yyyy-mm-dd',DT1.Date))+' '+
          'and '+QuotedStr(formatdatetime('yyyy-mm-dd',DT2.Date))+')) and position=''K'' ';
          //'and account_code=''1111''';


    if rbkas.Checked=true then
    begin
      if cbapprove.Checked=false then
      begin
           with QPengajuanKasBank do
           begin
             close;
             sql.clear;
             sql.add(query);
             sql.Add('and app_stat=false and additional_code=''KK'' ') ;
             sql.add('order by trans_date,voucher_no');
             open;
           end;
      end
      else
      begin
         with QPengajuanKasBank do
           begin
             close;
             sql.clear;
             sql.add(query);
             sql.Add('and app_stat=true and additional_code=''KK'' ') ;
             sql.add('order by trans_date,voucher_no');
             open;
           end;
      end;
    end
    else
    if rbbank.Checked=true then
    begin
      if cbapprove.Checked=false then
      begin
           with QPengajuanKasBank do
           begin
             close;
             sql.clear;
             sql.add(query);
             sql.Add('and a.app_stat=false and additional_code=''BS'' ') ;
             sql.add('order by trans_date,voucher_no');
             open;
           end;
      end
      else
      begin
         with QPengajuanKasBank do
           begin
             close;
             sql.clear;
             sql.add(query);
             sql.Add(' and a.app_stat=true and additional_code=''BS'' ') ;
             sql.add('order by trans_date,voucher_no');
             open;
           end;
      end;
    end;

end;

procedure TFApproval_Keluar_Kas_Bank.TabPengajuan_Keluar_KasBankShow(
  Sender: TObject);
begin
   rbkas.Checked:=true;
   cari2click(sender);
end;

initialization
RegisterClass(TFApproval_Keluar_Kas_Bank);

end.
