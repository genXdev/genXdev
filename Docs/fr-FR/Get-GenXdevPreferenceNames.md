# Get-GenXdevPreferenceNames

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `getPreferenceNames

## Synopsis

> Obtient tous les noms de préférence du stockage de session et des bases de données.

## Description

Récupère une liste unique de noms de préférences en combinant les clés du stockage de session (variables globales) et des magasins de préférences locaux et par défaut. Respecte les paramètres de gestion de session pour contrôler les sources interrogées.

## Syntax

```powershell
Get-GenXdevPreferenceNames [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utiliser les paramètres alternatifs stockés dans la session pour les préférences de données comme la langue, les chemins de base de données, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Effacer le paramètre de session (variable globale) avant de récupérer |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Chemin de la base de données pour les fichiers de données de préférence |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |

## Examples

### Example 1

```powershell
Get-GenXdevPreferenceNames -PreferencesDatabasePath "C:\Data\prefs.db"
```

Retourne un tableau trié de noms de préférences uniques provenant du stockage de session et des deux magasins en utilisant le chemin de base de données spécifié.

### Example 2

```powershell
getPreferenceNames -SessionOnly
```

Retourne uniquement les noms des préférences depuis le stockage de session.

### Example 3

```powershell
getPreferenceNames -SkipSession
```

Retourne uniquement les noms de préférences depuis les magasins de base de données.

## Related Links

- [Get-GenXdevPreferenceNames on GitHub](https://github.com/genXdev/genXdev)
