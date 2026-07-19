# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera dados de coluna de uma view SQL com limitação opcional de registros.

## Description

Executa uma consulta SELECT em uma visão SQL especificada para recuperar dados de uma única coluna. Suporta conexão via string de conexão ou caminho de arquivo de banco de dados. Permite limitar o número de registros retornados ou recuperar todos os registros.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | O nome da view. |
| `-ColumnName` | String | ✅ | — | 3 | — | O nome da coluna. |
| `-Count` | Int32 | — | — | 4 | `100` | O número de registros a serem retornados. O padrão é 100. -1 para todos. |

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
