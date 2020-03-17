unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, Spin, ComCtrls, strutils, LCLIntf, ExtCtrls, Menus,
  EditBtn , Types;
const

  StdWordDelims = ['='] + Brackets;

type

  { TKf }

  TKf = class(TForm)
    bload: TButton;
    bloadpf: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    dateAdd: TButton;
    dateChange: TButton;
    CheckBox1: TCheckBox;
    cbCmplx: TCheckBox;
    cbCu: TCheckBox;
    cbZn: TCheckBox;
    cbB: TCheckBox;
    cbSi: TCheckBox;
    cbCo: TCheckBox;
    cbMo: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    cbMn: TCheckBox;
    cbFe: TCheckBox;
    chkComplex: TCheckBox;
    de1: TDateEdit;
    eComment: TEdit;
    addrMixer: TEdit;
    Label87: TLabel;
    Label88: TLabel;
    sumA: TLabel;
    sumB: TLabel;
    tAml: TFloatSpinEdit;
    Label1: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    g2gFe: TEdit;
    g2gMn: TEdit;
    g2gB: TEdit;
    g2gZn: TEdit;
    g2gCu: TEdit;
    g2gMo: TEdit;
    g2gCo: TEdit;
    g2gSi: TEdit;
    g2gCaNO3: TEdit;
    Label73: TLabel;
    l2Cmplx: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    rZn: TLabel;
    rCo: TLabel;
    rB: TLabel;
    rMo: TLabel;
    rN: TLabel;
    lb1: TListBox;
    lVolA: TLabel;
    lVolB: TLabel;
    mCmplx: TEdit;
    m1: TMemo;
    mFe: TEdit;
    mMn: TEdit;
    mB: TEdit;
    mZn: TEdit;
    mCu: TEdit;
    mMo: TEdit;
    mCo: TEdit;
    mSi: TEdit;
    mCaNO3: TEdit;
    eFileName: TEdit;
    ggCmplx: TFloatSpinEdit;
    glB: TFloatSpinEdit;
    glCmplx: TFloatSpinEdit;
    gmlB: TFloatSpinEdit;
    gmlCmplx: TFloatSpinEdit;
    k2nCaNO3: TLabel;
    k2nK2SO4: TLabel;
    k2nKH2PO4: TLabel;
    k2nKNO3: TLabel;
    k2nMgNO3: TLabel;
    k2nMgSO4: TLabel;
    k2nNH4NO3: TLabel;
    Label30: TLabel;
    Label59: TLabel;
    l2B: TLabel;
    lCmplx: TLabel;
    l2Co: TLabel;
    l2Cu: TLabel;
    l2Fe: TLabel;
    l2Mn: TLabel;
    l2Mo: TLabel;
    l2Si: TLabel;
    l2Zn: TLabel;
    g2gCmplx: TEdit;
    g2gK2SO4: TEdit;
    g2gKH2PO4: TEdit;
    mKNO3: TEdit;
    g2gKNO3: TEdit;
    g2gMgNO3: TEdit;
    g2gMgSO4: TEdit;
    mNH4NO3: TEdit;
    mMgNO3: TEdit;
    mMgSO4: TEdit;
    mKH2PO4: TEdit;
    mK2SO4: TEdit;
    mlB: TFloatSpinEdit;
    ggB: TFloatSpinEdit;
    glCo: TFloatSpinEdit;
    gmlCo: TFloatSpinEdit;
    mlCo: TFloatSpinEdit;
    ggCo: TFloatSpinEdit;
    glCu: TFloatSpinEdit;
    gmlCu: TFloatSpinEdit;
    mlCu: TFloatSpinEdit;
    ggCu: TFloatSpinEdit;
    glFe: TFloatSpinEdit;
    gmlFe: TFloatSpinEdit;
    mlFe: TFloatSpinEdit;
    ggFe: TFloatSpinEdit;
    glMn: TFloatSpinEdit;
    gmlMn: TFloatSpinEdit;
    mlCmplx: TFloatSpinEdit;
    mlMn: TFloatSpinEdit;
    ggMn: TFloatSpinEdit;
    glMo: TFloatSpinEdit;
    gmlMo: TFloatSpinEdit;
    mlMo: TFloatSpinEdit;
    ggMo: TFloatSpinEdit;
    glSi: TFloatSpinEdit;
    gmlSi: TFloatSpinEdit;
    mlSi: TFloatSpinEdit;
    ggSi: TFloatSpinEdit;
    glZn: TFloatSpinEdit;
    gmlZn: TFloatSpinEdit;
    mlZn: TFloatSpinEdit;
    ggZn: TFloatSpinEdit;
    glCaNO3: TFloatSpinEdit;
    gmlCaNO3: TFloatSpinEdit;
    mlCaNO3: TFloatSpinEdit;
    ggCaNO3: TFloatSpinEdit;
    gCmplx: TFloatSpinEdit;
    gB: TFloatSpinEdit;
    gCo: TFloatSpinEdit;
    gCu: TFloatSpinEdit;
    gFe: TFloatSpinEdit;
    glK2SO4: TFloatSpinEdit;
    gmlK2SO4: TFloatSpinEdit;
    mlK2SO4: TFloatSpinEdit;
    ggK2SO4: TFloatSpinEdit;
    glKH2PO4: TFloatSpinEdit;
    gmlKH2PO4: TFloatSpinEdit;
    mlKH2PO4: TFloatSpinEdit;
    ggKH2PO4: TFloatSpinEdit;
    glKNO3: TFloatSpinEdit;
    gmlKNO3: TFloatSpinEdit;
    mlKNO3: TFloatSpinEdit;
    ggKNO3: TFloatSpinEdit;
    glMgNO3: TFloatSpinEdit;
    gmlMgNO3: TFloatSpinEdit;
    mlMgNO3: TFloatSpinEdit;
    ggMgNO3: TFloatSpinEdit;
    glMgSO4: TFloatSpinEdit;
    gmlMgSO4: TFloatSpinEdit;
    mlMgSO4: TFloatSpinEdit;
    ggMgSO4: TFloatSpinEdit;
    gMn: TFloatSpinEdit;
    gMo: TFloatSpinEdit;
    glNH4NO3: TFloatSpinEdit;
    gmlNH4NO3: TFloatSpinEdit;
    mlNH4NO3: TFloatSpinEdit;
    ggNH4NO3: TFloatSpinEdit;
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
    lSi: TLabel;
    lCo: TLabel;
    lMo: TLabel;
    lCu: TLabel;
    lZn: TLabel;
    lB: TLabel;
    lMn: TLabel;
    lFe: TLabel;
    knCaNO3: TLabel;
    knK2SO4: TLabel;
    knKH2PO4: TLabel;
    knKNO3: TLabel;
    knMgNO3: TLabel;
    knMgSO4: TLabel;
    knNH4NO3: TLabel;
    g2gNH4NO3: TEdit;
    od1: TOpenDialog;
    PageControl2: TPageControl;
    pr2: TEdit;
    rFe: TLabel;
    rNO3: TLabel;
    rNH4: TLabel;
    rP: TLabel;
    rK: TLabel;
    rCa: TLabel;
    rMg: TLabel;
    rMn: TLabel;
    rS: TLabel;
    rCu: TLabel;
    rSi: TLabel;
    sd1: TSaveDialog;
    Si: TFloatSpinEdit;
    Mo: TFloatSpinEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    tBml: TFloatSpinEdit;
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
    version: TLabel;
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
    procedure bloadpfClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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
    procedure chkComplexChange(Sender: TObject);
    procedure chMgNO3Change(Sender: TObject);
    procedure CoChange(Sender: TObject);
    procedure CuChange(Sender: TObject);
    procedure dateAddClick(Sender: TObject);
    procedure dateChangeClick(Sender: TObject);
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
    procedure e1Change(Sender: TObject);
    procedure eFileNameChange(Sender: TObject);

    procedure FeChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormChangeBounds(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gBChange(Sender: TObject);

    procedure gCaNO3Change(Sender: TObject);
    procedure gCmplxChange(Sender: TObject);
    procedure gCoChange(Sender: TObject);
    procedure gCuChange(Sender: TObject);
    procedure gFeChange(Sender: TObject);
    procedure gK2SO4Change(Sender: TObject);
    procedure gKH2PO4Change(Sender: TObject);
    procedure gKNO3Change(Sender: TObject);
    procedure glBChange(Sender: TObject);
    procedure glCaNO3Change(Sender: TObject);
    procedure glCoChange(Sender: TObject);
    procedure glCuChange(Sender: TObject);
    procedure glFeChange(Sender: TObject);
    procedure glK2SO4Change(Sender: TObject);
    procedure glKH2PO4Change(Sender: TObject);
    procedure glKNO3Change(Sender: TObject);
    procedure glMgNO3Change(Sender: TObject);
    procedure glMgSO4Change(Sender: TObject);
    procedure glMnChange(Sender: TObject);
    procedure glMoChange(Sender: TObject);
    procedure glNH4NO3Change(Sender: TObject);
    procedure glSiChange(Sender: TObject);
    procedure glZnChange(Sender: TObject);
    procedure gMgNO3Change(Sender: TObject);
    procedure gMgSO4Change(Sender: TObject);
    procedure CalcConcChange(Sender: TObject);
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
    procedure lb1Click(Sender: TObject);
    procedure mCaNO3Change(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure tAmlChange(Sender: TObject);
    procedure tBmlChange(Sender: TObject);

    procedure versionClick(Sender: TObject);
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
    procedure TabSheet3Show(Sender: TObject);


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
  vFe,vMn,vB,vZn,vCu,vMo,vCo,vSi:Double;
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

 str: string;
 C_FNAME,N_FNAME: string;

       DStr: TStringList;
      i: integer;
      StrDate,StrCmnt:string;

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

  vFe:=Kf.Fe.Value;
  vMn:=Kf.Mn.Value;
  vB:=Kf.B.Value;
  vZn:=Kf.Zn.Value;
  vCu:=Kf.Cu.Value;
  vMo:=Kf.Mo.Value;
  vCo:=Kf.Co.Value;
  vSi:=Kf.Si.Value;
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

                    +'Fe='+FloatToStr(round(kf.Fe.value)/1000, MyFormatSettings)+' '
                    +'Mn='+FloatToStr(round(kf.Mn.value)/1000, MyFormatSettings)+' '
                    +'B='+FloatToStr(round(kf.B.value)/1000, MyFormatSettings)+' '
                    +'Zn='+FloatToStr(round(kf.Zn.value)/1000, MyFormatSettings)+' '
                    +'Cu='+FloatToStr(round(kf.Cu.value)/1000, MyFormatSettings)+' '
                    +'Mo='+FloatToStr(round(kf.Mo.value)/1000, MyFormatSettings)+' '
                    +'Co='+FloatToStr(round(kf.Co.value)/1000, MyFormatSettings)+' '
                    +'Si='+FloatToStr(round(kf.Si.value)/1000, MyFormatSettings)+' '


                    //+'[ EC='+FloatToStr(round(vEC*10)/10, MyFormatSettings)+' '
                    //+'K:N='+FloatToStr(round(vKN*10)/10, MyFormatSettings)+' '
                    //+'K:Mg='+FloatToStr(round(vKMg*10)/10, MyFormatSettings)+' '
                    //+'K:Ca='+FloatToStr(round(vKCa*10)/10, MyFormatSettings)+' '
                    //+'NH4:NO3='+FloatToStr(round(vNH4NO3*100)/100, MyFormatSettings)+' ]'
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


  if ( Kf.NH4NO3.Focused = False ) then Kf.NH4NO3.value:=Kf.NH4.Value/Kf.NO3.value;
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

procedure CalcConc;
var
 Av,Am,Ak,Ac,Aw,Aml, Bv,Bm,Bk,Bc,Bw,Bml: double;
begin
   MyFormatSettings.DecimalSeparator := '.';

   Kf.mlCaNO3.Value:=Kf.gCaNO3.value/Kf.glCaNO3.value*1000;
   Kf.mlKNO3.Value:=Kf.gKNO3.value/Kf.glKNO3.value*1000;
   Kf.mlNH4NO3.Value:=Kf.gNH4NO3.value/Kf.glNH4NO3.value*1000;
   Kf.mlMgNO3.Value:=Kf.gMgNO3.value/Kf.glMgNO3.value*1000;
   Kf.mlMgSO4.Value:=Kf.gMgSO4.value/Kf.glMgSO4.value*1000;
   Kf.mlKH2PO4.Value:=Kf.gKH2PO4.value/Kf.glKH2PO4.value*1000;
   Kf.mlK2SO4.Value:=Kf.gK2SO4.value/Kf.glK2SO4.value*1000;

   //Kf.mlCmplx.Value:=Kf.gCmplx.value/Kf.glCmplx.value*100;
   if (Kf.dB.value <> 0) then Kf.mlCmplx.Value:=(Kf.B.value/Kf.dB.value*Kf.V.value/10)/Kf.glCmplx.value;
   if (Kf.dFe.value <> 0) then Kf.mlFe.Value:=(Kf.Fe.value/Kf.dFe.value*Kf.V.value/10)/Kf.glFe.value;
   if (Kf.dMn.value <> 0) then Kf.mlMn.Value:=(Kf.Mn.value/Kf.dMn.value*Kf.V.value/10)/Kf.glMn.value;
   if (Kf.dB.value <> 0) then Kf.mlB.Value:= (Kf.B.value/Kf.dB.value*Kf.V.value/10)/Kf.glB.value;
   if (Kf.dZn.value <> 0) then Kf.mlZn.Value:=(Kf.Zn.value/Kf.dZn.value*Kf.V.value/10)/Kf.glZn.value;
   if (Kf.dCu.value <> 0) then Kf.mlCu.Value:=(Kf.Cu.value/Kf.dCu.value*Kf.V.value/10)/Kf.glCu.value;
   if (Kf.dMo.value <> 0) then Kf.mlMo.Value:=(Kf.Mo.value/Kf.dMo.value*Kf.V.value/10)/Kf.glMo.value;
   if (Kf.dCo.value <> 0) then Kf.mlCo.Value:=(Kf.Co.value/Kf.dCo.value*Kf.V.value/10)/Kf.glCo.value ;
   if (Kf.dSi.value <> 0) then Kf.mlSi.Value:=(Kf.Si.value/Kf.dSi.value*Kf.V.value/10)/Kf.glSi.value;

   Kf.ggCaNO3.value:=Kf.gmlCaNO3.value*Kf.mlCaNO3.value;
   Kf.ggKNO3.value:=Kf.gmlKNO3.value*Kf.mlKNO3.value;
   Kf.ggNH4NO3.value:=Kf.gmlNH4NO3.value*Kf.mlNH4NO3.value;
   Kf.ggMgNO3.value:=Kf.gmlMgNO3.value*Kf.mlMgNO3.value;
   Kf.ggMgSO4.value:=Kf.gmlMgSO4.value*Kf.mlMgSO4.value;
   Kf.ggKH2PO4.value:=Kf.gmlKH2PO4.value*Kf.mlKH2PO4.value;
   Kf.ggK2SO4.value:=Kf.gmlK2SO4.value*Kf.mlK2SO4.value;

   Kf.ggCmplx.value:=Kf.gmlCmplx.value*Kf.mlCmplx.value;
   Kf.ggFe.value:=Kf.gmlFe.value*Kf.mlFe.value;
   Kf.ggB.value:=Kf.gmlB.value*Kf.mlB.value;
   Kf.ggMn.value:=Kf.gmlMn.value*Kf.mlMn.value;
   Kf.ggZn.value:=Kf.gmlZn.value*Kf.mlZn.value;
   Kf.ggCu.value:=Kf.gmlCu.value*Kf.mlCu.value;
   Kf.ggMo.value:=Kf.gmlMo.value*Kf.mlMo.value;
   Kf.ggCo.value:=Kf.gmlCo.value*Kf.mlCo.value;
   Kf.ggSi.value:=Kf.gmlSi.value*Kf.mlSi.value;


    if (kF.chKComplex.Checked = False) then  begin
    Kf.lCmplx.Visible:=false; Kf.glCmplx.Visible:=false;  Kf.gmlCmplx.Visible:=false;  Kf.mlCmplx.Visible:=false;  Kf.ggCmplx.Visible:=false;

    Kf.lFe.Visible:=true; Kf.glFe.Visible:=true;  Kf.gmlFe.Visible:=true;  Kf.mlFe.Visible:=true;  Kf.ggFe.Visible:=true;
    Kf.lMn.Visible:=true; Kf.glMn.Visible:=true;  Kf.gmlMn.Visible:=true;  Kf.mlMn.Visible:=true;  Kf.ggMn.Visible:=true;
    Kf.lB.Visible:=true;  Kf.glB.Visible:=true;   Kf.gmlB.Visible:=true;   Kf.mlB.Visible:=true;   Kf.ggB.Visible:=true;
    Kf.lZn.Visible:=true; Kf.glZn.Visible:=true;  Kf.gmlZn.Visible:=true;  Kf.mlZn.Visible:=true;  Kf.ggZn.Visible:=true;
    Kf.lCu.Visible:=true; Kf.glCu.Visible:=true;  Kf.gmlCu.Visible:=true;  Kf.mlCu.Visible:=true;  Kf.ggCu.Visible:=true;
    Kf.lMo.Visible:=true; Kf.glMo.Visible:=true;  Kf.gmlMo.Visible:=true;  Kf.mlMo.Visible:=true;  Kf.ggMo.Visible:=true;
    Kf.lCo.Visible:=true; Kf.glCo.Visible:=true;  Kf.gmlCo.Visible:=true;  Kf.mlCo.Visible:=true;  Kf.ggCo.Visible:=true;
    Kf.lSi.Visible:=true; Kf.glSi.Visible:=true;  Kf.gmlSi.Visible:=true;  Kf.mlSi.Visible:=true;  Kf.ggSi.Visible:=true;

    end
    else begin
    Kf.lCmplx.Visible:=true; Kf.glCmplx.Visible:=true;  Kf.gmlCmplx.Visible:=true;  Kf.mlCmplx.Visible:=true;  Kf.ggCmplx.Visible:=true;

    Kf.lFe.Visible:=false; Kf.glFe.Visible:=false;  Kf.gmlFe.Visible:=false;  Kf.mlFe.Visible:=false;  Kf.ggFe.Visible:=false;
    Kf.lMn.Visible:=false; Kf.glMn.Visible:=false;  Kf.gmlMn.Visible:=false;  Kf.mlMn.Visible:=false;  Kf.ggMn.Visible:=false;
    Kf.lB.Visible:=false;  Kf.glB.Visible:=false;   Kf.gmlB.Visible:=false;   Kf.mlB.Visible:=false;   Kf.ggB.Visible:=false;
    Kf.lZn.Visible:=false; Kf.glZn.Visible:=false;  Kf.gmlZn.Visible:=false;  Kf.mlZn.Visible:=false;  Kf.ggZn.Visible:=false;
    Kf.lCu.Visible:=false; Kf.glCu.Visible:=false;  Kf.gmlCu.Visible:=false;  Kf.mlCu.Visible:=false;  Kf.ggCu.Visible:=false;
    Kf.lMo.Visible:=false; Kf.glMo.Visible:=false;  Kf.gmlMo.Visible:=false;  Kf.mlMo.Visible:=false;  Kf.ggMo.Visible:=false;
    Kf.lCo.Visible:=false; Kf.glCo.Visible:=false;  Kf.gmlCo.Visible:=false;  Kf.mlCo.Visible:=false;  Kf.ggCo.Visible:=false;
    Kf.lSi.Visible:=false; Kf.glSi.Visible:=false;  Kf.gmlSi.Visible:=false;  Kf.mlSi.Visible:=false;  Kf.ggSi.Visible:=false;
    end;

    Kf.knCaNO3.caption:= Kf.nCaNO3.caption;
    Kf.knKNO3.caption:= Kf.nKNO3.caption;
    Kf.knNH4NO3.caption:= Kf.nNH4NO3.caption;
    Kf.knMgNO3.caption:= Kf.nMgNO3.caption;
    Kf.knMgSO4.caption:= Kf.nMgSO4.caption;
    Kf.knK2SO4.caption:= Kf.nK2SO4.caption;
    Kf.knKH2PO4.caption:= Kf.nKH2PO4.caption;

    Kf.lFe.Caption:='Железо Fe='+FloatToStr(Kf.dFe.value)+'%';
    Kf.lMn.Caption:='Марганец Mn='+FloatToStr(Kf.dMn.value)+'%';
    Kf.lB.Caption:='Бор B='+FloatToStr(Kf.dB.value)+'%';
    Kf.lZn.Caption:='Цинк Zn='+FloatToStr(Kf.dZn.value)+'%';
    Kf.lCu.Caption:='Медь Cu='+FloatToStr(Kf.dCu.value)+'%';
    Kf.lMo.Caption:='Молибден Mo='+FloatToStr(Kf.dMo.value)+'%';
    Kf.lCo.Caption:='Кобальт Co='+FloatToStr(Kf.dCo.value)+'%';
    Kf.lSi.Caption:='Кремний Si='+FloatToStr(Kf.dSi.value)+'%';

    Kf.g2gCaNO3.caption:=FloatToStr(round(Kf.ggCaNO3.value*100)/100,MyFormatSettings);
    Kf.g2gKNO3.caption:=FloatToStr(round(Kf.ggKNO3.value*100)/100,MyFormatSettings);
    Kf.g2gNH4NO3.caption:=FloatToStr(round(Kf.ggNH4NO3.value*100)/100,MyFormatSettings);
    Kf.g2gMgNO3.caption:=FloatToStr(round(Kf.ggMgNO3.value*100)/100,MyFormatSettings);

    Kf.g2gMgSO4.caption:=FloatToStr(round(Kf.ggMgSO4.value*100)/100,MyFormatSettings);
    Kf.g2gKH2PO4.caption:=FloatToStr(round(Kf.ggKH2PO4.value*100)/100,MyFormatSettings);
    Kf.g2gK2SO4.caption:=FloatToStr(round(Kf.ggK2SO4.value*100)/100,MyFormatSettings);
    Kf.g2gCmplx.caption:=FloatToStr(round(Kf.ggCmplx.value*100)/100,MyFormatSettings);

    Kf.g2gFe.caption:=FloatToStr(round(Kf.ggFe.value*100)/100,MyFormatSettings);
    Kf.g2gMn.caption:=FloatToStr(round(Kf.ggMn.value*100)/100,MyFormatSettings);
    Kf.g2gB.caption:=FloatToStr(round(Kf.ggB.value*100)/100,MyFormatSettings);
    Kf.g2gZn.caption:=FloatToStr(round(Kf.ggZn.value*100)/100,MyFormatSettings);
    Kf.g2gCu.caption:=FloatToStr(round(Kf.ggCu.value*100)/100,MyFormatSettings);
    Kf.g2gMo.caption:=FloatToStr(round(Kf.ggMo.value*100)/100,MyFormatSettings);
    Kf.g2gCo.caption:=FloatToStr(round(Kf.ggCo.value*100)/100,MyFormatSettings);
    Kf.g2gSi.caption:=FloatToStr(round(Kf.ggSi.value*100)/100,MyFormatSettings);

    Kf.k2nCaNO3.Caption:= Kf.knCaNO3.caption + ' (' + FloatToStr(Kf.glCaNO3.Value)+ ' г/л, '+FloatToStr(Kf.gmlCaNO3.Value)+ ' г/мл)';
    Kf.k2nKNO3.Caption:= Kf.knKNO3.caption + ' (' + FloatToStr(Kf.glKNO3.Value)+ ' г/л, '+FloatToStr(Kf.gmlKNO3.Value)+ ' г/мл)';
    Kf.k2nNH4NO3.Caption:= Kf.knNH4NO3.caption + ' (' + FloatToStr(Kf.glNH4NO3.Value)+ ' г/л, '+FloatToStr(Kf.gmlNH4NO3.Value)+ ' г/мл)';
    Kf.k2nMgNO3.Caption:= Kf.knMgNO3.caption + ' (' + FloatToStr(Kf.glMgNO3.Value)+ ' г/л, '+FloatToStr(Kf.gmlMgNO3.Value)+ ' г/мл)';
    Kf.k2nMgSO4.Caption:= Kf.knMgSO4.caption + ' (' + FloatToStr(Kf.glMgSO4.Value)+ ' г/л, '+FloatToStr(Kf.gmlMgSO4.Value)+ ' г/мл)';
    Kf.k2nKH2PO4.Caption:= Kf.knKH2PO4.caption + ' (' + FloatToStr(Kf.glKH2PO4.Value)+ ' г/л, '+FloatToStr(Kf.gmlKH2PO4.Value)+ ' г/мл)';
    Kf.k2nK2SO4.Caption:= Kf.knK2SO4.caption + ' (' + FloatToStr(Kf.glK2SO4.Value)+ ' г/л, '+FloatToStr(Kf.gmlK2SO4.Value)+ ' г/мл)';

    Kf.l2Cmplx.Caption:= Kf.lCmplx.caption + ' (' + FloatToStr(Kf.glCmplx.Value)+ ' г/л, '+FloatToStr(Kf.gmlCmplx.Value)+ ' г/мл)';
    Kf.l2Fe.Caption:= Kf.lFe.caption + ' (' + FloatToStr(Kf.glFe.Value)+ ' г/л, '+FloatToStr(Kf.gmlFe.Value)+ ' г/мл)';
    Kf.l2Mn.Caption:= Kf.lMn.caption + ' (' + FloatToStr(Kf.glMn.Value)+ ' г/л, '+FloatToStr(Kf.gmlMn.Value)+ ' г/мл)';
    Kf.l2B.Caption:= Kf.lB.caption + ' (' + FloatToStr(Kf.glB.Value)+ ' г/л, '+FloatToStr(Kf.gmlB.Value)+ ' г/мл)';
    Kf.l2Zn.Caption:= Kf.lZn.caption + ' (' + FloatToStr(Kf.glZn.Value)+ ' г/л, '+FloatToStr(Kf.gmlZn.Value)+ ' г/мл)';
    Kf.l2Cu.Caption:= Kf.lCu.caption + ' (' + FloatToStr(Kf.glCu.Value)+ ' г/л, '+FloatToStr(Kf.gmlCu.Value)+ ' г/мл)';
    Kf.l2Mo.Caption:= Kf.lMo.caption + ' (' + FloatToStr(Kf.glMo.Value)+ ' г/л, '+FloatToStr(Kf.gmlMo.Value)+ ' г/мл)';
    Kf.l2Co.Caption:= Kf.lCo.caption + ' (' + FloatToStr(Kf.glCo.Value)+ ' г/л, '+FloatToStr(Kf.gmlCo.Value)+ ' г/мл)';
    Kf.l2Si.Caption:= Kf.lSi.caption + ' (' + FloatToStr(Kf.glSi.Value)+ ' г/л, '+FloatToStr(Kf.gmlSi.Value)+ ' г/мл)';


    Av:=round((Kf.mlCaNO3.Value + Kf.mlKNO3.Value + Kf.mlNH4NO3.Value + Kf.mlMgNO3.Value)*10)/10;
    Am:=round((Kf.ggCaNO3.Value + Kf.ggKNO3.Value + Kf.ggNH4NO3.Value + Kf.gMgNO3.Value)*100)/100;
    Ak:=round(Am/Av*1000)/1000;
    Ac:=round(Kf.V.value/Kf.tAml.value*1000);
    Aw:=round(Kf.tAml.value-Av);
    Aml:= round(Kf.tAml.value/Kf.V.value);

    Kf.sumA.Caption:='Объем: '+FloatToStr(Av)+' мл, '+'вес: '+FloatToStr(Am)+' гр,'+' плотность: '+FloatToStr(Ak)+' г/мл. ';
    Kf.lVolA.Caption:='Концентрат A ('+ FloatToStr(Ac)+':1) . Долить воды: '+ FloatToStr(Aw) + 'мл. По ' + FloatToStr(Aml) + ' мл на 1л.';
    if (kF.chKComplex.Checked = True) then
    begin
     Bv:=round((Kf.mlMgSO4.Value + Kf.mlKH2PO4.Value + Kf.mlK2SO4.Value + Kf.mlCmplx.Value)*10)/10;
     Bm:=round((Kf.ggMgSO4.Value + Kf.ggKH2PO4.Value + Kf.ggK2SO4.Value + Kf.gCmplx.Value)*100)/100;
     Bk:=round(Bm/Bv*1000)/1000;


    end
    else
    begin
     Bv:=round((Kf.mlMgSO4.Value + Kf.mlKH2PO4.Value + Kf.mlK2SO4.Value + Kf.mlFe.Value+Kf.mlMn.Value+Kf.mlB.Value+Kf.mlZn.Value+Kf.mlMo.Value+Kf.mlCo.Value+Kf.mlSi.Value)*10)/10;
     Bm:=round((Kf.ggMgSO4.Value + Kf.ggKH2PO4.Value + Kf.ggK2SO4.Value + Kf.ggFe.Value+Kf.ggMn.Value+Kf.ggB.Value+Kf.ggZn.Value+Kf.ggMo.Value+Kf.ggCo.Value+Kf.ggSi.Value)*100)/100;
     Bk:=round(Bm/Bv*1000)/1000;
    end;
    Bc:=round(Kf.V.value/Kf.tBml.value*1000);
    Bw:=round(Kf.tBml.value-Bv);
    Bml:= round(Kf.tBml.value/Kf.V.value);
    Kf.sumB.Caption:='Объем: '+FloatToStr(Bv)+' мл, '+'вес: '+FloatToStr(Bm)+' гр,'+ ' плотность: '+FloatToStr(Bk)+' г/мл';
    Kf.lVolB.Caption:='Концентрат B ('+ FloatToStr(Bc)+':1) . Долить воды: '+ FloatToStr(Bw) + 'мл. По ' + FloatToStr(Bml) + ' мл на 1л.';
    //
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
// N=220 NO3=200 NH4=20 P=40 K=180 Ca=200 Mg=50 S=73 Fe=2 Mn=0.55 B=0.5 Zn=0.33 Cu=0.063 Mo=0.063 Co=0 Si=0
  var numVar,countVar : integer;
      curVar,curValue:string;

begin
  MyFormatSettings.DecimalSeparator := '.';
  ps:=Kf.profile.text;
  countVar:=WordCount( ps,[' ']);

if(countVar=16) then
begin
    Kf.parse.Caption:='OK';
    Kf.parse.Color:=clMoneyGreen;

    for numVar := 1 to countVar do
   begin
     curVar:=ExtractWord(numVar,ps,[' ']);
     curValue:=ExtractWord(2,curVar,['=']);

     if (IsWordPresent('N',curVar, ['='] ) = true) then  Kf.N.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('NO3',curVar, ['='] ) = true) then  Kf.NO3.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('NH4',curVar, ['='] ) = true) then  Kf.NH4.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('P',curVar, ['='] ) = true) then  Kf.P.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('K',curVar, ['='] ) = true) then  Kf.K.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('Ca',curVar, ['='] ) = true) then  Kf.Ca.value:=StrToFloat(curValue,MyFormatSettings);
     if (IsWordPresent('Mg',curVar, ['='] ) = true) then  Kf.Mg.value:=StrToFloat(curValue,MyFormatSettings);

     if (IsWordPresent('Fe',curVar, ['='] ) = true) then  Kf.Fe.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Mn',curVar, ['='] ) = true) then  Kf.Mn.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('B',curVar, ['='] ) = true) then  Kf.B.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Zn',curVar, ['='] ) = true) then  Kf.Zn.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Cu',curVar, ['='] ) = true) then  Kf.Cu.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Mo',curVar, ['='] ) = true) then  Kf.Mo.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Co',curVar, ['='] ) = true) then  Kf.Co.value:=StrToFloat(curValue,MyFormatSettings)*1000;
     if (IsWordPresent('Si',curVar, ['='] ) = true) then  Kf.Si.value:=StrToFloat(curValue,MyFormatSettings)*1000;
   end;
    Kf.N.value:=Kf.NO3.value+Kf.NH4.value;
    calculateS;
    CalcEC;
    CalcAll;


