unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Menus;

type
  TForm1 = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N201: TMenuItem;
    N701: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N701Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
f:boolean;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if f=false then begin
action:=canone;
showmessage('Запрещено');end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
label1.Caption:=
'Введите две цифры';
f:=false;

end;



procedure TForm1.N4Click(Sender: TObject);
begin
form1.Color:=clblue;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form1.Color:=clred;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
form1.Color:=clgreen;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
form1.Color:=clyellow;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
form1.Color:=clwhite;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
f:=TRUE;
form1.close;
end;

procedure TForm1.N201Click(Sender: TObject);
begin
maskedit1.Top:=top-20;
end;

procedure TForm1.N701Click(Sender: TObject);
begin
maskedit1.Left:=left-70;
end;

procedure TForm1.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
f:=true;
if (maskedit1.Text='56') and (ssalt in shift) then form1.Close else form1.Enabled:=false;
end;

end.
