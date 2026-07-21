# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> 使用包含属性占位符的模板字符串格式化对象集合，生成单个格式化字符串。

## Description

遍历对象集合，并将带有 {PropertyName} 或 {PropertyName:format} 占位符的模板字符串应用于每个项。格式化后的结果使用可配置的分隔符连接。支持缩进、尾随换行符和尾随分隔符，以实现灵活的输出格式。

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | 要格式化的对象集合 |
| `-Template` | String | ✅ | — | 1 | — | 包含 {PropertyName} 或 {PropertyName:format} 占位符的模板字符串 |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 要在格式化项之间插入的分隔符字符串 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 要应用的缩进级别数（每个级别4个空格） |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | 在最后一项后追加尾部分隔符 |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | 当数组不为空时，在末尾添加分隔符 |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

名称：Alice
年龄：30

名称：Bob
年龄：25

将包含属性占位符的哈希表数组格式化。

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

使用 FormatArray 别名并带有缩进和自定义分隔符。

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> 要格式化的对象集合

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Template <String>`

> 包含 {PropertyName} 或 {PropertyName:format} 占位符的模板字符串

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Delimiter <String>`

> 要在格式化项之间插入的分隔符字符串

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `"`n"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Indentation <Int32>`

> 要应用的缩进级别数（每个级别4个空格）

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NewLine`

> 在最后一项后追加尾部分隔符

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EndDelimiter`

> 当数组不为空时，在末尾添加分隔符

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-DoubleEmptyLines.md)
