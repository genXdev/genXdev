# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Daten aus einer SQL-Datenbanktabelle mit optionaler Datensatzbegrenzung ab.

## Description

Diese Funktion fragt Daten aus einer SQL-Datenbanktabelle ab, wobei entweder eine Verbindungszeichenfolge oder ein Datenbankdateipfad verwendet wird. Sie bietet Flexibilität bei der Verbindung zur Datenbank und bei der Steuerung der abgerufenen Datenmenge über den Parameter Count.

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der Tabelle, aus der Daten abgefragt werden. |
| `-Count` | Int32 | — | — | 3 | `100` | Die maximale Anzahl der zurückzugebenden Datensätze. -1 für alle. |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
