# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Daten aus einer SQL-Datenbankansicht ab, optional mit Begrenzung der Datensätze.

## Description

Fragt eine SQL-Datenbankansicht mithilfe einer Verbindungszeichenfolge oder eines Datenbankdateipfads ab. Die Funktion unterstützt die Begrenzung der Anzahl zurückgegebener Datensätze und bietet eine ausführliche Ausgabe zur Verfolgung der Abfrageausführung.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Der Name der abzufragenden Ansicht. |
| `-Count` | Int32 | — | — | 3 | `100` | Anzahl der zurückzugebenden Datensätze. -1 für alle Datensätze. |

## Examples

### Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
