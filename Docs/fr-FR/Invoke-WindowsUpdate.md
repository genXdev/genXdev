# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Vérifie si Windows est à jour et installe optionnellement les mises à jour disponibles.

## Description

Cette fonction vérifie les mises à jour Windows, les mises à jour des packages winget et les mises à jour des modules PowerShell. Elle peut afficher les mises à jour disponibles ou les installer automatiquement. La fonction nécessite des privilèges administratifs pour installer les mises à jour Windows et peut éventuellement redémarrer le système si les mises à jour nécessitent un redémarrage.

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Installation automatique des mises à jour Windows disponibles |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Redémarrer automatiquement si les mises à jour nécessitent un redémarrage |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Critères de recherche personnalisés pour Windows Update |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Inclure les pilotes dans la recherche de mise à jour |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Sortie groupée et colorée par catégorie de mise à jour |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Désactiver la sortie de bannière/statut |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Ignorer la vérification/notification de redémarrage requise |

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Recherche les mises à jour disponibles pour Windows et winget sans les installer.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Installe automatiquement toutes les mises à jour Windows et winget disponibles.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Installe toutes les mises à jour et redémarre automatiquement si nécessaire en utilisant l'alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Affiche les mises à jour disponibles regroupées par catégorie pour une meilleure organisation.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Vérifie les mises à jour, y compris les pilotes, avec des critères de recherche personnalisés.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
