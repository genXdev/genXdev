# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Executa consultas em banco de dados SQLite com suporte a parâmetros e transações.

## Description

Fornece uma interface PowerShell para executar consultas SQLite com suporte para:
- Conexão via string de conexão ou caminho de arquivo de banco de dados
- Consultas parametrizadas para prevenir injeção de SQL
- Controle de nível de isolamento de transação
- Execução de múltiplas consultas em uma única transação
- Entrada por pipeline para consultas e parâmetros

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

## Examples

### Invoke-SQLiteStudio `     -DatabaseFilePath "C:\data\users.sqlite" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"

```powershell
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
```

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
