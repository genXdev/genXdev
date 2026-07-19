# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Gère le cache de traduction persistant avec des écritures disque par lot par langue.

## Description

Maintient un cache de traduction en mémoire au niveau du module pour Get-TextTranslation. Le cache est divisé en fichiers JSON par langue sous $env:LOCALAPPDATA\GenXdev.PowerShell\. Les appels pour ajouter des entrées sont regroupés — les écritures sur disque ont lieu seulement toutes les 100 mutations par langue, ou lorsque -PersistNow est appelé. -PersistNow efface également le cache mémoire pour empêcher une croissance illimitée entre les lots de traitement.

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

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
