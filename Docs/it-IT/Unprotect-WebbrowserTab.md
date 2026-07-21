# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl`

## Synopsis

> Prende il controllo di una scheda del browser selezionata per la manipolazione interattiva.

## Description

Questa funzione consente il controllo interattivo di una scheda del browser precedentemente selezionata utilizzando Select-WebbrowserTab. Fornisce accesso diretto alle proprietà e ai metodi dell'oggetto Page di Microsoft Playwright, consentendo l'interazione automatizzata con il browser.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Usa la scheda corrente invece di selezionarne una nuova *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Riavvia il browser se non viene rilevato un server di debug *(Parameter set: )* |

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

> Usa la scheda corrente invece di selezionarne una nuova

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

> Riavvia il browser se non viene rilevato un server di debug

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

- [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Connect-PlaywrightViaDebuggingPort.md)
- [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-PlaywrightProfileDirectory.md)
- [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Open-PlayWrightBrowser.md)
- [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Resume-WebbrowserTabVideo.md)
- [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-WebbrowserVideos.md)
