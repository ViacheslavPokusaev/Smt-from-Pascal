unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
i,k:integer;
begin
st:=edit1.text;
k:=0;
for i:=1 to length(st) do begin
if (st[i]='2') or (st[i]='4') or (st[i]='6') or (st[i]='8') or (st[i]='0') then k:=k+1;
end;
edit2.Text:=inttostr(k);
end;

end.
