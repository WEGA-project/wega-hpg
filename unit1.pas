unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, Types;

type

  { TKf }

  TKf = class(TForm)
    EC: TFloatSpinEdit;
    Label22: TLabel;
    NK: TFloatSpinEdit;
    NMg: TFloatSpinEdit;
    PN: TFloatSpinEdit;
    PK: TFloatSpinEdit;
    PMg: TFloatSpinEdit;
    KN: TFloatSpinEdit;
    KMg: TFloatSpinEdit;
    CaN: TFloatSpinEdit;
    CaK: TFloatSpinEdit;
    CaMg: TFloatSpinEdit;
    MgN: TFloatSpinEdit;
    MgK: TFloatSpinEdit;
    SN: TFloatSpinEdit;
    SK: TFloatSpinEdit;
    SMg: TFloatSpinEdit;
    NP: TFloatSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    N: TFloatSpinEdit;
    NH4NO3: TFloatSpinEdit;
    NCa: TFloatSpinEdit;
    CaS: TFloatSpinEdit;
    MgP: TFloatSpinEdit;
    MgCa: TFloatSpinEdit;
    MgS: TFloatSpinEdit;
    SP: TFloatSpinEdit;
    SCa: TFloatSpinEdit;
    NS: TFloatSpinEdit;
    PCa: TFloatSpinEdit;
    PS: TFloatSpinEdit;
    KP: TFloatSpinEdit;
    KCa: TFloatSpinEdit;
    KS: TFloatSpinEdit;
    CaP: TFloatSpinEdit;
    P: TFloatSpinEdit;
    K: TFloatSpinEdit;
    Ca: TFloatSpinEdit;
    Mg: TFloatSpinEdit;
    S: TFloatSpinEdit;
    NO3: TFloatSpinEdit;
    NH4: TFloatSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CaChange(Sender: TObject);
    procedure CaClick(Sender: TObject);
    procedure ECChange(Sender: TObject);
    procedure ECClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KChange(Sender: TObject);
    procedure KClick(Sender: TObject);
    procedure KNClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure MgChange(Sender: TObject);
    procedure MgClick(Sender: TObject);
    procedure NChange(Sender: TObject);
    procedure NClick(Sender: TObject);
    procedure NEditingDone(Sender: TObject);
    procedure NH4Change(Sender: TObject);
    procedure NH4Click(Sender: TObject);
    procedure NH4EditingDone(Sender: TObject);
    procedure NH4Exit(Sender: TObject);
    procedure NH4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NH4NO3Change(Sender: TObject);
    procedure NH4NO3Click(Sender: TObject);
    procedure NKChange(Sender: TObject);
    procedure NKClick(Sender: TObject);
    procedure NKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NO3Change(Sender: TObject);
    procedure NO3Click(Sender: TObject);
    procedure NO3Enter(Sender: TObject);
    procedure NO3Exit(Sender: TObject);
    procedure NPChange(Sender: TObject);
    procedure NPChangeBounds(Sender: TObject);
    procedure NPClick(Sender: TObject);
    procedure NPEditingDone(Sender: TObject);
    procedure NPEnter(Sender: TObject);
    procedure NPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NPKeyPress(Sender: TObject; var Key: char);
    procedure NPKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NPMouseEnter(Sender: TObject);
    procedure NPMouseLeave(Sender: TObject);
    procedure NPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NPMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure NPMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure NPResize(Sender: TObject);


    procedure PChange(Sender: TObject);
    procedure PClick(Sender: TObject);
    procedure PKClick(Sender: TObject);
    procedure PNClick(Sender: TObject);
    procedure SChange(Sender: TObject);
    procedure SClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Kf: TKf;
  vN,vNO3,vNH4,vP,vK,vCa,vMg,vS,vEC:Double;
  mN,mP,mK,mCa,mMg,mS:Double;
  r,rN,rK,rCa,rMg,rNH4:Double;
  vKMg,vKCa,vKN,vNH4NO3:Double;

