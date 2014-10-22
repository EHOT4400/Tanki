unit Tanki;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TGlavnaya_Forma = class(TForm)
    Tanki_SSSR: TLabel;
    Udalit_tank: TSpeedButton;
    Tablica: TDBGrid;
    Dobavit_tank: TSpeedButton;
    Redaktirovat_tank: TSpeedButton;
    procedure Udalit_tankClick(Sender: TObject);
    procedure Dobavit_tankClick(Sender: TObject);
    procedure Redaktirovat_tankClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Glavnaya_Forma: TGlavnaya_Forma;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3;

procedure TGlavnaya_Forma.Udalit_tankClick(Sender: TObject);
begin
Modul_upravleniya.del_button.SQL.Clear;
Modul_upravleniya.del_button.SQL.Add ('DELETE FROM sssr  WHERE id=:id');
Modul_upravleniya.del_button.ParamByName('id').AsString:=Tablica.Fields[0].AsString;
Modul_upravleniya.del_button.ExecSQL;
Modul_upravleniya.FDTable1.Refresh;
end;

procedure TGlavnaya_Forma.Dobavit_tankClick(Sender: TObject);
begin
Dobavit_tanc.show;
end;

procedure TGlavnaya_Forma.Redaktirovat_tankClick(Sender: TObject);
begin
Redaktirovat_tanc.show;
Redaktirovat_tanc.Label6.Caption:=Tablica.Fields[0].AsString;
Redaktirovat_tanc.nazvanie.Text:=Tablica.Fields[1].AsString;
Redaktirovat_tanc.klas.Text:=Tablica.Fields[2].AsString;
Redaktirovat_tanc.ves.Text:=Tablica.Fields[3].AsString;
Redaktirovat_tanc.kalibr.Text:=Tablica.Fields[4].AsString;
Redaktirovat_tanc.skorost.Text:=Tablica.Fields[5].AsString;
end;

end.
