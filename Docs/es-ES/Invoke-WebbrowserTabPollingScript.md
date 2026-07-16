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
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, URLs or file paths to execute |
| `-InitialUrl` | String | — | — | 1 | — | URL a la que navegar antes de que comience la encuesta |
| `-Callback` | ScriptBlock | — | — | 2 | — | Bloque de script de devolución de llamada para procesar resultados de encuestas |

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
