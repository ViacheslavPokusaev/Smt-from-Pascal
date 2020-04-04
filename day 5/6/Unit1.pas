unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
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
b:array[1..3,1..3] of integer;
i,j,c,f,d,m,a,u:integer;
f1,f2:textfile;
begin
a:=0;
d:=0;
randomize;
assignfile(f1,'C:\Student\1.txt');
if savedialog1.Execute then begin assignfile(f2,savedialog1.Filename);
for i:=1 to 3 do begin
for j:=1 to 3 do begin
b[i,j]:=random(10);
if (i=j) and (b[i,j] mod 2=0) then a:=a+b[i,j];
memo1.lines.Add(inttostr(b[i,j]));
end;
end;
reset(f1);
while not eof(f1) do begin
read(f1,m);
if m>0 then d:=d+1;
end;
f:=sqr(a)-d;
rewrite(f2);
write(f2,f);
closefile(f1);
closefile(f2);
memo2.Lines.LoadFromFile('C:\Student\1.txt');
memo3.lines.LoadFromFile(savedialog1.Filename);
end else showmessage('Âûבונטעו פאיכ');


end;

end.