end
else
begin
  Kf.parse.Caption:='NO';
  Kf.parse.Color:=clRED;
  end;

  //then vA:=StrToFloat(ExtractWord(2,s,['=']));
end;
procedure microToWeght; begin
 if (kF.chKComplex.Checked = False) then  begin

 Kf.gFe.Visible:=true;
 Kf.gMn.Visible:=true;
 Kf.gB.Visible:=true;
 Kf.gZn.Visible:=true;
 Kf.gCu.Visible:=true;
 Kf.gMo.Visible:=true;
 Kf.gCo.Visible:=true;
 Kf.gSi.Visible:=true;
 Kf.gCmplx.Visible:=false;
// На форме изготовление
 Kf.g2gFe.Visible:=true; Kf.cbFe.Visible:=true; Kf.mFe.Visible:=true;  Kf.l2Fe.Visible:=true;
 Kf.g2gMn.Visible:=true; Kf.cbMn.Visible:=true; Kf.mMn.Visible:=true;  Kf.l2Mn.Visible:=true;
 Kf.g2gB.Visible:=true;  Kf.cbB.Visible:=true; Kf.mB.Visible:=true;  Kf.l2B.Visible:=true;
 Kf.g2gZn.Visible:=true; Kf.cbZn.Visible:=true; Kf.mZn.Visible:=true;  Kf.l2Zn.Visible:=true;
 Kf.g2gCu.Visible:=true; Kf.cbCu.Visible:=true; Kf.mCu.Visible:=true;  Kf.l2Cu.Visible:=true;
 Kf.g2gMo.Visible:=true; Kf.cbMo.Visible:=true; Kf.mMo.Visible:=true;  Kf.l2Mo.Visible:=true;
 Kf.g2gCo.Visible:=true; Kf.cbCo.Visible:=true; Kf.mCo.Visible:=true;  Kf.l2Co.Visible:=true;
 Kf.g2gSi.Visible:=true; Kf.cbSi.Visible:=true; Kf.mSi.Visible:=true;  Kf.l2Si.Visible:=true;
 Kf.g2gCmplx.Visible:=false; Kf.cbCmplx.Visible:=false; Kf.mCmplx.Visible:=false;  Kf.l2Cmplx.Visible:=false;




 if Kf.dFe.value >0 then Kf.gFe.value:=Kf.Fe.value/Kf.dFe.value*Kf.V.value/10000 else Kf.gFe.value:=0;
 if Kf.dMn.value >0 then Kf.gMn.value:=Kf.Mn.value/Kf.dMn.value*Kf.V.value/10000 else Kf.gMn.value:=0;
 if Kf.dB.value >0 then Kf.gB.value:=Kf.B.value/Kf.dB.value*Kf.V.value/10000 else Kf.gB.value:=0;
 if Kf.dZn.value >0 then Kf.gZn.value:=Kf.Zn.value/Kf.dZn.value*Kf.V.value/10000 else Kf.gZn.value:=0;
 if Kf.dCu.value >0 then Kf.gCu.value:=Kf.Cu.value/Kf.dCu.value*Kf.V.value/10000 else Kf.gCu.value:=0;
 if Kf.dMo.value >0 then Kf.gMo.value:=Kf.Mo.value/Kf.dMo.value*Kf.V.value/10000 else Kf.gMo.value:=0;
 if Kf.dCo.value >0 then Kf.gCo.value:=Kf.Co.value/Kf.dCo.value*Kf.V.value/10000 else Kf.gCo.value:=0;
 if Kf.dSi.value >0 then Kf.gSi.value:=Kf.Si.value/Kf.dSi.value*Kf.V.value/10000 else Kf.gSi.value:=0;

  Kf.Fe.ReadOnly :=false;
