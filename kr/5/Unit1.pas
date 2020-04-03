unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
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
 j,i,d,n,k:Integer;
begin
k:=0;
n:=StrToInt(Edit1.Text);
for i:=1 to n do begin
for j:=1 to n do begin
d:=StrToInt(InputBox(' ',' ','0'));
if d mod 2=0 then begin k:=k+1;Memo1.Lines.Add(IntToStr(d));
end;end;end;
Edit2.Text:=IntToStr(k);
end;
end.
