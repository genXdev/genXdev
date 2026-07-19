# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> Maakt een nieuw Windows Terminal tabblad met PowerShell.

## Description

Opent een nieuw tabblad in Windows Terminal door de toetscombinatie Ctrl+Shift+T te simuleren.
De functie brengt het PowerShell-venster naar de voorgrond, stuurt de toetscombinatie,
en sluit optioneel het huidige tabblad na een vertraging.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Huidig tabblad open houden na het maken van een nieuw tabblad |

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
