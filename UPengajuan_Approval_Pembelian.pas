unit UPengajuan_Approval_Pembelian;

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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, RzTabs, dxBar, dxRibbon, cxClasses,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ExtCtrls, RzPanel, RzButton, RzRadChk;

type
  TFListPengajuanApprovePembelian = class(TForm)
    ActMenu: TActionManager;
    ActBaru: TAction;
    ActUpdate: TAction;
    ActRo: TAction;
    ActDel: TAction;
    ActPrint: TAction;
    ActApp: TAction;
    ActReject: TAction;
    ActClose: TAction;
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
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    PG1: TRzPageControl;
    Tabkontrak: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    DsKerjasama: TDataSource;
    QKerjasama: TUniQuery;
    DsKerjasama_det: TDataSource;
    QKerjasama_det: TUniQuery;
    RzPanel1: TRzPanel;
    DBGridKontrak: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Cbkontrak: TRzCheckBox;
    TabPO: TRzTabSheet;
    TabSPB: TRzTabSheet;
    RzPanel2: TRzPanel;
    Cb_po: TRzCheckBox;
    RzPanel3: TRzPanel;
    Cb_spb: TRzCheckBox;
    DsDetailPo: TDataSource;
    Qdetailpo: TUniQuery;
    DsPo: TDataSource;
    QPo: TUniQuery;
    DBGridPO: TDBGridEh;
    DBGridEh1: TDBGridEh;
    RzPanel4: TRzPanel;
    Cb_Um: TRzCheckBox;
    DBGridEh2: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridSPB: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DSDetailspb: TDataSource;
    Qdetailspb: TUniQuery;
    QSPB: TUniQuery;
    DsSPB: TDataSource;
    procedure ActRoExecute(Sender: TObject);
    procedure CbkontrakClick(Sender: TObject);
    procedure ActAppExecute(Sender: TObject);
    procedure Cb_poClick(Sender: TObject);
    procedure DBGridKontrakDblClick(Sender: TObject);
    procedure TabkontrakShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    statusapp :String;
    procedure Refresh;
  end;

function FListPengajuanApprovePembelian: TFListPengajuanApprovePembelian;

{var
  FListPengajuanApprovePembelian: TFListPengajuanApprovePembelian;
  i:integer;}
implementation

{$R *.dfm}

uses UDataModule, UMainMenu, UKontrakKerjasama, UPO;

var
  realFListPengajuanApprovePembelian: TFListPengajuanApprovePembelian;
  i:integer;

// implementasi function
function FListPengajuanApprovePembelian: TFListPengajuanApprovePembelian;
begin
  if RealFListPengajuanApprovePembelian <> nil then
     FListPengajuanApprovePembelian := RealFListPengajuanApprovePembelian
  else
    Application.CreateForm(TFListPengajuanApprovePembelian, Result);
end;


