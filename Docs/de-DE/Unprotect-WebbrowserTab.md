# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> Übernimmt die Kontrolle über einen ausgewählten Webbrowser-Tab für interaktive Bearbeitung.

## Description

Diese Funktion ermöglicht die interaktive Steuerung eines Browser-Tabs, der zuvor mit Select-WebbrowserTab ausgewählt wurde. Sie bietet direkten Zugriff auf die Eigenschaften und Methoden des Microsoft Playwright Page-Objekts und ermöglicht so automatisierte Browser-Interaktionen.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Verwenden Sie die aktuelle Registerkarte anstatt eine neue auszuwählen *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Browser neu starten, wenn kein Debugging-Server erkannt wird *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Parameter Details

### `-UseCurrent`

> Verwenden Sie die aktuelle Registerkarte anstatt eine neue auszuwählen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `current` |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-Force`

> Browser neu starten, wenn kein Debugging-Server erkannt wird

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
## Related Links

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/de-DE/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/de-DE/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-WebbrowserVideos.md)
