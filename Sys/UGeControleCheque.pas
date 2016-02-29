unit UGeControleCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UGrPadraoCadastro, ImgList, IBCustomDataSet, IBUpdateSQL, DB,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls,
  ToolWin, IBTable, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, JvToolEdit, JvExMask,
  JvDBControls, dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, Datasnap.DBClient,
  Datasnap.Provider, IBX.IBQuery, ACBrBase, ACBrExtenso, frxClass, frxDBSet;

type
  TfrmGeControleCheque = class(TfrmGrPadraoCadastro)
    Bevel5: TBevel;
    GrpBxDadosValores: TGroupBox;
    lblNumero: TLabel;
    dbNumero: TDBEdit;
    dbStatus: TDBEdit;
    lblValor: TLabel;
    dbValor: TDBEdit;
    tblEmpresa: TIBTable;
    dtsEmpresa: TDataSource;
    lblBanco: TLabel;
    dbBanco: TDBLookupComboBox;
    pgcMaisDados: TPageControl;
    tbsObservacao: TTabSheet;
    dbObservacao: TDBMemo;
    lblStatus: TLabel;
    bvlBaixas: TBevel;
    dbgBaixas: TDBGrid;
    Bevel7: TBevel;
    cdsBaixas: TIBDataSet;
    dtsBaixas: TDataSource;
    cdsBaixasANOLANC: TSmallintField;
    cdsBaixasNUMLANC: TIntegerField;
    cdsBaixasSEQ: TSmallintField;
    cdsBaixasHISTORICO: TMemoField;
    cdsBaixasDATA_PAGTO: TDateField;
    cdsBaixasFORMA_PAGTO: TSmallintField;
    cdsBaixasFORMA_PAGTO_DESC: TIBStringField;
    cdsBaixasVALOR_BAIXA: TIBBCDField;
    cdsBaixasNUMERO_CHEQUE: TIBStringField;
    cdsBaixasBANCO: TSmallintField;
    cdsBaixasDOCUMENTO_BAIXA: TIBStringField;
    lblAgencia: TLabel;
    dbAgencia: TDBEdit;
    lblEmissorCnpj: TLabel;
    dbEmissorCnpj: TDBEdit;
    tblBanco: TIBTable;
    dtsBanco: TDataSource;
    lblData: TLabel;
    btbtnEfetuarPagto: TcxButton;
    e1Data: TJvDateEdit;
    e2Data: TJvDateEdit;
    lblChequePendente: TLabel;
    lblChequeCompensar: TLabel;
    FrReciboA5: TfrxReport;
    FrdRecibo: TfrxDBDataset;
    ACBrExtenso: TACBrExtenso;
    QryRecibo: TIBQuery;
    DspRecibo: TDataSetProvider;
    CdsRecibo: TClientDataSet;
    CdsReciboVALOR_BAIXA_EXTENSO: TStringField;
    popImprimir: TPopupMenu;
    popGerarReciboA4: TMenuItem;
    CdsReciboANOLANC: TSmallintField;
    CdsReciboNUMLANC: TIntegerField;
    CdsReciboPARCELA: TSmallintField;
    CdsReciboCLIENTE: TIntegerField;
    CdsReciboRZSOC: TWideStringField;
    CdsReciboNOME: TWideStringField;
    CdsReciboPESSOA_FISICA: TSmallintField;
    CdsReciboCNPJ: TWideStringField;
    CdsReciboTIPPAG: TWideStringField;
    CdsReciboDTEMISS: TDateField;
    CdsReciboDTVENC: TDateField;
    CdsReciboDTREC: TDateField;
    CdsReciboVALORREC: TBCDField;
    CdsReciboBANCO: TSmallintField;
    CdsReciboBCO_NOME: TWideStringField;
    CdsReciboNUMERO_CHEQUE: TWideStringField;
    CdsReciboPAGO_: TWideStringField;
    CdsReciboDOCBAIX: TWideStringField;
    CdsReciboBAIXADO: TSmallintField;
    CdsReciboSEQ: TSmallintField;
    CdsReciboDATA_PAGTO: TDateField;
    CdsReciboFORMA_PAGTO: TSmallintField;
    CdsReciboFORMA_PAGTO_DESC: TWideStringField;
    CdsReciboHISTORICO: TWideMemoField;
    CdsReciboVALOR_BAIXA: TBCDField;
    CdsReciboEMPRESA_CNPJ: TWideStringField;
    lblEmissao: TLabel;
    dbEmissao: TJvDBDateEdit;
    lblApresentacao: TLabel;
    dbApresentacao: TJvDBDateEdit;
    qryTipoCheque: TIBQuery;
    dtsTipoCheque: TDataSource;
    cdsBaixasBANCO_FEBRABAN: TIBStringField;
    cdsBaixasBCO_NOME: TIBStringField;
    FrReciboA4: TfrxReport;
    popGerarReciboA5: TMenuItem;
    IbDtstTabelaCONTROLE: TIntegerField;
    IbDtstTabelaEMPRESA: TIBStringField;
    IbDtstTabelaTIPO: TSmallintField;
    IbDtstTabelaBANCO: TIBStringField;
    IbDtstTabelaAGENCIA: TIBStringField;
    IbDtstTabelaCONTA: TIBStringField;
    IbDtstTabelaNUMERO: TIBStringField;
    IbDtstTabelaFORNECEDOR: TIntegerField;
    IbDtstTabelaCLIENTE: TIntegerField;
    IbDtstTabelaDATA_EMISSAO: TDateField;
    IbDtstTabelaDATA_APRESENTACAO: TDateField;
    IbDtstTabelaDATA_COMPENSACAO: TDateField;
    IbDtstTabelaVALOR: TIBBCDField;
    IbDtstTabelaNOMINAL_A: TIBStringField;
    IbDtstTabelaDATA_CADASTRO: TDateField;
    IbDtstTabelaUSUARIO_CADASTRO: TIBStringField;
    IbDtstTabelaSTATUS: TSmallintField;
    IbDtstTabelaSTATUS_DESCRICAO: TIBStringField;
    IbDtstTabelaCLIENTE_NOME: TIBStringField;
    IbDtstTabelaCLIENTE_CNPJ: TIBStringField;
    IbDtstTabelaCLIENTE_TIPO: TSmallintField;
    IbDtstTabelaFORNECEDOR_NOME: TIBStringField;
    IbDtstTabelaFORNECEDOR_CNPJ: TIBStringField;
    IbDtstTabelaFORNECEDOR_TIPO: TSmallintField;
    IbDtstTabelaBANCO_NOME: TIBStringField;
    lblEmpresa: TLabel;
    dbEmpresa: TDBLookupComboBox;
    IbDtstTabelaEMISSOR_NOME: TIBStringField;
    IbDtstTabelaEMISSOR_CNPJ: TIBStringField;
    IbDtstTabelaEMISSOR_TIPO: TSmallintField;
    lblTipo: TLabel;
    dbTipo: TDBLookupComboBox;
    lblEmissorNome: TLabel;
    dbEmissorNome: TJvDBComboEdit;
    lblDataCadastro: TLabel;
    dbDataCadastro: TDBEdit;
    lblCompensacao: TLabel;
    dbCompensacao: TJvDBDateEdit;
    dbConta: TDBEdit;
    lblConta: TLabel;
    lblNominalA: TLabel;
    dbNominalA: TDBEdit;
    IbDtstTabelaOBS: TWideMemoField;
    procedure FormCreate(Sender: TObject);
    procedure dbEmissorNomeButtonClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure IbDtstTabelaNewRecord(DataSet: TDataSet);
    procedure btbtnEfetuarPagtoClick(Sender: TObject);
    procedure btbtnSalvarClick(Sender: TObject);
    procedure pgcGuiasChange(Sender: TObject);
    procedure btbtnAlterarClick(Sender: TObject);
    procedure btbtnExcluirClick(Sender: TObject);
    procedure IbDtstTabelaBAIXADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ControlEditExit(Sender: TObject);
    procedure dbBancoClick(Sender: TObject);
    procedure dbgBaixasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IbDtstTabelaBeforePost(DataSet: TDataSet);
    procedure DtSrcTabelaStateChange(Sender: TObject);
    procedure btbtnCancelarClick(Sender: TObject);
    procedure btbtnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FrReciboGetValue(const VarName: string; var Value: Variant);
    procedure popGerarReciboClick(Sender: TObject);
    procedure btbtnListaClick(Sender: TObject);
    procedure CdsReciboCalcFields(DataSet: TDataSet);
    procedure DtSrcTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    FDataAtual     : TDateTime;
    FLoteParcelas  : String;
    SQL_Pagamentos : TStringList;
    FImprimirCabecalho : Boolean;
    procedure AbrirPagamentos(const Ano : Smallint; const Numero : Integer);
    procedure HabilitarDesabilitar_Btns;
    procedure RecarregarRegistro;
    procedure CarregarTipoReceita(const ApenasAtivos : Boolean);

    function GetRotinaEfetuarPagtoID : String;
    function GetRotinaCancelarPagtosID : String;

    procedure RegistrarNovaRotinaSistema;
  public
    { Public declarations }
    property RotinaEfetuarPagtoID : String read GetRotinaEfetuarPagtoID;
    property RotinaCancelarPagtosID : String read GetRotinaCancelarPagtosID;
    property DataAtual : TDateTime read FDataAtual;
  end;

