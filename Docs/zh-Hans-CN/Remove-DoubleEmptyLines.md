# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> 从代码字符串中删除连续的空行，并可选择重新格式化输出。

## Description

通过将连续的空白行折叠为单个空行来清理源代码或文本。这提高了可读性，并遵循常见的代码格式规范。当指定 -Reformat 开关时，将应用额外的格式化规则来规范化代码结构。

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | 要处理用于删除双重空行的源代码或文本字符串 |
| `-Reformat` | SwitchParameter | — | — | Named | — | 应用额外的格式规则，除了删除连续空行之外 |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

function removeConsecutiveBlankLines(program) {
  return program.replace(/\n{3,}/g, '\n\n');
}

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

删除多余空行并应用附加格式。

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
