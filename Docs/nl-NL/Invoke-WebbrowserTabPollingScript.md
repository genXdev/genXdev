# Invoke-WebbrowserTabPollingScript

> **Module:** GenXdev.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Voert een achtergrondpollingscript uit in een eerder geselecteerd webbrowsertabblad.

## Description

Voert continu JavaScript uit in een browsertabblad en verwerkt resultaten via een optionele callback. Het script draait in een aparte thread om blokkering te voorkomen.

## Syntax

```powershell
Invoke-WebbrowserTabPollingScript [[-Scripts] <Object[]>] [[-InitialUrl] <String>] [[-Callback] <ScriptBlock>] [-Chrome] [-Chromium] [-Edge] [-Firefox] [-Webkit] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Scripts` | Object[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | JavaScript code, URLs or file paths to execute |
| `-InitialUrl` | String | — | — | 1 | — | URL om naar te navigeren voordat de polling start |
| `-Callback` | ScriptBlock | — | — | 2 | — | Callback-scriptblok voor het verwerken van pollresultaten |
| `-Edge` | SwitchParameter | — | — | Named | — | Gebruik de Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Gebruik de Google Chrome-browser |
| `-Chromium` | SwitchParameter | — | — | Named | — | Gebruik Microsoft Edge of Google Chrome, afhankelijk van wat de standaardbrowser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Gebruik Firefox-browser |
| `-Webkit` | SwitchParameter | — | — | Named | — | Gebruik de door Playwright beheerde WebKit-browser |

## Examples

### Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `     -InitialUrl "https://example.com" `     -Callback { Write-Host "Polled" }

```powershell
Invoke-WebbrowserTabPollingScript -Scripts "console.log('polling')" `
    -InitialUrl "https://example.com" `
    -Callback { Write-Host "Polled" }
```

## Related Links

- [Invoke-WebbrowserTabPollingScript on GitHub](https://github.com/genXdev/genXdev)
