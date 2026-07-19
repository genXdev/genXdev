# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs

## Synopsis

> 显示所有 PowerShell 动词的简短字母顺序列表。

## Description

以逗号分隔的列表显示 PowerShell 批准的动词。如果提供了特定动词作为输入，则仅显示匹配的动词。支持通配符。

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | 一个或多个要筛选的动词模式（支持通配符） 🌐 *Supports wildcards* |

## Examples

### Show-Verb Shows all approved PowerShell verbs

```powershell
Show-Verb
Shows all approved PowerShell verbs
```

### Show-Verb -Verb "Get*" Shows all approved verbs starting with "Get"

```powershell
Show-Verb -Verb "Get*"
Shows all approved verbs starting with "Get"
```

### showverbs "Set*", "Get*" Shows all approved verbs starting with "Set" or "Get" using the alias

```powershell
showverbs "Set*", "Get*"
Shows all approved verbs starting with "Set" or "Get" using the alias
```

## Related Links

- [Show-Verb on GitHub](https://github.com/genXdev/genXdev)
