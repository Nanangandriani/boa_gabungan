unit UMainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Tabs, Vcl.ComCtrls,
  Vcl.Menus, Vcl.ToolWin, Vcl.WinXCalendars, System.Actions, Vcl.ActnList,
  Vcl.WinXCtrls, Vcl.StdCtrls, RzPanel, RzButton, RzStatus, RzDBStat,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, RzTabs, Vcl.OleCtrls,
  SHDocVw, Winapi.WebView2, Winapi.ActiveX, Vcl.Edge,MSHTML, ShellAPI,// frxClass,
  Vcl.Buttons, RzSplit, RzTreeVw, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray ,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm,
  dxBar, cxClasses, dxRibbon, frxClass, frxDBSet, Data.DB, MemDS, DBAccess, Uni;

type
  TFMainMenu = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    Load: TRzProgressStatus;
    RzClockStatus1: TRzClockStatus;
    StatusUser: TRzGlyphStatus;
    ImageList1: TImageList;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    dxBarManager1Bar5: TdxBar;
    dxBarManager1Bar6: TdxBar;
    dxBarManager1Bar7: TdxBar;
    dxBarLargeButtonFile: TdxBarLargeButton;
    dxBarLargeButtonPengaturan: TdxBarLargeButton;
    dxBarLargeButtonDataMaster: TdxBarLargeButton;
    dxBarLargeButtonTransaksi: TdxBarLargeButton;
    dxBarLargeButtonLaporan: TdxBarLargeButton;
    dxBarLargeButtonApproval: TdxBarLargeButton;
    dxBarLargeButtonUtility: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    CategoryPanelUtama: TCategoryPanelGroup;
    Splitter1: TSplitter;
    PageControl1: TRzPageControl;
    TabForm: TRzTabSheet;
    PanelParent: TPanel;
    EdgeBrowser1: TEdgeBrowser;
    WebBrowser1: TWebBrowser;
    dxBarLargeButton2: TdxBarLargeButton;
    QJurnal: TUniQuery;
    frxDBDJurnal: TfrxDBDataset;
    Report: TfrxReport;
    RzStatusPane1: TRzStatusPane;
    StatusVersion: TRzStatusPane;
    RzVersionInfo1: TRzVersionInfo;
    StatusPerusahaan: TRzStatusPane;
    RzStatusVersion: TRzStatusPane;
    procedure Exit1Click(Sender: TObject);
    procedure RefreshMenu1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ImgFileClick(Sender: TObject);
    procedure ImgPengaturanClick(Sender: TObject);
    procedure ImgDataMasterClick(Sender: TObject);
    procedure ImgTransaksiClick(Sender: TObject);
    procedure ImgLaporanClick(Sender: TObject);
    procedure ImgApprovalClick(Sender: TObject);
    procedure ImgUtilityClick(Sender: TObject);
    procedure PageControl1Close(Sender: TObject; var AllowClose: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure dxBarLargeButtonFileClick(Sender: TObject);
    procedure dxBarLargeButtonPengaturanClick(Sender: TObject);
    procedure dxBarLargeButtonDataMasterClick(Sender: TObject);
    procedure dxBarLargeButtonTransaksiClick(Sender: TObject);
    procedure dxBarLargeButtonLaporanClick(Sender: TObject);
    procedure dxBarLargeButtonApprovalClick(Sender: TObject);
    procedure dxBarLargeButtonUtilityClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Procedure ShowForm;
    Procedure TampilTabForm;
    Procedure TampilTabForm2;
    Procedure AksesSub(Form: TForm; Akses,Sub:String);
    Procedure CreateMenu(Role:String);
    Procedure CreateSubMenu(Role,Menu:String);
    Procedure CloseTabs(Sender: TObject);
    Procedure ClearCategoryPanelGroup;
    Procedure Cleartreview;
    Procedure GetSubMenu(Sender: TObject);
    Procedure btnApplyClick(Sender: TObject);
    Procedure CallFoo(S: string; I: Integer);
    procedure Getsubmenutree(Sender: TObject);
    procedure CloseAllTabsheets;
    procedure UpdateVersi;
    procedure DisableMenu;
    procedure EnableMenu;
  end;

var
  FMainMenu: TFMainMenu;
  AClass: TPersistentClass;
  AFormClass: TFormClass;
  AForm: TForm;
  ANewTabs: TRzTabSheet;
  ApnTabs: TRzPanel;
  ACategoryPanel: TCategoryPanel;
  //AButtonPanel: TButton;
  //CloseButton: TButton;
  AButtonPanel: TRzButton;
  CloseButton: TRzButton;
  FormAktif,I:Integer;
  HakAkses : String;
  vCaptionButton, vNamaButton :string;
  MyTreeView : TRzTreeView;
  Doc: IHTMLDocument2;      // current HTML document
  HTMLWindow: IHTMLWindow2; // parent window of current HTML document
  Nm,loksbu,kdsbu,dept_code,jabatan_code,SBU,Kd_SBU,VMenu,kdgdng,format_tgl, NmFull:string;
  JSFn: string;
 // statustr:integer;
implementation

{$R *.dfm} {$R resource.RES}
uses UDataModule, UHomeLogin, UMy_Function, Usingkronisasi;

function ExecuteScript(doc: IHTMLDocument2; script: string; language: string): Boolean;
var
  win: IHTMLWindow2;
  Olelanguage: Olevariant;
begin
  if doc <> nil then
  begin
    try
      win := doc.parentWindow;
      if win <> nil then
      begin
        try
          Olelanguage := language;
          win.ExecScript(script, Olelanguage);
        finally
          win := nil;
        end;
      end;
    finally
      doc := nil;
    end;
  end;
end;

function GetElementIdValue(WebBrowser: TWebBrowser;
  TagName, TagId, TagAttrib: string):string;
var
  Document: IHTMLDocument2;
  Body: IHTMLElement2;
  Tags: IHTMLElementCollection;
  Tag: IHTMLElement;
  I: Integer;
begin
   Result:='';
   if not Supports(WebBrowser.Document, IHTMLDocument2, Document) then
    raise Exception.Create('Invalid HTML document');
   if not Supports(Document.body, IHTMLElement2, Body) then
     raise Exception.Create('Can''t find <body> element');
   Tags := Body.getElementsByTagName(UpperCase(TagName));
   for I := 0 to Pred(Tags.length) do begin
     Tag:=Tags.item(I, EmptyParam) as IHTMLElement;
     if Tag.id=TagId then Result := Tag.getAttribute(TagAttrib, 0);
   end;
end;

procedure TFMainMenu.DisableMenu;
begin
  dxBarLargeButtonFile.Enabled:=False;
  dxBarLargeButtonPengaturan.Enabled:=False;
  dxBarLargeButtonDataMaster.Enabled:=False;
  dxBarLargeButtonTransaksi.Enabled:=False;
  dxBarLargeButtonLaporan.Enabled:=False;
  dxBarLargeButtonApproval.Enabled:=False;
  dxBarLargeButtonUtility.Enabled:=False;
  dxBarLargeButton2.Enabled:=False;
  StatusPerusahaan.Caption:='';
  StatusUser.Caption:='';
end;

procedure TFMainMenu.EnableMenu;
begin
  dxBarLargeButtonFile.Enabled:=True;
  dxBarLargeButtonPengaturan.Enabled:=True;
  dxBarLargeButtonDataMaster.Enabled:=True;
  dxBarLargeButtonTransaksi.Enabled:=True;
  dxBarLargeButtonLaporan.Enabled:=True;
  dxBarLargeButtonApproval.Enabled:=True;
  dxBarLargeButtonUtility.Enabled:=True;
  dxBarLargeButton2.Enabled:=True;
end;

procedure TFMainMenu.UpdateVersi;
var
  rStream: TResourceStream;
  fStream: TFileStream;
  fname: string;
begin
//  if MessageBox(Handle,'Mau MengUpdate Versi Aplikasi?','APP Version',MB_OKCANCEL or MB_ICONEXCLAMATION or MB_SYSTEMMODAL or MB_SETFOREGROUND)=1 then begin
    fname := ExtractFileDir(Paramstr(0))+'\SmartBOAUpDater.exe';
    rStream := TResourceStream.Create(hInstance, 'UpDater', RT_RCDATA);
    try
      fStream := TFileStream.Create(fname, fmCreate) ;
      try
        fStream.CopyFrom(rStream, 0) ;
      finally
        fStream.Free;
      end;
    finally
      rStream.Free;
    end;
//    fname := ExtractFileDir(Paramstr(0))+'\unzip32.dll';
//    rStream := TResourceStream.Create(hInstance, 'zipdll', RT_RCDATA);
//    try
//      fStream := TFileStream.Create(fname, fmCreate) ;
//      try
//        fStream.CopyFrom(rStream, 0) ;
//      finally
//        fStream.Free;
//      end;
//    finally
//      rStream.Free;
//    end;
    ShellExecute(Handle,'open','SmartBOAUpDater.exe',nil,nil,SW_SHOWNORMAL);
    Application.Terminate;
//  end;
end;

procedure TFMainMenu.CallFoo(S: string; I: Integer);
   { Calls JavaScript foo() function }
var
  Doc: IHTMLDocument2;      // current HTML document
  HTMLWindow: IHTMLWindow2; // parent window of current HTML document
  JSFn: string;
  result:integer;             // stores JavaScipt function call
begin
  //Result:='';
  // Get reference to current document
   Doc := WebBrowser1.Document as IHTMLDocument2;
   if not Assigned(Doc) then
     Exit;
   // Get parent window of current document
   HTMLWindow := Doc.parentWindow;
   if not Assigned(HTMLWindow) then
     Exit;
   // Run JavaScript
   try
     JSFn := Format('foo("%s",%d)', [S, I]);  // build function call
     HTMLWindow.execScript(JSFn, 'JavaScript'); // execute function
     // get result
     //Result := GetElementIdValue(WebBrowser1, 'input', 'result', 'value')
   except
     // handle exception in case JavaScript fails to run
   end;
end;

procedure TFMainMenu.CloseTabs;
var
  RzTabSheet: TRzTabSheet;
begin
  {if Sender is TButton then
  begin
    RzTabSheet := TRzTabSheet(TButton(Sender).Parent);
    if RzTabSheet.PageControl <> nil then
      RzTabSheet.PageControl.CloseActiveTab(); 
      RzTabSheet.TabVisible := true;
  end;} 
  //CloseTabs(TabForm);
end;

procedure TFMainMenu.ClearCategoryPanelGroup;
var
  i: Integer;
begin
  for i := CategoryPanelUtama.ControlCount - 1 downto 0 do
  begin
    if CategoryPanelUtama.Controls[i] is TCategoryPanel then
      CategoryPanelUtama.Controls[i].Free;
  end;
end;

procedure TFMainMenu.Cleartreview;
  var
  SelNode: TTreeNode;
begin
  {if TreeView1.Selected <> nil then
  begin
    SelNode := TreeView1.Selected;
    TreeView1.Selected.Delete;
    TreeView1.SetFocus;
  end; }
end;

procedure TFMainMenu.GetSubMenu(Sender: TObject);
begin
  CreateSubMenu('admin',TButton(Sender).Caption);
  TabForm.Caption:=TButton(Sender).Caption;
end;

procedure TFMainMenu.Getsubmenutree(Sender: TObject);
begin

end;

procedure TFMainMenu.ImgApprovalClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabApproval.Caption);
  //TabForm.Caption:=LabApproval.Caption;
