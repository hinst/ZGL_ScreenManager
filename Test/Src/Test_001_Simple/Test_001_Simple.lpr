program Test_001_Simple;

uses
  zglHeader;

var
  resolutions: zglPResolutionList;

procedure WriteResolutionsAsDebugInfo;
var
  i: Integer;
begin
  WriteLN('Resolutions (', resolutions^.Count, ' ', Length(resolutions^.Width),')');
  for i := 0 to resolutions^.Count - 1 do
  begin
    WriteLN(resolutions^.Width[i], ' ', resolutions^.Height[i]);;
  end;
end;

procedure Init;
begin
  resolutions := zglPResolutionList(zgl_Get(RESOLUTION_LIST));
  WriteLN(resolutions <> nil);
  WriteResolutionsAsDebugInfo;
end;

procedure Draw;
begin
end;

begin
  zglLoad(libZenGL);
  Init;
  zgl_Reg(SYS_LOAD, @Init);
  zgl_Reg(SYS_DRAW, @Draw);
  wnd_SetCaption( '04 - Screen Settings' );
  wnd_ShowCursor( TRUE );
  scr_SetOptions( 800, 600, REFRESH_MAXIMUM, FALSE, FALSE );
  zgl_Init;
end.

