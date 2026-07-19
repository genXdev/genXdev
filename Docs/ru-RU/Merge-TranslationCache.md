# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Управляет постоянным кэшем переводов с групповой записью на диск для каждого языка.

## Description

Поддерживает кэш переводов в памяти на уровне модуля для Get-TextTranslation. Кэш разбит на файлы JSON на каждый язык в каталоге $env:LOCALAPPDATA\GenXdev.PowerShell\. Вызовы для добавления записей группируются — запись на диск происходит только после каждых 100 изменений на язык или при вызове -PersistNow. -PersistNow также очищает кэш в памяти, чтобы предотвратить неограниченный рост в процессе обработки пакетов.

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
| `-Language` | String | ✅ | — | Named | — | Код языка BCP 47 для записи в кэш *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Кешируемый исходный текст *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Переведенный текст для сохранения *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Write all dirty caches to disk and clear memory *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Очистить кэш в памяти и удалить все файлы на диске *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Удалить непереведенные записи из всех языковых кэшей на диске *(Parameter set: )* |

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