end;

procedure TFMainMenu.ImgDataMasterClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabDataMaster.Caption);
  //TabForm.Caption:=LabDataMaster.Caption;
end;

procedure TFMainMenu.ImgFileClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabFile.Caption);
  //TabForm.Caption:=LabFile.Caption;
end;

procedure TFMainMenu.ImgLaporanClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabLaporan.Caption);
  //TabForm.Caption:=LabLaporan.Caption;
end;

procedure TFMainMenu.ImgPengaturanClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabPengaturan.Caption);
  //TabForm.Caption:=LabPengaturan.Caption;
end;

procedure TFMainMenu.ImgTransaksiClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabTransaksi.Caption);
  //TabForm.Caption:=LabTransaksi.Caption;
end;

procedure TFMainMenu.ImgUtilityClick(Sender: TObject);
begin
  //CreateSubMenu('admin',LabUtility.Caption);
  //TabForm.Caption:=LabUtility.Caption;
end;

procedure TFMainMenu.PageControl1Close(Sender: TObject;
  var AllowClose: Boolean);
begin  
   //showmessage('Test');
    if PageControl1.TabIndex<>0 then
    begin
      //showmessage(TRzTabSheet(Sender).Name); 
      CloseTabs(TRzTabSheet(Sender));   
      TRzTabSheet(Sender).TabVisible:=false;
      //ANewTabs.Free;
    end;
