unit Unit3;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, FireDAC.Comp.UI, FireDAC.VCLUI.Wait;

type
  TModul_upravleniya = class(TDataModule)
    FDQuery0: TFDQuery;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    del_button: TFDQuery;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Modul_upravleniya: TModul_upravleniya;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