Kf.Mn.ReadOnly:=false;
//Kf.B.ReadOnly:=false;
Kf.Zn.ReadOnly:=false;
Kf.Cu.ReadOnly:=false;
Kf.Mo.ReadOnly:=false;
Kf.Mo.ReadOnly:=false;
Kf.Co.ReadOnly:=false;
Kf.Si.ReadOnly:=false;

 end
 else begin
 Kf.Fe.ReadOnly :=true;
Kf.Mn.ReadOnly:=true;
//Kf.B.ReadOnly:=false;
Kf.Zn.ReadOnly:=true;
Kf.Cu.ReadOnly:=true;
Kf.Mo.ReadOnly:=true;
Kf.Mo.ReadOnly:=true;
Kf.Co.ReadOnly:=true;
Kf.Si.ReadOnly:=true;

Kf.gFe.Visible :=false;
Kf.gMn.Visible:=false;
Kf.gB.Visible:=false;
Kf.gZn.Visible:=false;
 Kf.gCu.Visible:=false;
Kf.gMo.Visible:=false;
Kf.gMo.Visible:=false;
Kf.gCo.Visible:=false;
Kf.gSi.Visible:=false;
Kf.gCmplx.Visible:=true;
// На форме изготовление
Kf.g2gFe.Visible :=false; Kf.cbFe.Visible:=false; Kf.mFe.Visible:=false;  Kf.l2Fe.Visible:=false;
Kf.g2gMn.Visible:=false;  Kf.cbMn.Visible:=false; Kf.mMn.Visible:=false;  Kf.l2Mn.Visible:=false;
Kf.g2gB.Visible:=false;   Kf.cbB.Visible:=false; Kf.mB.Visible:=false;  Kf.l2B.Visible:=false;
Kf.g2gZn.Visible:=false;  Kf.cbZn.Visible:=false; Kf.mZn.Visible:=false;  Kf.l2Zn.Visible:=false;
Kf.g2gCu.Visible:=false;  Kf.cbCu.Visible:=false; Kf.mCu.Visible:=false;  Kf.l2Cu.Visible:=false;
Kf.g2gMo.Visible:=false;  Kf.cbMo.Visible:=false; Kf.mMo.Visible:=false;  Kf.l2Mo.Visible:=false;
Kf.g2gCo.Visible:=false;  Kf.cbCo.Visible:=false; Kf.mCo.Visible:=false;  Kf.l2Co.Visible:=false;
Kf.g2gSi.Visible:=false;  Kf.cbSi.Visible:=false; Kf.mSi.Visible:=false;  Kf.l2Si.Visible:=false;
Kf.g2gCmplx.Visible:=true; Kf.cbCmplx.Visible:=true; Kf.mCmplx.Visible:=true;  Kf.l2Cmplx.Visible:=true;


