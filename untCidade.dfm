inherited FormCidade: TFormCidade
  Caption = 'USACUCAR - Usafone - Cidade'
  ClientHeight = 554
  Menu = mmCidade
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Top = 535
  end
  object dbgCidade: TDBGrid
    Left = 8
    Top = 8
    Width = 770
    Height = 400
    DataSource = dm.dsCidade
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = dbgCidadeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_ESTADO'
        Visible = True
      end>
  end
  object pnlControl: TPanel
    Left = 8
    Top = 488
    Width = 770
    Height = 41
    BevelInner = bvLowered
    TabOrder = 2
    object btnGravar: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btnGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnExcluir: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 1
      OnClick = btnExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object btnRelatorio: TBitBtn
      Left = 168
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Relat'#243'rio'
      TabOrder = 2
      OnClick = btnRelatorioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object pnlCampos: TPanel
    Left = 8
    Top = 416
    Width = 770
    Height = 65
    BevelInner = bvLowered
    TabOrder = 1
    object lblEstado: TLabel
      Left = 328
      Top = 14
      Width = 45
      Height = 16
      Caption = 'Estado:'
    end
    object edtCodigo: TLabeledEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 24
      Color = clBtnFace
      EditLabel.Width = 44
      EditLabel.Height = 16
      EditLabel.Caption = 'C'#243'digo:'
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = edtCodigoKeyPress
    end
    object edtCidade: TLabeledEdit
      Left = 72
      Top = 32
      Width = 250
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 44
      EditLabel.Height = 16
      EditLabel.Caption = 'Cidade:'
      TabOrder = 1
      OnKeyPress = edtCidadeKeyPress
    end
    object cbEstado: TComboBox
      Left = 328
      Top = 32
      Width = 100
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 2
      OnKeyPress = cbEstadoKeyPress
      Items.Strings = (
        'PR'
        'RJ'
        'SC')
    end
  end
  object mmCidade: TMainMenu
    Left = 728
    Top = 432
    object Sair1: TMenuItem
      Caption = '&Voltar'
      OnClick = Sair1Click
    end
    object Novo1: TMenuItem
      Caption = '&Novo'
      OnClick = Novo1Click
    end
  end
end
