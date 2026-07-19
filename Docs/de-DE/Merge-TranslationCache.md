# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Verwaltet den persistenten Übersetzungs-Cache mit gebündelten Datenträgerschreibvorgängen pro Sprache.

## Description

Verwaltet einen modul-spezifischen In-Memory-Übersetzungscache für Get-TextTranslation.
Der Cache ist in sprachspezifische JSON-Dateien unter
$env:LOCALAPPDATA\GenXdev.PowerShell\ aufgeteilt. Aufrufe zum Hinzufügen von Einträgen werden gebündelt –
Festplattenschreibvorgänge erfolgen nur alle 100 Mutationen pro Sprache oder wenn -PersistNow
aufgerufen wird. -PersistNow löscht auch den In-Memory-Cache, um unbegrenztes Wachstum
über Verarbeitungsbatches hinweg zu verhindern.

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
