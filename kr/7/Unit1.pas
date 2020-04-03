unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Memo1: TMemo;
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
  a:array of Integer;
 n,i,s,d:Integer;t:Boolean;
begin
t:=True;
s:=0;d:=1;
n:=StrToInt(Edit1.Text);
SetLength(a,n);
for i:=0 to n-1 do begin
a[i]:=StrToInt(InputBox('Введите массив','Должен быть хотя бы один 0',' '));
Memo1.Lines.Add(IntToStr(a[i]));
if (a[i]<>0) and (t=True) then begin s:=s+a[i];d:=d*a[i] end;
if a[i]=0 then t:=False;
 end;
Edit2.Text:=IntToStr(s);
Edit3.Text:=IntToStr(d);
end;end.

