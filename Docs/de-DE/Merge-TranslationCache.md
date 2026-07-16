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
| `-GetCache` | SwitchParameter | — | — | Named | — | Gibt die In-Memory-Cache-Hashtabelle zurück *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | BCP 47 language code for the cache entry *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Der zu cachende Quelltext *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Der zu speichernde übersetzte Text *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Write all dirty caches to disk and clear memory *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Leeren Sie den Cache im Arbeitsspeicher und löschen Sie alle Datenträgerdateien *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Entferne nicht übersetzte Einträge aus allen Sprachcaches auf der Festplatte *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
