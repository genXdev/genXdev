# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retourne une collection de navigateurs web modernes installés.

## Description

* Découvre et renvoie des détails sur les navigateurs web modernes installés sur le système.
* Récupère des informations comprenant le nom, la description, le chemin de l'icône, le chemin de l'exécutable et le statut de navigateur par défaut en interrogeant le registre Windows.
* Renvoie uniquement les navigateurs disposant des fonctionnalités requises enregistrées dans Windows.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Sélectionne les instances du navigateur Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Sélectionne les instances du navigateur Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Sélectionne le navigateur par défaut basé sur Chromium *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Sélectionne les instances du navigateur Firefox *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Retourne une collection de tous les navigateurs web modernes installés.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filtres pour afficher uniquement le navigateur par défaut du système.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
