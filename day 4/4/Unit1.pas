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
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
st,st1,st2:string;
n1,n2:integer;
begin
n1:=strtoint(edit1.Text);
n2:=strtoint(edit2.Text);
st:=edit3.Text;
st1:=edit4.Text;
st2:=copy(st1,1,n1)+copy(st,length(st)-n2,n2);
edit5.Text:=st2;
end;

end.