(*
  Tabelas:
  - TBCHEQUE
  - TBBANCO
  - TBCLIENTE
  - TBFORNECEDOR
  - TBEMPRESA
*)

var
  frmGeControleCheque: TfrmGeControleCheque;

const
  STATUS_ARECEBER_PENDENTE = 0;
  STATUS_ARECEBER_PAGO     = 1;

implementation

uses
  UConstantesDGE, UDMBusiness, UGeCliente, DateUtils;

{$R *.dfm}

procedure TfrmGeControleCheque.FormCreate(Sender: TObject);
begin
//  IbDtstTabela.GeneratorField.Generator := 'GEN_CONTAREC_NUM_' + FormatFloat('0000', YearOf(Date));
//
  inherited;
  CarregarLista(tblEmpresa);
  CarregarLista(qryTipoCheque);
  CarregarLista(tblBanco);
//
//  SQL_Pagamentos := TStringList.Create;
//  SQL_Pagamentos.AddStrings( cdsPagamentos.SelectSQL );
//
//  FDataAtual      := GetDateTimeDB;
//  e1Data.Date     := GetMenorVencimentoAReceber;
//  e2Data.Date     := GetDateLastMonth;
//
//  if (e1Data.Date > GetDateDB) then
//    e1Data.Date   := GetDateDB;
//
//  AbrirTabelaAuto  := True;
//  ControlFirstEdit := dbCliente;
//
//  tblEmpresa.Open;
//  tblFormaPagto.Open;
//  tblCondicaoPagto.Open;
//  tblBanco.Open;
//  tblCompetencia.Open;
//  CarregarTipoReceita(False);
//
//  RotinaID            := ROTINA_FIN_CONTA_ARECEBER_ID;
//  DisplayFormatCodigo := '###0000000';
//
//  NomeTabela     := 'TBCONTREC';
//  CampoCodigo    := 'numlanc';
//  CampoDescricao := 'Nome';
//  CampoOrdenacao := 'r.dtvenc, c.Nome';
//
//  WhereAdditional :=
//    '( (r.empresa = ' + QuotedStr(gUsuarioLogado.Empresa) + ') and (r.Situacao > 0) and (r.Parcela > 0) ) and (' +
//    'cast(r.dtvenc as date) between ' + QuotedStr( FormatDateTime('yyyy-mm-dd', e1Data.Date) ) +
//    ' and ' + QuotedStr( FormatDateTime('yyyy-mm-dd', e2Data.Date) ) + ')';
end;