Kf.gCmplx.value:=Kf.B.value/Kf.dB.value*Kf.V.value/10000;
Kf.Fe.value:=10000*Kf.gCmplx.value* (Kf.dFe.value/Kf.V.value);
Kf.Mn.value:=10000*Kf.gCmplx.value* (Kf.dMn.value/Kf.V.value);
//Kf.B.value:=1000*Kf.gCmplx.value*   (Kf.dB.value/Kf.V.value);
Kf.Zn.value:=10000*Kf.gCmplx.value* (Kf.dZn.value/Kf.V.value);
Kf.Cu.value:=10000*Kf.gCmplx.value* (Kf.dCu.value/Kf.V.value);
Kf.Mo.value:=10000*Kf.gCmplx.value* (Kf.dMo.value/Kf.V.value);
Kf.Co.value:=10000*Kf.gCmplx.value* (Kf.dCo.value/Kf.V.value);
Kf.Si.value:=10000*Kf.gCmplx.value* (Kf.dSi.value/Kf.V.value);
 end;

 genProfile;
end ;





procedure WeghtTomicro; begin

if (kF.chKComplex.Checked = False) then  begin






 Kf.Fe.value:=10000*Kf.gFe.value* (Kf.dFe.value/Kf.V.value);
 Kf.Mn.value:=10000*Kf.gMn.value* (Kf.dMn.value/Kf.V.value);
 Kf.B.value:=10000*Kf.gB.value*   (Kf.dB.value/Kf.V.value);
 Kf.Zn.value:=10000*Kf.gZn.value* (Kf.dZn.value/Kf.V.value);
 Kf.Cu.value:=10000*Kf.gCu.value* (Kf.dCu.value/Kf.V.value);
 Kf.Mo.value:=10000*Kf.gMo.value* (Kf.dMo.value/Kf.V.value);
 Kf.Co.value:=10000*Kf.gCo.value* (Kf.dCo.value/Kf.V.value);
 Kf.Si.value:=10000*Kf.gSi.value* (Kf.dSi.value/Kf.V.value);
 end
else begin

 Kf.Fe.value:=10000*Kf.gCmplx.value* (Kf.dFe.value/Kf.V.value);
 Kf.Mn.value:=10000*Kf.gCmplx.value* (Kf.dMn.value/Kf.V.value);
 Kf.B.value:= 10000*Kf.gCmplx.value*  (Kf.dB.value/Kf.V.value);
 Kf.Zn.value:=10000*Kf.gCmplx.value* (Kf.dZn.value/Kf.V.value);
 Kf.Cu.value:=10000*Kf.gCmplx.value* (Kf.dCu.value/Kf.V.value);
 Kf.Mo.value:=10000*Kf.gCmplx.value* (Kf.dMo.value/Kf.V.value);
 Kf.Co.value:=10000*Kf.gCmplx.value* (Kf.dCo.value/Kf.V.value);
 Kf.Si.value:=10000*Kf.gCmplx.value* (Kf.dSi.value/Kf.V.value);





end;
genProfile;
end;


procedure SoilName;


begin
    //StrToFloat(curValue,MyFormatSettings);

