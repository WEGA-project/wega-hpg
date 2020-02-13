unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin, ComCtrls,strutils;
const
  C_FNAME = 'settings.txt';
  StdWordDelims = ['='] + Brackets;

type

  { TKf }

  TKf = class(TForm)
    bload: TButton;
    Button1: TButton;
    gB: TFloatSpinEdit;
    gCo: TFloatSpinEdit;
    gCu: TFloatSpinEdit;
    gFe: TFloatSpinEdit;
    gMn: TFloatSpinEdit;
    gMo: TFloatSpinEdit;
    gSi: TFloatSpinEdit;
    gZn: TFloatSpinEdit;
    Fe: TFloatSpinEdit;
    B: TFloatSpinEdit;
    Cu: TFloatSpinEdit;
    Co: TFloatSpinEdit;
    dFe: TFloatSpinEdit;
    dMn: TFloatSpinEdit;
    dB: TFloatSpinEdit;
    dZn: TFloatSpinEdit;
    dCu: TFloatSpinEdit;
    dMo: TFloatSpinEdit;
    dCo: TFloatSpinEdit;
    dSi: TFloatSpinEdit;
    Label68: TLabel;
    Label69: TLabel;
    Si: TFloatSpinEdit;
    Mo: TFloatSpinEdit;
    Zn: TFloatSpinEdit;
    Mn: TFloatSpinEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    PageControl1: TPageControl;
    save: TButton;
    chK2SO4: TCheckBox;
    chMgNO3: TCheckBox;
    gMgNO3: TFloatSpinEdit;
    pkf: TLabel;
    MgNO3_Mg: TFloatSpinEdit;
    MgNO3_NO3: TFloatSpinEdit;
    Label54: TLabel;
    Label55: TLabel;
    nMgNO3: TLabel;
    parse: TButton;
    profile: TEdit;
    gCaNO3: TFloatSpinEdit;
    EC: TFloatSpinEdit;
    gK2SO4: TFloatSpinEdit;
    gKH2PO4: TFloatSpinEdit;
    gKNO3: TFloatSpinEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    nnNH4NO3: TLabel;
    Label53: TLabel;
    gMgSO4: TFloatSpinEdit;
    gNH4NO3: TFloatSpinEdit;
    nKNO3: TLabel;
    nCaNO3: TLabel;
    nMgSO4: TLabel;
    nKH2PO4: TLabel;
    nK2SO4: TLabel;
    nNH4NO3: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    CaNO3_Ca: TFloatSpinEdit;
    NK: TFloatSpinEdit;
    KNO3_K: TFloatSpinEdit;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    V: TFloatSpinEdit;
    NMg: TFloatSpinEdit;
    MgSO4_Mg: TFloatSpinEdit;
    K2SO4_K: TFloatSpinEdit;
    KH2PO4_K: TFloatSpinEdit;
    NH4NO3_NH4: TFloatSpinEdit;
    CaNO3_NO3: TFloatSpinEdit;
    KNO3_NO3: TFloatSpinEdit;
    MgSO4_S: TFloatSpinEdit;
    K2SO4_S: TFloatSpinEdit;
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
    KH2PO4_P: TFloatSpinEdit;
    NH4NO3_NO3: TFloatSpinEdit;
    CaNO3_NH4: TFloatSpinEdit;
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
    procedure BChange(Sender: TObject);
    procedure bloadClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CaChange(Sender: TObject);
    procedure C(Sender: TObject);

    procedure CaKChange(Sender: TObject);
    procedure CaKClick(Sender: TObject);

    procedure CaMgChange(Sender: TObject);
    procedure CaMgClick(Sender: TObject);

    procedure CaNChange(Sender: TObject);
    procedure CaNClick(Sender: TObject);

    procedure CaNO3_CaChange(Sender: TObject);

    procedure CaNO3_NH4Change(Sender: TObject);
    procedure CaNO3_NH4EditingDone(Sender: TObject);


    procedure CaNO3_NO3Change(Sender: TObject);

    procedure CaNO3_NO3KeyDown(Sender: TObject);
    procedure CaPChange(Sender: TObject);
    procedure CaPClick(Sender: TObject);

    procedure CaSChange(Sender: TObject);
    procedure CaSClick(Sender: TObject);

    procedure chK2SO4Change(Sender: TObject);
    procedure chMgNO3Change(Sender: TObject);
    procedure CoChange(Sender: TObject);
    procedure CuChange(Sender: TObject);
    procedure dBChange(Sender: TObject);
    procedure dCoChange(Sender: TObject);
    procedure dCuChange(Sender: TObject);
    procedure dFeChange(Sender: TObject);
    procedure dMnChange(Sender: TObject);
    procedure dMoChange(Sender: TObject);
    procedure dSiChange(Sender: TObject);
    procedure dZnChange(Sender: TObject);

    procedure ECChange(Sender: TObject);

    procedure ECClick(Sender: TObject);

    procedure FeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure gBChange(Sender: TObject);

    procedure gCaNO3Change(Sender: TObject);
    procedure gCoChange(Sender: TObject);
    procedure gCuChange(Sender: TObject);
    procedure gFeChange(Sender: TObject);
    procedure gK2SO4Change(Sender: TObject);
    procedure gKH2PO4Change(Sender: TObject);
    procedure gKNO3Change(Sender: TObject);
    procedure gMgNO3Change(Sender: TObject);
    procedure gMgSO4Change(Sender: TObject);
    procedure gMnChange(Sender: TObject);
    procedure gMoChange(Sender: TObject);
    procedure gNH4NO3Change(Sender: TObject);
    procedure gSiChange(Sender: TObject);
    procedure gZnChange(Sender: TObject);
    procedure K2SO4_KChange(Sender: TObject);
    procedure K2SO4_KClick(Sender: TObject);

    procedure K2SO4_SChange(Sender: TObject);
    procedure K2SO4_SClick(Sender: TObject);

    procedure KCaChange(Sender: TObject);
    procedure KCaClick(Sender: TObject);

    procedure KChange(Sender: TObject);
    procedure KClick(Sender: TObject);

    procedure KH2PO4_KChange(Sender: TObject);
    procedure KH2PO4_KClick(Sender: TObject);

    procedure KH2PO4_PChange(Sender: TObject);
    procedure KH2PO4_PClick(Sender: TObject);

    procedure KMgChange(Sender: TObject);
    procedure KMgClick(Sender: TObject);

    procedure KNChange(Sender: TObject);
    procedure KNClick(Sender: TObject);

    procedure KNO3_KChange(Sender: TObject);
    procedure KNO3_KClick(Sender: TObject);

    procedure KNO3_NO3Change(Sender: TObject);
    procedure KNO3_NO3Click(Sender: TObject);

    procedure KPChange(Sender: TObject);
    procedure KPClick(Sender: TObject);

    procedure KSChange(Sender: TObject);
    procedure KSClick(Sender: TObject);

    procedure Label1Click(Sender: TObject);
    procedure MnChange(Sender: TObject);
    procedure MoChange(Sender: TObject);
    procedure pkfClick(Sender: TObject);
    procedure Label54Click(Sender: TObject);
    procedure MgCaChange(Sender: TObject);

    procedure MgKChange(Sender: TObject);
    procedure MgNChange(Sender: TObject);
    procedure MgNO3_MgChange(Sender: TObject);
    procedure MgNO3_NO3Change(Sender: TObject);
    procedure MgPChange(Sender: TObject);
    procedure MgSChange(Sender: TObject);
    procedure MgSO4_MgChange(Sender: TObject);

    procedure MgSO4_SChange(Sender: TObject);

    procedure MgSO4_SClick(Sender: TObject);
    procedure NCaChange(Sender: TObject);


    procedure NH4NO3_NH4Change(Sender: TObject);
    procedure NH4NO3_NO3Change(Sender: TObject);
    procedure nKH2PO4Click(Sender: TObject);
    procedure nK2SO4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure MgCaClick(Sender: TObject);

    procedure MgChange(Sender: TObject);
    procedure MgClick(Sender: TObject);
    procedure MgKClick(Sender: TObject);

    procedure MgNClick(Sender: TObject);

    procedure MgPClick(Sender: TObject);

    procedure MgSClick(Sender: TObject);



    procedure NCaClick(Sender: TObject);

    procedure NChange(Sender: TObject);
    procedure NClick(Sender: TObject);
    procedure NEditingDone(Sender: TObject);
    procedure NH4Change(Sender: TObject);
    procedure NH4Click(Sender: TObject);
    procedure NH4EditingDone(Sender: TObject);
    procedure NH4Exit(Sender: TObject);

    procedure NH4NO3Change(Sender: TObject);
    procedure NH4NO3Click(Sender: TObject);

    procedure NH4NO3_NH4Click(Sender: TObject);

    procedure NH4NO3_NO3Click(Sender: TObject);

    procedure NKChange(Sender: TObject);
    procedure NKClick(Sender: TObject);


    procedure NMgChange(Sender: TObject);
    procedure NMgClick(Sender: TObject);

    procedure NO3Change(Sender: TObject);
    procedure NO3Click(Sender: TObject);
    procedure NO3Enter(Sender: TObject);
    procedure NO3Exit(Sender: TObject);
    procedure NPChange(Sender: TObject);









    procedure NSChange(Sender: TObject);
    procedure NSClick(Sender: TObject);

    procedure parseClick(Sender: TObject);
    procedure PCaChange(Sender: TObject);
    procedure PCaClick(Sender: TObject);



    procedure PChange(Sender: TObject);
    procedure PClick(Sender: TObject);

    procedure PKChange(Sender: TObject);


    procedure PMgChange(Sender: TObject);


    procedure PNChange(Sender: TObject);


    procedure profileChange(Sender: TObject);
    procedure PSChange(Sender: TObject);


    procedure saveClick(Sender: TObject);
    procedure SCaChange(Sender: TObject);


    procedure SChange(Sender: TObject);
    procedure SiChange(Sender: TObject);


    procedure SKChange(Sender: TObject);


    procedure SMgChange(Sender: TObject);


    procedure SNChange(Sender: TObject);


    procedure SPChange(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);


    procedure VChange(Sender: TObject);
    procedure ZnChange(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Kf: TKf;
  vN,vNO3,vNH4,vP,vK,vCa,vMg,vS,vEC,V:Double;
  FloatSpinEdit2,mP,mK,mCa,mMg,mS:Double;
  r,rN,rK,rCa,rMg,rNH4:Double;
  vKMg,vKCa,vKN,vNH4NO3:Double;
  sMgSO4,sKH2PO4,sCaNO3,sNH4NO3,sKNO3,sK2SO4,sMgNO3:Double;
  Mg_MgSO4,S_MgSO4,P_KH2PO4,K_KH2PO4,Ca_CaNO3,NO3_CaNO3,NH4_CaNO3,NH4_NH4NO3,NO3_NH4NO3,K_KNO3,NO3_KNO3,S_K2SO4,K_K2SO4:Double;
  vMgSO4_Mg,vMgSO4_S,vKH2PO4_P,vKH2PO4_K,vCaNO3_Ca,vCaNO3_NO3,vCaNO3_NH4,vNH4NO3_NH4,vNH4NO3_NO3,vKNO3_K,vKNO3_NO3,vK2SO4_S,vK2SO4_K,vMgNO3_Mg,vMgNO3_NO3:Double;
  xNH4, xNO3, xS: Double;
  vEC0,vKN0,vCaN0,vKP0,vKCa0,vKMg0:Double;
  ps,s:string;
  MyFormatSettings: TFormatSettings;


  tfOut: TextFile;
  tfIn: TextFile;


implementation

{$R *.lfm}

{ TKf }

procedure getVar;
begin
  FloatSpinEdit2:=14.0067;
  mP:=30.973762;
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

 vCa:=-mCa*(vNH4*mP*mMg*mK*mS - vP*FloatSpinEdit2*mMg*mK*mS + 2*vMg*FloatSpinEdit2*mP*mK*mS + vK*FloatSpinEdit2*mP*mMg*mS - vNO3*mP*mMg*mK*mS - 2*vS*FloatSpinEdit2*mP*mMg*mK)/(2*(FloatSpinEdit2*mP*mMg*mK*mS));
 if ( Kf.Ca.Focused = False ) then Kf.Ca.value:=vCa;
end;

procedure CalcEC;
begin
  getVar;
  vEC:=0.095*(vNH4*mCa*mMg*mK + 2*vCa*FloatSpinEdit2*mMg*mK + 2*vMg*FloatSpinEdit2*mCa*mK + vK*FloatSpinEdit2*mCa*mMg + 2*FloatSpinEdit2*mCa*mMg*mK)/(FloatSpinEdit2*mCa*mMg*mK);
  if ( Kf.EC.Focused = False ) then Kf.EC.Value:=vEC;
end;



procedure CalculateS;
begin
  getVar;

 vS:=(mS*(vNH4*mCa*mMg*mK*mP + 2*vCa*FloatSpinEdit2*mMg*mK*mP + 2*vMg*FloatSpinEdit2*mCa*mK*mP+ vK*FloatSpinEdit2*mCa*mMg*mP - vNO3*mCa*mMg*mK*mP - vP*FloatSpinEdit2*mCa*mMg*mK))/(2*(FloatSpinEdit2*mCa*mMg*mK*mP));

  if ( Kf.S.Focused = False ) then Kf.S.value:=vS;
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
  r:= (0.10526315789473684211*FloatSpinEdit2*mCa*mMg*mK*(100*vEC-19)) /(rNH4*mCa*mMg*mK + 2*rCa*FloatSpinEdit2*mMg*mK + 2*rMg*FloatSpinEdit2*mCa*mK + rK*FloatSpinEdit2*mCa*mMg);


  vN:=rN*r;
  vK:=rK*r;
  vCa:=rCa*r;
  vMg:=rMg*r;
  vNH4:=rNH4*r;

  vNO3:=vN-vNH4;

  vS:=(mS*(vNH4*mCa*mMg*mK*mP + 2*vCa*FloatSpinEdit2*mMg*mK*mP + 2*vMg*FloatSpinEdit2*mCa*mK*mP+ vK*FloatSpinEdit2*mCa*mMg*mP - vNO3*mCa*mMg*mK*mP - vP*FloatSpinEdit2*mCa*mMg*mK))/(2*(FloatSpinEdit2*mCa*mMg*mK*mP));


  if ( Kf.NO3.Focused = False ) then Kf.NO3.value:=vNO3;
  if ( Kf.NH4.Focused = False ) then Kf.NH4.value:=vNH4;
  if ( Kf.P.Focused = False ) then Kf.P.value:=vP;
  if ( Kf.K.Focused = False ) then Kf.K.value:=vK;
  if ( Kf.Ca.Focused = False ) then Kf.Ca.value:=vCa;
  if ( Kf.Mg.Focused = False ) then Kf.Mg.value:=vMg;
  if ( Kf.S.Focused = False ) then Kf.S.value:=vS;
  if ( Kf.N.Focused = False ) then Kf.N.value:=vN;

  //vEC:=0.095*(vNH4*mCa*mMg*mK + 2*vCa*FloatSpinEdit2*mMg*mK + 2*vMg*FloatSpinEdit2*mCa*mK + vK*FloatSpinEdit2*mCa*mMg + 2*FloatSpinEdit2*mCa*mMg*mK)/(FloatSpinEdit2*mCa*mMg*mK);
  //Kf.EC.Value:=vEC;
end;

procedure genProfile;
begin
    MyFormatSettings.DecimalSeparator := '.';
   vN:=kf.N.Value;
   ps:='N='+ FloatToStr(round(vN))+' '
                    +'NO3='+FloatToStr(round(vNO3*100)/100, MyFormatSettings)+' '
                    +'NH4='+FloatToStr(round(vNH4*100)/100, MyFormatSettings)+' '
                    +'P='+FloatToStr(round(vP*100)/100, MyFormatSettings)+' '
                    +'K='+FloatToStr(round(vK*100)/100, MyFormatSettings)+' '
                    +'Ca='+FloatToStr(round(vCa*100)/100, MyFormatSettings)+' '
                    +'Mg='+FloatToStr(round(vMg*100)/100, MyFormatSettings)+' '
                    +'S='+FloatToStr(round(vS*10)/10, MyFormatSettings)+' '
                    +'[ EC='+FloatToStr(round(vEC*10)/10, MyFormatSettings)+' '
                    +'K:N='+FloatToStr(round(vKN*10)/10, MyFormatSettings)+' '
                    +'K:Mg='+FloatToStr(round(vKMg*10)/10, MyFormatSettings)+' '
                    +'K:Ca='+FloatToStr(round(vKCa*10)/10, MyFormatSettings)+' '
                    +'NH4:NO3='+FloatToStr(round(vNH4NO3*100)/100, MyFormatSettings)+' ]'
                    ;
   Kf.profile.text:=ps;
        Kf.pkf.caption:='K:Mg='+ FloatToStr(round(vK/vMg*10)/10)+' '
                  +'K:Ca='+FloatToStr(round(vK/vCa*10)/10)+' '
                  +'Ca:N='+FloatToStr(round(vCa/vN*10)/10)+' '
                  +'(N:K='+FloatToStr(round(vN/vK*10)/10)+' '
                  +'N:P='+FloatToStr(round(vN/vP*10)/10)+')';

   ;
end;

procedure CalcKoef;

begin



   if ( Kf.NP.Focused = False ) then Kf.NP.value:=Kf.N.value/Kf.P.Value;
   if ( Kf.NK.Focused = False ) then Kf.NK.value:=Kf.N.value/Kf.K.value;
   if ( Kf.NCa.Focused = False ) then Kf.NCa.value:=Kf.N.value/Kf.Ca.value;
   if ( Kf.NMg.Focused = False ) then Kf.NMg.value:=Kf.N.value/Kf.Mg.value;
   if ( Kf.CaN.Focused = False ) then Kf.CaN.value:=Kf.Ca.value/Kf.N.value;
   if ( Kf.NS.Focused = False ) then Kf.NS.value:=Kf.N.value/Kf.S.value;

   if ( Kf.PN.Focused = False ) then Kf.PN.value:=Kf.P.value/Kf.N.value;
   if ( Kf.PK.Focused = False ) then Kf.PK.value:=Kf.P.value/Kf.K.value;
   if ( Kf.PCa.Focused = False ) then Kf.PCa.value:=Kf.P.value/Kf.Ca.value;
   if ( Kf.PMg.Focused = False ) then Kf.PMg.value:=Kf.P.value/Kf.Mg.Value;
   if ( Kf.PS.Focused = False ) then Kf.PS.Value:=Kf.P.value/Kf.S.value;


  if ( Kf.KN.Focused = False ) then Kf.KN.value:=Kf.K.value/Kf.N.value;
  if ( Kf.KP.Focused = False ) then Kf.KP.Value:=Kf.K.value/Kf.P.value;
  if ( Kf.KCa.Focused = False ) then Kf.KCa.value:=Kf.K.value/Kf.Ca.value;
  if ( Kf.KMg.Focused = False ) then Kf.KMg.value:=Kf.K.value/Kf.Mg.value;
  if ( Kf.KS.Focused = False ) then Kf.KS.value:=Kf.K.value/Kf.S.value;

  if ( Kf.CaN.Focused = False ) then Kf.CaN.value:=Kf.Ca.value/Kf.N.value;
  if ( Kf.CaP.Focused = False ) then Kf.CaP.value:=Kf.Ca.value/Kf.P.value;
  if ( Kf.CaK.Focused = False ) then Kf.CaK.value:=Kf.Ca.value/Kf.K.value;
  if ( Kf.CaMg.Focused = False ) then Kf.CaMg.value:=Kf.Ca.value/Kf.Mg.value;
  if ( Kf.CaS.Focused = False ) then Kf.CaS.value:=Kf.Ca.Value/Kf.S.value;

  if ( Kf.MgN.Focused = False ) then Kf.MgN.value:=Kf.Mg.value/Kf.N.value;
  if ( Kf.MgP.Focused = False ) then Kf.MgP.value:=Kf.Mg.value/Kf.P.value;
  if ( Kf.MgK.Focused = False ) then Kf.MgK.value:=Kf.Mg.value/Kf.K.value;
  if ( Kf.MgCa.Focused = False ) then Kf.MgCa.value:=Kf.Mg.value/Kf.Ca.value;
  if ( Kf.MgS.Focused = False ) then Kf.MgS.value:=Kf.Mg.Value/Kf.S.value;

  if ( Kf.SN.Focused = False ) then Kf.SN.value:=Kf.S.value/Kf.N.value;
  if ( Kf.SP.Focused = False ) then Kf.SP.value:=Kf.S.value/Kf.P.value;
  if ( Kf.SK.Focused = False ) then Kf.SK.value:=Kf.S.value/Kf.K.value;
  if ( Kf.SCa.Focused = False ) then Kf.SCa.value:=Kf.S.value/Kf.Ca.value;
  if ( Kf.SMg.Focused = False ) then Kf.SMg.value:=Kf.S.Value/Kf.Mg.value;



end;



   procedure CalcWeight ;
 begin

   vMgSO4_Mg:=Kf.MgSO4_Mg.value;
   vMgSO4_S:=Kf.MgSO4_S.value;

   vKH2PO4_P:=Kf.KH2PO4_P.value;
   vKH2PO4_K:=Kf.KH2PO4_K.value;

   vCaNO3_Ca:=Kf.CaNO3_Ca.value;
   vCaNO3_NO3:=Kf.CaNO3_NO3.value;
   vCaNO3_NH4:=Kf.CaNO3_NH4.value;

   vNH4NO3_NH4:=Kf.NH4NO3_NH4.value;
   vNH4NO3_NO3:=Kf.NH4NO3_NO3.value;

   vKNO3_K:=Kf.KNO3_K.value;
   vKNO3_NO3:=Kf.KNO3_NO3.value;

   vK2SO4_S:=Kf.K2SO4_S.value;
   vK2SO4_K:=Kf.K2SO4_K.value;

   vMgNO3_Mg:=Kf.MgNO3_Mg.value;
   vMgNO3_NO3:=Kf.MgNO3_NO3.value;

   V:=kF.V.Value;
    getVar;

// Если флаг стоит на сульфате калия и не стоит на нитрате магния
  if (kF.chK2SO4.Checked = True and  kF.chMgNO3.Checked = false ) then  begin

   sMgNO3:=0; Kf.gMgNO3.value:=sMgNO3*V;

   sMgSO4:=vMg/(vMgSO4_Mg*10);                    Kf.gMgSO4.value:= sMgSO4*V;
     Mg_MgSO4:=sMgSO4*vMgSO4_Mg*10;
     S_MgSO4:=sMgSO4*vMgSO4_S*10;

   sKH2PO4:=vP/(vKH2PO4_P*10);                    Kf.gKH2PO4.value:= sKH2PO4*V;
     P_KH2PO4:=sKH2PO4*vKH2PO4_P*10;
     K_KH2PO4:=sKH2PO4*vKH2PO4_K*10;

   sCaNO3:=vCa/(vCaNO3_Ca*10);                    Kf.gCaNO3.value:= sCaNO3*V;
     NO3_CaNO3:=sCaNO3*vCaNO3_NO3*10;
     NH4_CaNO3:=sCaNO3*vCaNO3_NH4*10;
     Ca_CaNO3:=sCaNO3*vCaNO3_Ca*10;

 xNH4:=vNH4 - NH4_CaNO3;

   sNH4NO3:=xNH4/(vNH4NO3_NH4*10);                  Kf.gNH4NO3.value:= sNH4NO3*V;
     NO3_NH4NO3:=sNH4NO3*vNH4NO3_NO3*10;
     NH4_NH4NO3:=sNH4NO3*vNH4NO3_NH4*10;

 xNO3:= vNO3 - NO3_CaNO3 - NO3_NH4NO3;

   sKNO3:=xNO3/(vKNO3_NO3*10);                      Kf.gKNO3.value:=sKNO3*V;

 xS:=vS-S_MgSO4;

         sK2SO4:=xS/(vK2SO4_S*10);                Kf.gK2SO4.value:=sK2SO4*V;

  end;

 // Если сульфат калия не используем но используем нитрат магния
  if (kF.chK2SO4.Checked = false and kF.chMgNO3.Checked = True) then  begin

      sK2SO4:=0; Kf.gK2SO4.value:=sK2SO4*V;
     //sK2SO4:= Kf.gK2SO4.value/V;

     sKH2PO4:=vP/(vKH2PO4_P*10);
      Kf.gKH2PO4.value:= sKH2PO4*V;

     sKNO3:=-(-vK*vKH2PO4_P+vP*vKH2PO4_K+sK2SO4*vK2SO4_K*vKH2PO4_P)/(vKNO3_K*vKH2PO4_P*10);
      Kf.gKNO3.value:=sKNO3*V;

     sCaNO3:=vCa/(vCaNO3_Ca*10);
      Kf.gCaNO3.value:= sCaNO3*V;

     sMgSO4:=(vS-sK2SO4*vK2SO4_S) /(vMgSO4_S*10);
      kF.gMgSO4.value:=sMgSO4*V;

     sNH4NO3:=-(-vNH4*vCaNO3_Ca+vCa*vCaNO3_NH4)/(vNH4NO3_NH4*vCaNO3_Ca*10);
      Kf.gNH4NO3.value:= sNH4NO3*V;

     sMgNO3:=(vMg*vMgSO4_S-vMgSO4_Mg*vS+vMgSO4_Mg*sK2SO4*vK2SO4_S)/(vMgNO3_Mg*vMgSO4_S*10);
      Kf.gMgNO3.value:=sMgNO3*V;
  end;



 end;

   procedure GenNH4NO3event;
   begin
           if (Kf.NH4.value > 0 ) then begin
           Kf.nnNH4NO3.Caption:='NH4:NO3 1:'  +floattostr(Round((Kf.NO3.value/Kf.NH4.value)))+' ';
        end
        else  begin
          Kf.nnNH4NO3.Caption:='NO3=100%' ;

        end;
   end;

procedure fromWeight ;
begin
   getVar;
   vKH2PO4_P:=Kf.KH2PO4_P.value;         vKH2PO4_K:=Kf.KH2PO4_K.value;
   vCaNO3_Ca:=Kf.CaNO3_Ca.value;         vCaNO3_NO3:=Kf.CaNO3_NO3.value;   vCaNO3_NH4:=Kf.CaNO3_NH4.value;
   vNH4NO3_NH4:=Kf.NH4NO3_NH4.value;     vNH4NO3_NO3:=Kf.NH4NO3_NO3.value;
   vKNO3_K:=Kf.KNO3_K.value;             vKNO3_NO3:=Kf.KNO3_NO3.value;
   vK2SO4_S:=Kf.K2SO4_S.value;           vK2SO4_K:=Kf.K2SO4_K.value;
   vMgNO3_Mg:=Kf.MgNO3_Mg.value;           vMgNO3_NO3:=Kf.MgNO3_NO3.value;

   V:=kF.V.Value;


   sCaNO3:=Kf.gCaNO3.value;
   sKNO3:=Kf.gKNO3.value;
   sNH4NO3:=Kf.gNH4NO3.value;
   sMgSO4:=Kf.gMgSO4.value;
   sKH2PO4:=Kf.gKH2PO4.value;
   sK2SO4:=Kf.gK2SO4.value;
   sMgNO3:=Kf.gMgNO3.value;

   vNO3:=(sCaNO3*vCaNO3_NO3 + sNH4NO3*vNH4NO3_NO3 + sKNO3*vKNO3_NO3 + sMgNO3*vMgNO3_NO3)/(0.1*V);
   vNH4:=(sCaNO3*vCaNO3_NH4 + sNH4NO3*vNH4NO3_NH4)/(0.1*V);
   vN:=vNH4+vNO3;
   vP:=(sKH2PO4*vKH2PO4_P)/(0.1*V)  ;
   vK:=(sKNO3*vKNO3_K + sKH2PO4*vKH2PO4_K + sK2SO4*vK2SO4_K)/(0.1*V)  ;
   vCa:=(sCaNO3*vCaNO3_Ca)/(0.1*V)   ;
   vMg:=(sMgSO4*vMgSO4_Mg+sMgNO3*vMgNO3_Mg)/(0.1*V)  ;
   vNH4NO3:=vNH4/vNO3;

    if ( Kf.NH4NO3.Focused = False ) then Kf.NH4NO3.value:=vNH4NO3;

    if ( Kf.NH4.Focused = False ) then Kf.NH4.value:=vNH4;
    if ( Kf.NO3.Focused = False ) then Kf.NO3.value:=vNO3;
    if ( Kf.N.Focused = False ) then Kf.N.value:=vN;

    if ( Kf.P.Focused = False ) then Kf.P.value:=vP;
    if ( Kf.K.Focused = False ) then Kf.K.value:=vK;
    if ( Kf.Ca.Focused = False ) then Kf.Ca.value:=vCa;
    if ( Kf.Mg.Focused = False ) then Kf.Mg.value:=vMg;

    //GenNH4NO3event;

end;


procedure CalcAll;
begin
 CalculateS;
 //CalculateCa;
 CalcEC;
 CalcKoef;
 genProfile;
 CalcWeight ;
 GenNH4NO3event;
end;


procedure LoadProfile ;
// N:220 NO3=200 NH4=20 P=40 K=180 Ca=200 Mg=50 S=72 [ EC=2.102 K:N=0.818 K:Mg=3.6 K:Ca=0.9 NH4:NO3=0.1]
  var numVar,countVar : integer;
      curVar,curValue:string;

begin
  MyFormatSettings.DecimalSeparator := '.';
  ps:=Kf.profile.text;
  countVar:=WordCount( ps,[' ']);

if(countVar=15) then
begin
    Kf.parse.Caption:='OK';
    Kf.parse.Color:=clMoneyGreen;

    for numVar := 1 to countVar do
   begin
     curVar:=ExtractWord(numVar,ps,[' ']);
     curValue:=ExtractWord(2,curVar,['=']);
     //ShowMessage(IntToStr(numVar) + ' ' + curVar + ' '+ curValue );
//
     if (IsWordPresent('N',curVar, ['='] ) = true) then  Kf.N.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('NO3',curVar, ['='] ) = true) then  Kf.NO3.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('NH4',curVar, ['='] ) = true) then  Kf.NH4.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('P',curVar, ['='] ) = true) then  Kf.P.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('K',curVar, ['='] ) = true) then  Kf.K.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('Ca',curVar, ['='] ) = true) then  Kf.Ca.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('Mg',curVar, ['='] ) = true) then  Kf.Mg.value:=StrToFloat(curValue,MyFormatSettings);
     //if (IsWordPresent('S',curVar, ['='] ) = true) then  Kf.S.value:=StrToFloat(curValue,MyFormatSettings);

     //if (IsWordPresent('EC',curVar, ['='] ) = true) then  Kf.EC.value:=StrToFloat(curValue,MyFormatSettings);
     //if (IsWordPresent('K:N',curVar, ['='] ) = true) then  Kf.KN.value:=StrToFloat(curValue,MyFormatSettings);
     //if (IsWordPresent('K:Mg',curVar, ['='] ) = true) then  Kf.KMg.value:=StrToFloat(curValue,MyFormatSettings);
     //if (IsWordPresent('K:Ca',curVar, ['='] ) = true) then  Kf.KCa.value:=StrToFloat(curValue,MyFormatSettings);
     //if (IsWordPresent('NH4:NO3',curVar, ['='] ) = true) then  Kf.NH4NO3.value:=StrToFloat(curValue,MyFormatSettings);
   end;
    Kf.N.value:=Kf.NO3.value+Kf.NH4.value;
    calculateS;
    CalcEC;
    //calcECtoVal;
    //GenNH4NO3event;
    CalcAll;
     //ShowMessage(IntToStr(countVar));
     //CalculateAll;
      //CalcEC;
     //CalcKoef;


 //if (IsWordPresent('EC',ps, ['=',' ','[']) = true) then  ShowMessage( ExtractWord(3,ps,[' ']) );
 //ShowMessage('aaaaa');

   //ShowMessage( ExtractWord(2,ps,[' ']) );