procedure TfrmGeControleCheque.dbEmissorNomeButtonClick(Sender: TObject);
//var
//  iCodigo : Integer;
//  sCNPJ   ,
//  sNome   : String;
begin
//  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
//    if ( SelecionarCliente(Self, iCodigo, sCNPJ, sNome) ) then
//    begin
//      IbDtstTabelaCLIENTE.AsInteger    := iCodigo;
//      IbDtstTabelaCNPJ.AsString        := sCNPJ;
//      IbDtstTabelaNOMECLIENTE.AsString := sNome;
//    end;
end;

procedure TfrmGeControleCheque.btnFiltrarClick(Sender: TObject);
begin
//  WhereAdditional :=
//    '( (r.empresa = ' + QuotedStr(gUsuarioLogado.Empresa) + ') and (r.Situacao > 0) and (r.Parcela > 0) ) and (' +
//    'cast(r.dtvenc as date) between ' + QuotedStr( FormatDateTime('yyyy-mm-dd', e1Data.Date) ) +
//    ' and ' + QuotedStr( FormatDateTime('yyyy-mm-dd', e2Data.Date) ) + ')';
//
//  if Trim(FLoteParcelas) <> EmptyStr then
//    WhereAdditional := '(' + WhereAdditional + ' and (r.lote = ' + QuotedStr(FLoteParcelas) + '))';
//
  inherited;
