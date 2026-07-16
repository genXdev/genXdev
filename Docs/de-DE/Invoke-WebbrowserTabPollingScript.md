# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-Code, URLs oder Dateipfade zur Ausführung |
| `-InitialUrl` | String | — | — | 1 | — | URL, zu der vor dem Start des Pollings navigiert werden soll |
| `-Callback` | ScriptBlock | — | — | 2 | — | Callback-Scriptblock zur Verarbeitung von Umfrageergebnissen |

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
