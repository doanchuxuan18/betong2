unit U_HOATTAI1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    ted_P1: TEdit;
    ted_P2: TEdit;
    ted_Pa: TEdit;
    ted_Pc: TEdit;
    ted_P12: TEdit;
    ted_P22: TEdit;
    ted_Pa2: TEdit;
    ted_Pc2: TEdit;
    ted_P2m: TEdit;
    ted_Pam: TEdit;
    ted_P1m: TEdit;
    ted_Pcm2: TEdit;
    btn_thoat: TButton;
    procedure btn_thoatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses U_BIEN, U_HOATTAI, U_MAIN, U_TINHTAI, U_TINHTAI1, U_TINHTOAN;

procedure TForm5.btn_thoatClick(Sender: TObject);
begin
  Form5.Close;
end;

end.
