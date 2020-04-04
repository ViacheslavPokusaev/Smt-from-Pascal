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
st,st1:string;
i:integer;
begin
st:=edit1.Text; st1:='cc'; i:=1;
while i<=length(st) do begin
if st[i]='c' then begin insert(st1,st,i); i:=i+2;end; i:=i+1;
end;
edit2.Text:=st;
end;

end.
