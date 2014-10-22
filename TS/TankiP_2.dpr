program TankiP_2;

uses
  Vcl.Forms,
  Tanki in 'Tanki.pas' {Glavnaya_Forma},
  Unit1 in 'Unit1.pas' {Dobavit_tank},
  Unit2 in 'Unit2.pas' {Redaktirovat_tank},
  Unit3 in 'Unit3.pas' {Modul_upravleniya: TDataModule},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGlavnaya_Forma, Glavnaya_Forma);
  Application.CreateForm(TDobavit_tanc, Dobavit_tanc);
  Application.CreateForm(TRedaktirovat_tanc, Redaktirovat_tanc);
  Application.CreateForm(TModul_upravleniya, Modul_upravleniya);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
