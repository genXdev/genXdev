# ReadJsonWithRetry

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Lit un fichier JSON avec logique de réessai et nettoyage automatique des verrous.

## Description

Tente de lire un fichier JSON avec une logique de réessai pour gérer l'accès concurrentiel. Implémente un nettoyage automatique des fichiers de verrouillage obsolètes. Renvoie une table de hachage vide si le fichier n'existe pas.

## Syntax

```powershell
ReadJsonWithRetry -FilePath <String> [[-MaxRetries] <Int32>] [[-RetryDelayMs] <Int32>] [-AsHashtable] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | The `-FilePath` parameter. |
| `-MaxRetries` | Int32 | — | — | 1 | `10` | The `-MaxRetries` parameter. |
| `-RetryDelayMs` | Int32 | — | — | 2 | `200` | The `-RetryDelayMs` parameter. |
| `-AsHashtable` | SwitchParameter | — | — | Named | — | The `-AsHashtable` parameter. |

## Related Links

- [ReadJsonWithRetry on GitHub](https://github.com/genXdev/genXdev)
