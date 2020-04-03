unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1DblClick(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Edit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Memo1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
memo2.Lines.add(inttostr(x));
end;

procedure TForm1.Memo2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
memo1.Lines.add(inttostr(y));
end;

procedure TForm1.Label1DblClick(Sender: TObject);
begin
if form1.windowstate=wsmaximized then  form1.Close;
end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if (ssalt in shift) and  (ssshift in shift) then begin
memo1.Enabled:=false;
memo2.Enabled:=false;
activecontrol:=edit1;
end;  end;

procedure TForm1.Edit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if (button=mbright) then begin
label1.Font.Size:=font.size+4;
label2.Font.Size:=font.size+4;
end;end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
f:textfile;
begin

if button=mbright then  begin
assignfile(f,'C:\student\Еловикова_практика\4.txt');
rewrite(f);
writeln(f,memo1.text);
writeln(f,memo2.text);
closefile(f);
end;      end;

end.
