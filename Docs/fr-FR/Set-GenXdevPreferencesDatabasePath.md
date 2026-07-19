# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Définit le chemin de la base de données pour les préférences utilisées dans les opérations GenXdev.Data.

## Description

* Configure le chemin de base de données global utilisé par le module GenXdev.Data pour
  divers stockages de préférences et opérations de données.
* Les paramètres sont stockés dans la session en cours (à l'aide de variables globales) et
  peuvent être effacés de la session (à l'aide de -ClearSession).

## Syntax

```powershell
Set-GenXdevPreferencesDatabasePath [[-PreferencesDatabasePath] <string>] [-SkipSession] [-SessionOnly] [-ClearSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PreferencesDatabasePath` | String | — | — | 0 | — | Chemin d'accès à la base de données où se trouvent les fichiers de données de préférences |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | N'utilisez pas de paramètres alternatifs stockés dans la session pour les préférences de données telles que la langue, les chemins de base de données, etc. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Lorsqu'elle est spécifiée, stocke le paramètre uniquement dans la session en cours (variable globale) sans le persister dans les préférences |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Lorsqu'il est spécifié, efface uniquement le paramètre de session (variable globale) sans affecter les préférences persistantes |

## Examples

### Example 1

```powershell
Set-GenXdevPreferencesDatabasePath -PreferencesDatabasePath "C:\Data\Preferences.db"
```

Définit le chemin de la base de données dans la session courante (variable globale).

### Example 2

```powershell
Set-GenXdevPreferencesDatabasePath "C:\MyPreferences.db"
```

Définit le chemin de la base de données en utilisant un paramètre positionnel.

### Example 3

```powershell
Set-GenXdevPreferencesDatabasePath "C:\TempPrefs.db" -SessionOnly
```

Définit le chemin uniquement pour la session en cours sans le conserver.

### Example 4

```powershell
Set-GenXdevPreferencesDatabasePath -ClearSession
```

Efface la variable globale pour le chemin de la base de données.

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
