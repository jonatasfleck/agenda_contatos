object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 742
  ClientWidth = 1048
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 239
    Height = 29
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 144
    Width = 84
    Height = 13
    Caption = 'Nome do Contato'
  end
  object Label3: TLabel
    Left = 32
    Top = 221
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 32
    Top = 349
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object Label5: TLabel
    Left = 32
    Top = 496
    Width = 117
    Height = 13
    Caption = 'Data e hora do cadastro'
  end
  object DBText1: TDBText
    Left = 32
    Top = 515
    Width = 217
    Height = 33
    DataField = 'data'
    DataSource = dsContatos
  end
  object Label6: TLabel
    Left = 536
    Top = 96
    Width = 90
    Height = 13
    Caption = 'Busca de Contatos'
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 168
    Width = 441
    Height = 22
    DataField = 'nome'
    DataSource = dsContatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Mari '
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 240
    Width = 185
    Height = 21
    DataField = 'celular'
    DataSource = dsContatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 32
    Top = 300
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = dsContatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 32
    Top = 376
    Width = 441
    Height = 89
    DataField = 'observacoes'
    DataSource = dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 88
    Width = 370
    Height = 33
    DataSource = dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 536
    Top = 144
    Width = 417
    Height = 409
    DataSource = dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Identificador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Contatos Cadastrados'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 536
    Top = 117
    Width = 418
    Height = 21
    TabOrder = 6
    OnChange = txtBuscaChange
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda_de_contatos'
      'User_Name=postgres'
      'Password=182832'
      'DriverID=PG'
      'Server=127.0.0.1')
    Connected = True
    LoginPrompt = False
    Left = 824
    Top = 560
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 904
    Top = 560
  end
  object tbContatos: TFDTable
    Active = True
    AfterInsert = tbContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    TableName = 'contatos'
    Left = 824
    Top = 616
    object tbContatosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbContatosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object tbContatoscelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tbContatosbloqueado: TBooleanField
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbContatosdata: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object tbContatosobservacoes: TWideMemoField
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftWideMemo
    end
  end
  object dsContatos: TDataSource
    DataSet = tbContatos
    Left = 904
    Top = 616
  end
end
