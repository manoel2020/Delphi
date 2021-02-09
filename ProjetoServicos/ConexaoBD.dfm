object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 257
  Width = 528
  object FDConnection1: TFDConnection
    ConnectionName = 'conectar'
    Params.Strings = (
      'Database=dbservicos'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Urs'#227'o-PC\Desktop\Projeto Delphi\Servi'#231'os\Win32\Debug\li' +
      'b\libmySQL.dll'
    Left = 224
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Console'
    Left = 416
    Top = 24
  end
end
