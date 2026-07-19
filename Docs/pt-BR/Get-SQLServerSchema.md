# Get-SQLServerSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera as informações completas do esquema de um banco de dados SQL Server.

## Description

Esta função consulta as tabelas do sistema do SQL Server e o information schema para obter
 a definição completa do esquema de um banco de dados SQL Server, incluindo tabelas, visualizações,
 índices, procedimentos armazenados e outros objetos de banco de dados. Ela aceita uma
 string de conexão ou nome do banco de dados com parâmetros do servidor.

## Syntax

```powershell
Get-SQLServerSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server. *(Parameter set: )* |

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
