object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Abastecimento Postos de Combust'#237'veis ABC'
  ClientHeight = 499
  ClientWidth = 635
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    635
    499)
  PixelsPerInch = 96
  TextHeight = 13
  object lblCdAbastecimento: TLabel
    Left = 24
    Top = 50
    Width = 101
    Height = 13
    Caption = 'C'#243'd. Abastecimento:'
  end
  object lblData: TLabel
    Left = 24
    Top = 105
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object lblBomba: TLabel
    Left = 208
    Top = 105
    Width = 32
    Height = 13
    Caption = 'Bomba'
  end
  object lblQtdLitros: TLabel
    Left = 440
    Top = 108
    Width = 51
    Height = 13
    Caption = 'Qtd Litros:'
    FocusControl = dbedtQtdLitros
  end
  object lblValorTotal: TLabel
    Left = 24
    Top = 172
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    FocusControl = dbedtValorTotal
  end
  object lblValorImposto: TLabel
    Left = 208
    Top = 172
    Width = 100
    Height = 13
    Caption = 'Valor Imposto (13%)'
  end
  object dbtxtCdAbastecimento: TDBText
    Left = 24
    Top = 69
    Width = 65
    Height = 17
    DataField = 'CDABASTECIMENTO'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblRelacaoAbastecimento: TLabel
    Left = 24
    Top = 242
    Width = 278
    Height = 16
    Caption = 'R e l a '#231' '#227' o     d e     A b a s t e c i m e n t o s :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbtxtValorImposto: TDBText
    Left = 240
    Top = 191
    Width = 65
    Height = 17
    Alignment = taRightJustify
    DataField = 'VALORIMPOSTO'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object spdbtnRelatorio: TSpeedButton
    Left = 546
    Top = 8
    Width = 81
    Height = 47
    Anchors = [akTop, akRight]
    Caption = 'Relat'#243'rio'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5F0EA
      F1E8DCF1E7DAF1E7DAF1E7DAF2E7DAF2E7DAF2E7DBF2E7DBF2E7DBF2E7DBF2E7
      DBF2E8DDFAF6F3FFFFFFFEFDFDEADCCCE0C9A9DBBD95DBBC94DABC94DABC94DA
      BC94DBBD94DBBD94DBBD94DCBD94DCC09AE6D4BBF5EFE8FDFCFBE8D7C9CEA372
      E0C8A6E2D0B4DFC9A9DFC9A9DFC9A9DFC9A9DFC9A9DFC9A9DFC9A9DFC9A9E5D5
      BCD6B68DD2AD84E9D9CDE1C9B3E4CFB1E3D2B6E2CEAFE1CBAAE1CBAAE1CBAAE1
      CBAAE1CBAAE1CBAAE1CBAAE1CBAAE3CFB0E5D4B9E4CEB0E5D0BEDFC6B0CD9D5E
      CE9D5ECC9A5ACC9A5ACC9A5ACC9A5ACC9A5ACC9A5ACC9A5ACC9A5ACC9A5ACC9A
      5AD0A266CA9654E3CCBADDC2ACBA741DBB741CBB741CBB741CBB741DBC7723BD
      7825BD7825BD7825BC7622BB741CBB741CBB741CBA741FE2CAB8DDC2ACBA741D
      BA741DBB741DBA741DC18438DEC29BE2C8A6E2C9A6E1C8A5CC9B5BBA741CBB74
      1DBA741DBA741FE1CAB8E0C8B6C2884BBF823EBE7D2BBE7D2CC08335C7924EC8
      9451C89451C89450C18436BE7D2BBE7D2CBE7E33C2894CE7D5C7F9F6F3F5EFEA
      E8D8C6E3CDADD7B68AD7B689D7B689D7B689D7B689D7B689D7B689D8B78AE3CD
      AEE2CEB7F5EFEBFCFAF9FFFFFFFFFFFFF2E9DEEFE6D5E2CAAAE1CAA9E1CAA9E1
      CAA9E1CAA9E1CAA9E1CAA9E1CAAAF0E6D7EDE1D1FEFEFEFFFFFFFFFFFFFFFFFF
      F2E9DEEEE4D3E0C7A7E0C7A5E0C7A5E0C7A5E0C7A5E0C7A5E0C7A5E0C7A6EFE3
      D3EDE0D1FEFEFEFFFFFFFFFFFFFFFFFFF2E9DEEFE6D6E2CBACE2CBAAE2CBAAE2
      CBAAE2CBAAE2CBAAE2CBAAE2CBABEFE4D3EDE0D1FEFEFEFFFFFFFFFFFFFFFFFF
      F1E8DDEBE0CDEBDDC7ECDCC8ECDCC9ECDCC9ECDCC8ECDCC9ECDCC9ECDCC9EDE1
      D0ECDFD1FEFEFEFFFFFFFFFFFFFFFFFFFCFBF9FBF9F7FBF9F7FBF9F7FBF9F7FB
      F9F7FBF9F7FBF9F7FBF9F7FBF9F7FBF9F7FDFDFCFFFFFFFFFFFF}
    OnClick = spdbtnRelatorioClick
    ExplicitLeft = 808
  end
  object btnSair: TButton
    Left = 476
    Top = 472
    Width = 151
    Height = 19
    Anchors = [akRight, akBottom]
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnSairClick
  end
  object dbgrdAbastecimento: TDBGrid
    Left = 24
    Top = 264
    Width = 592
    Height = 202
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsrcAbastecimento
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CDABASTECIMENTO'
        Title.Caption = 'C'#243'd. Abast.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEBOMBA'
        Title.Caption = 'Bomba'
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDLITROS'
        Title.Caption = 'Qtd.Litros'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORIMPOSTO'
        Title.Caption = 'Imposto'
        Width = 75
        Visible = True
      end>
  end
  object dbedtQtdLitros: TDBEdit
    Left = 440
    Top = 124
    Width = 120
    Height = 21
    DataField = 'QTDLITROS'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbedtValorTotal: TDBEdit
    Left = 24
    Top = 188
    Width = 120
    Height = 21
    DataField = 'VALOR'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dblkcmbbxBomba: TDBLookupComboBox
    Left = 208
    Top = 124
    Width = 169
    Height = 21
    DataField = 'CDBOMBA'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'CDBOMBA'
    ListField = 'NOMEBOMBA'
    ListSource = dtsrcBombaL
    ParentFont = False
    TabOrder = 2
  end
  object btnNovoAbastecimento: TButton
    Left = 24
    Top = 8
    Width = 489
    Height = 25
    Caption = 'Novo Abastecimento'
    TabOrder = 0
    OnClick = btnNovoAbastecimentoClick
  end
  object btnGravar: TButton
    Left = 438
    Top = 167
    Width = 122
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 438
    Top = 193
    Width = 122
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object dbedtData: TDBEdit
    Left = 24
    Top = 124
    Width = 120
    Height = 21
    DataField = 'DATA'
    DataSource = dtsrcAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object fdconnectPrincipal: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Compress=False'
      'CharacterSet=utf8'
      'Server=127.0.0.1'
      'Database=PostoABC'
      'DriverID=fB'
      'Port=3050')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 312
  end
  object FDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 278
    Top = 311
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 173
    Top = 311
  end
  object dtsrcBombaL: TDataSource
    DataSet = qryBombaL
    Left = 208
    Top = 384
  end
  object updtsqlAbastecimento: TFDUpdateSQL
    Connection = fdconnectPrincipal
    InsertSQL.Strings = (
      'INSERT INTO ABASTECIMENTO'
      '("DATA", CDBOMBA, QTDLITROS, VALOR, VALORIMPOSTO)'
      
        'VALUES (:NEW_DATA, :NEW_CDBOMBA, :NEW_QTDLITROS, :NEW_VALOR, :NE' +
        'W_VALORIMPOSTO)'
      'RETURNING CDABASTECIMENTO')
    ModifySQL.Strings = (
      'UPDATE ABASTECIMENTO'
      
        'SET "DATA" = :NEW_DATA, CDBOMBA = :NEW_CDBOMBA, QTDLITROS = :NEW' +
        '_QTDLITROS, '
      '  VALOR = :NEW_VALOR, VALORIMPOSTO = :NEW_VALORIMPOSTO'
      'WHERE CDABASTECIMENTO = :OLD_CDABASTECIMENTO'
      'RETURNING CDABASTECIMENTO')
    DeleteSQL.Strings = (
      'DELETE FROM ABASTECIMENTO'
      'WHERE CDABASTECIMENTO = :OLD_CDABASTECIMENTO')
    FetchRowSQL.Strings = (
      
        'SELECT CDABASTECIMENTO, "DATA" AS "DATA", CDBOMBA, QTDLITROS, VA' +
        'LOR, '
      '  VALORIMPOSTO'
      'FROM ABASTECIMENTO'
      'WHERE CDABASTECIMENTO = :CDABASTECIMENTO')
    Left = 77
    Top = 378
  end
  object dtsrcAbastecimento: TDataSource
    DataSet = qryAbastecimento
    Left = 85
    Top = 383
  end
  object qryAbastecimento: TFDQuery
    Connection = fdconnectPrincipal
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateObject = updtsqlAbastecimento
    SQL.Strings = (
      'Select tAbastec.CdAbastecimento,'
      '       tAbastec.Data,'
      '       tAbastec.CdBomba,'
      '       tBomba.NomeBomba,'
      '       tAbastec.QtdLitros,'
      '       tAbastec.Valor,'
      '       tAbastec.ValorImposto'
      ''
      'From Abastecimento As tAbastec'
      ''
      '     Inner Join Bomba As tBomba'
      '             On tBomba.CdBomba = tAbastec.CdBomba'
      ''
      'Order By tAbastec.Data Desc')
    Left = 93
    Top = 390
    object qryAbastecimentoCDABASTECIMENTO: TSmallintField
      FieldName = 'CDABASTECIMENTO'
      Origin = 'CDABASTECIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryAbastecimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qryAbastecimentoCDBOMBA: TSmallintField
      FieldName = 'CDBOMBA'
      Origin = 'CDBOMBA'
      Required = True
    end
    object qryAbastecimentoNOMEBOMBA: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEBOMBA'
      Origin = 'NOMEBOMBA'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object qryAbastecimentoQTDLITROS: TFMTBCDField
      FieldName = 'QTDLITROS'
      Origin = 'QTDLITROS'
      Required = True
      Precision = 18
      Size = 6
    end
    object qryAbastecimentoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object qryAbastecimentoVALORIMPOSTO: TBCDField
      FieldName = 'VALORIMPOSTO'
      Origin = 'VALORIMPOSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object qryBombaL: TFDQuery
    Active = True
    Connection = fdconnectPrincipal
    SQL.Strings = (
      'Select CdBomba,'
      '       NomeBomba'
      ''
      'From Bomba'
      ''
      'Order By NomeBomba')
    Left = 216
    Top = 392
  end
end
