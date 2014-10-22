unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TRedaktirovat_tank = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Nazvanie: TEdit;
    Skorost: TEdit;
    Kalibr: TEdit;
    Ves: TEdit;
    Klas: TEdit;
    Save: TButton;
    Label6: TLabel;
    Label7: TLabel;
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Redaktirovat_tanc: TRedaktirovat_tank;

implementation

{$R *.dfm}
 uses Unit1, Unit3;

procedure TRedaktirovat_tank.SaveClick(Sender: TObject);
begin
Modul_upravleniya.FDQuery0.SQL.Clear;
Modul_upravleniya.FDQuery0.SQL.Add ('UPDATE SSSR SET nazvanie=:nazvanie, klas=:klas, ves=:ves, kalibr=:kalibr, skorost=:skorost WHERE id=:id');
Modul_upravleniya.FDQuery0.ParamByName('nazvanie').AsString:=nazvanie.Text;
Modul_upravleniya.FDQuery0.ParamByName('klas').AsString:=klas.Text;
Modul_upravleniya.FDQuery0.ParamByName('ves').AsString:=ves.Text;
Modul_upravleniya.FDQuery0.ParamByName('kalibr').AsString:=kalibr.Text;
Modul_upravleniya.FDQuery0.ParamByName('skorost').AsString:=skorost.Text;
Modul_upravleniya.FDQuery0.ParamByName('id').AsString:=Label6.Caption;
Modul_upravleniya.FDQuery0.ExecSQL;
Modul_upravleniya.FDTable1.Refresh;
end;

end.
