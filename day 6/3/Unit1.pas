unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    OpenDialog1: TOpenDialog;
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
f:tstringlist; i,j,i1,m:integer;s,s1,s2,s3:string; f1:string;
begin
m:=0;
f1:=Memo1.Text;
f:=tstringlist.Create;
if opendialog1.Execute then f.loadfromfile(opendialog1.Filename);
memo2.Lines.LoadFromFile(opendialog1.FileName);
for i:=0 to f.count-1 do begin
s:=f[i];s1:=f[0];
for j:=1 to Length(s) do begin
m:=m+1;
end;
if m>100 then begin
f.Insert(0,f1)
end else
f[f.Count-1]:=s1;
f[f.Count-2]:=s1;
end;end;
f.SaveToFile(OpenDialog1.FileName);
Memo3.Lines.LoadFromFile(OpenDialog1.FileName);
f.Free;

end;
end.