end;

procedure TFMainMenu.BitBtn1Click(Sender: TObject);
begin
//  frxReport1.ShowReport()
  ///  ShowMessage(dm.linktest1);
end;

procedure TFMainMenu.btnApplyClick(Sender: TObject);
begin
  TRzTabSheet(Sender).Caption:=TButton(Sender).Caption;
  vCaptionButton:=TButton(Sender).Caption;
  vNamaButton:=TButton(Sender).Name;
  TampilTabForm;
end;

procedure TFMainMenu.TampilTabForm;
var i: Integer;
begin
  with dm.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'select * from t_menu_sub where submenu=' +
                QuotedStr(vCaptionButton)+' AND deleted_at IS NULL';
    open;
  end;
  if dm.Qtemp.RecordCount<>1 then
  begin
    ShowMessage('Data Menu Tidak Di Temukan Silakan Hubungi IT');
    exit;
  end;
  if dm.Qtemp.RecordCount=1 then
  begin
    if vCaptionButton='Singkronisasi' then
    begin
      FSingkronisasi.Show;
      Exit;
    end else
    if vCaptionButton='Logout' then
    begin
      CloseAllTabsheets;
      ClearCategoryPanelGroup;
      FHomeLogin.Eduser.Text:='';
      FHomeLogin.EdPass.Text:='';
      StatusPerusahaan.Caption:='';
      StatusUser.Caption:='';
      CategoryPanelUtama.Panels.Clear;
//      PageControl1.ActivePage:=TabForm;

//      Self.Hide;
      DisableMenu;
//      Application.CreateForm(TFHomeLogin, FHomeLogin);
      FHomeLogin.Show;
      FHomeLogin.CbSBU.Properties.Items.Clear;
      DM.ABSDatabase1.Close;
      DM.ABSDatabase1.DatabaseFileName:=cLocation+'Conectdb'+ '.abs';
      DM.ABSDatabase1.Open;
      DM.ABSTable1.Close;
      DM.ABSTable1.Open;
      DM.ABSTable1.Filtered:=False;

      DM.ABSTable1.First;
      while not DM.ABSTable1.Eof do
      begin
        FHomeLogin.CbSBU.Properties.Items.Add(DM.ABSTable1.FieldByName('nama_sbu').AsString);
        DM.ABSTable1.Next;
      end;