end;

procedure TfrmGeControleCheque.IbDtstTabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
//  IbDtstTabelaEMPRESA.AsString := gUsuarioLogado.Empresa;
//  IbDtstTabelaANOLANC.Value    := YearOf(Date);
//  IbDtstTabelaPARCELA.Value    := 1;
//  IbDtstTabelaDTEMISS.Value    := Date;
//  IbDtstTabelaCOMPETENCIA_APURACAO.Value := GetCompetenciaID(Date);
//  IbDtstTabelaFORMA_PAGTO.Value    := GetFormaPagtoIDDefault;
//  IbDtstTabelaTIPPAG.Value         := GetFormaPagtoNomeDefault;
//  IbDtstTabelaHISTORIC.AsString    := '...';
//  IbDtstTabelaVALORRECTOT.Value     := 0;
//  IbDtstTabelaVALORSALDO.Value      := 0;
//  IbDtstTabelaVALORMULTA.Value      := 0;
//  IbDtstTabelaPERCENTJUROS.Value    := 0;
//  IbDtstTabelaPERCENTMULTA.Value    := 0;
//  IbDtstTabelaPERCENTDESCONTO.Value := 0;
//  IbDtstTabelaBAIXADO.Value  := 0;
//  IbDtstTabelaENVIADO.Value  := 0;
//  IbDtstTabelaSITUACAO.Value := 1; // Ativa
//  IbDtstTabelaCODTPREC.Clear;
end;

procedure TfrmGeControleCheque.btbtnEfetuarPagtoClick(Sender: TObject);
//var
//  CxContaCorrente : Integer;
//  DataPagto : TDateTime;
//  cReceber  : Currency;
begin
//  if ( IbDtstTabela.IsEmpty ) then
//    Exit;
//
//  if not GetPermissaoRotinaInterna(Sender, True) then
//    Abort;
//
//  CxContaCorrente := 0;
//
//  RecarregarRegistro;
//
//  if ( not IbDtstTabela.Active ) then
//    Exit;
//
//  if ( IbDtstTabelaBAIXADO.AsInteger = 1 ) then
//  begin
//    ShowWarning('Registro de recebimento selecionado j� se encontra baixado!' + #13 + 'Favor pesquisar novamente.');
//    Abort;
//  end;
//
//  cReceber := IbDtstTabelaVALORSALDO.AsCurrency;
//
//  if PagamentoConfirmado(Self, IbDtstTabelaEMPRESA.AsString,
//    IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger,
//    IbDtstTabelaFORMA_PAGTO.AsInteger, IbDtstTabelaNOMECLIENTE.AsString,
//    CxContaCorrente, DataPagto, cReceber) then
//  begin
//    if ( CxContaCorrente > 0 ) then
//      GerarSaldoContaCorrente(CxContaCorrente, DataPagto);
//
//    RecarregarRegistro;
//    AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
//    DesbloquearCliente(IbDtstTabelaCLIENTE.AsInteger, EmptyStr);
//  end;
end;

procedure TfrmGeControleCheque.HabilitarDesabilitar_Btns;
begin
//  if ( pgcGuias.ActivePage = tbsCadastro ) then
//  begin
//    btbtnEfetuarPagto.Enabled := (IbDtstTabelaBAIXADO.AsInteger = 0) and (not IbDtstTabela.IsEmpty) and (IbDtstTabela.State = dsBrowse);
//    popGerarReciboA4.Enabled  := (not cdsPagamentos.IsEmpty);
//    popGerarReciboA5.Enabled  := (not cdsPagamentos.IsEmpty);
//  end
//  else
//  begin
//    btbtnEfetuarPagto.Enabled := False;
//    popGerarReciboA4.Enabled  := False;
//    popGerarReciboA5.Enabled  := False;
//  end;
end;

procedure TfrmGeControleCheque.btbtnSalvarClick(Sender: TObject);
begin
  inherited;
