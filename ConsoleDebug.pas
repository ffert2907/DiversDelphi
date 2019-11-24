// *********************************************************************************************************************
// Auteur : Fabien FERT
// Date : 01/11/2019
// Licence : MIT
// *********************************************************************************************************************

unit ConsoleDebug;

interface

uses
  {$IFDEF MSWINDOWS}
     Winapi.Windows,
  {$ENDIF}
  System.SysUtils, System.Types, System.UITypes, System.Classes;

type
  TDebug = class
  public
    class procedure Write(aStr : string);
  end;

implementation

class procedure TDebug.Write(aStr : string);
begin

  {$IFDEF MSWINDOWS}
    if DebugHook <> 0 then
      writeLn(formatDateTime('yyyy-mm-dd hh:nn:ss', now) + ' - ' + aStr);
  {$ENDIF}
end;


Initialization
  // Windows Console can show about 8500 lines
  {$IFDEF MSWINDOWS}
    AllocConsole;
  {$ENDIF}

end.
