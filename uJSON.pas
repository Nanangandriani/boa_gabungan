    //https://sourceforge.net/projects/lkjson/postdownload
//ambil file ulkJSON.pas;

unit uJSON;

interface

uses
  ulkJSON, classes;

type
  TMyJSON = class(TComponent)
    private
      FJSON: TlkJSONObject;
      function  GetJSONText: String;
      procedure SetJSONText(AJSON: String);
      function  GetObjectTree(ATree: String): TlkJSONObject;
      function  GetTreeCount(ATree: String): Integer;
      function  GetStringTree(ATree: String): String;
    public
      procedure LoadFromFile(AFile: String);
      property  JSONText: String read GetJSONText write SetJSONText;
      property  ObjectTree[ATree: String]: TlkJSONObject read GetObjectTree;
      property  JSONObject: TlkJSONObject read FJSON write FJSON;
      property  TreeCount[ATree: String]: Integer read GetTreeCount;
      property  StringTree[ATree: String]: String read GetStringTree;
  end;

implementation

uses
  SysUtils;

{TlkJSONObject}
function  TMyJSON.GetJSONText: String;
begin
  Result := TlkJSON.GenerateText(FJSON);
end;

procedure TMyJSON.SetJSONText(AJSON: String);
begin
  FJSON := TlkJSONobject(TlkJSON.ParseText(AJSON));
end;

procedure TMyJSON.LoadFromFile(AFile: String);
var
  lst: TStrings;
begin
  lst := TStringList.Create;
  lst.LoadFromFile(AFile);

  SetJSONText(lst.Text);
  lst.Free;
end;

function  TMyJSON.GetObjectTree(ATree: String): TlkJSONObject;
var
  lst: TStrings;
  iii: Integer;
  jso: TlkJSONObject;
  xxx: Integer;
begin
  lst := TStringList.Create;
  jso := FJSON;
  lst.Text := StringReplace(ATree, '/', #13#10, [rfReplaceAll]);

  xxx := lst.Count - 1;
  for iii := 0 to lst.Count - 2 do
  begin
    try
      jso := TlkJSONObject(jso.Field[lst[iii]]);
    except
    end;
  end;

  try
    result := TlkJSONObject(jso.Field[lst[xxx]]);
  except
    result := nil;
  end;
end;

function  TMyJSON.GetTreeCount(ATree: String): Integer;
var
  jso: TlkJSONObject;
begin
  jso := ObjectTree[ATree];

  result := jso.Count;
end;

function  TMyJSON.GetStringTree(ATree: String): String;
var
  lst: TStrings;
  iii: Integer;
  jso: TlkJSONObject;
  xxx: Integer;
  yyy: Integer;
begin
  lst := TStringList.Create;
  jso := FJSON;
  lst.Text := StringReplace(ATree, '/', #13#10, [rfReplaceAll]);

  xxx := lst.Count - 1;
  for iii := 0 to lst.Count - 2 do
  begin
    yyy := StrToIntDef(lst[iii], -1);

    if yyy = -1 then
    begin
      try
        jso := TlkJSONObject(jso.Field[lst[iii]]);
      except
        result := '';
        exit;
      end;
    end else
    begin
      try
        jso := TlkJSONObject(jso.Child[yyy]);
      except
        result := '';
        exit;
      end;
    end;
  end;

  try
    result := jso.Field[lst[xxx]].Value;
  except
    result := '';
  end;
end;

end.