//  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeControleCheque.pgcGuiasChange(Sender: TObject);
begin
  inherited;
//  AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
end;

procedure TfrmGeControleCheque.popGerarReciboClick(Sender: TObject);
begin
//  if ( IbDtstTabela.IsEmpty ) then
//    Exit;
//
//  with CdsRecibo, Params do
//  begin
//    Close;
//    ParamByName('ano').AsInteger    := cdsPagamentosANOLANC.AsInteger;
//    ParamByName('numero').AsInteger := cdsPagamentosNUMLANC.AsInteger;
//    ParamByName('baixa').AsInteger  := cdsPagamentosSEQ.AsInteger;
//    Open;
//
//    if IsEmpty then
//      Exit;
//  end;
//
//  FImprimirCabecalho := ShowConfirmation('Recibo', 'Deseja imprimir no recibo o Cabe�alho com informa��es da empresa?');
//
//  if ( Sender = popGerarReciboA4 )  then
//    frReport := FrReciboA4
//  else
//  if ( Sender = popGerarReciboA5 )  then
//    frReport := FrReciboA5;
//
//  SetVariablesDefault(frReport);
//
//  frReport.PrepareReport;
//  frReport.ShowReport;
end;

procedure TfrmGeControleCheque.AbrirPagamentos(const Ano: Smallint;
  const Numero: Integer);
begin
//  cdsPagamentos.Close;
//
//  with cdsPagamentos, SelectSQL do
//  begin
//    Clear;
//    AddStrings( SQL_Pagamentos );
//    Add('where p.Anolanc = ' + IntToStr(Ano));
//    Add('  and p.Numlanc = ' + IntToStr(Numero));
//    Add('order by p.seq');
//  end;
//
//  cdsPagamentos.Open;
//
//  HabilitarDesabilitar_Btns;
end;

procedure TfrmGeControleCheque.btbtnAlterarClick(Sender: TObject);
begin
//  if ( IbDtstTabelaBAIXADO.AsInteger = 1 ) then
//  begin
//    ShowWarning('O Lan�amento n�o poder� ser alterado pois este j� est� quitado!');
//    Abort;
//  end
//  else
//  begin
//    inherited;
//    if ( not OcorreuErro ) then
//      AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
//  end;
end;

procedure TfrmGeControleCheque.btbtnExcluirClick(Sender: TObject);
begin
//  if ( IbDtstTabelaBAIXADO.AsInteger = 1 ) then
//  begin
//    ShowWarning('O Lan�amento n�o poder� ser exclu�do pois este j� est� quitado!');
//    Abort;
//  end
//  else
//  begin
//    // Eliminar Movimento do Caixa quando o lan�amento for exclu�do pelo SYSTEM ADM
//
//    if (gUsuarioLogado.Funcao in [FUNCTION_USER_ID_DIRETORIA, FUNCTION_USER_ID_SYSTEM_ADM]) then
//    begin
//
//      with DMBusiness, qryBusca do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('Delete from TBCAIXA_MOVIMENTO');
//        SQL.Add('where ARECEBER_ANO = ' + IbDtstTabelaANOLANC.AsString);
//        SQL.Add('  and ARECEBER_NUM = ' + IbDtstTabelaNUMLANC.AsString);
//        ExecSQL;
//
//        CommitTransaction;
//      end;
//
//    end
//    else
//    begin
//
//      with DMBusiness, qryBusca do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('Update TBCAIXA_MOVIMENTO Set');
//        SQL.Add('    ARECEBER_ANO = null');
//        SQL.Add('  , ARECEBER_NUM = null');
//        SQL.Add('where ARECEBER_ANO = ' + IbDtstTabelaANOLANC.AsString);
//        SQL.Add('  and ARECEBER_NUM = ' + IbDtstTabelaNUMLANC.AsString);
//        ExecSQL;
//
//        CommitTransaction;
//      end;
//
//    end;
//
//    inherited;
//
//    if ( not OcorreuErro ) then
//      AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
//  end;
end;

procedure TfrmGeControleCheque.IbDtstTabelaBAIXADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
//  Case Sender.AsInteger of
//    0 : Text := 'A Receber';
//    1 : Text := 'Baixado';
//    else
//      Text := Sender.AsString;
//  end;
end;

