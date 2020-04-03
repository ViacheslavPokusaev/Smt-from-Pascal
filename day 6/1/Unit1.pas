unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
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
f:tstringlist; i,j,k:integer; s,s1:string;
begin
k:=0;
f:=tstringlist.Create;
if opendialog1.Execute then f.loadfromfile(opendialog1.Filename);
for i:=0 to f.Count-1 do begin
s:=f[2];
if i mod 2=0 then f[i]:=s;
end;
for i:=0 to f.Count-1 do begin
s1:=f[i];
for j:=1 to length(s1) do begin
if s1[j]=' ' then k:=k+1;
end;end;
f.SaveToFile(opendialog1.FileName);
memo1.lines.loadfromfile(opendialog1.FileName);
edit1.Text:=inttostr(k);
f.Free;
end;

end.
