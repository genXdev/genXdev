# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera uma lista de visualizações de um banco de dados SQLite.

## Description

Obtém todos os nomes de visualizações do arquivo de banco de dados SQLite especificado ou string de conexão.
Retorna uma matriz de nomes de visualizações que podem ser usados para operações adicionais no banco de dados.
A função oferece suporte a dois conjuntos de parâmetros para flexibilidade: fornecendo uma
string de conexão ou um caminho direto para o arquivo do banco de dados.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo do banco de dados SQLite. *(Parameter set: )* |

## Examples

### Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

```powershell
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"
```

### s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"

```powershell
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
```

## Related Links

- [Get-SQLiteViews on GitHub](https://github.com/genXdev/genXdev)
