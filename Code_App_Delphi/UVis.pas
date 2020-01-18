unit UVis;

// Steema Software SL
// https://www.steema.com
//
// Example project. Retrieve data from Arduino.
//
// Arduino code:
// ===============================================
// void setup() {
//   Serial.begin(9600); //Start the Serial connection
// }
// void loop() {
//   if (Serial.available())
//   {
//     char startB = Serial.read(); //read input via serial port
//     if (startB == 'g') //wait for call for data from Delphi app
//     {
//       double sensorValue = analogRead(A0);
//       float piezoV = sensorValue / 1023.0 * 5.0; //contextualise data
//       Serial.println(piezoV); //return data to Delphi app
//     }
//   }
// }


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  Vcl.ExtCtrls, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  OoMisc, AdPort, VCLTee.Series ;

type
  TForm8 = class(TForm)
    ApdComPort1: TApdComPort;
    Button1: TButton;
    Button2: TButton;
    panel1: TPanel;
    Timer1: TTimer;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Edit1: TEdit;

    procedure Button1Click(Sender: TObject);
    procedure ApdComPort1TriggerAvail(CP: TObject; Count: Word);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AddLastChartVal;
    procedure CheckAxes;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FStatusTrigger  : Word;
    PendingStr : String;
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  ttTimeout : Word;
  time_s : Real;

implementation

{$R *.dfm}

procedure TForm8.AddLastChartVal;
Var
 i : Integer;
 val, ref : Double;
 InStr : String;
begin
  if Length(PendingStr)>0 then
  Begin
    for i:= 0 to 5 do              //Length(PendingStr)
    Begin
      // cleanup the input to candidate as numeric
      if ((PendingStr[i] >= '0') and (PendingStr[i] <= '9')) or ((PendingStr[i] = '.') and (InStr.CountChar('.')=0)) then
        if PendingStr[i] = '.' then
        InStr := InStr + ','
        else
          InStr := InStr + PendingStr[i];
    End;
    val := StrToFloat(InStr);
    // add data to chart with timestamp
    ref:=175;
    label2.Caption:= 'REF: '+ FloatToStr(ref);
    time_s:= time_s+0.2;
    Series1.AddXY(time_s,val);
    Series2.AddXY(time_s,ref);
    CheckAxes;
    // clear data string to start again
    PendingStr := '';

    Label1.Caption:= InStr;
  End;
end;

procedure TForm8.ApdComPort1TriggerAvail(CP: TObject; Count: Word);
var
  I : Word;
  C : AnsiChar;
  S : String;
  Val : Double;
begin

  S := '';
  for I := 1 to Count do begin
    C := ApdComPort1.GetChar;
    case C of
      #0..#31 : {Don't process} ;
      else S := S + C;
    end;
  end;
  PendingStr := PendingStr + S;

end;

procedure TForm8.Button1Click(Sender: TObject);
Var
  Val : String;

begin
  ApdComPort1.PutChar(chr(200));
  Timer1.Enabled:=True;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  timer1.Enabled := False;
end;

procedure TForm8.Button3Click(Sender: TObject);
  begin

    ApdComPort1.ComNumber := StrToInt(Edit1.Text);
  //connect up the data-in event
  if (FStatusTrigger = 0) then
  begin
        FStatusTrigger := ApdComPort1.AddStatusTrigger(stLine);
        ApdComPort1.SetStatusTrigger(FStatusTrigger,
                                     lsOverrun or lsParity or lsFraming or lsBreak,
                                     True);
  end;

end;

Procedure TForm8.CheckAxes;
begin
  //if Series1.LastDisplayedIndex-Series1.FirstDisplayedIndex  > 40 then
    //Chart1.Axes.Bottom.SetMinMax(Series1.XValues[Series1.LastDisplayedIndex-40],
      //                           Series1.XValues[Series1.LastDisplayedIndex+1]);
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  time_s:=0;  // setup port (already set to 9,600 baud rate)



end;

procedure TForm8.Timer1Timer(Sender: TObject);
begin
  AddLastChartVal();
  //this is the call for a new data reading
  ApdComPort1.PutChar(chr(200));
end;

end.
