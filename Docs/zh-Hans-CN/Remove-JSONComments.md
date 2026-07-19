# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 移除JSON内容中的注释。

## Description

处理 JSON 内容，移除单行和多行注释，同时保留 JSON 结构。
* 在解析前用于清理包含文档注释的 JSON 文件。
* 支持单行注释（//）和多行注释（/* */）。

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | First string Second string Third string |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

从存储在变量中的JSON内容中移除注释。

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

处理来自管道的JSON内容。

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
