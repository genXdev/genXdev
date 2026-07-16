# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server. *(Parameter set: )* |

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
