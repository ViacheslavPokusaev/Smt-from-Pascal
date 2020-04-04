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
f,f1:textfile;
a,i:integer;
begin
assignfile(f,'C:\Student\hi.txt');
assignfile(f1,'C:\Student\hi1.txt');
rewrite(f);
for i:=1 to 200 do begin
write(f, ' ',random(20)-5);
end;
rewrite(f1);
reset(f);
while not eof(f) do begin
read(f,a);
if a mod 2<>0 then write(f1,' ',a);
end;
closefile(f1);
closefile(f);
memo1.Lines.LoadFromFile('C:\Student\hi.txt');
memo2.Lines.LoadFromFile('C:\Student\hi1.txt');
end;

end.