end
else
begin
  Kf.parse.Caption:='NO';
  Kf.parse.Color:=clRED;
  end;

  //then vA:=StrToFloat(ExtractWord(2,s,['=']));
end;
procedure microToWeght; begin
 Kf.gFe.value:=Kf.Fe.value/Kf.dFe.value*Kf.V.value/1000;
 Kf.gMn.value:=Kf.Mn.value/Kf.dMn.value*Kf.V.value/1000;
 Kf.gB.value:=Kf.B.value/Kf.dB.value*Kf.V.value/1000;
 Kf.gZn.value:=Kf.Zn.value/Kf.dZn.value*Kf.V.value/1000;
 Kf.gCu.value:=Kf.Cu.value/Kf.dCu.value*Kf.V.value/1000;
 Kf.gMo.value:=Kf.Mo.value/Kf.dMo.value*Kf.V.value/1000;
 Kf.gCo.value:=Kf.Co.value/Kf.dCo.value*Kf.V.value/1000;
 Kf.gSi.value:=Kf.Si.value/Kf.dSi.value*Kf.V.value/1000;
end;

procedure WeghtTomicro; begin
 Kf.Fe.value:=1000*Kf.gFe.value* (Kf.dFe.value/Kf.V.value);
 Kf.Mn.value:=1000*Kf.gMn.value* (Kf.dMn.value/Kf.V.value);
 Kf.B.value:=1000*Kf.gB.value*   (Kf.dB.value/Kf.V.value);
 Kf.Zn.value:=1000*Kf.gZn.value* (Kf.dZn.value/Kf.V.value);
 Kf.Cu.value:=1000*Kf.gCu.value* (Kf.dCu.value/Kf.V.value);
 Kf.Mo.value:=1000*Kf.gMo.value* (Kf.dMo.value/Kf.V.value);
 Kf.Co.value:=1000*Kf.gCo.value* (Kf.dCo.value/Kf.V.value);
 Kf.Si.value:=1000*Kf.gSi.value* (Kf.dSi.value/Kf.V.value);


