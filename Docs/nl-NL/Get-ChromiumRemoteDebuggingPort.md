# Get-ChromiumRemoteDebuggingPort

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Geeft de externe foutopsporingspoort terug voor de standaard Chromium-browser van het systeem.

## Description

Detecteert of Microsoft Edge of Google Chrome de standaardbrowser is en retourneert het juiste foutopsporingspoortnummer. Als Chrome de standaardbrowser is, retourneert het de Chrome-foutopsporingspoort. Anders retourneert het de Edge-foutopsporingspoort (ook gebruikt wanneer er geen standaardbrowser wordt gedetecteerd).

## Syntax

```powershell
Get-ChromiumRemoteDebuggingPort [-Chrome] [-Edge] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Chrome` | SwitchParameter | — | — | Named | — | The `-Chrome` parameter. |
| `-Edge` | SwitchParameter | — | — | Named | — | The `-Edge` parameter. |

## Examples

### Get debugging port using full command name Get-ChromiumRemoteDebuggingPort

```powershell
Get debugging port using full command name
Get-ChromiumRemoteDebuggingPort
```

### Get debugging port using alias Get-BrowserDebugPort

```powershell
Get debugging port using alias
Get-BrowserDebugPort
```

## Outputs

- `[int] The remote debugging port number for the detected browser.`
- `Int32`

## Related Links

- [Get-ChromiumRemoteDebuggingPort on GitHub](https://github.com/genXdev/genXdev)