// Селитра кальциевая
if (Kf.CaNO3_NH4.value = 0) then begin

    case FloatToStr(round(Kf.CaNO3_Ca.value*10)/10,MyFormatSettings) of
      '17':  Kf.nCaNO3.Caption:='Кальций азотнокислый Са(NО3)2*4H2O';
      '20':  Kf.nCaNO3.Caption:='Кальций азотнокислый Ca(NO3)2*2H2O';
      '24.4':  Kf.nCaNO3.Caption:='Кальций азотнокислый Ca(NO3)2';
    else       Kf.nCaNO3.Caption:='Селитра кальциевая'
       + ' CaO-' +floattostr(Round((Kf.CaNO3_Ca.value/0.714691)*10)/10)+'%'
       + ' N-' +floattostr(Round((Kf.CaNO3_NH4.value+Kf.CaNO3_NO3.value)*10)/10)+'%';
    end;
end
else begin
      Kf.nCaNO3.Caption:='Селитра кальциевая'
       + ' CaO-' +floattostr(Round((Kf.CaNO3_Ca.value/0.714691)*10)/10)+'%'
       + ' N-' +floattostr(Round((Kf.CaNO3_NH4.value+Kf.CaNO3_NO3.value)*10)/10)+'%';
      end;

// Селитра калиевая
case FloatToStr(round(Kf.KNO3_K.value*10)/10,MyFormatSettings) of
   '38.7':  Kf.nKNO3.Caption:='Калий азотнокислый KNO3';
 else
   Kf.nKNO3.Caption:='Селитра калиевая'
   + ' K2O-' +floattostr(Round((Kf.KNO3_K.value/0.830148)*10)/10)+'%'
   + ' N-' +floattostr(Round((Kf.KNO3_NO3.value)*10)/10)+'%';
 end;

// Селитра аммиачная
case FloatToStr(round(Kf.NH4NO3_NO3.value*10)/10,MyFormatSettings) of
   '17.5':  Kf.nNH4NO3.Caption:='Аммоний азотнокислый NH4NO3';
 else
   Kf.nNH4NO3.Caption:='Селитра аммиачная'
+ ' N-' +floattostr(Round((Kf.NH4NO3_NH4.value+Kf.NH4NO3_NO3.value)*10)/10)+'%';
 end;
// Сульфат магния
case FloatToStr(round(Kf.MgSO4_Mg.value*10)/10,MyFormatSettings) of
   '9.9':  Kf.nMgSO4.Caption:='Магний сернокислый MgSO4*7H2O';
   '20.2':  Kf.nMgSO4.Caption:='Магний сернокислый MgSO4';
 else
   Kf.nMgSO4.Caption:='Сульфат магния'
   + ' MgO-' +floattostr(Round((Kf.MgSO4_Mg.value/0.603036)*10)/10)+'%'
   + ' SO3-' +floattostr(Round((Kf.MgSO4_S.value/0.400496)*10)/10)+'%';
 end;
// Монофосфат калия
case FloatToStr(round(Kf.KH2PO4_K.value*10)/10,MyFormatSettings) of
   '28.7':  Kf.nKH2PO4.Caption:='Калий фосфорнокислый KH2PO4';
 else
   Kf.nKH2PO4.Caption:='Монофосфат калия'
   + ' K2O-' +floattostr(Round((Kf.KH2PO4_K.value/0.830148)*10)/10)+'%'
   + ' P2O5-' +floattostr(Round((Kf.KH2PO4_P.value/0.436421)*10)/10)+'%';
 end;
// Сульфат калия
case FloatToStr(round(Kf.K2SO4_K.value*10)/10,MyFormatSettings) of
   '44.9':  Kf.nK2SO4.Caption:='Калий сернокислый K2SO4';
 else
   Kf.nK2SO4.Caption:='Сульфат калия'
   + ' K2O-' +floattostr(Round((Kf.K2SO4_K.value/0.830148)*10)/10)+'%'
   + ' SO3-' +floattostr(Round((Kf.K2SO4_S.value/0.400496)*10)/10)+'%';
 end;
// Селитра магниевая
case FloatToStr(round(Kf.MgNO3_Mg.value*10)/10,MyFormatSettings) of
   '9.5':  Kf.nMgNO3.Caption:='Магний азотнокислый Mg(NO3)2*6H2O';
   '16.4':  Kf.nMgNO3.Caption:='Магний азотнокислый Mg(NO3)2';
 else
   Kf.nMgNO3.Caption:='Селитра магниевая'
    + ' MgO-' +floattostr(Round((Kf.MgNO3_Mg.value/0.603036)*10)/10)+'%'
    + ' N-' +floattostr(Round((Kf.MgNO3_NO3.value)*10)/10)+'%';
 end;

  end;


procedure loadPrf;

begin
   //DStr := TStringList.Create;
  //C_FNAME
   MyFormatSettings.DecimalSeparator := '.';
        AssignFile(tfIn, C_FNAME);
        // Открыть файл для чтения
      reset(tfIn);
    //
      // Считываем строки, пока не закончится файл
          while not eof(tfIn) do
          begin
          readln(tfIn, str);

          //if (IsWordPresent('Comment', str, ['=']) = true) then Kf.eComment.Caption:=ExtractWord(2,str,['=']);
          //Macro Profile
           if (IsWordPresent('N', str, ['=']) = true) then Kf.N.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('NH4', str, ['=']) = true) then Kf.NH4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('NO3', str, ['=']) = true) then Kf.NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('P', str, ['=']) = true)   then Kf.P.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('K', str, ['=']) = true)   then Kf.K.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Ca', str, ['=']) = true)  then Kf.Ca.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Mg', str, ['=']) = true)  then Kf.Mg.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('S', str, ['=']) = true)   then Kf.S.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
          //Micro Profile
           if (IsWordPresent('Fe', str, ['=']) = true) then Kf.Fe.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Mn', str, ['=']) = true) then Kf.Mn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('B', str, ['=']) = true) then  Kf.B.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Zn', str, ['=']) = true) then Kf.Zn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Cu', str, ['=']) = true) then Kf.Cu.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Mo', str, ['=']) = true) then Kf.Mo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Co', str, ['=']) = true) then Kf.Co.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('Si', str, ['=']) = true) then Kf.Si.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('V', str, ['=']) = true) then Kf.V.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

          end;

      CloseFile(tfIn);




    CalcAll;
    CalcWeight ;
    microToWeght;
    CalcConc;
    SoilName;

    Kf.Caption:='HPG ' + C_FNAME + ' (' + Kf.eComment.Caption +')' ;
end;


procedure loadJournal;

begin
    DStr := TStringList.Create;
   MyFormatSettings.DecimalSeparator := '.';
        AssignFile(tfIn, C_FNAME);
        // Открыть файл для чтения
      reset(tfIn);
    //
      // Считываем строки, пока не закончится файл
          while not eof(tfIn) do
          begin
          readln(tfIn, str);

           if (IsWordPresent('date', str, ['=']) = true) then DStr.Add(str);
          end;

      CloseFile(tfIn);
          Kf.lb1.Clear;
          for i := 0 to DStr.Count-1 do
          begin
              str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              begin

              StrDate:=ExtractWord(2,str,[';','=']);
              StrCmnt:=ExtractWord(2,str,[';']);
              Kf.lb1.Items.Add(StrDate + ' ' + StrCmnt);

              end;
          end;


end;








procedure loadComment;

begin
       AssignFile(tfIn, C_FNAME);

      reset(tfIn);
    //
      // Считываем строки, пока не закончится файл
          while not eof(tfIn) do
          begin
          readln(tfIn, str);

          if (IsWordPresent('Comment', str, ['=']) = true) then Kf.eComment.Caption:=ExtractWord(2,str,['=']);

          end;

      CloseFile(tfIn);


    Kf.Caption:='HPG ' + C_FNAME + ' (' + Kf.eComment.Caption +')' ;
end;











