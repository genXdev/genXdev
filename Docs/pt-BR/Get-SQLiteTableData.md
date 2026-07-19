# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera dados de uma tabela de banco de dados SQLite com limitação opcional de registros.

## Description

Esta função consulta dados de uma tabela de banco de dados SQLite usando uma string de conexão ou um caminho de arquivo de banco de dados. Ela oferece flexibilidade para conectar-se ao banco de dados e controlar a quantidade de dados recuperados por meio do parâmetro Count.

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo do banco de dados SQLite. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | O nome da tabela para consultar dados. |
| `-Count` | Int32 | — | — | 2 | `100` | O número máximo de registros a retornar. -1 para todos. |

## Examples

### Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLiteTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLiteTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
