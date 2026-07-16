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
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Code JavaScript, URLs ou chemins de fichiers à exécuter |
| `-InitialUrl` | String | — | — | 1 | — | URL vers lequel naviguer avant le début du sondage |
| `-Callback` | ScriptBlock | — | — | 2 | — | Bloc de script de rappel pour traiter les résultats du sondage |

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
