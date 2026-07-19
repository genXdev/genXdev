# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Daten aus einer bestimmten Spalte in einer SQL-Datenbanktabelle ab.

## Description

Diese Funktion bietet eine bequeme Möglichkeit, Daten aus einer einzelnen Spalte in einer SQL-Datenbanktabelle zu extrahieren. Sie unterstützt zwei Verbindungsmethoden: direkten Datenbankdateipfad oder Verbindungszeichenfolge. Die Funktion umfasst Optionen zur Begrenzung der Anzahl zurückgegebener Datensätze und verwendet eine ordnungsgemäße SQL-Abfragekonstruktion für optimale Leistung.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der abzufragenden Tabelle |
| `-ColumnName` | String | ✅ | — | 3 | — | Der Name der abzurufenden Spalte |
| `-Count` | Int32 | — | — | 4 | `100` | Anzahl der zurückzugebenden Datensätze. Standardwert: 100. Verwenden Sie -1 für alle. |

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
