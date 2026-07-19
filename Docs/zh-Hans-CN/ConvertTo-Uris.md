# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 解析任何合法URI的字符串。

## Description

从输入文本中提取所有有效的URI，支持标准及自定义URI方案（如http:、https:、ftp:、magnet:、about:等）。为每个找到的有效URI返回Uri对象。

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Text input that may contain URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

解析提供的文本字符串中的URI并返回Uri对象。

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

将文本字符串通过管道传递给用于 URI 解析的 cmdlet。

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
