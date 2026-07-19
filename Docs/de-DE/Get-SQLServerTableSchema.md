# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die Schema-Informationen für eine angegebene SQL Server-Tabelle ab.

## Description

Diese Funktion fragt die SQL Server-Datenbank ab, um detaillierte Schemainformationen für eine bestimmte Tabelle zu erhalten. Sie verwendet die SQL Server-Ansicht INFORMATION_SCHEMA.COLUMNS, um Spaltendefinitionen einschließlich Namen, Typen, Nullable-Status und Standardwerten zurückzugeben.

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Der Name der SQL Server-Instanz *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Der Name der Tabelle |

## Examples

### Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `     -TableName "Users"

```powershell
Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `
    -TableName "Users"
```

### Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `     -TableName "Products"

```powershell
Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `
    -TableName "Products"
```

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