//      Application.Run;
       exit;
    end else
    if vCaptionButton='Exit' then
    begin
      Application.Terminate;
    end else if vCaptionButton='Cek Update' then
    begin
      with dm.Qtemp do
      begin
        close;
        sql.Clear;
        sql.Text:='SELECT * FROM app_versions ORDER BY release_date DESC LIMIT 1';
        open;
      end;

      if dm.Qtemp.FieldValues['version_number']=RzVersionInfo1.ProductVersion then
      begin
        ShowMessage('Aplikasi sudah terupdate');
        if MessageDlg('Apakah anda mau update ulang?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          UpdateVersi;
        end else exit;
      end else begin
        MessageDlg('Aplikasi harus diperbaharui..!!', mtWarning, [mbOK], 0);
        UpdateVersi;
      end;

    end else if vCaptionButton='Refresh Menu' then
    begin
//        TampilTabForm ;
    end else
      for i := 0 to PageControl1.PageCount - 1 do
      begin
        if PageControl1.Pages[i].Name = 'Tab' + vNamaButton then
        begin
          // Tab ditemukan!
          ANewTabs := TRzTabSheet(PageControl1.Pages[i]);

          // Aktifkan Tab tersebut
          PageControl1.ActivePage := ANewTabs;

          // Set fokus ke PageControl agar form di dalamnya menerima fokus
          PageControl1.SetFocus;

          // Keluar dari prosedur agar tidak membuat Tab baru
          Exit;
        end;
      end;
     //create new Tabsheet
      ANewTabs := TRzTabSheet.Create(nil);
      ANewTabs.Name := 'Tab'+vNamaButton;
      ANewTabs.Caption := vCaptionButton;
      ANewTabs.PageControl := PageControl1;
      PageControl1.ActivePage := ANewTabs;
      {//Create Close Tab
      CloseButton := TButton.Create(ANewTabs);
      CloseButton.Parent := ANewTabs;
      CloseButton.Caption := 'X';
      CloseButton.Left := ANewTabs.Width - CloseButton.Width - 5;
      CloseButton.Top := 5;
      CloseButton.OnClick := CloseTabs; }
      //Create Panel Dalam Tab
      ApnTabs := TRzPanel.Create(nil);
      ApnTabs.Name := 'Panel'+vNamaButton;
      ApnTabs.Caption := vCaptionButton;
      ApnTabs.Parent := ANewTabs;
      ApnTabs.Align:= alClient;
      //Create Form Dalam Panel
      //AClass := FindClass('T'+dm.Qtemp.fieldbyname('link').AsString);
      AFormClass := TFormClass(FindClass('T'+dm.Qtemp.fieldbyname('link').AsString));
      AForm := AFormClass.Create(Application.MainForm);
      AForm.Parent:=ApnTabs;
      AForm.Align:=Alclient;
      AForm.BorderStyle:=BsNone;
      AksesSub(AForm,HakAkses,vCaptionButton);
      AForm.Show;
  end;
end;

procedure TFMainMenu.TampilTabForm2;
begin
  with dm.Qtemp do
  begin
    SQL.Clear;
    SQL.Text := 'select * from t_menu_sub where submenu=' +
              QuotedStr(vCaptionButton)+' AND deleted_at IS NULL';
    open;
  end;

  if dm.Qtemp.RecordCount<>1 then
  begin
    ShowMessage('Data Menu Tidak Di Temukan Silakan Hubungi IT');
    exit;
  end;

  if dm.Qtemp.RecordCount=1 then
  begin
    //Create Form Dalam Panel
    AClass := FindClass('T'+dm.Qtemp.fieldbyname('link').AsString);
    AFormClass := TFormClass(AClass);
    AForm := AFormClass.Create(Application.MainForm);
    AForm.Parent:=ApnTabs;
    AForm.Align:=Alclient;
    AForm.BorderStyle:=BsNone;
    AksesSub(AForm,HakAkses,vCaptionButton);
    AForm.Show;
  end;
end;

procedure TFMainMenu.ShowForm;
begin

end;

procedure TFMainMenu.CreateSubMenu(Role,Menu:String);
var TotalHeightNeeded: Integer;
begin
  TotalHeightNeeded := 0;
   {with dm.Qtemp1 do
   begin
       SQL.Clear;
       SQL.Text :=' SELECT DISTINCT cc.id, cc.menu FROM penjualan.t_akses aa  '+
                  ' INNER JOIN penjualan.t_submenu bb ON aa.submenu = bb.submenu '+
                  ' INNER JOIN penjualan.t_menu cc ON bb.kodemaster = cc.kodemaster '+
                  ' INNER JOIN penjualan.t_user dd ON dd.akses = aa.RoleNama  '+
                  ' WHERE dd.akses='+QuotedStr('Admin')+'  and cc.menu='+QuotedStr(Menu)+
                  ' Order by cc.id DESC ';
       open;
       First;
   end;
   //CategoryPanelUtama.RemoveComponent(TCustomCategoryPanel(CategoryPanelUtama.Panels[0]));
   TCategoryPanelGroup.Create(nil);
   CategoryPanelUtama.Create(nil);
   ClearCategoryPanelGroup;
   //CategoryPanelUtama.Parent := SplitView1;
   CategoryPanelUtama.Width:=250;
   TRzTreeView.Create(nil);
   Treeview1.Create(nil);
   Cleartreview;
   Treeview1.Width:=250;
   while not dm.Qtemp1.Eof do
   begin
    //Create Category Panel
      CategoryPanelUtama.HeaderFont.Style:=[fsBold];
      ACategoryPanel:=CategoryPanelUtama.CreatePanel(self) as TCategoryPanel;
      ACategoryPanel.Name:= StringReplace(dm.Qtemp1.fieldbyname('menu').AsString, ' ', '', [rfReplaceAll]);
      ACategoryPanel.Caption:= dm.Qtemp1.fieldbyname('menu').AsString;
      //ACategoryPanel.
      ACategoryPanel.Font.Size:=9;
      ACategoryPanel.Expand;
      ACategoryPanel.Height:=RzSplitter1.Height;
      ACategoryPanel.color:=clGradientInactiveCaption;
      //ACategoryPanel.StyleName:='windows';
      //ACategoryPanel.Width:=250;
      //TreeView1.Items.Add(nil,StringReplace(dm.Qtemp1.fieldbyname('menu').AsString, ' ', '', [rfReplaceAll]));
     with dm.Qtemp2 do
     begin
          SQL.Clear;
           SQL.Text :=' SELECT DISTINCT bb.id, cc.menu,bb.submenu FROM penjualan.t_akses aa  '+
                      ' INNER JOIN penjualan.t_submenu bb ON aa.submenu = bb.submenu   '+
                      ' INNER JOIN penjualan.t_menu cc ON bb.kodemaster = cc.kodemaster '+
                      ' INNER JOIN penjualan.t_user dd ON dd.akses = aa.RoleNama '+
                      ' WHERE dd.akses='+QuotedStr('Admin')+
                      ' and cc.menu='+QuotedStr(Menu)+
                      ' Order by bb.id  DESC ';
          open;
          First;
      end;
      while not dm.Qtemp2.Eof do
      begin
        //Create Button Dalam Category Panel
        //AButtonPanel:= TButton.Create(ACategoryPanel);
        AButtonPanel:= TRzButton.Create(ACategoryPanel);
        //AButtonPanel:= TButton.Create(ACategoryPanel);
        AButtonPanel.Name:= StringReplace(dm.Qtemp2.Fieldbyname('submenu').AsString, ' ', '', [rfReplaceAll]);
        AButtonPanel.Caption:= dm.Qtemp2.Fieldbyname('submenu').AsString;
        AButtonPanel.Parent := ACategoryPanel;
        AButtonPanel.Align := alTop;
        //AButtonPanel.Width:=250;
        AButtonPanel.Alignment:=taLeftJustify;
        AButtonPanel.OnClick := btnApplyClick;
        //AButtonPanel.StyleName:='windows';
        AButtonPanel.Color:=clBlue;
        //clGradientInactiveCaption;
        //AButtonPanel.Tag:=1;
         TreeView1.Items.AddChild(TreeView1.Selected,StringReplace(dm.Qtemp2.Fieldbyname('submenu').AsString, ' ', '', [rfReplaceAll])) ;
          dm.Qtemp2.Next;
      end;
      dm.Qtemp1.Next;
    end;}
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_user where user_name='+QuotedStr(nm)+' AND deleted_at IS NULL';
    ExecSQL;
  end;
  dept_code:=dm.Qtemp['dept_code'];
  jabatan_code:=dm.Qtemp['position_code'];
  with dm.Qtemp1 do
  begin
    SQL.Clear;
    SQL.Text := 'SELECT DISTINCT e.created_at,e.id, e.menu menu FROM t_akses aa '+
    ' INNER JOIN t_menu_sub bb ON aa.submenu_code = bb.submenu_code AND bb.deleted_at IS NULL '+
    ' INNER JOIN t_user dd ON dd.dept_code = aa.dept_code AND dd.position_code=aa.position_code AND dd.deleted_at IS NULL '+
    ' INNER JOIN t_menu e on bb.menu_code=e.menu_code AND e.deleted_at IS NULL '+
    ' INNER JOIN t_menu_master cc ON e.master_code = cc.master_code AND cc.deleted_at IS NULL '+
    ' WHERE aa.deleted_at IS NULL AND dd.dept_code='+QuotedStr(dept_code)+' '+
    ' and dd.position_code='+QuotedStr(jabatan_code)+' '+
    ' and cc.master_name='+QuotedStr(Menu)+' '+
    ' and bb.deleted_at IS NULL '+
    ' group by e.created_at,e.id, e.menu '+
    ' Order by e.created_at asc';
    open;
    First;
  end;
  //CategoryPanelUtama.RemoveComponent(TCustomCategoryPanel(CategoryPanelUtama.Panels[0]));
  TCategoryPanelGroup.Create(nil);
  CategoryPanelUtama.Create(nil);
  ClearCategoryPanelGroup;
  //CategoryPanelUtama.Parent := SplitView1;
  CategoryPanelUtama.Width:=260;
  CategoryPanelUtama.HeaderFont.style:=[fsbold];
  //CategoryPanelUtama.Width:=Rzsplitter1.Width-5;
  while not dm.Qtemp1.Eof do
  begin
    //Create Category Panel
    ACategoryPanel:=CategoryPanelUtama.CreatePanel(self) as TCategoryPanel;
    ACategoryPanel.Name:= StringReplace(dm.Qtemp1.fieldbyname('menu').AsString, ' ', '', [rfReplaceAll]);
    ACategoryPanel.Caption:= dm.Qtemp1.fieldbyname('menu').AsString;
    //ACategoryPanel.Collapsed:=True;
    ACategoryPanel.Width:=260; //awal260
    //ACategoryPanel.Width:=CategoryPanelUtama.Width;

    with dm.Qtemp2 do
    begin
      SQL.Clear;
      SQL.Text := 'SELECT DISTINCT bb.created_at,bb.id,b.menu menu,bb.submenu submenu '+
      ' FROM t_akses aa  '+
      ' INNER JOIN t_menu_sub bb ON aa.submenu_code=bb.submenu_code and bb.deleted_at IS NULL '+
      ' INNER JOIN t_menu b ON b.menu_code = bb.menu_code '+
      ' INNER JOIN t_menu_master cc ON b.master_code=cc.master_code '+
      ' INNER JOIN t_user dd ON dd.dept_code = aa.dept_code and dd.position_code=aa.position_code and dd.deleted_at IS NULL '+
      ' WHERE aa.deleted_at IS NULL AND dd.dept_code='+QuotedStr(dept_code)+' '+
      ' and b.menu='+QuotedStr(dm.qtemp1['menu'])+
      ' and dd.position_code='+QuotedStr(jabatan_code)+' '+
      ' and cc.master_name='+QuotedStr(Menu)+
      ' Order by bb.created_at desc ';
      open;
      First;
    end;
    while not dm.Qtemp2.Eof do
    begin
      //Create Button Dalam Category Panel
      AButtonPanel:= TRzButton.Create(ACategoryPanel);

      AButtonPanel.Height := 34; // Tinggi tombol diatur ke 30px
      TotalHeightNeeded := TotalHeightNeeded + AButtonPanel.Height;
      //AButtonPanel:= TButton.Create(ACategoryPanel);
      AButtonPanel.Name:= StringReplace(dm.Qtemp2.Fieldbyname('submenu').AsString, ' ', '', [rfReplaceAll]);
      AButtonPanel.Caption:= dm.Qtemp2.Fieldbyname('submenu').AsString;
      AButtonPanel.Parent := ACategoryPanel;
      AButtonPanel.Align := alTop;
      AButtonPanel.Width:=230; //awal260
      //AButtonPanel.Width:=ACategoryPanel.Width;
      //AButtonPanel.Width:=Rzsplitter1.Width-2;
      ACategoryPanel.Color:=clSkyBlue;
      AButtonPanel.OnClick := btnApplyClick;
      AButtonPanel.Alignment:=taleftjustify;
      //AButtonPanel.Tag:=1;
      if (dm.Qtemp2.RecordCount=1) then
      begin
        ACategoryPanel.Height:=65;
        //ACategoryPanel.Height:=90;
      end;
      if dm.Qtemp2.RecordCount>1 then
      begin
        //ACategoryPanel.Height:=35*dm.Qtemp2.RecordCount;
      //  ACategoryPanel.Height:=40+30*dm.Qtemp2.RecordCount;
        ACategoryPanel.Height:=30+(AButtonPanel.Height*dm.Qtemp2.RecordCount);
//        ACategoryPanel.Height:=TotalHeightNeeded;
      end;
      dm.Qtemp2.Next;
    end;
    ACategoryPanel.Collapsed:=True;
    dm.Qtemp1.Next;
   end;
end;

procedure TFMainMenu.CloseAllTabsheets;
var
  i: Integer;
begin
  // Loop melalui semua tabsheet mulai dari yang terakhir
  for i := PageControl1.PageCount - 1 downto 1 do
  begin
    // Hapus tabsheet dari PageControl
    PageControl1.Pages[i].Free;
  end;
end;

procedure TFMainMenu.dxBarLargeButton2Click(Sender: TObject);
begin
  CloseAllTabsheets;
  PageControl1.ActivePage:=TabForm;
end;

procedure TFMainMenu.dxBarLargeButtonApprovalClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonApproval.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonDataMasterClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonDataMaster.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonFileClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonFile.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonLaporanClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonLaporan.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonPengaturanClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonPengaturan.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonTransaksiClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonTransaksi.Caption);
end;

