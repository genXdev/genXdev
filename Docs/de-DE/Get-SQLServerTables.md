# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft eine Liste von Tabellennamen aus einer SQL Server-Datenbank ab.

## Description

Durchsucht die Systemtabellen von SQL Server, um alle benutzerdefinierten Tabellennamen aus einer SQL Server-Datenbank abzurufen. Unterstützt die Verbindung entweder über eine direkte Verbindungszeichenfolge oder einen Datenbanknamen mit Serverparametern. Gibt die Tabellennamen als eine Sammlung von Zeichenfolgen zurück.

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |

## Examples

### Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost" Returns all table names from the specified database

```powershell
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database
```

### Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
