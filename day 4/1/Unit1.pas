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
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
i,j,m,n,q:integer;
b,b1,b2:char;
begin
st:=edit1.text;
b:=st[length(st)];
b1:=st[length(st)-1];
b2:=st[length(st)-2];
n:=0; m:=0; q:=0;
edit2.Text:=b;
edit3.Text:=b1;
edit4.Text:=b2;
for i:=1 to length(st) do begin
if st[i]=b then inc(n);
if st[i]=b1 then inc(m);
 if st[i]=b2 then inc(q);
end;
 if n>m then showmessage('����. ������ ������ ��������������');
 if n<m then showmessage('������������� ������ ����������');
 if m>q then showmessage('������������� ������ ������ ������������������');
  if m<q then showmessage('����������������� ������ ��������������');
 if q>n then showmessage('����������������� ������ ����������');
 if q<n then showmessage('��������� ������ ��������');
end;


end.