procedure LoadFirt;
begin
  MyFormatSettings.DecimalSeparator := '.';
    Kf.eFileName.Caption:=C_FNAME;
    AssignFile(tfIn, C_FNAME);
        // Открыть файл для чтения
      reset(tfIn);
    //
      // Считываем строки, пока не закончится файл
          while not eof(tfIn) do
          begin
          readln(tfIn, str);
           if (IsWordPresent('CaNO3_Ca', str, ['=']) = true) then Kf.CaNO3_Ca.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('CaNO3_NO3', str, ['=']) = true) then Kf.CaNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('CaNO3_NH4', str, ['=']) = true) then Kf.CaNO3_NH4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('KNO3_K', str, ['=']) = true) then Kf.KNO3_K.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('KNO3_NO3', str, ['=']) = true) then Kf.KNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('NH4NO3_NH4', str, ['=']) = true) then Kf.NH4NO3_NH4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('NH4NO3_NO3', str, ['=']) = true) then Kf.NH4NO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('MgSO4_Mg', str, ['=']) = true) then Kf.MgSO4_Mg.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('MgSO4_S', str, ['=']) = true) then Kf.MgSO4_S.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('KH2PO4_K', str, ['=']) = true) then Kf.KH2PO4_K.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('KH2PO4_P', str, ['=']) = true) then Kf.KH2PO4_P.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('K2SO4_K', str, ['=']) = true) then Kf.K2SO4_K.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('K2SO4_S', str, ['=']) = true) then Kf.K2SO4_S.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('MgNO3_Mg', str, ['=']) = true) then Kf.MgNO3_Mg.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('MgNO3_NO3', str, ['=']) = true) then Kf.MgNO3_NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           //Micro
           if (IsWordPresent('dFe', str, ['=']) = true) then Kf.dFe.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dMn', str, ['=']) = true) then Kf.dMn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dB', str, ['=']) = true) then  Kf.dB.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dZn', str, ['=']) = true) then Kf.dZn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dCu', str, ['=']) = true) then Kf.dCu.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dMo', str, ['=']) = true) then Kf.dMo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dCo', str, ['=']) = true) then Kf.dCo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('dSi', str, ['=']) = true) then Kf.dSi.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('chkComplex', str, ['=']) = true) then Kf.chkComplex.Checked:=StrToBool(ExtractWord(2,str,['=']));
           if (IsWordPresent('chK2SO4', str, ['=']) = true) then Kf.chK2SO4.Checked:=StrToBool(ExtractWord(2,str,['=']));
           if (IsWordPresent('chMgNO3', str, ['=']) = true) then Kf.chMgNO3.Checked:=StrToBool(ExtractWord(2,str,['=']));



                // Концентрации
           if (IsWordPresent('glCaNO3', str, ['=']) = true) then Kf.glCaNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glKNO3', str, ['=']) = true) then Kf.glKNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glNH4NO3', str, ['=']) = true) then Kf.glNH4NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glMgNO3', str, ['=']) = true) then Kf.glMgNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glMgSO4', str, ['=']) = true) then Kf.glMgSO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glK2SO4', str, ['=']) = true) then Kf.glK2SO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glKH2PO4', str, ['=']) = true) then Kf.glKH2PO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('glCmplx', str, ['=']) = true) then Kf.glCmplx.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('glFe', str, ['=']) = true) then Kf.glFe.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glMn', str, ['=']) = true) then Kf.glMn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glB', str, ['=']) = true) then Kf.glB.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glZn', str, ['=']) = true) then Kf.glZn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glCu', str, ['=']) = true) then Kf.glCu.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glMo', str, ['=']) = true) then Kf.glMo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glCo', str, ['=']) = true) then Kf.glCo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('glSi', str, ['=']) = true) then Kf.glSi.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);



     //// Плотности
           if (IsWordPresent('gmlCaNO3', str, ['=']) = true) then Kf.gmlCaNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlKNO3', str, ['=']) = true) then Kf.gmlKNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlNH4NO3', str, ['=']) = true) then Kf.gmlNH4NO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlMgNO3', str, ['=']) = true) then Kf.gmlMgNO3.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlMgSO4', str, ['=']) = true) then Kf.gmlMgSO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlK2SO4', str, ['=']) = true) then Kf.gmlK2SO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlKH2PO4', str, ['=']) = true) then Kf.gmlKH2PO4.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('gmlCmplx', str, ['=']) = true) then Kf.gmlCmplx.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           if (IsWordPresent('gmlFe', str, ['=']) = true) then Kf.gmlFe.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlMn', str, ['=']) = true) then Kf.gmlMn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlB', str, ['=']) = true) then Kf.gmlB.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlZn', str, ['=']) = true) then Kf.gmlZn.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlCu', str, ['=']) = true) then Kf.gmlCu.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlMo', str, ['=']) = true) then Kf.gmlMo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlCo', str, ['=']) = true) then Kf.gmlCo.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);
           if (IsWordPresent('gmlSi', str, ['=']) = true) then Kf.gmlSi.value:=StrToFloat(ExtractWord(2,str,['=']),MyFormatSettings);

           //    Помпы

           if (IsWordPresent('mCaNO3', str, ['=']) = true) then Kf.mCaNO3.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mKNO3', str, ['=']) = true) then Kf.mKNO3.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mNH4NO3', str, ['=']) = true) then Kf.mNH4NO3.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mMgNO3', str, ['=']) = true) then Kf.mMgNO3.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mMgSO4', str, ['=']) = true) then Kf.mMgSO4.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mCmplx', str, ['=']) = true) then Kf.mCmplx.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mFe', str, ['=']) = true) then Kf.mFe.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mMn', str, ['=']) = true) then Kf.mMn.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mB', str, ['=']) = true) then Kf.mB.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mZn', str, ['=']) = true) then Kf.mZn.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mCu', str, ['=']) = true) then Kf.mCu.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mCo', str, ['=']) = true) then Kf.mCo.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('mSi', str, ['=']) = true) then Kf.mSi.text:=ExtractWord(2,str,['=']);
           if (IsWordPresent('addrMixer', str, ['=']) = true) then Kf.addrMixer.text:=ExtractWord(2,str,['=']);



          end;



      CloseFile(tfIn);
    CalcWeight ;
    SoilName;
    CalcConc;
end;

procedure SaveFile;
begin
   MyFormatSettings.DecimalSeparator := '.';
  getVar;
  //  vA:=A.value;
  //vB:=FloatSpinEdit3.value;
  //vC:=C.value;

  // Связываем имя файла с переменной
  AssignFile(tfOut, C_FNAME);
    rewrite(tfOut);

    writeln(tfOut,'version=',Kf.version.Caption + ' https://github.com/siv237/HPG');
    writeln(tfOut,'Comment=',Kf.eComment.Caption);

    // Macro Profile
    writeln(tfOut,'N=',FloatToStr(Kf.N.value,MyFormatSettings));
    writeln(tfOut,'NH4=',FloatToStr(Kf.NH4.value,MyFormatSettings));
    writeln(tfOut,'NO3=',FloatToStr(Kf.NO3.value,MyFormatSettings));
    writeln(tfOut,'P=',FloatToStr(Kf.P.value,MyFormatSettings));
    writeln(tfOut,'K=',FloatToStr(Kf.K.value,MyFormatSettings));
    writeln(tfOut,'Ca=',FloatToStr(Kf.Ca.value,MyFormatSettings));
    writeln(tfOut,'Mg=',FloatToStr(Kf.Mg.value,MyFormatSettings));
    writeln(tfOut,'S=',FloatToStr(Kf.S.value,MyFormatSettings));


    //Macro %
    writeln(tfOut,'CaNO3_Ca=',FloatToStr(vCaNO3_Ca,MyFormatSettings));
    writeln(tfOut,'CaNO3_NO3=',FloatToStr(vCaNO3_NO3,MyFormatSettings));
    writeln(tfOut,'CaNO3_NH4=',FloatToStr(vCaNO3_NH4,MyFormatSettings));

    writeln(tfOut,'KNO3_K=',FloatToStr(vKNO3_K,MyFormatSettings));
    writeln(tfOut,'KNO3_NO3=',FloatToStr(vKNO3_NO3,MyFormatSettings));


    writeln(tfOut,'NH4NO3_NH4=',FloatToStr(vNH4NO3_NH4,MyFormatSettings));
    writeln(tfOut,'NH4NO3_NO3=',FloatToStr(vNH4NO3_NO3,MyFormatSettings));

    writeln(tfOut,'MgSO4_Mg=',FloatToStr(vMgSO4_Mg,MyFormatSettings));
    writeln(tfOut,'MgSO4_S=',FloatToStr(vMgSO4_S,MyFormatSettings));

    writeln(tfOut,'KH2PO4_K=',FloatToStr(vKH2PO4_K,MyFormatSettings));
    writeln(tfOut,'KH2PO4_P=',FloatToStr(vKH2PO4_P,MyFormatSettings));

    writeln(tfOut,'K2SO4_K=',FloatToStr(vK2SO4_K,MyFormatSettings));
    writeln(tfOut,'K2SO4_S=',FloatToStr(vK2SO4_S,MyFormatSettings));

    writeln(tfOut,'MgNO3_Mg=',FloatToStr(vMgNO3_Mg,MyFormatSettings));
    writeln(tfOut,'MgNO3_NO3=',FloatToStr(vMgNO3_NO3,MyFormatSettings));


    // Micro Profile
    writeln(tfOut,'Fe=',FloatToStr(Kf.Fe.value,MyFormatSettings));
    writeln(tfOut,'Mn=',FloatToStr(Kf.Mn.value,MyFormatSettings));
    writeln(tfOut,'B=',FloatToStr(Kf.B.value,MyFormatSettings));
    writeln(tfOut,'Zn=',FloatToStr(Kf.Zn.value,MyFormatSettings));
    writeln(tfOut,'Cu=',FloatToStr(Kf.Cu.value,MyFormatSettings));
    writeln(tfOut,'Mo=',FloatToStr(Kf.Mo.value,MyFormatSettings));
    writeln(tfOut,'Co=',FloatToStr(Kf.Co.value,MyFormatSettings));
    writeln(tfOut,'Si=',FloatToStr(Kf.Si.value,MyFormatSettings));

    //Micro %
     writeln(tfOut,'dFe=',FloatToStr(Kf.dFe.Value,MyFormatSettings));
     writeln(tfOut,'dMn=',FloatToStr(Kf.dMn.Value,MyFormatSettings));
     writeln(tfOut,'dB=',FloatToStr(Kf.dB.Value,MyFormatSettings));
     writeln(tfOut,'dZn=',FloatToStr(Kf.dZn.Value,MyFormatSettings));
     writeln(tfOut,'dCu=',FloatToStr(Kf.dCu.Value,MyFormatSettings));
     writeln(tfOut,'dMo=',FloatToStr(Kf.dMo.Value,MyFormatSettings));
     writeln(tfOut,'dCo=',FloatToStr(Kf.dCo.Value,MyFormatSettings));
     writeln(tfOut,'dSi=',FloatToStr(Kf.dSi.Value,MyFormatSettings));

     // Концентрации
     writeln(tfOut,'glCaNO3=',FloatToStr(Kf.glCaNO3.Value,MyFormatSettings));
     writeln(tfOut,'glKNO3=',FloatToStr(Kf.glKNO3.Value,MyFormatSettings));
     writeln(tfOut,'glNH4NO3=',FloatToStr(Kf.glNH4NO3.Value,MyFormatSettings));
     writeln(tfOut,'glMgNO3=',FloatToStr(Kf.glMgNO3.Value,MyFormatSettings));
     writeln(tfOut,'glMgSO4=',FloatToStr(Kf.glMgSO4.Value,MyFormatSettings));
     writeln(tfOut,'glK2SO4=',FloatToStr(Kf.glK2SO4.Value,MyFormatSettings));
     writeln(tfOut,'glKH2PO4=',FloatToStr(Kf.glKH2PO4.Value,MyFormatSettings));

     writeln(tfOut,'glCmplx=',FloatToStr(Kf.glCmplx.Value,MyFormatSettings));
     writeln(tfOut,'glFe=',FloatToStr(Kf.glFe.Value,MyFormatSettings));
     writeln(tfOut,'glMn=',FloatToStr(Kf.glMn.Value,MyFormatSettings));
     writeln(tfOut,'glB=',FloatToStr(Kf.glB.Value,MyFormatSettings));
     writeln(tfOut,'glZn=',FloatToStr(Kf.glZn.Value,MyFormatSettings));
     writeln(tfOut,'glCu=',FloatToStr(Kf.glCu.Value,MyFormatSettings));
     writeln(tfOut,'glMo=',FloatToStr(Kf.glMo.Value,MyFormatSettings));
     writeln(tfOut,'glCo=',FloatToStr(Kf.glCo.Value,MyFormatSettings));
     writeln(tfOut,'glSi=',FloatToStr(Kf.glSi.Value,MyFormatSettings));

     // Плотности
     writeln(tfOut,'gmlCaNO3=',FloatToStr(Kf.gmlCaNO3.Value,MyFormatSettings));
     writeln(tfOut,'gmlKNO3=',FloatToStr(Kf.gmlKNO3.Value,MyFormatSettings));
     writeln(tfOut,'gmlNH4NO3=',FloatToStr(Kf.gmlNH4NO3.Value,MyFormatSettings));
     writeln(tfOut,'gmlMgNO3=',FloatToStr(Kf.gmlMgNO3.Value,MyFormatSettings));
     writeln(tfOut,'gmlMgSO4=',FloatToStr(Kf.gmlMgSO4.Value,MyFormatSettings));
     writeln(tfOut,'gmlK2SO4=',FloatToStr(Kf.gmlK2SO4.Value,MyFormatSettings));
     writeln(tfOut,'gmlKH2PO4=',FloatToStr(Kf.gmlKH2PO4.Value,MyFormatSettings));

     writeln(tfOut,'gmlCmplx=',FloatToStr(Kf.gmlCmplx.Value,MyFormatSettings));
     writeln(tfOut,'gmlFe=',FloatToStr(Kf.gmlFe.Value,MyFormatSettings));
     writeln(tfOut,'gmlMn=',FloatToStr(Kf.gmlMn.Value,MyFormatSettings));
     writeln(tfOut,'gmlB=',FloatToStr(Kf.gmlB.Value,MyFormatSettings));
     writeln(tfOut,'gmlZn=',FloatToStr(Kf.gmlZn.Value,MyFormatSettings));
     writeln(tfOut,'gmlCu=',FloatToStr(Kf.gmlCu.Value,MyFormatSettings));
     writeln(tfOut,'gmlMo=',FloatToStr(Kf.gmlMo.Value,MyFormatSettings));
     writeln(tfOut,'gmlCo=',FloatToStr(Kf.gmlCo.Value,MyFormatSettings));
     writeln(tfOut,'gmlSi=',FloatToStr(Kf.gmlSi.Value,MyFormatSettings));

     writeln(tfOut,'chkComplex=',Kf.chkComplex.Checked);
     writeln(tfOut,'chK2SO4=',Kf.chK2SO4.Checked);
     writeln(tfOut,'chMgNO3=',Kf.chMgNO3.Checked);

     writeln(tfOut,'V=',FloatToStr(Kf.V.Value,MyFormatSettings));

     writeln(tfOut,'mCaNO3=',Kf.mCaNO3.Text);
     writeln(tfOut,'mKNO3=',Kf.mKNO3.Text);
     writeln(tfOut,'mNH4NO3=',Kf.mNH4NO3.Text);
     writeln(tfOut,'mMgNO3=',Kf.mMgNO3.Text);
     writeln(tfOut,'mMgSO4=',Kf.mMgSO4.Text);
     writeln(tfOut,'mKH2PO4=',Kf.mKH2PO4.Text);
     writeln(tfOut,'mK2SO4=',Kf.mK2SO4.Text);
     writeln(tfOut,'mCmplx=',Kf.mCmplx.Text);

     writeln(tfOut,'mFe=',Kf.mFe.Text);
     writeln(tfOut,'mMn=',Kf.mMn.Text);
     writeln(tfOut,'mB=',Kf.mB.Text);
     writeln(tfOut,'mZn=',Kf.mZn.Text);
     writeln(tfOut,'mCu=',Kf.mCu.Text);
     writeln(tfOut,'mMo=',Kf.mMo.Text);
     writeln(tfOut,'mCo=',Kf.mCo.Text);
     writeln(tfOut,'mSi=',Kf.mSi.Text);
     writeln(tfOut,'addrMixer=',Kf.addrMixer.Text);

      if Assigned(DStr)then begin
                  for i := 0 to DStr.Count-1 do
          begin
              str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              writeln(tfOut,str);

              end;
       end;


     CloseFile(tfOut);
    Kf.eFileName.Caption:=C_FNAME;
    Kf.Caption:='HPG ' + C_FNAME + ' (' + Kf.eComment.Caption +')' ;






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