procedure TfrmGeControleCheque.CarregarTipoReceita(const ApenasAtivos: Boolean);
begin
//  with qryTipoReceita, Params do
//  begin
//    Close;
//    ParamByName('ativo').AsInteger := IfThen(ApenasAtivos, 1, 0);
//    ParamByName('todos').AsInteger := IfThen(ApenasAtivos, 0, 1);
//    Open;
//
//    Prior;
//    Last;
//  end;
end;

procedure TfrmGeControleCheque.CdsReciboCalcFields(DataSet: TDataSet);
begin
//  CdsReciboVALOR_BAIXA_EXTENSO.AsString := AnsiUpperCase(ACBrExtenso.ValorToTexto(CdsReciboVALOR_BAIXA.AsCurrency, ACBrExtenso.Formato));
end;

procedure TfrmGeControleCheque.ControlEditExit(Sender: TObject);
begin
  inherited;

//  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
//    if ( (Sender = dbValorAReceber) or (Sender = dbValorMulta) ) then
//      IbDtstTabelaVALORSALDO.Value := IbDtstTabelaVALORREC.AsCurrency + IbDtstTabelaVALORMULTA.AsCurrency - IbDtstTabelaVALORRECTOT.AsCurrency;

end;

procedure TfrmGeControleCheque.dbBancoClick(Sender: TObject);
begin
//  if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
//    if ( tblFormaPagto.Locate('cod', dbFormaPagto.Field.AsInteger, []) ) then
//      IbDtstTabelaTIPPAG.AsString := tblFormaPagto.FieldByName('descri').AsString;
end;

procedure TfrmGeControleCheque.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  if ( Sender = dbgDados ) then
//  begin
//    // Destacar T�tulos A Pagar em aberto
//    if ( not IbDtstTabelaBAIXADO.IsNull ) then
//      if ( IbDtstTabelaBAIXADO.AsInteger = STATUS_ARECEBER_PENDENTE ) then
//        if IbDtstTabelaDTVENC.AsDateTime >= DataAtual then
//          dbgDados.Canvas.Font.Color := lblLancamentoAberto.Font.Color
//        else
//        begin
//          dbgDados.Canvas.Font.Color  := lblLancamentoVencido.Font.Color;
//          dbgDados.Canvas.Brush.Color := lblLancamentoVencido.Color;
//        end;
//
//    dbgDados.DefaultDrawDataCell(Rect, dbgDados.Columns[DataCol].Field, State);
//  end
end;

