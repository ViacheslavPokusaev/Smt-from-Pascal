unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
A:array of array of integer;
s,d,k,i,j,n,m:integer;
s1:real;
begin
s:=0;
k:=0;
d:=1;
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
setlength(a,n,m);
randomize;
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
a[i,j]:=random(10);
memo1.Lines.add(floattostr(a[i,j]));
if a[i,j] mod 2<>0 then begin
s:=s+a[i,j];
d:=d*a[i,j];
k:=k+1;
end;
end;
end;
setlength(a,0,0);
s1:=s/k;
edit3.Text:=inttostr(s);
edit4.Text:=inttostr(d);
edit5.Text:=inttostr(k);
edit6.Text:=floattostr(s1);
end;
end.
