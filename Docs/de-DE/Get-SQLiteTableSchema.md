# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft die Schemainformationen für eine angegebene SQLite-Tabelle ab.

## Description

Diese Funktion fragt die SQLite-Datenbank ab, um detaillierte Schema-Informationen für eine bestimmte Tabelle zu erhalten. Sie verwendet den SQLite-Befehl PRAGMA table_info, um Spaltendefinitionen einschließlich Namen, Typen, NULL-Zulässigkeit und Standardwerte zurückzugeben.

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der Tabelle |

## Examples

### Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `     -TableName "Users"

```powershell
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"
```

### Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `     -TableName "Products"

```powershell
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
```

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
