unit U_TINHTAI1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ted_g1: TEdit;
    ted_g2: TEdit;
    ted_Ga: TEdit;
    ted_Gb: TEdit;
    ted_g1m: TEdit;
    ted_g2m: TEdit;
    ted_Gam: TEdit;
    ted_Gbm: TEdit;
    btn_thoat: TButton;
    procedure btn_thoatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses U_BIEN, U_HOATTAI, U_HOATTAI1, U_MAIN, U_TINHTAI, U_TINHTOAN;

procedure TForm4.btn_thoatClick(Sender: TObject);
begin
  Form4.Close;
end;

end.
