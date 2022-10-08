unit parseDBASE;

interface
uses
  Classes;
  function ReadWideStringFromStream(Stream: TMemoryStream): WideString;

var
  dBASEparseStream: TMemoryStream;
implementation

function ReadWideStringFromStream(Stream: TMemoryStream): WideString;
var
  len: Word;
begin
  Stream.Read(len, SizeOf(len));
  Result := PWideChar(Cardinal(Stream.Memory) + Stream.Position);
  Stream.Position := Stream.Position + (len * SizeOf(WideChar)) + SizeOf(WideChar);
end;

end.
