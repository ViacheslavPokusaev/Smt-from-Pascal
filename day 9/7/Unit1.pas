unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,shellapi;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;f:tstringlist;

implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form1.Align:=altop;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
form1.Align:=albottom;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
form1.Align:=alleft;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
form1.Align:=alright;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
if speedbutton7.down=true then memo1.Enabled:=true else if speedbutton7.down=false then memo1.enabled:=false;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
var
i:integer;
begin
i:=combobox1.ItemIndex;
case i of
0:form1.memo1.Font.Color:=clred;
1:form1.memo1.Font.Color:=clblue;
2:form1.memo1.Font.Color:=clblack;
3:form1.memo1.Font.Color:=claqua;
4:form1.memo1.Font.Color:=clyellow;
end;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
form1.memo1.Font.Color:=clred;
combobox1.Items.Add('Красный');
combobox1.Items.Add('Синий');
combobox1.Items.Add('Чёрный');
combobox1.Items.Add('Голубой');
combobox1.Items.Add('Жёлтый');

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
if opendialog1.Execute then memo1.lines.loadfromfile(opendialog1.FileName);
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
if savedialog1.Execute then memo1.Lines.SaveToFile(savedialog1.FileName);
end;

end.
