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
a:char; f,f1:textfile;
begin
 assignfile(f,'C:\Student\read.me.txt');
 assignfile(f1,'C:\Student\2.txt');
 reset(f); rewrite(f1);
 while not eof(f) do begin
 read(f,a);
if a='.' then write(f1,'. ') else if a=',' then write(f1,', ') else write(f1,a);
end;
closefile(f);
closefile(f1);
memo1.lines.LoadFromFile('C:\Student\read.me.txt');
memo2.lines.LoadFromFile('C:\Student\2.txt');
end;
end.
