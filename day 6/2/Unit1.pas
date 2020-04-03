unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
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
f:tstringlist; i,j:integer; s:string;
begin
f:=tstringlist.Create;
if opendialog1.Execute then f.loadfromfile(opendialog1.Filename);
memo1.Lines.LoadFromFile(opendialog1.FileName);
for i:=0 to f.Count-1 do begin
s:=f[i];
if length(s)>10 then begin
for j:=1 to length(s) do begin
if s[j]=',' then s[j]:='!';
f[i]:=s;
end;end;
if savedialog1.Execute then f.SaveToFile(savedialog1.FileName);
memo2.Lines.LoadFromFile(savedialog1.FileName);
f.Free;
end;
end;
 end.


