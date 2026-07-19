# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Neemt de controle over een geselecteerd webbrowsertabblad voor interactieve manipulatie.

## Description

Deze functie maakt interactieve controle mogelijk van een browsertabblad dat eerder is geselecteerd met Select-WebbrowserTab. Het biedt directe toegang tot de eigenschappen en methoden van het Microsoft Playwright Page-object, wat geautomatiseerde browserinteractie mogelijk maakt.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Gebruik het huidige tabblad in plaats van een nieuw te selecteren *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Start de browser opnieuw op als er geen foutopsporingsserver wordt gedetecteerd *(Parameter set: )* |

## Examples

### Unprotect-WebbrowserTab -UseCurrent

```powershell
Unprotect-WebbrowserTab -UseCurrent
```

### wbctrl -Force

```powershell
wbctrl -Force
```

## Related Links

- [Unprotect-WebbrowserTab on GitHub](https://github.com/genXdev/genXdev)
