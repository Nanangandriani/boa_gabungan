unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Moni.Base,
  FireDAC.Moni.RemoteClient, FireDAC.Moni.Custom, FireDAC.Moni.FlatFile,
  UniProvider, PostgreSQLUniProvider, DBAccess, Uni, MemDS, DASQLMonitor,
  UniSQLMonitor,Generics.Collections,TypInfo, frxClass, frxDBSet, ABSMain;

type
  Tdm = class(TDataModule)
    Koneksi: TUniConnection;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    Qtemp: TUniQuery;
    dsQtemp: TDataSource;
    dsQtemp1: TDataSource;
    Qtemp1: TUniQuery;
    dsQtemp2: TDataSource;
    Qtemp2: TUniQuery;
    UniSQLMonitor1: TUniSQLMonitor;
    dsQtemp3: TDataSource;
    Qtemp3: TUniQuery;
    UniConnection1: TUniConnection;
    QLink: TUniQuery;
    QPerusahaan: TUniQuery;
    DBPerusahaan: TfrxDBDataset;
    ABSDatabase1: TABSDatabase;
    ABSTable1: TABSTable;
    ABSTable1id: TAutoIncField;
    ABSTable1Sbu_Code: TStringField;
    ABSTable1Nama_Sbu: TStringField;
    ABSTable1Ip_db: TStringField;
    ABSTable1Port_db: TStringField;
    ABSTable1Db_Name: TStringField;
    ABSTable1Password: TStringField;
    ABSTable1Ip_db_Pusat: TStringField;
    ABSTable1User_db: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    link1,link2:string;
 // MyClass: TClass;
    procedure linktest1;
  end;

var
  dm: Tdm;
  ClassInstances: TObjectDictionary<string, TObject>;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  ///linktest1;
end;

procedure tdm.linktest1;
var myclass:TClass;
begin
   QLink.Close;
   QLink.Open;
 //  while not QLink.Eof do
//    begin
     // RegisterClass('t',FindClass(QLink.FieldByName('link1').AsString));
      //RegisterClass(FindClass(ADOQuery1.FieldByName('ClassName').AsString), ADOQuery1.FieldByName('UnitName').AsString);
   ///   qlink.Next;
  //  end
  while not qlink.Eof do
    begin
      MyClass := GetClass(qlink.FieldByName('link1').AsString);
      if Assigned(MyClass) then
      begin
        // If class exists, create an instance
        MyClass.Create;
      end
      else
      begin
        // Handle error if class not found
        raise Exception.Create('Class not found: ' + qlink.FieldByName('link1').AsString);
      end;
      qlink.Next;
    end;
end;

// cr ds 13-06-2024
procedure AddToClassInstances(const Key: string; Instance: TObject);
begin
  if not Assigned(ClassInstances) then
    ClassInstances := TObjectDictionary<string, TObject>.Create([doOwnsValues]);
  ClassInstances.AddOrSetValue(Key, Instance);
end;
procedure ClearClassInstances;
begin
  if Assigned(ClassInstances) then
    FreeAndNil(ClassInstances);
end;
procedure RegisterInstances;
var
  Instance: TObject;
begin
  if Assigned(ClassInstances) then
  begin
    for Instance in ClassInstances.Values do
      RegisterClass(TPersistentClass(Instance.ClassType));
  end;
end;

{procedure FetchDataAndRegisterClass;
var
  Connection:TUniConnection;
  Query: TUniQuery;
  MyData: TMyData;
begin
  Connection := TUniConnection.Create(nil);
  try
    // Konfigurasi koneksi
    Connection.ProviderName := 'PostgreSQL';
    Connection.Server := 'localhost';
    Connection.Port := 5432; // Port default PostgreSQL
    Connection.Username := 'username';
    Connection.Password := 'password';
    Connection.Database := 'database_name';
    Connection.Connect;
    Query := TUniQuery.Create(nil);
    try
      // Atur koneksi untuk kueri
      Query.Connection := Connection;
      // Tulis kueri SQL
      Query.SQL.Text := 'SELECT ID, Name, Value FROM nama_tabel';
      // Eksekusi kueri
      Query.Open;
      // Gunakan data yang diambil
      while not Query.Eof do
      begin
        // Buat instance dari kelas TMyData
        MyData := TMyData.Create;
        // Isi properti dari instance kelas TMyData dengan data yang diambil dari database
        MyData.ID := Query.FieldByName('ID').AsInteger;
        MyData.Name := Query.FieldByName('Name').AsString;
        MyData.Value := Query.FieldByName('Value').AsFloat;
        // Simpan instance kelas TMyData ke dalam TObjectDictionary
        AddToClassInstances('MyData_' + IntToStr(MyData.ID), MyData);
        // Pindah ke baris berikutnya
        Query.Next;
      end;
    finally
      Query.Free;
    end;
    // Register semua kelas yang telah ditambahkan
    RegisterInstances;
  finally
    Connection.Free;
  end;
end;    }

end.
