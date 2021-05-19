program Project1;
{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
   cthreads,
  {$ENDIF}{$ENDIF}
   Interfaces,
   Forms, Classes, StdCtrls, Dialogs;
  {$R *.res}

procedure ShowMainWnd(x, y, w, h: Integer);
var       // main form as one proc, no units, no type...
 wnd : TForm;

begin
  wnd          := TForm.Create(Application);
  wnd.SetBounds(x, y, w, h);
  wnd.Caption  := 'Test';
  wnd.ShowModal;
end;

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.TaskBarBehavior:= tbSingleButton;
  ShowMainWnd(500, 500, 400, 300);
end.