procedure TFListPengajuanApprovePembelian.refresh;
begin
  if PG1.ActivePage=Tabkontrak then
  begin
    DBGridKontrak.StartLoadingStatus();
    QKerjasama.Close;
    QKerjasama_det.Close;
    with QKerjasama do
    begin
      close;
      sql.Clear;
      sql.Text:='select ''KONTRAK'' as modul ,A.contract_no as no_trans,a.supplier_name as Ket,a.contract_date as tgl_mulai,a.finish_date,t.harga,date_part(''YEAR'',contract_date) thn, '+
                ' '''' no_result,'''' kt,a.trans_year Tahun,a.trans_month Bulan,a.trans_day Tanggal from '+
                '(select a.*,b.supplier_code,b.supplier_name from purchase. t_coop_contract a '+
                'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code ORDER BY contract_no ASC) a '+
                'INNER JOIN LATERAL(SELECT sum(total_price)as harga,contract_no from purchase.t_coop_contract_det WHERE contract_no=a.contract_no '+
                'GROUP BY contract_no ORDER BY contract_no ASC) as t on 1=1 WHERE a."approval_status"=0 and a."status"=''1'' order by a.id ';
      open;
    end;
    QKerjasama.Open;
    QKerjasama_det.Open;
    DBGridKontrak.FinishLoadingStatus();
  end;

  if PG1.ActivePage=TabPO then
  begin
    DBGridPO.StartLoadingStatus();
    QPo.Close;
    QDetailPo.Close;
    with QPo do
    begin
      close;
      sql.Clear;
      sql.Text:='select ''PO'' as modul,A.po_no,b.supplier_name as Ket,a.po_date,a.delivery_date,t.harga,'''' no_result,'''' ket '+
                ' ,a.trans_year Tahun,a.trans_month Bulan,a.trans_day Tanggal from purchase.t_po a INNER JOIN t_supplier b on a.supplier_code=b.supplier_code '+
                ' INNER JOIN LATERAL(SELECT sum(subtotal)as harga,po_no from purchase.t_podetail WHERE po_no=a.po_no GROUP BY po_no) as t on 1=1'+
                ' WHERE a."approval_status"=0 and a."status"=''1'' order by a.po_date,a.po_no asc';
      Open;
    end;
    QPo.Open;
    QDetailPO.Open;
    DBGridPO.FinishLoadingStatus();
  end;
  if PG1.ActivePage=TabSPB then
  begin
    DBGridSPB.StartLoadingStatus();
    QSPB.Close;
    QDetailsPb.Close;
    with QSPB do
    begin
      close;
      sql.Clear;
      sql.Text:='Select (case WHEN a."approval_status"=0 THEN ''PENGAJUAN'' WHEN a."approval_status"=''1'' then ''APPROVE'' else ''REJECT'' end) AS status_app, '+
                'a.*, b.supplier_name from purchase.t_spb a '+
                'inner join t_supplier b on A.supplier_code=b.supplier_code '+
                'where a."approval_status"=''0'' '+
                'order by spb_no desc ';
      Open;
  end;
    QSPB.Open;
    QDetailsPb.Open;
    DBGridSPB.FinishLoadingStatus();
  end
  {if statusapp='KONTRAK' then
    begin
        DBGridKontrak.StartLoadingStatus();
        DBGridKontrak.FinishLoadingStatus();
        QKerjasama.close;
        QKerjasama_det.Close;
        if Qkerjasama.Active=False then QKerjasama.Active:=True;
        if QKerjasama_det.Active=False then QKerjasama_det.Active:=True;
    end;}
end;

procedure TFListPengajuanApprovePembelian.TabkontrakShow(Sender: TObject);
begin
   //statusapp:='KONTRAK';
   // refresh;
end;

