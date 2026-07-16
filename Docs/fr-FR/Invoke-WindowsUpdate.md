# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
