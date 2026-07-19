# Get-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtient le chemin de base de données configuré pour les fichiers de données de préférences utilisés dans les opérations GenXdev.Data.

## Description

* Récupère le chemin de base de données global utilisé par le module GenXdev.Data pour
  divers stockages de préférences et opérations de données.
* Vérifie d'abord les variables globales (sauf si SkipSession est spécifié), puis
  se rabat sur les préférences persistantes, et enfin utilise les valeurs par défaut du système.

## Syntax

```powershell
Get-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Remplacement facultatif du chemin de la base de données |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferencesDatabasePath
```

Récupère le chemin de la base de données à partir des variables globales ou des préférences.

### Example 2

```powershell
Get-GenXdevPreferencesDatabasePath -SkipSession
```

Ignore la variable de session et utilise les préférences persistantes.

### Example 3

```powershell
Get-GenXdevPreferencesDatabasePath -ClearSession
```

Efface le paramètre de session avant de récupérer le chemin.

## Related Links

- [Get-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