procedure TFMainMenu.dxBarLargeButtonUtilityClick(Sender: TObject);
begin
  CreateSubMenu('admin',dxBarLargeButtonUtility.Caption);
//  Panel1.Parent:=FTransfer_Barang;
//  FTransfer_Barang.Show;
end;

procedure TFMainMenu.CreateMenu(Role:String);
begin
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='select * from t_user where user_name='+QuotedStr(nm)+' AND deleted_at IS NULL';
    ExecSQL;
  end;
  dept_code:=dm.Qtemp['dept_code'];
  jabatan_code:=dm.Qtemp['position_code'];
  with dm.Qtemp1 do
  begin
    SQL.Clear;
    {SQL.Text := 'SELECT DISTINCT cc.id, cc.menu FROM penjualan.t_akses aa '+
               ' INNER JOIN penjualan.t_submenu bb ON aa.submenu = bb.submenu '+
               ' INNER JOIN penjualan.t_menu cc ON bb.kodemaster = cc.kodemaster '+
               ' INNER JOIN penjualan.t_user dd ON dd.akses = aa.RoleNama '+
               ' WHERE dd.akses='+QuotedStr('Admin')+
               ' Order by cc.id DESC';}
    SQL.Text := 'SELECT DISTINCT cc.id, cc.master_name menu FROM t_akses aa '+
               ' INNER JOIN t_menu bb ON aa.submenu = bb.submenu AND bb.deleted_at IS NULL '+
               ' INNER JOIN t_menu_master cc ON bb.master_code = cc.master_code AND cc.deleted_at IS NULL '+
               ' INNER JOIN t_user dd ON dd.dept_code = aa.dept_code AND dd.deleted_at IS NULL '+
               ' INNER JOIN t_position d on aa.position_code=d.position_code '+
               ' WHERE dd.dept_code='+QuotedStr(dept_code)+
               ' and d.position_code='+QuotedStr(jabatan_code)+' '+
               ' Order by cc.created_at asc';
    open;
    First;
  end;
   //CategoryPanelUtama.RemoveComponent(TCustomCategoryPanel(CategoryPanelUtama.Panels[0]));
  TCategoryPanelGroup.Create(nil);
  while not dm.Qtemp1.Eof do
  begin
    //Create Button Di Panel Header
    //AButtonPanel:= TButton.Create(PenelHeader);
    //AButtonPanel:= TRzButton.Create(PenelHeader);
    //AButtonPanel:= TButton.Create(ACategoryPanel);
    AButtonPanel.Name:= StringReplace(dm.Qtemp1.fieldbyname('menu').AsString, ' ', '', [rfReplaceAll]);
    AButtonPanel.Caption:= dm.Qtemp1.fieldbyname('menu').AsString;
    //AButtonPanel.Parent := PenelHeader;
    AButtonPanel.Align := alLeft;
    //AButtonPanel.Images:=ImageList1;
    //AButtonPanel.ImageIndex:=1;
    AButtonPanel.OnClick := GetSubMenu;
    dm.Qtemp1.Next;
  end;
