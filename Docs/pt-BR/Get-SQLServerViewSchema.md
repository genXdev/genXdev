# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera a definição de esquema SQL para uma view do SQL Server.

## Description

Esta função consulta as tabelas do sistema do banco de dados SQL Server para extrair a definição SQL de uma view especificada. Ela suporta conexão via uma string de conexão ou nome do banco de dados com parâmetros do servidor e retorna o esquema SQL completo que define a view solicitada.

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | O nome da view. |

## Examples

### Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
