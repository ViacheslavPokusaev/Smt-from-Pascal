unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    Button1: TButton;
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
f:tstringlist; i,c,d:integer; s,s1,s3:string;
begin
c:=0;
f:=tstringlist.Create;
if opendialog1.Execute then f.loadfromfile(opendialog1.Filename);
memo1.Lines.LoadFromFile(opendialog1.FileName);
s1:=f[1];s3:=f[f.count-2];
for i:=0 to f.Count-1 do begin
s:=f[i];
if Length(s)>4 then c:=c+1;
 end;
if (f.Count-1>10) and (c>0) then begin
f.Delete(f.Count-1);f.Insert(f.Count-1,'');
f.Delete(f.Count-2);f.Insert(f.Count-2,'');
f.Delete(f.Count-3);f.Insert(f.Count-3,'');
f.Delete(f.Count-4);f.Insert(f.Count-4,'');
f.Delete(f.Count-5);f.Insert(f.Count-5,'');
end else
f[1]:=s3;
f[f.count-2]:=s1;
f.SaveToFile(opendialog1.FileName);
memo2.Lines.LoadFromFile(opendialog1.FileName);
f.Free;

end;
end.
