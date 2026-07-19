# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> Erstellt einen neuen Windows-Terminal-Tab, der PowerShell ausführt.

## Description

Öffnet einen neuen Windows-Terminal-Tab durch Simulieren der Tastenkombination Strg+Umschalt+T.
Die Funktion bringt das PowerShell-Fenster in den Vordergrund, sendet die Tastenkombination und schließt optional den aktuellen Tab nach einer Verzögerung.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Aktuellen Tab nach dem Erstellen eines neuen Tabs geöffnet lassen |

## Examples

### New-MicrosoftShellTab -DontCloseThisTab Creates a new terminal tab while keeping the current tab open.

```powershell
New-MicrosoftShellTab -DontCloseThisTab
Creates a new terminal tab while keeping the current tab open.
```

### x Creates a new terminal tab and closes the current one after 3 seconds.

```powershell
x
Creates a new terminal tab and closes the current one after 3 seconds.
```

## Related Links

- [New-MicrosoftShellTab on GitHub](https://github.com/genXdev/genXdev)
