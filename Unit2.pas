unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Conexao: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    Label1: TLabel;
    tbContatos: TFDTable;
    dsContatos: TDataSource;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    tbContatosid: TIntegerField;
    tbContatosnome: TWideStringField;
    tbContatoscelular: TWideStringField;
    tbContatosbloqueado: TBooleanField;
    tbContatosdata: TDateField;
    tbContatosobservacoes: TWideMemoField;
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label6: TLabel;
    procedure txtBuscaChange(Sender: TObject);
    procedure tbContatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.tbContatosAfterInsert(DataSet: TDataSet);
begin
 Form2.tbContatosData.value := Now();
end;

procedure TForm2.txtBuscaChange(Sender: TObject);
begin
 Form2.tbContatos.Locate('nome',txtBusca.Text,[loPartialKey]);
end;

end.