implementation

{$R *.lfm}

{ TKf }

procedure getVar;
begin
  mN:=14.0067;
  mP:=30.0983;
  mK:=39.0983;
  mCa:=40.078;
  mMg:=24.305;
  mS:=32.065;

  vNO3:=Kf.NO3.value;
  vNH4:=Kf.NH4.value;
  vP:=Kf.P.value;
  vK:=Kf.K.value;
  vCa:=Kf.Ca.value;
  vMg:=Kf.Mg.value;
  vS:=Kf.S.value;

  vKMg:=Kf.KMg.value;
  vKCa:=Kf.KCa.value;
  vKN:=Kf.KN.value;
  vNH4NO3:= Kf.NH4NO3.value;
end;


procedure CalculateCa;
begin
  getVar;

 vCa:=-mCa*(vNH4*mP*mMg*mK*mS - vP*mN*mMg*mK*mS + 2*vMg*mN*mP*mK*mS + vK*mN*mP*mMg*mS - vNO3*mP*mMg*mK*mS - 2*vS*mN*mP*mMg*mK)/(2*(mN*mP*mMg*mK*mS));
 Kf.Ca.value:=vCa;
end;

procedure CalcEC;
begin
  getVar;
  vEC:=0.095*(vNH4*mCa*mMg*mK + 2*vCa*mN*mMg*mK + 2*vMg*mN*mCa*mK + vK*mN*mCa*mMg + 2*mN*mCa*mMg*mK)/(mN*mCa*mMg*mK);
  Kf.EC.Value:=vEC;
end;



procedure CalculateS;
begin
  getVar;

 vS:=(mS*(vNH4*mCa*mMg*mK*mP + 2*vCa*mN*mMg*mK*mP + 2*vMg*mN*mCa*mK*mP+ vK*mN*mCa*mMg*mP - vNO3*mCa*mMg*mK*mP - vP*mN*mCa*mMg*mK))/(2*(mN*mCa*mMg*mK*mP));
 Kf.S.value:=vS;
end;


procedure calcECtoVal;
begin

  getVar;

  rN:=(vKMg*vKCa)/(vKCa*vKN + vKMg*vKN + vKMg*vKCa + vKMg*vKCa*vKN) ;
  rK:=(vKN*vKMg*vKCa)/(vKCa*vKN+vKMg*vKN+vKMg*vKCa+vKMg*vKCa*vKN);
  rCa:=(vKMg*vKN)/(vKCa*vKN + vKMg*vKN + vKMg*vKCa + vKMg*vKCa*vKN);
  rMg:=(vKCa*vKN)/(vKCa*vKN+vKMg*vKN+vKMg*vKCa+vKMg*vKCa*vKN);
  rNH4:=(rN*vNH4NO3)/(1+vNH4NO3);

  vEC:= Kf.EC.Value;
  r:= (0.10526315789473684211*mN*mCa*mMg*mK*(100*vEC-19)) /(rNH4*mCa*mMg*mK + 2*rCa*mN*mMg*mK + 2*rMg*mN*mCa*mK + rK*mN*mCa*mMg);


  vN:=rN*r;
  vK:=rK*r;
  vCa:=rCa*r;
  vMg:=rMg*r;
  vNH4:=rNH4*r;

  vNO3:=vN-vNH4;

  vS:=(mS*(vNH4*mCa*mMg*mK*mP + 2*vCa*mN*mMg*mK*mP + 2*vMg*mN*mCa*mK*mP+ vK*mN*mCa*mMg*mP - vNO3*mCa*mMg*mK*mP - vP*mN*mCa*mMg*mK))/(2*(mN*mCa*mMg*mK*mP));

  Kf.N.value:=vN;
  Kf.NO3.value:=vNO3;
  Kf.NH4.value:=vNH4;
  Kf.P.value:=vP;
  Kf.K.value:=vK;
  Kf.Ca.value:=vCa;
  Kf.Mg.value:=vMg;
  Kf.S.value:=vS;


  //vEC:=0.095*(vNH4*mCa*mMg*mK + 2*vCa*mN*mMg*mK + 2*vMg*mN*mCa*mK + vK*mN*mCa*mMg + 2*mN*mCa*mMg*mK)/(mN*mCa*mMg*mK);
  //Kf.EC.Value:=vEC;