end;

procedure TFMainMenu.AksesSub(Form: TForm; Akses, Sub: String);
var
  ActionName: string;
begin
  with dm.Qtemp1 do
  begin
      SQL.Clear;
      SQL.Text := 'SELECT aa.* FROM t_akses aa '+
      ' INNER JOIN t_menu_sub bb ON aa.submenu_code = bb.submenu_code AND bb.deleted_at IS NULL '+
      ' INNER JOIN t_menu cc ON bb.menu_code = cc.menu_code '+
      ' INNER JOIN t_position dd on aa.position_code=dd.position_code '+
      //' INNER JOIN t_user dd ON dd.dept_code = aa.dept_code '+
      ' WHERE aa.dept_code='+QuotedStr(dept_code)+' '+
      ' and dd.position_code='+QuotedStr(jabatan_code)+' '+
      ' AND bb.SubMenu='+QuotedStr(vCaptionButton);
      //' AND aa.SubMenu='+QuotedStr('Pemakaian Produksi');
      open;
  end;
  if dm.Qtemp1.RecordCount=0 then
  begin
    ShowMessage('Tidak Ditemukan Akses !!!');
    Exit;
  end;
  if dm.Qtemp1.RecordCount<>0 then
  begin
  // --- Nonaktifkan semua action default dulu ---
  for i := 0 to Form.ComponentCount - 1 do
    if (Form.Components[i] is TAction) then
      TAction(Form.Components[i]).Enabled := False;
  // --- Aktifkan sesuai hak akses ---
  for i := 0 to Form.ComponentCount - 1 do
    if (Form.Components[i] is TAction) then
    begin
      ActionName := TAction(Form.Components[i]).Name;
      if (dm.Qtemp1.FieldByName('RAdd').AsInteger = 1) then
      begin
        if (ActionName = 'ActBaru') OR (ActionName = 'ActNew')  OR (ActionName = 'ActAdd')  OR (ActionName = 'ActApp') then
        begin
          TAction(Form.Components[i]).Enabled := True;
        end;
      end;
      if (dm.Qtemp1.FieldByName('REdit').AsInteger = 1) then
      begin
        if (ActionName = 'ActEdit') OR (ActionName = 'ActUpdate') then
        begin
          TAction(Form.Components[i]).Enabled := True;
        end;
      end;
      if (dm.Qtemp1.FieldByName('RDelete').AsInteger = 1) then
      begin
        if (ActionName = 'ActDelete') OR (ActionName = 'ActDel') OR (ActionName = 'ActReject')then
        begin
          TAction(Form.Components[i]).Enabled := True;
        end;
      end;
      if (dm.Qtemp1.FieldByName('RRefresh').AsInteger = 1) then
      begin
        if (ActionName = 'ActRefresh') OR (ActionName = 'ActRO') OR (ActionName = 'ActRo')then
        begin
          TAction(Form.Components[i]).Enabled := True;
        end;
      end;
      if (dm.Qtemp1.FieldByName('RPrint').AsInteger = 1) then
      begin
        if (ActionName = 'ActPrint')  then
        begin
          TAction(Form.Components[i]).Enabled := True;
        end;
      end;
    end;
  end;

  {if dm.Qtemp1.FieldByName('RAdd').AsInteger=2 then
  begin
    for i:=0 to Form.ComponentCount-1 do
    if (Form.Components[i] is TAction) then
    if TAction(Form.Components[i]).Name='ActNew' then
    TAction(Form.Components[i]).Enabled:=true;
  end;
  if dm.Qtemp1.FieldByName('REdit').AsInteger=2 then
  begin
    for i:=0 to Form.ComponentCount-1 do
    if (Form.Components[i] is TAction) then
    if TAction(Form.Components[i]).Name='ActEdit' then
    TAction(Form.Components[i]).Enabled:=true;
  end;
  if dm.Qtemp1.FieldByName('RDelete').AsInteger=2 then
  begin
    for i:=0 to Form.ComponentCount-1 do
    if (Form.Components[i] is TAction) then
    if TAction(Form.Components[i]).Name='ActDelete' then
    TAction(Form.Components[i]).Enabled:=true;
  end;
  if dm.Qtemp1.FieldByName('RRefresh').AsInteger=2 then
  begin
    for i:=0 to Form.ComponentCount-1 do
    if (Form.Components[i] is TAction) then
    if TAction(Form.Components[i]).Name='ActRefresh' then
    TAction(Form.Components[i]).Enabled:=true;
  end;
  if dm.Qtemp1.FieldByName('RPrint').AsInteger=2 then
  begin
    for i:=0 to Form.ComponentCount-1 do
    if (Form.Components[i] is TAction) then
    if TAction(Form.Components[i]).Name='ActPrint' then
    TAction(Form.Components[i]).Enabled:=true;
  end;}
