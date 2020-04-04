unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
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
st:string;
i,n,k:integer;
begin
k:=0;
n:=0;
st:=edit1.Text;
for i:=1 to length(st) do begin
if st[i]<>' ' then n:=n+1
else if n<3 then begin k:=k+1; n:=0; end
else n:=0;
end;
edit2.text:=inttostr(k);
end;

end.
