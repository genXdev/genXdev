# ReadJsonWithRetry

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Liest JSON-Datei mit Wiederholungslogik und automatischer Lock-Bereinigung.

## Description

Versucht, eine JSON-Datei mit Wiederholungslogik zu lesen, um gleichzeitigen Zugriff zu handhaben. Implementiert automatische Bereinigung veralteter Sperrdateien. Gibt eine leere Hashtabelle zurück, wenn die Datei nicht existiert.

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
