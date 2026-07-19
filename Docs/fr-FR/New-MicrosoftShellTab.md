# New-MicrosoftShellTab

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `x

## Synopsis

> Crée un nouvel onglet Windows Terminal exécutant PowerShell.

## Description

Ouvre un nouvel onglet Windows Terminal en simulant le raccourci clavier Ctrl+Shift+T.
La fonction amène la fenêtre PowerShell au premier plan, envoie la combinaison de touches
et ferme éventuellement l'onglet actuel après un délai.

## Syntax

```powershell
New-MicrosoftShellTab [-DontCloseThisTab] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DontCloseThisTab` | SwitchParameter | — | — | Named | — | Rester sur l'onglet actuel après avoir créé un nouvel onglet |

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
