# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 解析字符串以查找任何有效的 URI。

## Description

* 从输入文本中提取所有有效的URI，支持标准以及自定义URI方案，例如http:、https:、ftp:、magnet:、about:等。
* 为每个找到的有效URI返回Uri对象。

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | 可能包含 URI 的文本输入 |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

解析提供的文本字符串中的 URI 并返回 Uri 对象。

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

将文本字符串传递给 cmdlet 以进行 URI 解析。

## Parameter Details

### `-Text <String[]>`

> 可能包含 URI 的文本输入

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Open-AllPossibleQueries.md)
