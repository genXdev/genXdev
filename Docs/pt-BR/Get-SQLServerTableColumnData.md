# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera dados de uma coluna específica em uma tabela de banco de dados SQL.

## Description

Esta função fornece uma maneira conveniente de extrair dados de uma única coluna em uma tabela de banco de dados SQL. Ela suporta dois métodos de conexão: caminho de arquivo de banco de dados direto ou string de conexão. A função inclui opções para limitar o número de registros retornados e usa construção de consulta SQL adequada para desempenho ideal.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | O nome da tabela a ser consultada |
| `-ColumnName` | String | ✅ | — | 3 | — | O nome da coluna a ser recuperada |
| `-Count` | Int32 | — | — | 4 | `100` | Número de registros a retornar. Padrão 100. Use -1 para todos |

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
