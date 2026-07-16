# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | 目录、文件路径或目录+搜索掩码 |
| `-FindText` | String | ✅ | — | 1 | — | 要查找的文本（大小写敏感性由 CaseInsensitive 参数控制） |
| `-ReplacementText` | String | ✅ | — | 2 | — | 要替换匹配的文本 |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
