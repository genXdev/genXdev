# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Führt ein Hintergrund-Polling-Skript in einem zuvor ausgewählten Webbrowser-Tab aus.

## Description

Führt kontinuierlich JavaScript in einem Browser-Tab aus und verarbeitet Ergebnisse über einen optionalen Callback. Das Skript läuft in einem separaten Thread, um Blockierungen zu vermeiden.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript-Code, URLs oder Dateipfade zur Ausführung |
| `-InitialUrl` | String | — | — | 1 | — | URL, zu der vor dem Start des Pollings navigiert werden soll |
| `-Callback` | ScriptBlock | — | — | 2 | — | Callback-Scriptblock zur Verarbeitung von Umfrageergebnissen |
| `-Edge` | SwitchParameter | — | — | Named | — | Verwenden Sie den Microsoft Edge-Browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Use Google Chrome browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Verwenden Sie Microsoft Edge oder Google Chrome, je nachdem, welcher der Standardbrowser ist. |
| `-Firefox` | SwitchParameter | — | — | Named | — | Verwenden Sie den Firefox-Browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Verwenden Sie den Playwright-verwalteten WebKit-Browser |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
