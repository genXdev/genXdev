# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera dados de uma coluna específica em uma tabela de banco de dados SQLite.

## Description

Esta função fornece uma maneira conveniente de extrair dados de uma única coluna em uma tabela de banco de dados SQLite. Ela suporta dois métodos de conexão: caminho direto do arquivo de banco de dados ou string de conexão. A função inclui opções para limitar o número de registros retornados e usa a construção adequada de consultas SQLite para obter desempenho ideal.

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo de banco de dados SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | O nome da tabela a ser consultada |
| `-ColumnName` | String | ✅ | — | 2 | — | O nome da coluna a ser recuperada |
| `-Count` | Int32 | — | — | 3 | `100` | Número de registros a retornar. Padrão 100. Use -1 para todos |

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
