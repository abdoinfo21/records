unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type
  Tperson = packed record
    name:string[12];
    age:byte;
    case men :boolean of
    true:
      (option0:string[12];
       option1:string[12]);
    false:
       (option2:string[12]);
  end;

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  john:Tperson;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);

begin
    john.name:=edit1.Text;
    john.age:=strtoint(edit2.Text);
    if RadioGroup1.ItemIndex= 0 then
    begin
      john.men:=true;
      john.option0:=edit5.Text;
      john.option1:=edit6.text;
      edit8.Enabled:=true;
    end
    else
    begin
      edit8.Enabled:=false;
      john.option2:=edit5.Text;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   edit3.Text:=john.name;
   edit4.Text:=inttostr(john.age);
   if john.men then
   begin
    edit7.Text:=john.option0;
    edit8.Text:=john.option1;
   end
   else
   begin
     edit7.Text:=john.option2;
   end;
end;

end.

