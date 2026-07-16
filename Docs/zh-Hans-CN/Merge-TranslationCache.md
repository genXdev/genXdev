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
| `-Language` | String | ✅ | — | Named | — | BCP 47 语言代码用于缓存条目 *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | The source text to cache *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | The translated text to store *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | 将所有脏缓存写入磁盘并清理内存 *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | 清除内存缓存并删除所有磁盘文件 *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | 从磁盘上的所有语言缓存中移除未翻译的条目 *(Parameter set: )* |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Merge-TranslationCache on GitHub](https://github.com/genXdev/genXdev)
