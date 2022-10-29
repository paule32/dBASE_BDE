unit MyHintWindow;

interface

uses
  Windows, SysUtils, Classes, Controls, Graphics;

type
  TMyHintWindow = class(THintWindow)
  private
    FTitle           : String;
    FDescription     : String;

    FFontTitle       : TFont;
    FFontDescription : TFont;

    FRectTitle       : TRect;
    FRectDescription : TRect;

    function  setTitle      (const AHint: string): TRect;
    function  setDescription(const AHint: string): TRect;
  protected
    procedure Paint; override;
    procedure NCPaint(DC: HDC); override;
  public
    constructor Create(AOwner: TComponent);
    destructor Destroy;
    procedure ShowHint(pos: TPoint);
    procedure HideHint;
  published
    property Description : String  read FDescription write FDescription;
  end;

implementation

constructor TMyHintWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;
destructor TMyHintWindow.Destroy;
begin
  FreeAndNil( FFontDescription );
  FreeAndNil( FFontTitle );

  inherited;
end;

procedure TMyHintWindow.HideHint;
begin
  Hide;
end;

procedure TMyHintWindow.ShowHint(pos: TPoint);
begin
  Top  := pos.Y;
  Left := pos.X; Show;
end;

function TMyHintWindow.setTitle(const AHint: string): TRect;
begin
  FTitle    := AHint;
  FFontTitle := TFont.Create;
  with FFontTitle do
  begin
    Color := clBlack;
    Name  := 'Arial';
    Size  := 10;
    Style := [fsBold,fsItalic];
  end;
  Canvas.Font.Assign(FFontTitle);

  FRectTitle.Right  := Canvas.TextWidth (AHint);
  FRectTitle.Bottom := Canvas.TextHeight(AHint);

  Result := FRectTitle;
end;
function TMyHintWindow.setDescription(const AHint: string): TRect;
begin
  FDescription     := AHint;
  FFontDescription := TFont.Create;

  with FFontDescription do
  begin
    Color := clBlack;
    Name  := 'Arial';
    Size  := 10;
    Style := [];
  end;
  Canvas.Font.Assign(FFontDescription);

  FRectDescription.Right  := Canvas.TextWidth (AHint);
  FRectDescription.Bottom := Canvas.TextHeight(AHint);

  Result := FRectDescription;
end;


procedure TMyHintWindow.NCPaint(DC: HDC);
begin
  inherited NCPaint(DC);
end;

procedure TMyHintWindow.Paint;
var
  rectT: TRect;  // title
  rectD: TRect;  // description
begin
  rectT  := setTitle(Caption);
  rectD  := setDescription(Description);

  Width  := rectD.Right                 + 24;
  Height := rectD.Bottom + rectT.Bottom + 24;

  with Canvas do
  begin
    Pen.Color   := clBlue;
    Pen.Width   := 3;
    Brush.Color := clYellow;
    RoundRect(1, 1, Width  - 3, Height - 3, 8, 8);

    Canvas.Font.Assign(FFontTitle);
    TextOut  (8, 8, FTitle);

    Canvas.Font.Assign(FFontDescription);
    TextOut  (8,32, FDescription);
  end;
end;

end.

