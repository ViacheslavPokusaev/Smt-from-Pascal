unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
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
f:tstringlist; m1,i,j,n,m,n1:integer; s4,s,s1,b,s2,s3,s5:string;t:Boolean;
begin
t:=True;
m:=0; b:='';s3:=' ';
s1:='delphi';
f:=tstringlist.Create;
if opendialog1.Execute then f.loadfromfile(opendialog1.Filename);
memo1.Lines.LoadFromFile(opendialog1.FileName);
for i:=0 to f.Count-1 do begin
s:=f[i];
while pos(s1,s)<>0 do begin
if pos(s1,s)>0 then begin n:=pos(s1,s);delete(s,1,n+5); m:=m+1;m1:=m;caption:=s;end;end;
if m>1 then begin f.delete(i);f.Insert(i,'');m:=0;t:=False end;end;
if t=True then begin
for i:=0 to f.Count-1 do begin
s2:=f[i];
for j:=1 to Length(s2) do begin
if s2[j]=' ' then
n1:=Pos(s3,s2);
s4:=s2;
Delete(s4,n1,1);
s2:=s4;
f[i]:=s2;
end;end;end;


edit1.Text:=inttostr(m1);
if savedialog1.Execute then f.SaveToFile(savedialog1.FileName);
memo2.Lines.LoadFromFile(savedialog1.FileName);
f.Free;
end;

end.

