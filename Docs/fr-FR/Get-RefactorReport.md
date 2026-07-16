# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Spécifie le chemin vers le fichier de base de données des préférences. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Si activé, utilise uniquement le cache de session pour les données de refactorisation. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Si défini, vide le cache de session avant d'exécuter. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Si défini, ignorer le chargement du cache de session. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
