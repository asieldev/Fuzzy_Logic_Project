
  program SensorData;

uses
  Vcl.Forms,
  UVis in 'UVis.pas' {Form8},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
