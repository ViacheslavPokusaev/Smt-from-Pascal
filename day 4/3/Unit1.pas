unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

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
d,i:Integer;
begin
d:=0;
st:=Edit1.Text;
for i:=1 to Length(st) do begin
if st[i]='-' then d:=d-strtoint(st[i+1]) else
if st[i]='+' then d:=d+strtoint(st[i+1]);
end;
Edit2.Text:=IntToStr(d);
end;
end.
