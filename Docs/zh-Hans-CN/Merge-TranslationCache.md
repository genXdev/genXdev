# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 管理每种语言的持久化翻译缓存，采用批量磁盘写入方式。

## Description

维护一个模块作用域的内存翻译缓存，用于 Get-TextTranslation。缓存按语言拆分为多个 JSON 文件，存放在 $env:LOCALAPPDATA\GenXdev.PowerShell\ 目录下。添加条目的操作会进行批量处理——每门语言每发生 100 次变更，或调用 -PersistNow 时，才会执行磁盘写入。-PersistNow 还会清空内存缓存，以防止跨处理批次的无限制增长。

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