procedure TfrmGeControleCheque.dbgBaixasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
//var
//  CxAno    ,
//  CxNumero ,
//  CxContaCorrente,
//  MovAno    ,
//  MovNumero : Integer;
//  DataPagto : TDateTime;
begin
//  if (Shift = [ssCtrl]) and (Key = 46) Then
//  begin
//
//    if not GetPermissaoRotinaInterna(Sender, True) then
//      Abort;
//
//    if ( not cdsPagamentos.IsEmpty ) then
//    begin
//      CxAno    := 0;
//      CxNumero := 0;
//      CxContaCorrente := 0;
//
//      if ( tblFormaPagto.Locate('cod', IbDtstTabelaFORMA_PAGTO.AsInteger, []) ) then
//        if ( tblFormaPagto.FieldByName('Conta_corrente').AsInteger > 0 ) then
//          if ( not CaixaAberto(IbDtstTabelaEMPRESA.AsString, GetUserApp, GetDateDB, IbDtstTabelaFORMA_PAGTO.AsInteger, CxAno, CxNumero, CxContaCorrente) ) then
//          begin
//            ShowWarning('N�o existe caixa aberto para o usu�rio na forma de pagamento deste movimento.');
//            Exit;
//          end;
//
//      MovAno    := IbDtstTabelaANOLANC.AsInteger;
//      MovNumero := IbDtstTabelaNUMLANC.AsInteger;
//      DataPagto := cdsPagamentosDATA_PAGTO.AsDateTime;
//
////    sSenha := InputBox('Favor informar a senha de autoriza��o', 'Senha de Autoriza��o:', '');
////
////    if ( Trim(sSenha) = EmptyStr ) then
////      Exit;
////
////    if ( sSenha <> GetSenhaAutorizacao ) then
////    begin
////      ShowWarning('Senha de autoriza��o inv�lida');
////      Exit;
////    end;
//
//      if ShowConfirm('Confirma a exclus�o do(s) registro(s) de pagamento(s)?') then
//      begin
//
//        // Registrar Estorno
//
//        if ( CxContaCorrente > 0 ) then
//        begin
//          cdsPagamentos.First;
//
//          while not cdsPagamentos.Eof do
//          begin
//            SetMovimentoCaixaEstorno(
//              GetUserApp,
//              cdsPagamentosDATA_PAGTO.AsDateTime + Time,
//              cdsPagamentosFORMA_PAGTO.AsInteger,
//              cdsPagamentosANOLANC.AsInteger,
//              cdsPagamentosNUMLANC.AsInteger,
//              cdsPagamentosSEQ.AsInteger,
//              cdsPagamentosVALOR_BAIXA.AsCurrency,
//              tmcxCredito);
//
//            cdsPagamentos.Next;
//          end;
//        end;
//
//        with DMBusiness, qryBusca do
//        begin
//          Close;
//          SQL.Clear;
//          SQL.Add('Delete from TBCONTREC_BAIXA');
//          SQL.Add('where ANOLANC = ' + cdsPagamentosANOLANC.AsString);
//          SQL.Add('  and NUMLANC = ' + cdsPagamentosNUMLANC.AsString);
//          ExecSQL;
//
//          CommitTransaction;
//        end;
//
//        with DMBusiness, qryBusca do
//        begin
//          Close;
//          SQL.Clear;
//          SQL.Add('Update TBCONTREC Set');
//          SQL.Add('    BAIXADO      = 0');
//          SQL.Add('  , VALORMULTA   = Null');
//          SQL.Add('  , VALORRECTOT  = Null');
//          SQL.Add('  , VALORSALDO   = VALORREC');
//          SQL.Add('  , HISTORIC = ''''');
//          SQL.Add('  , DTREC    = null');
//          SQL.Add('  , DOCBAIX  = null');
//          SQL.Add('  , TIPPAG   = null');
//          SQL.Add('where ANOLANC = ' + cdsPagamentosANOLANC.AsString);
//          SQL.Add('  and NUMLANC = ' + cdsPagamentosNUMLANC.AsString);
//          ExecSQL;
//
//          CommitTransaction;
//        end;
//
//        if ( CxContaCorrente > 0 ) then
//          GerarSaldoContaCorrente(CxContaCorrente, DataPagto);
//
//        IbDtstTabela.Close;
//        IbDtstTabela.Open;
//
//        IbDtstTabela.Locate('ANOLANC;NUMLANC', VarArrayOf([MovAno, MovNumero]), []);
//
//        AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
//      end;
//    end;
//  end;
end;

procedure TfrmGeControleCheque.IbDtstTabelaBeforePost(DataSet: TDataSet);
begin
//  if IbDtstTabelaCOMPETENCIA_APURACAO.IsNull then
//    IbDtstTabelaCOMPETENCIA_APURACAO.Value := GetCompetenciaID(IbDtstTabelaDTEMISS.AsDateTime);
//
//  if ( (IbDtstTabelaANOVENDA.AsInteger = 0) and (IbDtstTabelaPARCELA.AsInteger <= 0) ) then
//    IbDtstTabelaPARCELA.AsInteger := 1;
//
//  if ( IbDtstTabela.State = dsEdit ) then
//    if ( VarToStr(IbDtstTabelaDTVENC.OldValue) <> VarToStr(IbDtstTabelaDTVENC.NewValue) ) then
//      DesbloquearCliente(IbDtstTabelaCLIENTE.AsInteger, EmptyStr);
end;

procedure TfrmGeControleCheque.DtSrcTabelaDataChange(Sender: TObject;
  Field: TField);
//var
//  iCompetencia : Integer;
begin
//  if ( Field = IbDtstTabelaDTEMISS ) then
//    if ( IbDtstTabela.State in [dsEdit, dsInsert] ) then
//      if not IbDtstTabelaDTEMISS.IsNull then
//      begin
//        iCompetencia := GetCompetenciaID(IbDtstTabelaDTEMISS.AsDateTime);
//        tblCompetencia.Close;
//        tblCompetencia.Open;
//
//        IbDtstTabelaCOMPETENCIA_APURACAO.AsInteger := iCompetencia;
//      end;
end;

