unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.Labels, Vcl.StdCtrls;

type
  TInfoForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EsVersionLabel1: TEsVersionLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

end.
