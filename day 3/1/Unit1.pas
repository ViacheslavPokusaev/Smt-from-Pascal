unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo2: TMemo;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
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
a:array of array of real;
i,j,n,m,k,k1,t,t1:integer;
min,max:real;
begin
k:=0; k1:=0; t:=0; t1:=0;
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
setlength(a,n,m);
randomize;
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
a[i,j]:=strtofloat(inputbox('¬ведите текст','„исло=',' '));
memo1.Lines.add(floattostr(a[i,j]));
end;
end;
min:=a[0,0];
max:=a[0,0];
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin

if a[i,j]<min then begin min:=a[i,j];
k:=i;
k1:=j;
end;
if a[i,j]>max then begin
max:=a[i,j];
t:=i;
t1:=j;
end;
end;
end;
edit3.text:=floattostr(min);
edit4.text:=floattostr(max);
a[k,k1]:=max;
a[t,t1]:=min;
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
memo2.lines.add(floattostr(a[i,j]));
end;end;


end;
end.

