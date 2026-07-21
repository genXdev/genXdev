# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> 从代码字符串中删除连续的双空行，可选地重新格式化输出。

## Description

清理源代码或文本，将连续的空行合并为一个空行。这提高了可读性，并遵循了常见的代码格式规范。当指定 -Reformat 开关时，会应用额外的格式规则来规范化代码结构。

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | 用于去除连续两个空行的源代码或文本字符串。 |
| `-Reformat` | SwitchParameter | — | — | Named | — | 应用额外的格式规则，而不仅仅是删除双空行 |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

通过函数传递源代码以移除连续的空行。

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

删除多余空行并应用其他格式。

## Parameter Details

### `-code <String>`

> 用于去除连续两个空行的源代码或文本字符串。

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> 应用额外的格式规则，而不仅仅是删除双空行

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Add-ArrayTemplate.md)
