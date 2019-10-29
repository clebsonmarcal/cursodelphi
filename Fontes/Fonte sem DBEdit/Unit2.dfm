object dm: Tdm
  OldCreateOrder = False
  Height = 230
  Width = 338
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Clebson\Desktop\CURSO DELPHI\MATERIAL CURSO\Fontes\Font' +
      'e sem DBEdit\libmysql.dll'
    Left = 192
    Top = 32
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Port=3390'
      'User_Name=quantum'
      'Password=quantum28042004'
      'Database=curso'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 72
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 80
    Top = 96
  end
end
