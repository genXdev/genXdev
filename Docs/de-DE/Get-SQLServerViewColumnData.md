# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Spaltendaten aus einer SQL-Ansicht mit optionaler Zeilenbegrenzung ab.

## Description

Führt eine SELECT-Abfrage gegen eine angegebene SQL-Ansicht aus, um Daten aus einer einzelnen Spalte abzurufen. Unterstützt die Verbindung entweder über eine Verbindungszeichenfolge oder einen Datenbankdateipfad. Ermöglicht die Begrenzung der Anzahl der zurückgegebenen Datensätze oder das Abrufen aller Datensätze.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Der Name der Ansicht. |
| `-ColumnName` | String | ✅ | — | 3 | — | Der Name der Spalte. |
| `-Count` | Int32 | — | — | 4 | `100` | Die Anzahl der zurückzugebenden Datensätze. Standard ist 100. -1 für alle. |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
