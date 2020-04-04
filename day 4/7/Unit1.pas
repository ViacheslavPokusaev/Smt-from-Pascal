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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
s,s1,s2:string;
n,i,q:integer;
begin
s:=edit1.Text;
n:=strtoint(edit2.Text);
if length(s)>n then begin
q:=length(s)-n;
delete(s,1,q); end;
if length(s)<n then begin
q:=n-length(s); s1:='';
for i:=1 to q do begin
s1:=s1+'%'; end;
 s2:=s;
 s:=s1+s2; end;
 edit3.Text:=s;
end;

end.
