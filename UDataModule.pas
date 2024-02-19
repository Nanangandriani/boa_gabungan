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
  UniSQLMonitor;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
