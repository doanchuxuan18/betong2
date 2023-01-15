﻿unit U_TINHTOAN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;
procedure dulieuvao;
procedure tinh(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2,
  ps, phl, pm, htbc, htab: Extended);
procedure hoattai(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2,
  ps, phl, pm: Extended);

implementation

uses U_BIEN, U_MAIN, U_TINHTAI, U_HOATTAI, U_HOATTAI1, U_TINHTAI1;

procedure dulieuvao;
var
  maloi: Integer;
begin
  val(Form1.ted_l1.Text, l1, maloi);
  val(Form1.ted_l2.Text, l2, maloi);
  val(Form1.ted_b.Text, b, maloi);
  val(Form1.ted_h.Text, h, maloi);
  val(Form1.ted_san1.Text, san1, maloi);
  val(Form1.ted_san2.Text, san2, maloi);
  val(Form1.ted_san3.Text, san3, maloi);
  val(Form1.ted_b1.Text, b1, maloi);
  val(Form1.ted_h1.Text, h1, maloi);
  val(Form1.ted_b2.Text, b2, maloi);
  val(Form1.ted_h2.Text, h2, maloi);
  val(Form1.ted_b3.Text, b3, maloi);
  val(Form1.ted_h3.Text, h3, maloi);
  gs := 2000 * 0.008 * 1.1 + 2000 * 1.3 * 0.03 + 2000 * 0.015 * 1.3 + 2500 *
    san1 * 1.1;
  ghl := 2000 * 0.008 * 1.1 + 2000 * 1.3 * 0.03 + 2000 * 0.015 * 1.3 + 2500 *
    san2 * 1.1;
  gm := 2000 * 0.015 * 1.3 + 2500 * san3 * 1.1 + 20 * 1.05;
  ps := 200 * 1.2;
  phl := 300 * 1.2;
  pm := 75 * 1.3;;
  gtx1 := 514;
  gtx2 := 296;
  St := sqr(l1 + l2) * 0.577 / 4;
  Stab := sqr(l1) * 0.577 / 4;
  Stbc := St - Stab;
  htbc := Stbc / (l2 + 0.22);
  htab := Stab / l1;

end;

procedure tinh(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2,
  ps, phl, pm, htbc, htab: Extended);
begin
  // tải trọng tầng 2,3,4
  g1 := gtx1 * (h - h1) + gs * (b - 0.22);
  g2 := ghl * (l1 - 0.22);
  Ga := 2500 * 1.1 * b3 * h3 * b + gtx1 * (h - h3) * b * 0.7 + gs * (b - 0.22) *
    (b - 0.22) / 4;
  Gb := Ga + ghl * ((b - 0.22) + (b - l1)) * (l1 - 0.22) / 4;
  Gc := 2500 * 1.1 * b3 * h3 * b + ghl * ((b - 0.22) + (b - l1)) * (l1 - 0.22) /
    4 + gtx2 * 0.9 * b;
  // tải trọng mái
  g1m := gtx2 * htbc + gm * (b - 0.22);
  g2m := gtx2 * htab + gm * (l1 - 0.22);
  Gam := 2500 * 1.1 * b3 * h3 * b + gm * (b - 0.22) * (b - 0.22) / 4;
  Gbm := 2500 * 1.1 * b3 * h3 * b + gm * (b - 0.22) * (b - 0.22) / 4 + gm *
    ((b - 0.22) + (b - l1)) * (l1 - 0.22) / 4;
  Gcm := 2500 * 1.1 * b3 * h3 * b + gm * ((b - 0.22) + (b - l1)) *
    (l1 - 0.22) / 4;

end;

procedure hoattai(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2,
  ps, phl, pm: Extended);

begin
  // Hoạt tải 1
  ht1_P1 := ps * b;
  ht1_Pc := ps * b * b / 4;
  ht1_P2 := phl * l1;
  ht1_Pa := phl * (b + (b - l1)) * l1 / 4;
  ht1_P2m := pm * l1;
  ht1_Pam := pm * (b + (b - l1)) * l1 / 4;
  // Hoạt tải 2
  ht2_P2 := phl * l1;
  ht2_Pa := ht1_Pa;
  ht2_P1 := ps * b;
  ht2_Pc := ht1_Pc;
  ht2_P1m := pm * b;
  ht2_Pcm := pm * b * b / 4;
end;

end.
