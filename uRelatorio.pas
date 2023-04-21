unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, RLReport, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmRelatorio = class(TForm)
		{$Region 'Componentes do Formulário'}
    rptAbastecimento: TRLReport;
    bndCabecalho: TRLBand;
    qryRel_Abastecimento: TFDQuery;
    dtsrcRel_Abastecimento: TDataSource;
    lblTitulo: TRLLabel;
    bndAbastecimento_Cabecalho: TRLBand;
    bnddtlAbastecimento: TRLSubDetail;
    bnddtlAbastecimento_Detalhe: TRLBand;
    bnddtlAbastecimento_Rodape: TRLBand;
    qryRel_Datas: TFDQuery;
    dtsrcRel_Data: TDataSource;
    lblData: TRLLabel;
    dbtxtData: TRLDBText;
    dbtxtTanque: TRLDBText;
    bnddtlAbastecimento_Cabecalho: TRLBand;
    lblTanque: TRLLabel;
    lblValorTotalDia: TRLLabel;
    qryRel_DatasDATA: TSQLTimeStampField;
    qryRel_AbastecimentoNOMETANQUE: TWideStringField;
    qryRel_AbastecimentoNOMEBOMBA: TWideStringField;
    qryRel_AbastecimentoVALOR: TBCDField;
    drawLinhaSeparadora: TRLDraw;
    resultValor: TRLDBResult;
    lblBomba: TRLLabel;
    lblValor: TRLLabel;
    dbtxtBomba: TRLDBText;
    dbtxtValor: TRLDBText;
		{$EndRegion}
  end;

var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}

uses uPrincipal;

end.