end;

procedure TKf.Label8Click(Sender: TObject);
begin

end;

procedure TKf.MgCaClick(Sender: TObject);
begin
  Mg.value:=Ca.value*MgCa.value;
  CalcAll;
end;



procedure TKf.MgChange(Sender: TObject);
begin
   if ( Mg.Focused = True )    then begin
  //CalcKoef;
  CalcWeight ;
    CalcAll;
   end

end;

procedure TKf.MgClick(Sender: TObject);
begin
  CalcAll;
end;

procedure TKf.MgKClick(Sender: TObject);
begin
  Mg.value:=K.value*MgK.value;
  CalcAll;
end;



procedure TKf.MgNClick(Sender: TObject);
begin
      Mg.value:=N.value*MgN.value;
  CalcAll;
end;



procedure TKf.MgPClick(Sender: TObject);
begin
  Mg.value:=P.value*MgP.value;
  CalcAll;
end;



procedure TKf.MgSClick(Sender: TObject);
begin
  Mg.value:=S.value*MgS.value;
  CalcAll;
end;







procedure TKf.NCaClick(Sender: TObject);
begin
  N.value:=Ca.value*NCa.value;
  CalcAll;
end;



procedure TKf.Label1Click(Sender: TObject);
begin
    NH4NO3.value := NH4.value/NO3.value;
    CalcAll;
