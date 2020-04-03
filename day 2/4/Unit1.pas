unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
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
a:array [1..10] of integer;
b:array [1..10] of integer;
i,k,s,x:integer;
begin
randomize;
s:=0;
b[1]:=0;
for i:=1 to 10 do begin
a[i]:=random(10)-2;
memo1.lines.add(inttostr(a[i]));
end;

for k:=1 to 10 do begin
x:=0;
for i:=k to 10 do begin
x:=x+a[i];
end;
b[k]:=x;

memo2.lines.add(inttostr(b[k]));

end;end;

end.
