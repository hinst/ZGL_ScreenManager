unit ZenGL_EngineStartupSettingsUnit;

interface

type
  TZenGLEngineStartupSettings = class
  protected
    FFullScreen: Boolean;
    FWidth: Word;
    FHeight: Word;
  public
    property FullScreen: Boolean read FFullScreen;
    property Width: Word read FWidth;
    property Height: Word read FHeight;
  end;

implementation

end.

