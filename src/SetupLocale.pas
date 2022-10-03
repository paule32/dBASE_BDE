unit SetupLocale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Grids, JvExGrids, JvStringGrid;

type
  TSetupLocaleFrame = class(TFrame)
    ScrollBox1: TScrollBox;
    LangTextStringGrid: TJvStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
