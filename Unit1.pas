unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.NumberBox,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    NumberBox1: TNumberBox;
    Label1: TLabel;
    Label2: TLabel;
    AInput: TNumberBox;
    Label3: TLabel;
    Label4: TLabel;
    BInput: TNumberBox;
    PlusOperation: TButton;
    MultiOperation: TButton;
    MinOperation: TButton;
    DivOperation: TButton;
    Button1: TButton;
    BitBtn1: TBitBtn;
    OKimg: TImage;
    ErrorImg: TImage;
    Timer1: TTimer;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    procedure PlusOperationClick(Sender: TObject);
    procedure MultiOperationClick(Sender: TObject);
    procedure MinOperationClick(Sender: TObject);
    procedure DivOperationClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Mode: Integer;

implementation

{$R *.dfm}

function Oblicz(a: Integer; b: Integer; Tryb: Integer): Integer;
begin
    if Tryb = 1 then
    begin
      result := a + b;
    end;

    if Tryb = 2 then
    begin
      result := a * b;
    end;

    if Tryb = 3 then
    begin
      result := a - b;
    end;

    if Tryb = 4 then
    begin
      result := a div b;
    end;



end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Mode := 0;
  AInput.ValueInt := 0;
  BInput.ValueInt := 0;
  NumberBox1.ValueInt := 0;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if BInput.ValueInt = 0 then BInput.ValueInt := 1;
  Numberbox1.ValueInt := Oblicz(AInput.ValueInt, BInput.ValueInt, Mode);
end;

procedure TForm1.DivOperationClick(Sender: TObject);
begin
  Mode := 4;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Mode := 0;
end;

procedure TForm1.MinOperationClick(Sender: TObject);
begin
  Mode := 3;
end;

procedure TForm1.MultiOperationClick(Sender: TObject);
begin
  Mode := 2;
end;

procedure TForm1.PlusOperationClick(Sender: TObject);
begin
  Mode := 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if (Mode = 0) or (AInput.ValueInt = 0) or (BInput.ValueInt = 0) then
  begin
    ErrorImg.Visible := True;
    OKImg.Visible := False;
  end
  else
  begin
    ErrorImg.Visible := False;
    OKImg.Visible := True;
  end;
end;

end.
