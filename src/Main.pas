unit Main;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppEvnts;
type
  TfMain = class(TForm)
    btDatasetLoop: TButton;
    btThreads: TButton;
    btStreams: TButton;
    ApplicationEvents1: TApplicationEvents;
    procedure btDatasetLoopClick(Sender: TObject);
    procedure btStreamsClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure btThreadsClick(Sender: TObject);
  private
  public
  end;
var
  fMain: TfMain;
implementation
uses
  DatasetLoop, ClienteServidor, Threads;
{$R *.dfm}
procedure TfMain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  fileLogs: string;
  stLogs: TStringList;
begin
  fileLogs := ExtractFilePath(Application.ExeName) + 'logs.txt';
  stLogs := TStringList.Create;
  if FileExists(fileLogs) then
    stLogs.LoadFromFile(fileLogs);

  stLogs.Add(FormatDateTime('dd-mm-yyyy hh:nn:ss', now) + ' - Classe: ' + Sender.ClassName + ' - Message: ' + E.Message);
  stLogs.SaveToFile(fileLogs);

  ShowMessage(E.Message);
end;

procedure TfMain.btDatasetLoopClick(Sender: TObject);
begin
  fDatasetLoop.Show;
end;

procedure TfMain.btStreamsClick(Sender: TObject);
begin
  fClienteServidor.Show;
end;

procedure TfMain.btThreadsClick(Sender: TObject);
begin
  fThreads.Show;
end;

end.
