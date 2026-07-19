# ReadJsonWithRetry

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Lê arquivo JSON com lógica de repetição e limpeza automática de bloqueio.

## Description

Tenta ler um arquivo JSON com lógica de repetição para lidar com acesso concorrente. Implementa limpeza automática de arquivos de bloqueio obsoletos. Retorna uma hashtable vazia se o arquivo não existir.

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
