unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2; n:string;n2:string;
  g:string;a,a1:boolean;q,v:boolean;
  g1,g4:string;
  f:TStringList;
  g5,g2,g3,g7,i,j:Integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
b,i7:integer;
a2:array of Integer;
begin
form1.visible:=True;
Form2.Visible:=False;
f:=TStringList.Create;
f.LoadFromFile('C:\test.ini.txt');
if (g='777') and (q=true) then begin
f[0]:=g1;g7:=strtoint(f[1]);
if g2<7 then f[1]:=IntToStr(g2) else f[1]:=IntToStr(g7);
f[2]:=IntToStr(g3);
end;
Form1.Caption:=f[0];
g2:=strtoint(f[1]);
g3:=StrToInt(f[2]);
if a=false then begin i:=g3;a:=true end;
form1.Timer1.Enabled:=true;
form1.Timer2.Enabled:=true;
form1.Timer1.Interval:=i*1000;
form1.Timer2.Interval:=1000;
f.SaveToFile('C:\test.ini.txt');
f.Free;
SetLength(a2,g2);
Randomize;
b:=0;
a2[0]:=Random(7)+1;Form1.Memo2.Lines.Add(IntToStr(a2[b]));
a2[1]:=0;
a2[2]:=0;
a2[3]:=0;
a2[4]:=0;
a2[5]:=0;
a2[6]:=0;
while v=True do begin
while a2[b+1]<>a2[b] do begin a2[b+1]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+1]));
while (a2[b+2]<>a2[b+1]) and (a2[b+2]<>a2[b]) do begin a2[b+2]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+2]));
while  (a2[b+3]<>a2[b+2]) and (a2[b+3]<>a2[b+1]) and (a2[b+3]<>a2[b]) do begin a2[b+3]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+3]));
while  (a2[b+4]<>a2[b+3]) and (a2[b+4]<>a2[b+2]) and (a2[b+4]<>a2[b+1]) and (a2[b+4]<>a2[b]) do begin a2[b+4]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+4]));
while  (a2[b+5]<>a2[b+4]) and (a2[b+5]<>a2[b+3]) and (a2[b+5]<>a2[b+2]) and (a2[b+5]<>a2[b+1]) and (a2[b+5]<>a2[b]) do begin a2[b+5]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+5]));
while (a2[b+6]<>a2[b+5]) and (a2[b+6]<>a2[b+4]) and (a2[b+6]<>a2[b+3]) and (a2[b+6]<>a2[b+2]) and (a2[b+6]<>a2[b+1]) and (a2[b+6]<>a2[b]) do begin a2[b+6]:=Random(7)+1;end;Form1.Memo2.Lines.Add(IntToStr(a2[b+6]));
if (a2[b+1]<>a2[b]) and (a2[b+1]<>a2[b+2]) and (a2[b+1]<>a2[b+3]) and (a2[b+1]<>a2[b+4]) and (a2[b+1]<>a2[b+5]) and (a2[b+1]<>a2[b+6]) then v:=True;
end;


end;



procedure TForm2.FormCreate(Sender: TObject);
begin
    v:=False;
Form2.Visible:=True;
q:=false;
a:=false;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
g:=inputbox('¬ведите пароль',' ',' ');
if g='777' then begin
g1:=inputbox('¬ведите название теста',' ',' ');
Form1.Caption:=g1;
g2:=StrToInt(inputbox('¬ведите количество вопросов',' ',' '));
if g2>7 then ShowMessage('„исло превышает количество вопросов');
g3:=StrToInt(inputbox('¬ведите на 1 вопрос (с)',' ',' '));
q:=true;
end
else  ShowMessage('ѕароль неверный');

end;

end.