procedure TKf.versionClick(Sender: TObject);
begin
    OpenURL('https://github.com/siv237/HPG');
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

    SoilName;
    CalcWeight ;
  end;
end;

procedure TKf.MgNO3_NO3Change(Sender: TObject);
begin
      if ( MgNO3_NO3.Focused = True )    then begin
          MgNO3_Mg.value:=((1/2)*(MgNO3_NO3.value/FloatSpinEdit2)*mMg);

    SoilName;
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
         SoilName;
         CalcWeight ;
   end;
end;



procedure TKf.MgSO4_SChange(Sender: TObject);
begin
  if ( MgSO4_S.Focused = True )    then begin
     
  MgSO4_Mg.value:= (MgSO4_S.value * mMg)/mS;
    SoilName;
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
      SoilName;
      CalcWeight ;
   end;
end;

procedure TKf.NH4NO3_NO3Change(Sender: TObject);
begin
  if ( NH4NO3_NO3.Focused = True )    then begin
       NH4NO3_NH4.value:=NH4NO3_NO3.value;
        SoilName;
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

procedure TKf.FormCreate(Sender: TObject);
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

procedure TKf.gCmplxChange(Sender: TObject);
begin
 if ( gCmplx.Focused = True )    then begin
  WeghtTomicro;

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