end;

procedure TFMainMenu.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMainMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
  with dm.Qtemp do
  begin
    close;
    sql.Clear;
    sql.Text:='CALL "InsertSPLogLogin" ('+QuotedStr(FHomeLogin.Eduser.Text)+','+QuotedStr(GetLocalIP)+',False,True,''2.0'');';
    ExecSQL;
  end;
  //FHomeLogin.show;
end;

procedure TFMainMenu.FormResize(Sender: TObject);
begin
if Self.WindowState = wsMaximized then
begin
//  ShowMessage('Form is now Maximized!');
  CategoryPanelUtama.Align:=alNone;
  Splitter1.Align:=alNone;
  CategoryPanelUtama.Align:=alLeft;
  Splitter1.Align:=alLeft;

  // Place your code here (e.g., resizing controls, adjusting layout)
end
end;

procedure TFMainMenu.FormShow(Sender: TObject);
begin
//  StatusPerusahaan.Caption:=FHomeLogin.vNamaPRSH;
//  StatusUser.Caption:=NmFull;
//  FHomeLogin.Hide;
  //CreateMenu('admin');
  // webbrowser1.Navigate('https://app.powerbi.com/view?r=eyJrIjoiN2NlNzIyNDgtNzY2Zi00ZjZkLTk0NDgtYjc4NjlmMzcxMmU2IiwidCI6ImFhZjhkYzU3LTBiMzEtNDViNS04ODY2LWNhYWQ5Yjc0YmY3NiIsImMiOjEwfQ%3D%3D');
  //Edgebrowser1.Navigate('https://app.powerbi.com/view?r=eyJrIjoiN2NlNzIyNDgtNzY2Zi00ZjZkLTk0NDgtYjc4NjlmMzcxMmU2IiwidCI6ImFhZjhkYzU3LTBiMzEtNDViNS04ODY2LWNhYWQ5Yjc0YmY3NiIsImMiOjEwfQ%3D%3D');
  //Edgebrowser1.Navigate('http://www.google.com');

  {kdsbu:='MLB/1';
  loksbu:='MLB/1';
  format_tgl:='YYYY/MM/DD'; } //Tes default loksbu


