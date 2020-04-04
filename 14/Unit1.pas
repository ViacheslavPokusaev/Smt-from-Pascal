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
    Memo1: TMemo;
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
a,b,d,i:integer;
begin
memo1.Clear;
b:=strtoint(edit1.Text);
a:=strtoint(edit2.Text);
if b<=a then showmessage('B повинно бути більше A') else begin
for d:=a to b do begin
for i:=1 to d do begin
memo1.lines.Add(inttostr(d));

end;
end;
end;

end;

end.
