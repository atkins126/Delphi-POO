object FrmPrincipal: TFrmPrincipal
  Left = 343
  Top = 154
  Caption = 'Sistema POO'
  ClientHeight = 672
  ClientWidth = 1351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MenuPrincipal
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MenuPrincipal: TMainMenu
    Left = 48
    Top = 24
    object mCompras: TMenuItem
      Caption = 'Compras'
      object mComprasCadastro: TMenuItem
        Caption = 'Cadastro'
        OnClick = mComprasCadastroClick
      end
    end
    object mVendas: TMenuItem
      Caption = 'Vendas'
    end
    object mFinanceiro: TMenuItem
      Caption = 'Financeiro'
    end
    object mUtilitarios: TMenuItem
      Caption = 'Utilitarios'
    end
  end
end
