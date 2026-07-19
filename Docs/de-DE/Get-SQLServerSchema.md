# Get-SQLServerSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die vollständigen Schema-Informationen aus einer SQL Server-Datenbank ab.

## Description

Diese Funktion fragt SQL Server-Systemtabellen und das Informationsschema ab, um die vollständige Schemadefinition einer SQL Server-Datenbank zu erhalten, einschließlich Tabellen, Ansichten, Indizes, gespeicherter Prozeduren und anderer Datenbankobjekte. Sie akzeptiert entweder eine Verbindungszeichenfolge oder einen Datenbanknamen mit Serverparametern.

## Syntax

```powershell
Get-SQLServerSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |

## Examples

### Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"

```powershell
Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"
```

### Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"

```powershell
Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerSchema on GitHub](https://github.com/genXdev/genXdev)
