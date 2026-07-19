# Unprotect-WebbrowserTab

> **Module:** GenXdev.Webbrowser.Playwright | **Type:** Function | **Aliases:** `wbctrl

## Synopsis

> Prend le contrôle d'un onglet de navigateur sélectionné pour une manipulation interactive.

## Description

Cette fonction permet le contrôle interactif d'un onglet de navigateur précédemment sélectionné à l'aide de Select-WebbrowserTab. Elle donne accès direct aux propriétés et méthodes de l'objet Page de Microsoft Playwright, permettant une interaction automatisée avec le navigateur.

## Syntax

```powershell
Unprotect-WebbrowserTab [-Force] [-UseCurrent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-UseCurrent` | SwitchParameter | — | — | Named | — | Utiliser l'onglet actuel au lieu d'en sélectionner un nouveau *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Redémarrer le navigateur si aucun serveur de débogage n'est détecté *(Parameter set: )* |

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