//  RzStatusVersion.Caption:=GetFileVersion();

//  StatusVersion.Caption:=Application.show;
end;

procedure TFMainMenu.RefreshMenu1Click(Sender: TObject);
begin
  ShowForm;
end;

{Initialization
  RegisterClasses([TFDashboard,TFFakturPajak,TFPenomoran,TFlistBarang,TFListPelanggan,TFlistSupplier,TFListProduk,TFKonversi_Barang,
  TFListKonvProduk,TFListGudang,TFListBank,TFBarang_stok,TFItem_Type,TFKategori_Barang,TFPenomoran,
  TFListPerusahaan,TFDaftar_Perkiraan,TFDept,TFJabatan,TFBonPermt_Barang,TFTransfer_Barang,TFKontrakKerjasama,TFUser,TFHak_Akses,TFPO,
  TFReturnPembelian,TFPembelian,TFPot_Pembelian,TFSPB,TFDaf_EntryCek,TFPeng_Stok,TFPerc_Barang,
  TFMaster_Akun,TFMenu,TFhasil_Perc_Barang,TFPermintaan_Barang2,TFTerima_Amplop,TFMaster_FormulaTest,
  TFSPK_Formula,TFPakai_Material_For,TFResult_Formula,TFFor_TestBakar]);
  //RegisterClass([myclass]); }
  // pakai material for 14-06-2024
end.
