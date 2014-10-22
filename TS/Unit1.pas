unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DBXMySQL, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, Vcl.DBCtrls,
  SimpleDS, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.DApt, FireDAC.VCLUI.Login, FireDAC.Comp.UI, Unit3;

type
  TDobavit_tank = class(TForm)
    Nazvanie: TEdit;
    Skorost: TEdit;
    Kalibr: TEdit;
    Ves: TEdit;
    Klas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Save: TButton;
    procedure SaveClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
Dobavit_tanc: TDobavit_tank;

implementation

{$R *.dfm}


procedure TDobavit_tank.SaveClick(Sender: TObject);
begin
Modul_upravleniya.FDQuery1.Close;
Modul_upravleniya.FDQuery1.SQL.Add ('INSERT INTO sssr (NAZVANIE, KLAS, VES, KALIBR, SKOROST) VALUES (:NAZVANIE, :KLAS, :VES, :KALIBR, :SKOROST)');
Modul_upravleniya.FDQuery1.ParamByName('nazvanie').AsString:=Nazvanie.Text;
Modul_upravleniya.FDQuery1.ParamByName('skorost').AsString:=Skorost.Text;
Modul_upravleniya.FDQuery1.ParamByName('kalibr').AsString:=Kalibr.Text;
Modul_upravleniya.FDQuery1.ParamByName('ves').AsString:=Ves.Text;
Modul_upravleniya.FDQuery1.ParamByName('Klas').AsString:=Klas.Text;
Modul_upravleniya.FDQuery1.ExecSQL;
Modul_upravleniya.FDTable1.Refresh;
Nazvanie.Clear;
Skorost.Clear;
Kalibr.Clear;
Ves.Clear;
Klas.Clear;
Modul_upravleniya.FDTable1.Refresh;
end;

end.
