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
| `-Language` | String | ✅ | — | Named | — | Код языка BCP 47 для записи в кэш *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Кешируемый исходный текст *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Переведенный текст для сохранения *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Write all dirty caches to disk and clear memory *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Очистить кэш в памяти и удалить все файлы на диске *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Удалить непереведенные записи из всех языковых кэшей на диске *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
