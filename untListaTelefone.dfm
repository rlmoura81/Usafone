inherited FormListaTelefone: TFormListaTelefone
  Left = 221
  Top = 174
  Caption = 'USACUCAR - Usafone - Lista de Telefones'
  ClientHeight = 554
  Menu = mmListaTelefone
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Top = 535
  end
  object pnlCampos: TPanel
    Left = 8
    Top = 8
    Width = 770
    Height = 60
    BevelInner = bvLowered
    TabOrder = 1
    object lblUnidade: TLabel
      Left = 11
      Top = 10
      Width = 51
      Height = 16
      Caption = 'Unidade:'
    end
    object lblFuncionario: TLabel
      Left = 162
      Top = 11
      Width = 71
      Height = 16
      Caption = 'Funcion'#225'rio:'
    end
    object dbcbUnidade: TDBLookupComboBox
      Left = 8
      Top = 29
      Width = 145
      Height = 24
      KeyField = 'CD_USINA'
      ListField = 'DS_USINA'
      ListSource = dm.dsUsina
      TabOrder = 0
      OnClick = dbcbUnidadeClick
      OnExit = dbcbUnidadeExit
      OnKeyPress = dbcbUnidadeKeyPress
    end
    object dbcbFuncionario: TDBLookupComboBox
      Left = 160
      Top = 29
      Width = 350
      Height = 24
      KeyField = 'CD_MATRICULA'
      ListField = 'DS_NOME'
      ListSource = dm.dsUsuario
      TabOrder = 1
      OnClick = dbcbFuncionarioClick
      OnKeyPress = dbcbFuncionarioKeyPress
    end
    object edtNumero: TLabeledEdit
      Left = 512
      Top = 29
      Width = 121
      Height = 24
      Color = clScrollBar
      EditLabel.Width = 49
      EditLabel.Height = 16
      EditLabel.Caption = 'N'#250'mero:'
      ReadOnly = True
      TabOrder = 2
    end
  end
  object pnlTelefone: TPanel
    Left = 8
    Top = 72
    Width = 770
    Height = 41
    BevelInner = bvLowered
    TabOrder = 2
    object lblNumero: TLabel
      Left = 8
      Top = 16
      Width = 49
      Height = 16
      Caption = 'N'#250'mero:'
    end
    object lblNome: TLabel
      Left = 173
      Top = 16
      Width = 38
      Height = 16
      Caption = 'Nome:'
    end
    object lblregistro: TLabel
      Left = 680
      Top = 16
      Width = 70
      Height = 16
      Caption = 'Registros: 0'
    end
    object mkedtNumero: TMaskEdit
      Left = 61
      Top = 12
      Width = 96
      Height = 24
      EditMask = '!\(99\)0000-0000;0;_'
      MaxLength = 13
      TabOrder = 0
      OnExit = mkedtNumeroExit
      OnKeyPress = mkedtNumeroKeyPress
    end
    object edtNome: TEdit
      Left = 214
      Top = 12
      Width = 300
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edtNomeKeyPress
    end
    object btnInserir: TBitBtn
      Left = 519
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 2
      OnClick = btnInserirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnExcluirNumero: TBitBtn
      Left = 598
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 3
      OnClick = btnExcluirNumeroClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object dbgListaTelefone: TDBGrid
    Left = 8
    Top = 120
    Width = 770
    Height = 360
    DataSource = dm.dsListafone
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = dbgListaTelefoneCellClick
    OnKeyUp = dbgListaTelefoneKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'DS_NOME'
        Width = 361
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_NUMERO'
        Width = 228
        Visible = True
      end>
  end
  object pnlControl: TPanel
    Left = 8
    Top = 488
    Width = 770
    Height = 41
    BevelInner = bvLowered
    TabOrder = 4
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
      Width = 81
      Height = 25
      Caption = '&Cancelar'
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
      Left = 176
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Relatorio'
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
    object btnPin2: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PIN2'
      TabOrder = 3
      OnClick = btnPin2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5000555555555555577755555555555550B0555555555555F7F7555555555550
        00B05555555555577757555555555550B3B05555555555F7F557555555555000
        3B0555555555577755755555555500B3B0555555555577555755555555550B3B
        055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
        555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
        55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
        555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
        55555575FFFF7755555555570000755555555557777775555555}
      NumGlyphs = 2
    end
  end
  object mmListaTelefone: TMainMenu
    Left = 736
    Top = 504
    object Voltar1: TMenuItem
      Caption = '&Voltar'
      OnClick = Voltar1Click
    end
  end
end
