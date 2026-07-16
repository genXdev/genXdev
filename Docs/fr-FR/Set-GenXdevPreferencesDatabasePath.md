# Set-GenXdevPreferencesDatabasePath

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-GenXdevPreferencesDatabasePath on GitHub](https://github.com/genXdev/genXdev)