end;


procedure CalcKoef;
begin



   Kf.NP.value:=Kf.N.value/Kf.P.Value;
   Kf.NK.value:=Kf.N.value/Kf.K.value;
   Kf.NCa.value:=Kf.N.value/Kf.Ca.value;
   Kf.NMg.value:=Kf.N.value/Kf.Mg.value;
   Kf.CaN.value:=Kf.Ca.value/Kf.N.value;
   Kf.NS.value:=Kf.N.value/Kf.S.value;

   Kf.PN.value:=Kf.P.value/Kf.N.value;
   Kf.PK.value:=Kf.P.value/Kf.K.value;
   Kf.PCa.value:=Kf.P.value/Kf.Ca.value;
   Kf.PMg.value:=Kf.P.value/Kf.Mg.Value;
   Kf.PS.Value:=Kf.P.value/Kf.S.value;


  Kf.KN.value:=Kf.K.value/Kf.N.value;
  Kf.KP.Value:=Kf.K.value/Kf.P.value;
  Kf.KCa.value:=Kf.K.value/Kf.Ca.value;
  Kf.KMg.value:=Kf.K.value/Kf.Mg.value;
  Kf.KS.value:=Kf.K.value/Kf.S.value;

  Kf.CaN.value:=Kf.Ca.value/Kf.N.value;
  Kf.CaP.value:=Kf.Ca.value/Kf.P.value;
  Kf.CaK.value:=Kf.Ca.value/Kf.K.value;
  Kf.CaMg.value:=Kf.Ca.value/Kf.Mg.value;
  Kf.CaS.value:=Kf.Ca.Value/Kf.S.value;

  Kf.MgN.value:=Kf.Mg.value/Kf.N.value;
  Kf.MgP.value:=Kf.Mg.value/Kf.P.value;
  Kf.MgK.value:=Kf.Mg.value/Kf.K.value;
  Kf.MgCa.value:=Kf.Mg.value/Kf.Ca.value;
  Kf.MgS.value:=Kf.Mg.Value/Kf.S.value;

  Kf.SN.value:=Kf.S.value/Kf.N.value;
  Kf.SP.value:=Kf.S.value/Kf.P.value;
  Kf.SK.value:=Kf.S.value/Kf.K.value;
  Kf.SCa.value:=Kf.S.value/Kf.Ca.value;
  Kf.SMg.value:=Kf.S.Value/Kf.Mg.value;




end;



procedure CalcAll;
begin
 CalculateS;
 CalculateCa;
 CalcEC;
 CalcKoef;
end;





procedure TKf.Label8Click(Sender: TObject);
begin

end;

procedure TKf.MgChange(Sender: TObject);
begin
  CalcKoef;

end;

procedure TKf.MgClick(Sender: TObject);
begin
  CalcAll;
end;

procedure TKf.Label1Click(Sender: TObject);
begin
    NH4NO3.value := NH4.value/NO3.value;
    CalcAll;
end;

procedure TKf.FormClick(Sender: TObject);
begin

end;

procedure TKf.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TKf.KChange(Sender: TObject);
begin
 CalcKoef;

end;

procedure TKf.KClick(Sender: TObject);
begin
  CalcAll;
end;

procedure TKf.KNClick(Sender: TObject);
begin
  K.value:=N.value*KN.value;
  CalculateS;
end;

procedure TKf.Button1Click(Sender: TObject);
begin
  calcECtoVal;
  //CalcAll;
end;

procedure TKf.CaChange(Sender: TObject);
begin
  CalcKoef;

end;

procedure TKf.CaClick(Sender: TObject);
begin
  CalcAll;