procedure TKf.glBChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glCaNO3Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glCoChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glCuChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glFeChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glK2SO4Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glKH2PO4Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glKNO3Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glMgNO3Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glMgSO4Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glMnChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glMoChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glNH4NO3Change(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glSiChange(Sender: TObject);
begin
  CalcConc;
end;

procedure TKf.glZnChange(Sender: TObject);
begin
  CalcConc;
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

procedure TKf.CalcConcChange(Sender: TObject);
begin
  CalcConc;
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

    SoilName;
    CalcWeight ;
  end;
end;

procedure TKf.K2SO4_KClick(Sender: TObject);
begin
      K2SO4_S.value:=(K2SO4_K.value*mS)/(2*mK);

    SoilName;
    CalcWeight ;
end;



procedure TKf.K2SO4_SChange(Sender: TObject);
begin
  if ( K2SO4_S.Focused = True )    then begin
               K2SO4_K.value:=(K2SO4_S.value*2*mK)/(mS);

    SoilName;
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

    SoilName;
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

    SoilName;
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

 //   nKNO3.Caption:='Селитра калиевая'
 //+ ' K2O-' +floattostr(Round((KNO3_K.value/0.830148)*10)/10)+'%'
 //+ ' N-' +floattostr(Round((KNO3_NO3.value)*10)/10)+'%';
    SoilName;
    CalcWeight ;
  end;
end;

procedure TKf.KNO3_KClick(Sender: TObject);
begin
  KNO3_NO3.value:=(KNO3_K.value*FloatSpinEdit2)/mK;

    SoilName;
    CalcWeight ;
end;



procedure TKf.KNO3_NO3Change(Sender: TObject);
begin
  if ( KNO3_NO3.Focused = True )    then begin
      KNO3_K.value:=(KNO3_NO3.value*mK)/FloatSpinEdit2;
      SoilName;
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

procedure TKf.lb1Click(Sender: TObject);
var
    vrN,vrNO3,vrNH4,vrP,vrK,vrCa,vrMg,vrS:double;
    vrFe,vrMn,vrB,vrZn,vrCu,vrMo,vrCo,vrSi:double;

begin
   MyFormatSettings.DecimalSeparator := '.';
   getVar;
if (lb1.Count > 0 ) then
 begin;
  i:=lb1.ItemIndex;
  str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              begin

              //StrDate:=ExtractWord(2,str,[';','=']);
              //StrCmnt:=ExtractWord(2,str,[';']);
              //Kf.lb1.Items.Add(StrDate + ' ' + StrCmnt);
              de1.Text:=ExtractWord(2,str,[';','=']);
              m1.Text:=ExtractWord(2,str,[';']);
              pr2.Caption:=ExtractWord(3,str,[';']);
              end;
  end;
    str:=pr2.Caption;
    vrN:=StrToFloat(ExtractWord(2,str,['=',' ']),MyFormatSettings);
    vrNO3:=StrToFloat(ExtractWord(4,str,['=',' ']),MyFormatSettings);
    vrNH4:=StrToFloat(ExtractWord(6,str,['=',' ']),MyFormatSettings);
    vrP:=StrToFloat(ExtractWord(8,str,['=',' ']),MyFormatSettings);
    vrK:=StrToFloat(ExtractWord(10,str,['=',' ']),MyFormatSettings);
    vrCa:=StrToFloat(ExtractWord(12,str,['=',' ']),MyFormatSettings);
    vrMg:=StrToFloat(ExtractWord(14,str,['=',' ']),MyFormatSettings);
    vrS:=StrToFloat(ExtractWord(16,str,['=',' ']),MyFormatSettings);

    vrFe:=StrToFloat(ExtractWord(18,str,['=',' ']),MyFormatSettings);
    vrMn:=StrToFloat(ExtractWord(20,str,['=',' ']),MyFormatSettings);
    vrB:=StrToFloat(ExtractWord(22,str,['=',' ']),MyFormatSettings);
    vrZn:=StrToFloat(ExtractWord(24,str,['=',' ']),MyFormatSettings);
    vrCu:=StrToFloat(ExtractWord(26,str,['=',' ']),MyFormatSettings);
    vrMo:=StrToFloat(ExtractWord(28,str,['=',' ']),MyFormatSettings);
    vrCo:=StrToFloat(ExtractWord(30,str,['=',' ']),MyFormatSettings);
    vrSi:=StrToFloat(ExtractWord(32,str,['=',' ']),MyFormatSettings);

    rN.Caption:='N:('+FloatToStr(round((vN-vrN)/vrN*100))+'%)';
    rNO3.Caption:='NO3:('+FloatToStr(round((vNO3-vrNO3)/vrNO3*100))+'%)';
    rNH4.Caption:='NH4:('+FloatToStr(round((vNH4-vrNH4)/vrNH4*100))+'%)';
    rP.Caption:='P:('+FloatToStr(round((vP-vrP)/vrP*100))+'%)';
    rK.Caption:='K:('+FloatToStr(round((vK-vrK)/vrK*100))+'%)';
    rCa.Caption:='Ca:('+FloatToStr(round((vCa-vrCa)/vrCa*100))+'%)';
    rMg.Caption:='Mg:('+FloatToStr(round((vMg-vrMg)/vrMg*100))+'%)';
    rS.Caption:='S:('+FloatToStr(round((vS-vrS)/vrS*100))+'%)';

    if(vrFe >0) then rFe.Caption:='Fe:('+FloatToStr(round((vFe/1000-vrFe)/vrFe*100))+'%)' else rFe.Caption:='Fe: -';
    if(vrMn >0) then rMn.Caption:='Mn:('+FloatToStr(round((vMn/1000-vrMn)/vrMn*100))+'%)' else rMn.Caption:='Mn: -';
    if(vrB >0) then rB.Caption:='B:('+FloatToStr(round((vB/1000-vrB)/vrB*100))+'%)' else rB.Caption:='B: -';
    if(vrZn >0) then rZn.Caption:='Zn:('+FloatToStr(round((vZn/1000-vrZn)/vrZn*100))+'%)' else rZn.Caption:='Zn: -';
    if(vrCu >0) then rCu.Caption:='Cu:('+FloatToStr(round((vCu/1000-vrCu)/vrCu*100))+'%)' else rCu.Caption:='C: -';
    if(vrMo >0) then rMo.Caption:='Mo:('+FloatToStr(round((vMo/1000-vrMo)/vrMo*100))+'%)' else rMo.Caption:='Mo: -';
    if(vrCo >0) then rCo.Caption:='Co:('+FloatToStr(round((vCo/1000-vrCo)/vrCo*100))+'%)' else rCo.Caption:='Co: -';
    if(vrSi >0) then rSi.Caption:='Si:('+FloatToStr(round((vSi/1000-vrSi)/vrSi*100))+'%)' else rSi.Caption:='Si: -';
end;

procedure TKf.mCaNO3Change(Sender: TObject);
begin

end;

procedure TKf.TabSheet4Show(Sender: TObject);
begin

end;

procedure TKf.TabSheet5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TKf.tAmlChange(Sender: TObject);
begin
    CalcWeight ;
  microToWeght;
  CalcConc;
end;

procedure TKf.tBmlChange(Sender: TObject);
begin
    CalcWeight ;
  microToWeght;
  CalcConc;
end;



procedure TKf.Button1Click(Sender: TObject);
begin
   CalcAll;
   CalcWeight ;
   microToWeght;
   CalcConc;
   SoilName;
end;

procedure TKf.Button2Click(Sender: TObject);
var
    mixlink:string;
begin
  mixlink:='http://' + addrMixer.text + '/?';

    if (mCaNO3.Text <> '') then mixlink:=mixlink + mCaNO3.Text + '=' + g2gCaNO3.Text + '&';
  if (mKNO3.Text <> '') then mixlink:=mixlink + mKNO3.Text + '=' + g2gKNO3.Text + '&';
  if (mNH4NO3.Text <> '') then mixlink:=mixlink + mNH4NO3.Text + '=' + g2gNH4NO3.Text + '&';
  if (mMgNO3.Text <> '') then mixlink:=mixlink + mMgNO3.Text + '=' + g2gMgNO3.Text + '&';

  if (mMgSO4.Text <> '') then mixlink:=mixlink + mMgSO4.Text + '=' + g2gMgSO4.Text + '&';
  if (mKH2PO4.Text <> '') then mixlink:=mixlink + mKH2PO4.Text + '=' + g2gKH2PO4.Text + '&';
  if (mK2SO4.Text <> '') then mixlink:=mixlink + mK2SO4.Text + '=' + g2gK2SO4.Text + '&';



if (kF.chKComplex.Checked = True) then
begin
  if (mCmplx.Text <> '') then mixlink:=mixlink + mCmplx.Text + '=' + g2gCmplx.Text + '&';
end
else
begin
 if (mFe.Text <> '') then mixlink:=mixlink + mFe.Text + '=' + g2gFe.Text + '&';
 if (mMn.Text <> '') then mixlink:=mixlink + mMn.Text + '=' + g2gMn.Text + '&';
 if (mB.Text <> '')  then mixlink:=mixlink + mB.Text + '=' +  g2gB.Text +  '&';
 if (mZn.Text <> '') then mixlink:=mixlink + mZn.Text + '=' + g2gZn.Text + '&';
 if (mCu.Text <> '') then mixlink:=mixlink + mCu.Text + '=' + g2gCu.Text + '&';
 if (mMo.Text <> '') then mixlink:=mixlink + mMo.Text + '=' + g2gMo.Text + '&';
 if (mCo.Text <> '') then mixlink:=mixlink + mCo.Text + '=' + g2gCo.Text + '&';
 if (mSi.Text <> '') then mixlink:=mixlink + mSi.Text + '=' + g2gSi.Text + '&';

end;


  delete(mixlink, length(mixlink)-0, 1);
  //lMixlink.Caption:=mixlink;
  OpenURL(mixlink);
end;

procedure TKf.Button3Click(Sender: TObject);
begin
         if od1.Execute then begin;
            C_FNAME:= od1.FileName;
            LoadFirt;
            loadPrf;
            loadComment;
            loadJournal;
         end;
end;

procedure TKf.Button4Click(Sender: TObject);

begin
           if od1.Execute then begin;
             N_FNAME:= C_FNAME;
            C_FNAME:= od1.FileName;
            LoadFirt;
            //loadPrf;
            C_FNAME:=N_FNAME;
            Kf.eFileName.Caption:=C_FNAME;
         end;
end;

procedure TKf.Button5Click(Sender: TObject);
begin
             if od1.Execute then begin;
             N_FNAME:= C_FNAME;
            C_FNAME:= od1.FileName;
            //LoadFirt;
            loadPrf;
            //C_FNAME:=N_FNAME;
         end;
end;

procedure TKf.Button6Click(Sender: TObject);
begin
           if sd1.Execute then begin;
            C_FNAME:= sd1.FileName;
            //LoadFirt;
            //loadPrf;
         end;
           SaveFile;
end;

procedure TKf.Button7Click(Sender: TObject);
begin
  profile.Caption:=pr2.Caption;
  LoadProfile;
end;

procedure TKf.Button8Click(Sender: TObject);
begin
     str:='date='+de1.Text+';'+m1.Text+';'+pr2.Caption;
   if not Assigned(DStr)then DStr := TStringList.Create;
   DStr[i]:=(StringReplace(str, #10, ' ', [rfReplaceAll, rfIgnoreCase]));
   DStr.Sort;
   //Dstr.
   lb1.Clear;
   for i := 0 to DStr.Count-1 do
          begin
              str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              begin

              StrDate:=ExtractWord(2,str,[';','=']);
              StrCmnt:=ExtractWord(2,str,[';']);
              Kf.lb1.Items.Add(StrDate + ' ' + StrCmnt);

              end;
          end;
end;

procedure TKf.bloadClick(Sender: TObject);
  //var
    //tfIn: TextFile;
    //str: string;
begin
  LoadFirt;
end;

procedure TKf.bloadpfClick(Sender: TObject);

begin
 loadPrf;
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
   // nCaNO3.Caption:='Селитра кальциевая'
   //+ ' CaO-' +floattostr(Round((CaNO3_Ca.value/0.714691)*10)/10)+'%'
   //+ ' N-' +floattostr(Round((CaNO3_NH4.value+CaNO3_NO3.value)*10)/10)+'%';
    SoilName;
    CalcWeight ;

  end;
end;



procedure TKf.CaNO3_NH4Change(Sender: TObject);
begin
  if ( CaNO3_NH4.Focused = True )    then begin
      CaNO3_NO3.value:= (2 * CaNO3_Ca.value *FloatSpinEdit2 + CaNO3_NH4.value*mCa)/mCa  ;
  CaNO3_Ca.value:= -mCa*( CaNO3_NH4.value - CaNO3_NO3.value)/(2*FloatSpinEdit2)  ;

  SoilName;
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
    SoilName;
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

      S.value:= Ca.value/CaS.value;
      CalculateCa;
      CalcAll;


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

procedure TKf.chkComplexChange(Sender: TObject);
begin
  microToWeght;

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

procedure TKf.dateAddClick(Sender: TObject);
begin

   if (m1.Text <> '' ) then begin

   if (de1.text = '' ) then de1.Text:=DateToStr(now);
   str:='date='+de1.Text+';'+m1.Text+';'+profile.Caption;
   if not Assigned(DStr)then DStr := TStringList.Create;
   DStr.Add(StringReplace(str, #10, ' ', [rfReplaceAll, rfIgnoreCase]));
   DStr.Sort;
   lb1.Clear;

   for i := 0 to DStr.Count-1 do
          begin
              str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              begin

              StrDate:=ExtractWord(2,str,[';','=']);
              StrCmnt:=ExtractWord(2,str,[';']);
              Kf.lb1.Items.Add(StrDate + ' ' + StrCmnt);

              end;
          end;
    end
   else  ShowMessage('Не заполнено поле описание!');




end;

procedure TKf.dateChangeClick(Sender: TObject);
begin
  DStr.Delete(i);
    lb1.Clear;
   for i := 0 to DStr.Count-1 do
          begin
              str:= DStr[i];
              if (IsWordPresent('date', str, ['=']) = true) then
              begin

              StrDate:=ExtractWord(2,str,[';','=']);
              StrCmnt:=ExtractWord(2,str,[';']);
              Kf.lb1.Items.Add(StrDate + ' ' + StrCmnt);

              end;
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

procedure TKf.e1Change(Sender: TObject);
begin

end;

procedure TKf.eFileNameChange(Sender: TObject);
begin
  C_FNAME:=eFileName.Caption;
end;



procedure TKf.FeChange(Sender: TObject);
begin
  if ( Fe.Focused = True )    then begin

  microToWeght;

  end;
end;

procedure TKf.FormActivate(Sender: TObject);
begin

  if ( ParamStr(1)<>'' ) then
  begin
  //ShowMessage(ParamStr(1));
    C_FNAME:=ParamStr(1);
    eFileName.Caption:=C_FNAME;
    loadPrf;
    LoadFirt;
    loadComment;
    loadJournal;

  end

  else
  begin
    C_FNAME:='default.hpg';
    eFileName.Caption:=C_FNAME;

    if FileExists(C_FNAME) then
    begin
            LoadFirt;
            loadPrf;
            loadComment;
            loadJournal;
    end;

  end;
         CalcAll;
   CalcWeight ;
   microToWeght;
   CalcConc;
   SoilName;
   genProfile;

  //de1.text:=DateToStr(now);
  //pr2.Caption:=profile.Caption;
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
 SaveFile;
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

procedure TKf.TabSheet3Show(Sender: TObject);
begin
    CalcWeight ;
    microToWeght;
  CalcConc;
end;




procedure TKf.VChange(Sender: TObject);
begin
  CalcWeight ;
  microToWeght;
  CalcConc;
  //WeghtTomicro
  //VtoMicrot;
   //microToWeght;



end;

procedure TKf.ZnChange(Sender: TObject);
begin
   if ( Zn.Focused = True )    then begin
  microToWeght;

   end;
end;





end.

