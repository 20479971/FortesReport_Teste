object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 701
  ClientWidth = 882
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rptAbastecimento: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dtsrcRel_Data
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object bndCabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 44
      BandType = btHeader
      object lblTitulo: TRLLabel
        Left = 3
        Top = 3
        Width = 712
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio de Abastecimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
    end
    object bndAbastecimento_Cabecalho: TRLBand
      Left = 38
      Top = 82
      Width = 718
      Height = 31
      object lblData: TRLLabel
        Left = 24
        Top = 10
        Width = 32
        Height = 12
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
      end
      object dbtxtData: TRLDBText
        Left = 63
        Top = 10
        Width = 39
        Height = 12
        DataField = 'DATA'
        DataSource = dtsrcRel_Data
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object drawLinhaSeparadora: TRLDraw
        Left = 24
        Top = 6
        Width = 673
        Height = 3
        DrawKind = dkLine
      end
    end
    object bnddtlAbastecimento: TRLSubDetail
      Left = 38
      Top = 113
      Width = 718
      Height = 192
      AllowedBands = [btDetail, btSummary]
      DataSource = dtsrcRel_Abastecimento
      object bnddtlAbastecimento_Detalhe: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 17
        object dbtxtTanque: TRLDBText
          Left = 123
          Top = 3
          Width = 214
          Height = 12
          AutoSize = False
          DataField = 'NOMETANQUE'
          DataSource = dtsrcRel_Abastecimento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object dbtxtBomba: TRLDBText
          Left = 343
          Top = 3
          Width = 275
          Height = 12
          AutoSize = False
          DataField = 'NOMEBOMBA'
          DataSource = dtsrcRel_Abastecimento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object dbtxtValor: TRLDBText
          Left = 662
          Top = 3
          Width = 43
          Height = 12
          Alignment = taRightJustify
          DataField = 'VALOR'
          DataSource = dtsrcRel_Abastecimento
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object bnddtlAbastecimento_Rodape: TRLBand
        Left = 0
        Top = 36
        Width = 718
        Height = 62
        BandType = btFooter
        object lblValorTotalDia: TRLLabel
          Left = 472
          Top = 25
          Width = 101
          Height = 12
          Caption = 'Valor Total do dia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object resultValor: TRLDBResult
          Left = 579
          Top = 25
          Width = 126
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = dtsrcRel_Abastecimento
          DisplayMask = '##,###,##0.00;1;'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
      object bnddtlAbastecimento_Cabecalho: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btHeader
        object lblTanque: TRLLabel
          Left = 121
          Top = 3
          Width = 216
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Tanque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object lblBomba: TRLLabel
          Left = 344
          Top = 2
          Width = 274
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Bomba'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object lblValor: TRLLabel
          Left = 624
          Top = 3
          Width = 81
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object qryRel_Abastecimento: TFDQuery
    MasterSource = dtsrcRel_Data
    MasterFields = 'DATA'
    DetailFields = 'DATA'
    Connection = frmPrincipal.fdconnectPrincipal
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'Select tTanque.NomeTanque,'
      '       tBomba.NomeBomba,'
      '       tAbastec.Valor'
      ''
      'From Abastecimento As tAbastec'
      ''
      '     Inner Join Bomba As tBomba'
      '             On tBomba.CdBomba = tAbastec.CdBomba'
      ''
      '           Inner Join Tanque As tTanque'
      '                   On tTanque.CdTanque = tBomba.CdTanque'
      ''
      'Where tAbastec.Data = :DATA'
      ''
      'Order By tTanque.NomeTanque,'
      '         tBomba.NomeBomba')
    Left = 397
    Top = 470
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftTimeStamp
        ParamType = ptInput
        Size = 16
        Value = '21/04/2023'
      end>
    object qryRel_AbastecimentoNOMETANQUE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMETANQUE'
      Origin = 'NOMETANQUE'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object qryRel_AbastecimentoNOMEBOMBA: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMEBOMBA'
      Origin = 'NOMEBOMBA'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object qryRel_AbastecimentoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dtsrcRel_Abastecimento: TDataSource
    DataSet = qryRel_Abastecimento
    Left = 389
    Top = 463
  end
  object qryRel_Datas: TFDQuery
    Active = True
    Connection = frmPrincipal.fdconnectPrincipal
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'Select Distinct'
      '       Data'
      ''
      'From Abastecimento'
      ''
      'Order By Data')
    Left = 133
    Top = 470
    object qryRel_DatasDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object dtsrcRel_Data: TDataSource
    DataSet = qryRel_Datas
    Left = 125
    Top = 463
  end
end
