unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
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
st1,st2:string;
f:Integer;
begin
st1:=edit1.Text;
while st1<>' ' do begin
if st1[1]=' ' then delete(st1,1,1) else begin f:=pos(' ',st1); if f<>0 then begin
st2:=copy(st1,1,f-1); delete(st1,1,f);end{for else} else begin st2:=copy(st1,1,length(st1));
delete(st1,1,length(st1));end;{for else}
end;
if length(st2)<=7 then memo1.lines.add(st2);st2:=' ';
end;
end;{fitst begin}

end.