procedure TFListPengajuanApprovePembelian.ActAppExecute(Sender: TObject);
begin
   if not dm.koneksi.InTransaction then
   dm.koneksi.StartTransaction;
   try
      if PG1.ActivePage=Tabkontrak then
      begin
        if DBGridKontrak.SelectedRows.Count=0 then
        begin
           ShowMessage('Jenis Transaksi Belum di Pilih');
        end
        else
        if messageDlg ('Yakin Approve No.'+DBGridKontrak.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
           if DBGridkontrak.SelectedRows.Count > 0 then
           begin
              with DBGridkontrak.DataSource.DataSet do
              begin
                 for i := 0 to DBGridkontrak.SelectedRows.Count-1 do
                 begin
                    GotoBookmark(DBGridkontrak.SelectedRows.Items[i]);
                    with dm.Qtemp do
                    begin
                        Close;
                        sql.Clear;
                        sql.Text:='Update purchase.t_coop_contract set "approval_status"=''1'', approval='+QuotedStr(Nm)+' WHERE contract_no='+QuotedStr(DBGridKontrak.Fields[0].AsString);
                        Execute;
                    end;
                 end;
              end;
              Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
           end;
        end;
      end;

      if PG1.ActivePage=TabPO then
      begin
        if DBGridPO.SelectedRows.Count=0 then
        begin
           ShowMessage('Jenis Transaksi Belum di Pilih');
        end
        else
        if messageDlg ('Yakin Approve No.'+DBGridPO.Fields[0].AsString+' ini '+ '?', mtInformation,  [mbYes]+[mbNo],0) = mrYes then
        begin
           if DBGridPO.SelectedRows.Count > 0 then
           begin
              with DBGridPO.DataSource.DataSet do
              begin
                 for i := 0 to DBGridPO.SelectedRows.Count-1 do
                 begin
                    GotoBookmark((DBGridPO.SelectedRows.Items[i]));
                    with dm.Qtemp do
                    begin
                      Close;
                      sql.Clear;
                      sql.Text:='Update purchase.t_po set "approval_status"=''1'',approval='+QuotedStr(Nm)+' WHERE po_no='+QuotedStr(DBGridPO.Fields[0].AsString);
                      Execute;
                    end;
                 end;
              end;
           end;
           Messagedlg(' Data Berhasil di Approve',MtInformation,[Mbok],0);
        end;
      end;
      dm.koneksi.Commit;
      Refresh;
   Except
   on E :Exception do
   begin
     MessageDlg(E.Message,mtError,[MBok],0);
     dm.koneksi.Rollback;
   end;
   end;

end;

procedure TFListPengajuanApprovePembelian.ActRoExecute(Sender: TObject);
begin
    Refresh;
    {if statusapp='KONTRAK' then
    begin
        DBGridKontrak.StartLoadingStatus();
        DBGridKontrak.FinishLoadingStatus();
        QKerjasama.close;
        QKerjasama_det.Close;
        if Qkerjasama.Active=False then QKerjasama.Active:=True;
        if QKerjasama_det.Active=False then QKerjasama_det.Active:=True;
    end;}
  {if statusapp='KONTRAK' then
  begin
    DBGridKontrak.StartLoadingStatus();
    //DBGridKontrak.FinishLoadingStatus();
    QKerjasama.Close;
    QKerjasama_det.Close;
    with QKerjasama do
    begin
      close;
      sql.Clear;
      sql.Text:='select ''KONTRAK'' as modul ,A.contract_no as no_trans,a.supplier_name as Ket,a.contract_date as tgl_mulai,a.finish_date,t.harga,date_part(''YEAR'',contract_date) thn, '+
                ' '''' no_result,'''' kt,a.trans_year Tahun,a.trans_month Bulan,a.trans_day Tanggal from '+
                '(select a.*,b.supplier_code,b.supplier_name from purchase. t_coop_contract a '+
                'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code ORDER BY contract_no ASC) a '+
                'INNER JOIN LATERAL(SELECT sum(total_price)as harga,contract_no from purchase.t_coop_contract_det WHERE contract_no=a.contract_no '+
                'GROUP BY contract_no ORDER BY contract_no ASC) as t on 1=1 WHERE a."approval_status"=0 and a."status"=''1'' order by a.id ';
      open;
    end;
    QKerjasama.Open;
    QKerjasama_det.Open;
    DBGridKontrak.FinishLoadingStatus();
  end;}
end;

procedure TFListPengajuanApprovePembelian.CbkontrakClick(Sender: TObject);
begin
   if  Cbkontrak.Checked=true then
   begin
     DBGridKontrak.SelectedRows.SelectAll;
   end
   else
     DBGridKontrak.SelectedRows.Clear;
end;

procedure TFListPengajuanApprovePembelian.Cb_poClick(Sender: TObject);
begin
   if  Cb_po.Checked=true then
   begin
     DBGridPO.SelectedRows.SelectAll;
   end
   else
     DBGridPO.SelectedRows.Clear;
end;

procedure TFListPengajuanApprovePembelian.DBGridKontrakDblClick(
  Sender: TObject);
begin
    if DBGridKontrak.Fields[0].Value='KONTRAK' then
    begin
      with FKontrakkerjasama do
      begin
        ActROExecute(sender);
        with Memkerjasama do
        begin
          Filtered:=false;
          Filter:=' no_kontrak='+QuotedStr(DBGridkontrak.Fields[1].Value);
          FilterOptions:=[];
          Filtered:=True;
        end;
        Memkerjasama.Open;
      end;
    end;
end;


procedure TFListPengajuanApprovePembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=cafree;
end;

procedure TFListPengajuanApprovePembelian.FormCreate(Sender: TObject);
begin
   realFListPengajuanApprovePembelian:=self;
end;

procedure TFListPengajuanApprovePembelian.FormDestroy(Sender: TObject);
begin
   realFListPengajuanApprovePembelian:=nil;
end;

procedure TFListPengajuanApprovePembelian.FormShow(Sender: TObject);
begin
  if QKerjasama.Active=false then
  begin
    QKerjasama.Active:=true;
  end;

  if QKerjasama_det.Active=false then
  begin
    QKerjasama_det.Active:=true;
  end;

end;

// Contoh RegisterClass
Initialization
  RegisterClass(TFListPengajuanApprovePembelian);

end.
