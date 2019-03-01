unit convertos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SpinEdit1: TFloatSpinEdit;
    SpinEdit2: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
      SpinEdit1.Enabled := TRUE;
       SpinEdit2.Enabled := FALSE;
       SpinEdit1.Value := SpinEdit2.Value;
         SpinEdit2.Value :=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  IF SpinEdit1.Enabled = TRUE THEN
  begin
    SpinEdit2.Value := SpinEdit1.Value * 1.13;
  end;
  IF SpinEdit2.Enabled = TRUE THEN
  begin
  SpinEdit1.Value := SpinEdit2.Value * 0.80;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

     SpinEdit1.Value := 0.00;
     SpinEdit2.Value := 0.00;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     close;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
    SpinEdit2.Enabled := TRUE;
       SpinEdit1.Enabled := FALSE;
       SpinEdit2.Value := SpinEdit1.Value;
        SpinEdit1.Value := 0;
        RadioButton1.Checked := FALSE;
        RadioButton1.Checked := FALSE;
end;

end.

