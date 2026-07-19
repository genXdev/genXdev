# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Übernimmt die Kontrolle über einen ausgewählten Webbrowser-Tab zur interaktiven Manipulation.

## Description

Diese Funktion ermöglicht die interaktive Steuerung eines Browser-Tabs, der zuvor mit Select-WebbrowserTab ausgewählt wurde. Sie bietet direkten Zugriff auf die Eigenschaften und Methoden des Microsoft Playwright Page-Objekts und ermöglicht automatisierte Browser-Interaktion.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Verwende den aktuellen Tab anstatt einen neuen auszuwählen *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Neustart des Browsers, wenn kein Debugging-Server erkannt wird *(Parameter set: )* |

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
