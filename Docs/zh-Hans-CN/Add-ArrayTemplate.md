# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> 使用带有属性占位符的模板字符串格式化对象集合，生成单个格式化字符串。

## Description

遍历对象集合并对每一项应用包含 {PropertyName} 或 {PropertyName:format} 占位符的模板字符串。格式化的结果使用可配置的分隔符连接。支持缩进、尾随换行和尾随分隔符，以实现灵活的输出格式。

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | The collection of objects to format |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | 在格式化的项之间插入的分隔符字符串 |
| `-Indentation` | Int32 | — | — | 3 | `0` | 要应用的缩进级别数（每级4个空格） |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Appends a trailing delimiter after the final item |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Add delimiter at end when array not empty |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

[
  {"Name": "Alice", "Age": 30},
  {"Name": "Bob", "Age": 25}
]

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

使用 FormatArray 别名，带有缩进和自定义分隔符。

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
