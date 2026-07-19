# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Ejecuta un script de sondeo en segundo plano en una pestaña del navegador previamente seleccionada.

## Description

Ejecuta JavaScript de forma continua en una pestaña del navegador y procesa los resultados a través de una devolución de llamada opcional. El script se ejecuta en un hilo separado para evitar bloqueos.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, URLs or file paths to execute |
| `-InitialUrl` | String | — | — | 1 | — | URL a la que navegar antes de que comience la encuesta |
| `-Callback` | ScriptBlock | — | — | 2 | — | Bloque de script de devolución de llamada para procesar resultados de encuestas |
| `-Edge` | SwitchParameter | — | — | Named | — | Usa el navegador Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Utiliza el navegador Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Usa Microsoft Edge o Google Chrome, según cuál sea el navegador predeterminado |
| `-Firefox` | SwitchParameter | — | — | Named | — | Usa el navegador Firefox |
| `-Webkit` | SwitchParameter | — | — | Named | — | Use el navegador WebKit administrado por Playwright |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
