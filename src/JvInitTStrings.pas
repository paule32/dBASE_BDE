// ----------------------------------------------------------------
// This file is part of Pascal-Engine RTL.
//
// (c) Copyright 2022 Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
//
// only for non-profit, and/or education usage !!!
// ----------------------------------------------------------------
unit JvInitTStrings;

interface
uses
  Classes,
  Dialogs,

  JvInterpreter;

// ----------------------------------------------------------------
// localization string's:
// ----------------------------------------------------------------
resourcestring
cErrObjectIsNIL       = 'interpreter object is NIL !';
cErrObjectInvalidCall = 'object is not directly callable !';

procedure RegisterJvInterpreterAdapter_Classes(JvInterpreterAdapter: TJvInterpreterAdapter);

implementation

// ----------------------------------------------------------------
// @brief class constructor: TStrings.Create
// ----------------------------------------------------------------
procedure TStrings_Create(var Value: Variant; Args: TJvInterpreterArgs);
begin
  Value := O2V(TStrings.Create);
end;

// ----------------------------------------------------------------
// @brief class destructor: TStrings.Destroy
// ----------------------------------------------------------------
procedure TStrings_Destroy(var Value: Variant; Args: TJvInterpreterArgs);
begin
  if (Args.Obj as TStrings) = nil then begin
    ShowMessage(cErrObjectIsNIL);
    exit;
  end;
  with (Args.Obj as TStrings) do
  begin
    Clear;
    Destroy;
  end;
end;

procedure TStrings_Add(var Value: Variant; Args: TJvInterpreterArgs);
begin
  if (Args.Obj as TStrings) = nil then begin
    ShowMessage(cErrObjectIsNIL);
    exit;
  end;
  Value := (Args.Obj as TStrings).Add(Args.Values[0]);
end;

// ----------------------------------------------------------------
// @brief class member: TString.Clear
// @desc  Empty the list of TString.
// ----------------------------------------------------------------
procedure TStrings_Clear(var Value: Variant; Args: TJvInterpreterArgs);
begin
  if (Args.Obj as TStrings) = nil then begin
    ShowMessage(cErrObjectIsNIL);
    exit;
  end;
  ShowMessage(cErrObjectInvalidCall);
end;

procedure RegisterJvInterpreterAdapter_Classes(JvInterpreterAdapter: TJvInterpreterAdapter);
const
  cClasses = 'Classes';
begin
  with JvInterpreterAdapter do
  begin
    AddClass(cClasses, TStrings, 'TStrings');
    AddGet(TStrings, 'Create' , TStrings_Create , 0, [varEmpty] , varEmpty);
    AddGet(TStrings, 'Destroy', TStrings_Destroy, 0, [varEmpty] , varEmpty);
    AddGet(TStrings, 'Add'    , TStrings_Add    , 1, [varString], varInteger);
    AddGet(TStrings, 'Clear'  , TStrings_Clear  , 0, [varEmpty] , varEmpty);
  end;

  RegisterClasses([TStrings]);
end;

end.
