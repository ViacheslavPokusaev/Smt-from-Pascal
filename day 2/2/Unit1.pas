unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
a:array [1..7] of Integer;
i,b:Integer;
begin
Randomize;
for i:=1 to 7 do begin
a[i]:=Random(20)-10;
Memo1.Lines.Add(IntToStr(a[i]));
end;
for i:=1 to 7 do begin
if a[i]<0 then begin b:=a[i+1]+a[i+2]; a[i]:=b;
end;
Memo2.Lines.Add(IntToStr(a[i]));
end;
end;
end.
