# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo do banco de dados SQLite. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | A consulta a ser executada. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Parâmetros opcionais para a consulta. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | O nível de isolamento a ser usado. O padrão é ReadCommitted. |

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
