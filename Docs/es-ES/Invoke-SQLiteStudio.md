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
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | La consulta a ejecutar. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Parámetros opcionales para la consulta. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | El nivel de aislamiento a utilizar. El valor predeterminado es ReadCommitted. |

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
