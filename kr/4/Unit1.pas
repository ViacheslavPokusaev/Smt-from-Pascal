unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
 i,s,d,n:Integer;
begin
s:=0;
n:=StrToInt(Edit1.Text);
for i:=1 to n do begin
d:=StrToInt(InputBox(' ',' ','0'));
if d>0 then s:=s+d;
end;
Edit2.Text:=IntToStr(s);
end;

end.