end;

procedure TKf.MnChange(Sender: TObject);
begin
   if ( Mn.Focused = True )    then begin
  microToWeght;

   end;
end;

procedure TKf.MoChange(Sender: TObject);
begin
   if ( Mo.Focused = True )    then begin
  microToWeght;

   end;
end;

procedure TKf.pkfClick(Sender: TObject);
begin

end;

procedure TKf.Label54Click(Sender: TObject);
begin

end;

procedure TKf.MgCaChange(Sender: TObject);
begin
   if ( MgCa.Focused = True )    then begin
      Mg.value:=Ca.value*MgCa.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;



procedure TKf.MgKChange(Sender: TObject);
begin
  if ( MgK.Focused = True )    then begin
      Mg.value:=K.value*MgK.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.MgNChange(Sender: TObject);
begin
   if ( MgN.Focused = True )    then begin
      Mg.value:=N.value*MgN.value;
                    vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.MgNO3_MgChange(Sender: TObject);
begin
    if ( MgNO3_Mg.Focused = True )    then begin
          MgNO3_NO3.value:=(2*MgNO3_Mg.value*FloatSpinEdit2)/(mMg);

    nMgNO3.Caption:='Селитра магниевая'
 + ' MgO-' +floattostr(Round((MgNO3_Mg.value/0.603036)*10)/10)+'%'
 + ' N-' +floattostr(Round((MgNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.MgNO3_NO3Change(Sender: TObject);
begin
      if ( MgNO3_NO3.Focused = True )    then begin
          MgNO3_Mg.value:=((1/2)*(MgNO3_NO3.value/FloatSpinEdit2)*mMg);

    nMgNO3.Caption:='Селитра магниевая'
 + ' MgO-' +floattostr(Round((MgNO3_Mg.value/0.603036)*10)/10)+'%'
 + ' N-' +floattostr(Round((MgNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;

      end;
end;

procedure TKf.MgPChange(Sender: TObject);
begin
   if ( MgP.Focused = True )    then begin
     Mg.value:=P.value*MgP.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.MgSChange(Sender: TObject);
begin
   if ( MgS.Focused = True )    then begin
    Mg.value:=S.value*MgS.value;
    CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.MgSO4_MgChange(Sender: TObject);
begin
   if ( MgSO4_Mg.Focused = True )    then begin
          MgSO4_S.value:= (MgSO4_Mg.value * mS)/mMg;
         nMgSO4.Caption:='Сульфат магния'
 + ' MgO-' +floattostr(Round((MgSO4_Mg.value/0.603036)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((MgSO4_S.value/0.400496)*10)/10)+'%';
         CalcWeight ;
   end;
end;



procedure TKf.MgSO4_SChange(Sender: TObject);
begin
  if ( MgSO4_S.Focused = True )    then begin
     
  MgSO4_Mg.value:= (MgSO4_S.value * mMg)/mS;
           nMgSO4.Caption:='Сульфат магния'
 + ' MgO-' +floattostr(Round((MgSO4_Mg.value/0.603036)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((MgSO4_S.value/0.400496)*10)/10)+'%';
    CalcWeight ;
  end;
end;



procedure TKf.MgSO4_SClick(Sender: TObject);
begin

end;

procedure TKf.NCaChange(Sender: TObject);
begin
   if ( NCa.Focused = True )    then begin
    N.value:=Ca.value*NCa.value;
  NO3.value := N.value/(NH4NO3.value+1);
        NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
         vEC0:=EC.value;
     CalcAll;
     EC.value:=vEC0;
      calcECtoVal;
  end;
end;





procedure TKf.NH4NO3_NH4Change(Sender: TObject);
begin
   if ( NH4NO3_NH4.Focused = True )    then begin
       NH4NO3_NO3.value:=NH4NO3_NH4.value;
      nNH4NO3.Caption:='Селитра аммиачная'
   + ' N-' +floattostr(Round((NH4NO3_NH4.value+NH4NO3_NO3.value)*10)/10)+'%';
      CalcWeight ;
   end;
end;

procedure TKf.NH4NO3_NO3Change(Sender: TObject);
begin
  if ( NH4NO3_NO3.Focused = True )    then begin
       NH4NO3_NH4.value:=NH4NO3_NO3.value;
        nNH4NO3.Caption:='Селитра аммиачная'
   + ' N-' +floattostr(Round((NH4NO3_NH4.value+NH4NO3_NO3.value)*10)/10)+'%';
        CalcWeight ;
  end;
end;

procedure TKf.nKH2PO4Click(Sender: TObject);
begin

end;

procedure TKf.nK2SO4Click(Sender: TObject);
begin

end;

procedure TKf.FormClick(Sender: TObject);
begin

end;

procedure TKf.gBChange(Sender: TObject);
begin
    if ( gB.Focused = True )    then begin
  WeghtTomicro;

  end;
end;



procedure TKf.gCaNO3Change(Sender: TObject);
begin
 if ( gCaNO3.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gCoChange(Sender: TObject);
begin
    if ( gCo.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gCuChange(Sender: TObject);
begin
    if ( gCu.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gFeChange(Sender: TObject);
begin
  if ( gFe.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gK2SO4Change(Sender: TObject);
begin
  if ( gK2SO4.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gKH2PO4Change(Sender: TObject);
begin
  if ( gKH2PO4.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gKNO3Change(Sender: TObject);
begin
  if ( gKNO3.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gMgNO3Change(Sender: TObject);
begin
    if ( gMgNO3.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;
 end;
end;

procedure TKf.gMgSO4Change(Sender: TObject);
begin
    if ( gMgSO4.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gMnChange(Sender: TObject);
begin
    if ( gMn.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gMoChange(Sender: TObject);
begin
    if ( gMo.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gNH4NO3Change(Sender: TObject);
begin
   if ( gNH4NO3.Focused = True )    then begin
  fromWeight ;
  CalculateS;
  CalcKoef;
  CalcEC;
  genProfile;

 end;
end;

procedure TKf.gSiChange(Sender: TObject);
begin
    if ( gSi.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.gZnChange(Sender: TObject);
begin
    if ( gZn.Focused = True )    then begin
  WeghtTomicro;

  end;
end;

procedure TKf.K2SO4_KChange(Sender: TObject);
begin
  if ( K2SO4_K.Focused = True )    then begin
          K2SO4_S.value:=(K2SO4_K.value*mS)/(2*mK);

    nK2SO4.Caption:='Сульфат калия'
 + ' K2O-' +floattostr(Round((K2SO4_K.value/0.830148)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((K2SO4_S.value/0.400496)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.K2SO4_KClick(Sender: TObject);
begin
      K2SO4_S.value:=(K2SO4_K.value*mS)/(2*mK);

    nK2SO4.Caption:='Сульфат калия'
 + ' K2O-' +floattostr(Round((K2SO4_K.value/0.830148)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((K2SO4_S.value/0.400496)*10)/10)+'%';
    CalcWeight ;
end;



procedure TKf.K2SO4_SChange(Sender: TObject);
begin
  if ( K2SO4_S.Focused = True )    then begin
               K2SO4_K.value:=(K2SO4_S.value*2*mK)/(mS);

    nK2SO4.Caption:='Сульфат калия'
 + ' K2O-' +floattostr(Round((K2SO4_K.value/0.830148)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((K2SO4_S.value/0.400496)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.K2SO4_SClick(Sender: TObject);
begin
        K2SO4_K.value:=(K2SO4_S.value*2*mK)/(mS);

    nK2SO4.Caption:='Сульфат калия'
 + ' K2O-' +floattostr(Round((K2SO4_K.value/0.830148)*10)/10)+'%'
 + ' SO3-' +floattostr(Round((K2SO4_S.value/0.400496)*10)/10)+'%';
    CalcWeight ;
end;



procedure TKf.KCaChange(Sender: TObject);
begin
   if ( KCa.Focused = True )    then begin
          K.value:=Ca.value*KCa.value;
           //vKCa0:=KCa.value;
           vKMg0:=KMg.value;
           vKN0:=KN.value;

                    vEC0:=EC.value;

                  CalcAll;
           //KCa.value:=vKCa0;
           KMg.value:=vKMg0;
           KN.value:=vKN0;
                  EC.value:=vEC0;
                  calcECtoVal;
  end;
end;

procedure TKf.KCaClick(Sender: TObject);
begin
  K.value:=Ca.value*KCa.value;
  CalcAll;
end;



procedure TKf.KChange(Sender: TObject);
begin
   if ( K.Focused = True )    then begin
 //CalcKoef;
 //CalcWeight ;
   CalcAll;
   CalcWeight ;

   end
end;

procedure TKf.KClick(Sender: TObject);
begin
  CalcAll;
end;



procedure TKf.KH2PO4_KChange(Sender: TObject);
begin
  if ( KH2PO4_K.Focused = True )    then begin
        KH2PO4_P.value:=(KH2PO4_K.value*mP)/mK;

    nKH2PO4.Caption:='Монофосфат калия'
 + ' K2O-' +floattostr(Round((KH2PO4_K.value/0.830148)*10)/10)+'%'
 + ' P2O5-' +floattostr(Round((KH2PO4_P.value/0.436421)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.KH2PO4_KClick(Sender: TObject);
begin
    KH2PO4_P.value:=(KH2PO4_K.value*mP)/mK;

    nKH2PO4.Caption:='Монофосфат калия'
 + ' K2O-' +floattostr(Round((KH2PO4_K.value/0.830148)*10)/10)+'%'
 + ' P2O5-' +floattostr(Round((KH2PO4_P.value/0.436421)*10)/10)+'%';
    CalcWeight ;
end;



procedure TKf.KH2PO4_PChange(Sender: TObject);
begin
  if ( KH2PO4_P.Focused = True )    then begin
         KH2PO4_K.value:=(KH2PO4_P.value*mK)/mP;

    nKH2PO4.Caption:='Монофосфат калия'
 + ' K2O-' +floattostr(Round((KH2PO4_K.value/0.830148)*10)/10)+'%'
 + ' P2O5-' +floattostr(Round((KH2PO4_P.value/0.436421)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.KH2PO4_PClick(Sender: TObject);
begin
      KH2PO4_K.value:=(KH2PO4_P.value*mK)/mP;

    nKH2PO4.Caption:='Монофосфат калия'
 + ' K2O-' +floattostr(Round((KH2PO4_K.value/0.830148)*10)/10)+'%'
 + ' P2O5-' +floattostr(Round((KH2PO4_P.value/0.436421)*10)/10)+'%';
    CalcWeight ;
end;



procedure TKf.KMgChange(Sender: TObject);
begin
   if ( KMg.Focused = True )    then begin
       K.value:=Mg.value*KMg.value;
       vKCa0:=KCa.value;
        //vKMg0:=KMg.value;
        vKN0:=KN.value;

                 vEC0:=EC.value;

               CalcAll;
        KCa.value:=vKCa0;
        //KMg.value:=vKMg0;
        KN.value:=vKN0;
               EC.value:=vEC0;
               calcECtoVal;
  end;
end;

procedure TKf.KMgClick(Sender: TObject);
begin
  K.value:=Mg.value*KMg.value;
  CalcAll;
end;



procedure TKf.KNChange(Sender: TObject);
begin
  if ( KN.Focused = True )    then begin

        K.value:=N.value*KN.value;
  vKCa0:=KCa.value;
  vKMg0:=KMg.value;
  //vKN0:=KN.value;

           vEC0:=EC.value;

         CalcAll;
  KCa.value:=vKCa0;
  KMg.value:=vKMg0;
  //KN.value:=vKN0;
         EC.value:=vEC0;
         calcECtoVal;

  end;
end;

procedure TKf.KNClick(Sender: TObject);
begin
  K.value:=N.value*KN.value;
  CalculateS;
end;



procedure TKf.KNO3_KChange(Sender: TObject);
begin
  if ( KNO3_K.Focused = True )    then begin
     KNO3_NO3.value:=(KNO3_K.value*FloatSpinEdit2)/mK;

    nKNO3.Caption:='Селитра калиевая'
 + ' K2O-' +floattostr(Round((KNO3_K.value/0.830148)*10)/10)+'%'
 + ' N-' +floattostr(Round((KNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;
  end;
end;

procedure TKf.KNO3_KClick(Sender: TObject);
begin
  KNO3_NO3.value:=(KNO3_K.value*FloatSpinEdit2)/mK;

    nKNO3.Caption:='Селитра калиевая'
 + ' K2O-' +floattostr(Round((KNO3_K.value/0.830148)*10)/10)+'%'
 + ' N-' +floattostr(Round((KNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;
end;



procedure TKf.KNO3_NO3Change(Sender: TObject);
begin
  if ( KNO3_NO3.Focused = True )    then begin
      KNO3_K.value:=(KNO3_NO3.value*mK)/FloatSpinEdit2;
       nKNO3.Caption:='Селитра калиевая'
 + ' K2O-' +floattostr(Round((KNO3_K.value/0.830148)*10)/10)+'%'
 + ' N-' +floattostr(Round((KNO3_NO3.value)*10)/10)+'%';
       CalcWeight ;
  end;
end;

procedure TKf.KNO3_NO3Click(Sender: TObject);
begin
  KNO3_K.value:=(KNO3_NO3.value*mK)/FloatSpinEdit2;
       nKNO3.Caption:='Селитра калиевая'
 + ' K2O-' +floattostr(Round((KNO3_K.value/0.830148)*10)/10)+'%'
 + ' N-' +floattostr(Round((KNO3_NO3.value)*10)/10)+'%';
       CalcWeight ;
end;



procedure TKf.KPChange(Sender: TObject);
begin
   if ( KP.Focused = True )    then begin
     K.value:=P.value*KP.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.KPClick(Sender: TObject);
begin
  K.value:=P.value*KP.value;
  CalcAll;
end;



procedure TKf.KSChange(Sender: TObject);
begin
   if ( KS.Focused = True )    then begin
     K.value:=S.value*KS.value;
    CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.KSClick(Sender: TObject);
begin
  K.value:=S.value*KS.value;
  CalcAll;
end;



procedure TKf.Button1Click(Sender: TObject);
begin
  //calcECtoVal;
  CalcWeight ;
  //CalcAll;
  CalcWeight ;
end;

procedure TKf.bloadClick(Sender: TObject);
  var
    tfIn: TextFile;
    str: string;
begin
    //s:='setting.txt';
    AssignFile(tfIn, C_FNAME);
        // Открыть файл для чтения
      reset(tfIn);
    //
      // Считываем строки, пока не закончится файл
          while not eof(tfIn) do
          begin
          readln(tfIn, str);
           if (IsWordPresent('CaNO3_Ca', str, ['=']) = true) then CaNO3_Ca.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('CaNO3_NO3', str, ['=']) = true) then CaNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('CaNO3_NH4', str, ['=']) = true) then CaNO3_NH4.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('KNO3_K', str, ['=']) = true) then KNO3_K.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('KNO3_NO3', str, ['=']) = true) then KNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('NH4NO3_NH4', str, ['=']) = true) then NH4NO3_NH4.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('NH4NO3_NO3', str, ['=']) = true) then NH4NO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('MgSO4_Mg', str, ['=']) = true) then MgSO4_Mg.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('MgSO4_S', str, ['=']) = true) then MgSO4_S.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('KH2PO4_K', str, ['=']) = true) then KH2PO4_K.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('KH2PO4_P', str, ['=']) = true) then KH2PO4_P.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('K2SO4_K', str, ['=']) = true) then K2SO4_K.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('K2SO4_S', str, ['=']) = true) then K2SO4_S.value:=StrToFloat(ExtractWord(2,str,['=']));

           if (IsWordPresent('MgNO3_Mg', str, ['=']) = true) then MgNO3_Mg.value:=StrToFloat(ExtractWord(2,str,['=']));
           if (IsWordPresent('MgNO3_NO3', str, ['=']) = true) then MgNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']));

          end;


    //      memo1.Text:=s;
          // Готово. Закрываем файл.
      CloseFile(tfIn);
   //   if   (CaNO3_Ca.value <> vCaNO3_Ca) then
   //   begin
   //     CaNO3_Ca.value:=  vCaNO3_Ca;
   //     CaNO3_NO3.value:=  vCaNO3_NO3;
   //     CaNO3_NH4.value:=  vCaNO3_NH4;
   //       nCaNO3.Caption:='Селитра кальциевая'
   //+ ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
   //+ ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
   //// CalcWeight ;
   //         end;
    CalcWeight ;
end;

procedure TKf.BChange(Sender: TObject);
begin
   if ( B.Focused = True )    then begin
  microToWeght;

   end;
end;

procedure TKf.CaChange(Sender: TObject);
begin
   if ( Ca.Focused = True )    then begin
  CalculateS;
  CalcKoef;
  CalcWeight ;
  CalcEC;
  //CalcAll;
   end

end;

procedure TKf.C(Sender: TObject);
begin
  CalcAll;
end;



procedure TKf.CaKChange(Sender: TObject);
begin
   if ( CaK.Focused = True )    then begin
     Ca.value:=K.value*CaK.value;
             vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.CaKClick(Sender: TObject);
begin
  Ca.value:=K.value*CaK.value;
  CalcAll;
end;



procedure TKf.CaMgChange(Sender: TObject);
begin
   if ( CaMg.Focused = True )    then begin
    Ca.value:=Mg.value*CaMg.value;
             vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.CaMgClick(Sender: TObject);
begin
  Ca.value:=Mg.value*CaMg.value;
  CalcAll;
end;



procedure TKf.CaNChange(Sender: TObject);
begin
   if ( CaN.Focused = True )    then begin
           Ca.value:=N.value*CaN.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.CaNClick(Sender: TObject);
begin
  Ca.value:=N.value*CaN.value;
  CalcAll;
end;



procedure TKf.CaNO3_CaChange(Sender: TObject);
begin
  if ( CaNO3_Ca.Focused = True )    then begin
  CaNO3_NO3.value:= (2 * CaNO3_Ca.value *FloatSpinEdit2 + CaNO3_NH4.value*mCa)/mCa  ;
    nCaNO3.Caption:='Селитра кальциевая'
   + ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
   + ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;

  end;
end;



procedure TKf.CaNO3_NH4Change(Sender: TObject);
begin
  if ( CaNO3_NH4.Focused = True )    then begin
      CaNO3_NO3.value:= (2 * CaNO3_Ca.value *FloatSpinEdit2 + CaNO3_NH4.value*mCa)/mCa  ;
  CaNO3_Ca.value:= -mCa*( CaNO3_NH4.value - CaNO3_NO3.value)/(2*FloatSpinEdit2)  ;

  nCaNO3.Caption:='Селитра кальциевая'
 + ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
 + ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
        CalcWeight ;
  end;
end;

procedure TKf.CaNO3_NH4EditingDone(Sender: TObject);
begin
  CaNO3_NO3.value:= (2 * CaNO3_Ca.value *FloatSpinEdit2 + CaNO3_NH4.value*mCa)/mCa  ;
  CaNO3_Ca.value:= -mCa*( CaNO3_NH4.value - CaNO3_NO3.value)/(2*FloatSpinEdit2)  ;

  nCaNO3.Caption:='Селитра кальциевая'
 + ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
 + ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
        CalcWeight ;
end;



procedure TKf.CaNO3_NO3Change(Sender: TObject);
begin
  if ( CaNO3_NO3.Focused = True )    then begin
    CaNO3_Ca.value:= -mCa*( CaNO3_NH4.value - CaNO3_NO3.value)/(2*FloatSpinEdit2)  ;
    nCaNO3.Caption:='Селитра кальциевая'
   + ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
   + ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
    CalcWeight ;
  end;
end;



procedure TKf.CaNO3_NO3KeyDown(Sender: TObject);
begin

end;

procedure TKf.CaPChange(Sender: TObject);
begin
   if ( CaP.Focused = True )    then begin
      Ca.value:=P.value*CaP.value;
            vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.CaPClick(Sender: TObject);
begin
    Ca.value:=P.value*CaP.value;
  CalcAll;
end;



procedure TKf.CaSChange(Sender: TObject);
begin
   if ( CaS.Focused = True )    then begin
      Ca.value:=S.value*CaS.value;
    CalculateS;
  CalcKoef;
  CalcWeight ;
  CalcEC;
  end;
end;

procedure TKf.CaSClick(Sender: TObject);
begin
      Ca.value:=S.value*CaS.value;
  CalcAll;
end;



procedure TKf.chK2SO4Change(Sender: TObject);
begin
if ( chK2SO4.Focused = True )    then begin
  if chK2SO4.Checked = true then chMgNO3.Checked:=false
  else  chMgNO3.Checked:=true;

  end;
  CalcWeight ;

end;

procedure TKf.chMgNO3Change(Sender: TObject);
begin
  if ( chMgNO3.Focused = True )    then begin
  if chMgNO3.Checked = true then chK2SO4.Checked:=false
  else  chK2SO4.Checked:=true;

  end;
  CalcWeight ;

end;

procedure TKf.CoChange(Sender: TObject);
begin
  if ( Co.Focused = True )    then begin
  microToWeght;

  end;
end;

procedure TKf.CuChange(Sender: TObject);
begin
  if ( Cu.Focused = True )    then begin
  microToWeght;

  end;
end;

procedure TKf.dBChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dCoChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dCuChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dFeChange(Sender: TObject);
begin
  if ( dFe.Focused = True )    then begin

  microToWeght;

  end;
end;

procedure TKf.dMnChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dMoChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dSiChange(Sender: TObject);
begin
  microToWeght;
end;

procedure TKf.dZnChange(Sender: TObject);
begin
  microToWeght;
end;



procedure TKf.ECChange(Sender: TObject);
begin
  if ( EC.Focused = True )    then begin

 calcECtoVal;
   CalcAll;

  end;
end;



procedure TKf.ECClick(Sender: TObject);
begin
  calcECtoVal;
  CalcAll;
end;



procedure TKf.FeChange(Sender: TObject);
begin
  if ( Fe.Focused = True )    then begin
  microToWeght;

  end;
end;

procedure TKf.FormActivate(Sender: TObject);
begin

   //CalcKoef;
   CalcAll;
   CalcKoef;
end;

procedure TKf.FormChangeBounds(Sender: TObject);
begin

end;

procedure TKf.NChange(Sender: TObject);
begin
   if ( N.Focused = True )    then begin
  NO3.value := N.value/(NH4NO3.value+1);
  NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
  //CalcKoef;
  //CalcWeight ;
    CalcAll;
    CalcWeight ;
   end




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
 if ( NH4.Focused = True )    then begin
  NO3.Value := N.value - NH4.value;
  NH4NO3.value := NH4.value / NO3.value ;
  CalcAll;

 end;
end;

procedure TKf.NH4EditingDone(Sender: TObject);
begin
   //   NH4NO3.value := NH4.value/NO3.value;
end;

procedure TKf.NH4Exit(Sender: TObject);
begin

  //NO3.value := N.value - NH4.Value
end;



procedure TKf.NH4NO3Change(Sender: TObject);
begin
    if ( NH4NO3.Focused = True )    then begin
    //CalcAll;
    NH4.value := N.value *(NH4NO3.value/(NH4NO3.value+1));
  NO3.value := N.value / ( NH4NO3.value+1 );
      GenNH4NO3event;
  //CalcAll;
  //CalcWeight ;


           vKCa0:=KCa.value;
           vKMg0:=KMg.value;
           vKN0:=KN.value;

                    vEC0:=EC.value;

                  CalcAll;
           KCa.value:=vKCa0;
           KMg.value:=vKMg0;
           KN.value:=vKN0;
                  EC.value:=vEC0;
                  calcECtoVal;

  end;
  //CalculateS;
end;

procedure TKf.NH4NO3Click(Sender: TObject);
begin
  if ( NH4NO3.Focused = True )    then begin
    NH4.value := N.value *(NH4NO3.value/(NH4NO3.value+1));
  NO3.value := N.value / ( NH4NO3.value+1 );
  CalcAll;

  end;
end;



procedure TKf.NH4NO3_NH4Click(Sender: TObject);
begin
  NH4NO3_NO3.value:=NH4NO3_NH4.value;
  if (NH4NO3_NO3.value/NH4NO3_NH4.value < 1000 ) then begin
      nNH4NO3.Caption:='Селитра аммиачная'
   + ' N-' +floattostr(Round((NH4NO3_NH4.value+NH4NO3_NO3.value)*10)/10)+'%';
      CalcWeight ;

  end;
end;



procedure TKf.NH4NO3_NO3Click(Sender: TObject);
begin
  NH4NO3_NH4.value:=NH4NO3_NO3.value;
        nNH4NO3.Caption:='Селитра аммиачная'
   + ' N-' +floattostr(Round((NH4NO3_NH4.value+NH4NO3_NO3.value)*10)/10)+'%';
        CalcWeight ;
end;



procedure TKf.NKChange(Sender: TObject);
begin
  if ( NK.Focused = True )    then begin
     N.value:=K.value*NK.value;
    NO3.value := N.value/(NH4NO3.value+1);
        NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
         vEC0:=EC.value;
     CalcAll;
     EC.value:=vEC0;
      calcECtoVal;

  end;
end;

procedure TKf.NKClick(Sender: TObject);
begin
  N.value:=K.value*NK.value;
  CalcAll;
end;





procedure TKf.NMgChange(Sender: TObject);
begin
   if ( NMg.Focused = True )    then begin
     N.value:=Mg.value*NMg.value;
  NO3.value := N.value/(NH4NO3.value+1);
        NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
         vEC0:=EC.value;
     CalcAll;
     EC.value:=vEC0;
      calcECtoVal;
  end;
end;

procedure TKf.NMgClick(Sender: TObject);
begin
  N.value:=Mg.value*NMg.value;
  CalcAll;
end;



procedure TKf.NO3Change(Sender: TObject);
begin
   if ( NO3.Focused = True )    then begin
    NH4.value:=N.Value-NO3.value;
    NH4NO3.value := NH4.value/NO3.value;
    CalcAll;
    //CalcWeight ;
    //GenNH4NO3event;
   end;

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
     if ( NP.Focused = True )    then begin

     N.value:=P.value*NP.value;

        NO3.value := N.value/(NH4NO3.value+1);
        NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
     vEC0:=EC.value;
     CalcAll;
     EC.value:=vEC0;
      calcECtoVal;
////    CalcWeight ;
   end;
end;












procedure TKf.NSChange(Sender: TObject);
begin
   if ( NS.Focused = True )    then begin
     N.value:=S.value*NS.value;
  NO3.value := N.value/(NH4NO3.value+1);
        NH4.value := NH4NO3.value*N.value/(NH4NO3.value+1);
        CalculateCa;
         vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.NSClick(Sender: TObject);
begin
  N.value:=S.value*NS.value;
  CalcAll;
end;



procedure TKf.parseClick(Sender: TObject);
begin
  LoadProfile;
  //ps:=toStr(profile.text);
  //if (IsWordPresent('N', profile.text, ['=']) = true) then ShowMessage('aaaaa');

  //then vA:=StrToFloat(ExtractWord(2,s,['=']));
end;

procedure TKf.PCaChange(Sender: TObject);
begin
  if ( PCa.Focused = True )    then begin
     P.value:=Ca.value*PCa.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.PCaClick(Sender: TObject);
begin
  P.value:=Ca.value*PCa.value;
  CalcAll;
end;







procedure TKf.PChange(Sender: TObject);
begin
   if ( P.Focused = True )    then begin
  //CalcKoef;
  //CalcWeight ;
   CalcAll;
   CalcWeight ;
   end
end;

procedure TKf.PClick(Sender: TObject);
begin
  CalcAll;
end;



procedure TKf.PKChange(Sender: TObject);
begin
  if ( PK.Focused = True )    then begin
     P.value:=K.value*PK.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;





procedure TKf.PMgChange(Sender: TObject);
begin
  if ( PMg.Focused = True )    then begin
        P.value:=Mg.value*PMg.value;
           vEC0:=EC.value;
                      CalcAll;
           EC.value:=vEC0;
           calcECtoVal;
  end;
end;





procedure TKf.PNChange(Sender: TObject);
begin
  if ( PN.Focused = True )    then begin
   P.value:=N.value*PN.value;
           vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;

     end;
end;





procedure TKf.profileChange(Sender: TObject);

begin

end;

procedure TKf.PSChange(Sender: TObject);
begin
    if ( PS.Focused = True )    then begin
      P.value:=S.value*PS.value;
  CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;





procedure TKf.saveClick(Sender: TObject);
begin
  getVar;
  //  vA:=A.value;
  //vB:=FloatSpinEdit3.value;
  //vC:=C.value;

  // Связываем имя файла с переменной
  AssignFile(tfOut, C_FNAME);
    rewrite(tfOut);
    writeln(tfOut,'CaNO3_Ca=',FloatToStr(vCaNO3_Ca));
    writeln(tfOut,'CaNO3_NO3=',FloatToStr(vCaNO3_NO3));

    writeln(tfOut,'KNO3_K=',FloatToStr(vKNO3_K));
    writeln(tfOut,'KNO3_NO3=',FloatToStr(vKNO3_NO3));

    writeln(tfOut,'NH4NO3_NH4=',FloatToStr(vNH4NO3_NH4));
    writeln(tfOut,'NH4NO3_NO3=',FloatToStr(vNH4NO3_NO3));

    writeln(tfOut,'MgSO4_Mg=',FloatToStr(vMgSO4_Mg));
    writeln(tfOut,'MgSO4_S=',FloatToStr(vMgSO4_S));

    writeln(tfOut,'KH2PO4_K=',FloatToStr(vKH2PO4_K));
    writeln(tfOut,'KH2PO4_P=',FloatToStr(vKH2PO4_P));

    writeln(tfOut,'K2SO4_K=',FloatToStr(vK2SO4_K));
    writeln(tfOut,'K2SO4_S=',FloatToStr(vK2SO4_S));

    writeln(tfOut,'MgNO3_Mg=',FloatToStr(vMgNO3_Mg));
    writeln(tfOut,'MgNO3_NO3=',FloatToStr(vMgNO3_NO3));

    CloseFile(tfOut);
end;

procedure TKf.SCaChange(Sender: TObject);
begin
   if ( SCa.Focused = True )    then begin
     S.value:=Ca.value*SCa.value;
   CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal; ;
  end;
end;





procedure TKf.SChange(Sender: TObject);
begin
    if ( S.Focused = True )    then begin
   CalculateCa;

   CalcEC;
    CalcKoef;
    CalcWeight ;
   end
end;

procedure TKf.SiChange(Sender: TObject);
begin
    if ( Si.Focused = True )    then begin
  microToWeght;

    end;
end;







procedure TKf.SKChange(Sender: TObject);
begin
   if ( SK.Focused = True )    then begin
     S.value:=K.value*SK.value;
   CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;





procedure TKf.SMgChange(Sender: TObject);
begin
   if ( SMg.Focused = True )    then begin
        S.value:=Mg.value*SMg.value;
   CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;




procedure TKf.SNChange(Sender: TObject);
begin
   if ( SN.Focused = True )    then begin
          CalcAll;
     S.value:=N.value*SN.value;
           CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;




procedure TKf.SPChange(Sender: TObject);
begin
   if ( SP.Focused = True )    then begin
       S.value:=P.value*SP.value;

    CalculateCa;
          vEC0:=EC.value;
         CalcAll;
         EC.value:=vEC0;
         calcECtoVal;
  end;
end;

procedure TKf.TabSheet2Show(Sender: TObject);
begin
  microToWeght;
end;




procedure TKf.VChange(Sender: TObject);
begin
  CalcWeight ;
  microToWeght;
end;

procedure TKf.ZnChange(Sender: TObject);
begin
   if ( Zn.Focused = True )    then begin
  microToWeght;

   end;
end;





end.

