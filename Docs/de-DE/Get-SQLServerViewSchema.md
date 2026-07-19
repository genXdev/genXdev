# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die SQL-Schema-Definition für eine SQL Server-Ansicht ab.

## Description

Diese Funktion fragt die Systemtabellen der SQL Server-Datenbank ab, um die SQL-Definition einer angegebenen Ansicht zu extrahieren. Sie unterstützt die Verbindung entweder über eine Verbindungszeichenfolge oder über den Datenbanknamen mit Serverparametern und gibt das vollständige SQL-Schema zurück, das die angeforderte Ansicht definiert.

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Der Name der Ansicht. |

## Examples

### Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