procedure TfrmGeControleCheque.DtSrcTabelaStateChange(Sender: TObject);
begin
  inherited;
//  dbValorAReceber.ReadOnly := (not cdsPagamentos.IsEmpty);
//  btbtnIncluirLote.Enabled := btbtnIncluir.Enabled;
//  HabilitarDesabilitar_Btns;
//
//  CarregarTipoReceita( (IbDtstTabela.State in [dsEdit, dsInsert]) );
end;

procedure TfrmGeControleCheque.btbtnCancelarClick(Sender: TObject);
begin
  inherited;
//  if ( not OcorreuErro ) then
//    AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
end;

procedure TfrmGeControleCheque.btbtnIncluirClick(Sender: TObject);
begin
  inherited;
//  if ( not OcorreuErro ) then
//  begin
//    AbrirPagamentos( IbDtstTabelaANOLANC.AsInteger, IbDtstTabelaNUMLANC.AsInteger );
//    DtSrcTabelaStateChange( DtSrcTabela );
//  end;
end;

procedure TfrmGeControleCheque.btbtnListaClick(Sender: TObject);
begin
//  popImprimir.Popup(btbtnLista.ClientOrigin.X, btbtnLista.ClientOrigin.Y + btbtnLista.Height);
end;

function TfrmGeControleCheque.GetRotinaCancelarPagtosID: String;
begin
//  Result := GetRotinaInternaID(dbgPagamentos);
end;

function TfrmGeControleCheque.GetRotinaEfetuarPagtoID: String;
begin
//  Result := GetRotinaInternaID(btbtnEfetuarPagto);
end;

procedure TfrmGeControleCheque.RecarregarRegistro;
//var
//  MovAno    ,
//  MovNumero : Integer;
begin
//  MovAno    := IbDtstTabelaANOLANC.AsInteger;
//  MovNumero := IbDtstTabelaNUMLANC.AsInteger;
//
//  if ( not IbDtstTabelaDTVENC.IsNull ) then
//  begin
//    if ( IbDtstTabelaDTVENC.AsDateTime < e1Data.Date ) then
//      e1Data.Date := IbDtstTabelaDTVENC.AsDateTime;
//
//    if ( IbDtstTabelaDTVENC.AsDateTime > e2Data.Date ) then
//      e2Data.Date := IbDtstTabelaDTVENC.AsDateTime;
//  end;
//
//  IbDtstTabela.Close;
//  IbDtstTabela.Open;
//
//  if not IbDtstTabela.Locate('ANOLANC;NUMLANC', VarArrayOf([MovAno, MovNumero]), []) then
//  begin
//    IbDtstTabela.Close;
//
//    ShowInformation('Favor pesquisar novamente o registro de despesa!');
//    pgcGuias.ActivePage := tbsTabela;
//    edtFiltrar.SetFocus;
//  end;
end;

procedure TfrmGeControleCheque.RegistrarNovaRotinaSistema;
begin
//  if ( Trim(RotinaID) <> EmptyStr ) then
//  begin
//    if btbtnEfetuarPagto.Visible then
//      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaEfetuarPagtoID, btbtnEfetuarPagto.Hint, RotinaID);
//
//    if dbgPagamentos.Visible then
//      SetRotinaSistema(ROTINA_TIPO_FUNCAO, RotinaCancelarPagtosID, 'Cancelar Pagamentos', RotinaID);
//  end;
end;

procedure TfrmGeControleCheque.FormShow(Sender: TObject);
begin
  inherited;
//  RegistrarNovaRotinaSistema;
end;

procedure TfrmGeControleCheque.FrReciboGetValue(const VarName: string;
  var Value: Variant);
begin
//  if ( VarName = VAR_TITLE ) then
//    Value := 'RECIBO';
//
//  if ( VarName = VAR_EMPRESA ) then
//    Value := GetEmpresaNomeDefault;
//
//  if ( VarName = VAR_USER ) then
//    Value := GetUserApp;
//
//  if ( VarName = VAR_SYSTEM ) then
//    Value := Application.Title + ' - vers�o ' + ver.FileVersion;
//
//  if ( VarName = 'Imprimir_Cabecalho' ) then
//    Value := IfThen(FImprimirCabecalho, 1, 0);
end;

initialization
  FormFunction.RegisterForm('frmGeControleCheque', TfrmGeControleCheque);

end.