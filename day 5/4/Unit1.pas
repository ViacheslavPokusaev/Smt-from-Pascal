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
assignfile(f,'C:\Student\kuk.txt');
assignfile(f1,'C:\Student\kuk1.txt');
reset(f); rewrite(f1);
while not eof(f) do begin
read(f,a);
if a>0 then write(f1,' ', a);
end;
append(f1);
for i:=1 to 20 do begin
write(f1, ' ',random(10)-5);
end;
closefile(f);
closefile(f1);
memo1.lines.LoadFromFile('C:\Student\kuk.txt');
memo2.lines.LoadFromFile('C:\Student\kuk1.txt');
end;

end.
