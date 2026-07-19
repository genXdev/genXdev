# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Beheert de permanente vertaalcache met gebufferde schijfschrijfbewerkingen per taal.

## Description

Onderhoudt een module-omvang in-memory vertaalcache voor Get-TextTranslation.
De cache wordt opgesplitst in per-taal JSON-bestanden onder
$env:LOCALAPPDATA\GenXdev.PowerShell\. Oproepen om items toe te voegen worden gebundeld —
schrijfbewerkingen naar schijf vinden alleen plaats om de 100 mutaties per taal, of wanneer -PersistNow
wordt aangeroepen. -PersistNow wist ook de in-memory cache om onbeperkte groei
over verwerkingsbatches te voorkomen.

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
