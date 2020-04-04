unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
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
f,f1,f2,f3,f4,f5:textfile;
a,s,k,k1,k3,m,n,i:integer;
begin
s:=0;
k:=0; k1:=0;k3:=0;n:=0;m:=0;
assignfile(f,'C:\Student\1.txt');
assignfile(f1,'C:\Student\22.txt');
assignfile(f2,'C:\Student\3.txt');
assignfile(f3,'C:\Student\4.txt');
assignfile(f4,'C:\Student\5.txt');
reset(f); reset(f1); reset(f2); reset(f3); reset(f4);
while not eof(f1) do begin
read(f1,a);
if a<0 then s:=s+a;
end;
while not eof(f4) do begin
read(f4,a);
if a<0 then s:=s+a;
end;
while not eof(f) do begin
read(f,a);
if a mod 2=0 then k:=k+1;
end;
while not eof(f2) do begin
read(f2,a);
if a mod 2=0 then k:=k+1;
end;
while not eof(f3) do begin
read(f3,a);
if a mod 2=0 then k:=k+1;
end;
if s>k then begin
while not eof(f) do begin
read(f,a);
k1:=k1+1; end;
while not eof(f1) do begin
read(f1,a);
k1:=k1+1; end;
while not eof(f2) do begin
read(f2,a);
k1:=k1+1; end;
while not eof(f3) do begin
read(f3,a);
k1:=k1+1; end;
while not eof(f4) do begin
read(f4,a);
k1:=k1+1; end;
append(f);append(f1);append(f2);append(f3);append(f4);
write(f,k1);write(f1,k1);write(f2,k1);write(f3,k1);write(f4,k1);
end;

closefile(f3);
closefile(f2);
closefile(f4);
assignfile(f3,'C:\Student\4.txt');
assignfile(f2,'C:\Student\3.txt');
assignfile(f4,'C:\Student\5.txt');
reset(f3); reset(f2); reset(f4);
while not eof(f2) do begin
read(f2,a);
if a=0 then m:=1;
end;
while not eof(f3) do begin
read(f3,a);
if a=0 then n:=1;
end;
while not eof(f4) do begin
read(f4,a);
k3:=k3+1; end;
if (n=0) or (m=0) then begin assignfile(f5,'C:\Student\6.txt'); rewrite(f5);
for i:=k3 downto 1 do begin

read(f4,a);
write(f5,a); end; end;
closefile(f5);
closefile(f);
closefile(f1);
closefile(f2);
closefile(f3);
closefile(f4);

memo1.lines.loadfromfile('C:\Student\1.txt');
memo2.lines.loadfromfile('C:\Student\22.txt');
memo3.lines.loadfromfile('C:\Student\3.txt');
memo4.lines.loadfromfile('C:\Student\4.txt');
memo5.lines.loadfromfile('C:\Student\5.txt');
memo6.lines.loadfromfile('C:\Student\6.txt');
end;

end.
