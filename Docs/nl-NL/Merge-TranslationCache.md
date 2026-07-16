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
| `-GetCache` | SwitchParameter | — | — | Named | — | Return the in-memory cache hashtable *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | BCP 47 taalcode voor de cache-vermelding *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | De brontekst om te cachen *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | De te vertalen tekst om op te slaan *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Schrijf alle vuile caches naar schijf en wis het geheugen *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Wis de cache in het geheugen en verwijder alle schijfbestanden *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Verwijder niet-vertaalde items uit alle taal-caches op de schijf *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