end;

procedure TKf.ECChange(Sender: TObject);
begin

end;

procedure TKf.ECClick(Sender: TObject);
begin
  calcECtoVal;
  CalcAll;
end;

procedure TKf.FormActivate(Sender: TObject);
begin

   CalcKoef;
   CalcAll;
end;

procedure TKf.FormChangeBounds(Sender: TObject);
begin

end;

procedure TKf.NChange(Sender: TObject);
begin
  NO3.value := N.value/(NH4NO3.value+1);
  NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
  CalcKoef;





end;

procedure TKf.NClick(Sender: TObject);
begin
  //CalculateS;
  CalcAll;
end;

procedure TKf.NEditingDone(Sender: TObject);
begin

end;

procedure TKf.NH4Change(Sender: TObject);
begin

end;


procedure TKf.NH4Click(Sender: TObject);
begin
  NO3.Value := N.value - NH4.value;
  NH4NO3.value := NH4.value / NO3.value ;
  CalcAll;
end;

procedure TKf.NH4EditingDone(Sender: TObject);
begin
   //   NH4NO3.value := NH4.value/NO3.value;
end;

procedure TKf.NH4Exit(Sender: TObject);
begin

  //NO3.value := N.value - NH4.Value
end;

procedure TKf.NH4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

    NH4NO3.value := NH4.value / NO3.value

end;

procedure TKf.NH4NO3Change(Sender: TObject);
begin

  //CalculateS;
end;

procedure TKf.NH4NO3Click(Sender: TObject);
begin
    NH4.value := N.value *(NH4NO3.value/(NH4NO3.value+1));
  NO3.value := N.value / ( NH4NO3.value+1 );
  CalcAll;
end;

procedure TKf.NKChange(Sender: TObject);
begin

end;

procedure TKf.NKClick(Sender: TObject);
begin
  N.value:=K.value*NK.value;
  CalculateS;
end;

procedure TKf.NKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure TKf.NO3Change(Sender: TObject);
begin
    NH4.value:=N.Value-NO3.value;
    NH4NO3.value := NH4.value/NO3.value;

end;

procedure TKf.NO3Click(Sender: TObject);
begin
  NH4.Value := N.value-NO3.value;
  NH4NO3.value := NH4.value / NO3.value ;
  CalcAll;
end;

procedure TKf.NO3Enter(Sender: TObject);
begin
  NH4.value:=N.Value-NO3.value;
end;

procedure TKf.NO3Exit(Sender: TObject);
begin

end;

procedure TKf.NPChange(Sender: TObject);
begin

end;

procedure TKf.NPChangeBounds(Sender: TObject);
begin

end;

procedure TKf.NPClick(Sender: TObject);
begin
  K.value:=P.value*KP.value;

  CalculateS;
end;

procedure TKf.NPEditingDone(Sender: TObject);
begin

end;

procedure TKf.NPEnter(Sender: TObject);
begin

end;

procedure TKf.NPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TKf.NPKeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TKf.NPKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

end;

procedure TKf.NPMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  P.Value:=N.value/NP.value;
end;

procedure TKf.NPMouseEnter(Sender: TObject);
begin

end;

procedure TKf.NPMouseLeave(Sender: TObject);
begin

end;

procedure TKf.NPMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TKf.NPMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TKf.NPMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TKf.NPResize(Sender: TObject);
begin

end;





procedure TKf.PChange(Sender: TObject);
begin
  CalcKoef;

end;

procedure TKf.PClick(Sender: TObject);
begin
  CalcAll;
end;

procedure TKf.PKClick(Sender: TObject);
begin
  P.value:=K.value*PK.value;
  CalcAll;
end;

procedure TKf.PNClick(Sender: TObject);
begin

  P.value:=N.value*PN.value;
  CalcAll;
end;

procedure TKf.SChange(Sender: TObject);
begin
  CalculateCa;

end;

procedure TKf.SClick(Sender: TObject);
begin
    CalcAll;
end;

end.

