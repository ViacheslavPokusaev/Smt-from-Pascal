unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
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
f:tstringlist;
s:string;
i,j,k:integer;
t:Boolean;
begin
f:=tstringlist.Create;k:=0;
f.LoadFromFile('C:\Student\Новый текстовый документ.txt');
memo1.Lines.LoadFromFile('C:\Student\Новый текстовый документ.txt');
for i:=0 to f.count-1 do begin
s:=f[i];
for j:=1 to length(s) do begin
if not (S[j]=' ') then begin
if s[j] in ['1'..'9'] then t := True;
if (j = Length(s)) or (S[j + 1]=' ') then begin
if t=true then Inc(k);
t := False;
end;end;end;end;
f.Free;
edit1.Text:=inttostr(k);
end;

end.
