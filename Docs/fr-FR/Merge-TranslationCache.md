# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Retourne la table de hachage du cache en mémoire *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Code de langue BCP 47 pour l'entrée du cache *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Le texte source à mettre en cache *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Le texte traduit à stocker *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Écrire tous les caches sales sur le disque et vider la mémoire *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Effacez le cache en mémoire et supprimez tous les fichiers disque *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Supprimer les entrées non traduites de tous les caches de langues sur le disque *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
