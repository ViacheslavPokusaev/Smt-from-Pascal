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
    Edit3: TEdit;
    Memo2: TMemo;
    Button1: TButton;
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
a:array of array of integer;
n,m,i,j,s:integer;
begin
s:=0;
n:=strtoint(edit1.Text);
m:=strtoint(edit2.Text);
setlength(a,n,m);
randomize;
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
a[i,j]:=random(10);
memo1.lines.add(inttostr(a[i,j]));
if (i=j) and (a[i,j]<>0) then  s:=s+a[i,j];
end;
end;
edit3.Text:=inttostr(s);
for i:=0 to n-1 do begin
for j:=0 to m-1 do begin
if i<j then a[i,j]:=s;
memo2.lines.add(inttostr(a[i,j]));
end;
end;
setlength(a,0,0);
end;
end.
