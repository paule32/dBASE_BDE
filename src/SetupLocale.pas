// ----------------------------------------------------------------
// This file is part of Pascal-Engine RTL.
//
// (c) Copyright 2022 Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
//
// only for non-profit, and/or education usage !!!
// ----------------------------------------------------------------
unit SetupLocale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, JvExGrids, JvStringGrid;

type
  TSetupLocaleFrame = class(TFrame)
(*    ScrollBox1: TScrollBox;
    LangTextStringGrid: TJvStringGrid;
    procedure LangTextStringGridSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);*)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

(*
procedure TSetupLocaleFrame.LangTextStringGridSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  with LangTextStringGrid do
  begin
    EditorMode := false;
    Options    :=
    Options - [goEditing];

    if ACol = 1 then
    begin
      Options := Options + [goEditing];
      EditorMode := true;
    end;
  end;
end;*)

end.
