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
    Button1: TButton;
    Memo2: TMemo;
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
a:array of char;
n,i,j,k:integer;
begin

k:=0;
n:=strtoint(edit1.Text);
setlength(a,n);
randomize;
for i:=0 to n-1 do begin
a[i]:=inputbox(' ',' ',' ')[1];
memo1.lines.add(a[i]);
if a[i]='!' then k:=k+1;
end;


edit2.Text:=inttostr(k);
if k=0 then begin setlength(a,n+2);

for j:=3 to n+1 do begin

a[j]:=a[j-2];
end;
a[0]:=a[0];
a[1]:='a';
a[2]:='*';
end;

for j:=0 to n+1 do begin
memo2.lines.add(a[j]);
end;
end;
end.


