unit uPrincipal;

interface

uses
  // Delphi
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask,

  // FireDac
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBBase, FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
		{$Region 'Componentes do Formulário'}
    btnSair: TButton;
    fdconnectPrincipal: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    dbgrdAbastecimento: TDBGrid;
    dtsrcBombaL: TDataSource;
    lblCdAbastecimento: TLabel;
    lblData: TLabel;
    lblBomba: TLabel;
    lblQtdLitros: TLabel;
    dbedtQtdLitros: TDBEdit;
    lblValorTotal: TLabel;
    dbedtValorTotal: TDBEdit;
    lblValorImposto: TLabel;
    dblkcmbbxBomba: TDBLookupComboBox;
    dbtxtCdAbastecimento: TDBText;
    lblRelacaoAbastecimento: TLabel;
    dbtxtValorImposto: TDBText;
    btnNovoAbastecimento: TButton;
    updtsqlAbastecimento: TFDUpdateSQL;
    dtsrcAbastecimento: TDataSource;
    qryAbastecimento: TFDQuery;
    qryBombaL: TFDQuery;
    btnGravar: TButton;
    btnCancelar: TButton;
    spdbtnRelatorio: TSpeedButton;
    qryAbastecimentoCDABASTECIMENTO: TSmallintField;
    qryAbastecimentoDATA: TSQLTimeStampField;
    qryAbastecimentoCDBOMBA: TSmallintField;
    qryAbastecimentoQTDLITROS: TFMTBCDField;
    qryAbastecimentoVALOR: TBCDField;
    qryAbastecimentoVALORIMPOSTO: TBCDField;
    dbedtData: TDBEdit;
    qryAbastecimentoNOMEBOMBA: TWideStringField;
		{$EndRegion}
    procedure FormCreate(Sender:TObject);
    procedure btnNovoAbastecimentoClick(Sender:TObject);
    procedure btnGravarClick(Sender:TObject);
    procedure btnCancelarClick(Sender:TObject);
    procedure spdbtnRelatorioClick(Sender:TObject);
    procedure btnSairClick(Sender:TObject);
  private
    procedure Editar(pEditar:Boolean);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uRelatorio;

//********************************
procedure TfrmPrincipal.FormCreate(Sender:TObject);
begin
  Editar(False);

  // Abertura de Query´s
  qryAbastecimento.Open;
  qryBombaL.Open;
end;

//***********************************************
procedure TfrmPrincipal.btnNovoAbastecimentoClick(Sender:TObject);
begin
  with qryAbastecimento do
  begin
    Append;
    FieldByName('Data').AsDateTime:= Date;
  end;

  Editar(True);
  dbedtData.SetFocus;
end;

//************************************
procedure TfrmPrincipal.btnGravarClick(Sender:TObject);
begin
  {$Region 'Validações'}
  // Data Inválida
  if qryAbastecimentoDATA.AsDateTime = 00 then
  begin
    ShowMessage('Informe uma data Válida!');
    dbedtData.SetFocus;
    Exit;
  end;

  // Bomba
  if qryAbastecimentoCDBOMBA.IsNull then
  begin
    ShowMessage('Informe a Bomba!');
    dblkcmbbxBomba.SetFocus;
    Exit;
  end;

  // Qtd Litros
  if qryAbastecimentoQTDLITROS.Value <= 00 then
  begin
    ShowMessage('Informe uma Quantidade de Litros Válida!');
    dbedtQtdLitros.SetFocus;
    Exit;
  end;

  // Valor total
  if qryAbastecimentoVALOR.AsCurrency <= 00 then
  begin
    ShowMessage('Informe uma Valor Total Válido!');
    dbedtValorTotal.SetFocus;
    Exit;
  end;
  {$EndRegion}

  with qryAbastecimento do
  begin
    FieldByName('ValorImposto').AsCurrency:= FieldByName('Valor').AsCurrency * (13 / 100);
    Post;
  end;

  Editar(False);
  qryAbastecimento.Refresh;
end;

//**************************************
procedure TfrmPrincipal.btnCancelarClick(Sender:TObject);
begin
  qryAbastecimento.Cancel;
  Editar(False);
end;

//******************************************
procedure TfrmPrincipal.spdbtnRelatorioClick(Sender:TObject);
begin
  with frmRelatorio, rptAbastecimento do
  begin
    qryRel_Datas.Close;
    qryRel_Datas.Open;

    qryRel_Abastecimento.Close;
    qryRel_Abastecimento.Open;

    PreviewModal;
  end;
end;

//**********************************
procedure TfrmPrincipal.btnSairClick(Sender:TObject);
begin
  if MessageDlg('Deseja sair da aplicação?', mtConfirmation, mbYesNo, 0) = mrYes then
    Close
  ;
end;

//****************************
procedure TfrmPrincipal.Editar(pEditar:Boolean);
begin
  dbtxtCdAbastecimento.Enabled:= pEditar;
  dbedtData.Enabled           := pEditar;
  dblkcmbbxBomba.Enabled      := pEditar;
  dbedtQtdLitros.Enabled      := pEditar;
  dbedtValorTotal.Enabled     := pEditar;
  dbtxtValorImposto.Enabled   := pEditar;

  btnNovoAbastecimento.Enabled:= (not pEditar);
  btnGravar.Visible           := pEditar;
  btnCancelar.Visible         := pEditar;
end;

end.
