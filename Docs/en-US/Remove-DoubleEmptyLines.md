# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Removes double (consecutive) empty lines from a code string, optionally
reformatting the output.

## Description

Cleans up source code or text by collapsing consecutive blank lines into a
single empty line. This improves readability and follows common code
formatting conventions. When the -Reformat switch is specified, additional
formatting rules are applied to normalize the code structure.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | The source code or text string to process for double empty line removal |
| `-Reformat` | SwitchParameter | — | — | Named | — | Apply additional formatting rules beyond double empty line removal |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Pipes source code through the function to remove consecutive blank lines.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Removes double empty lines and applies additional formatting.

## Parameter Details

### `-code <String>`

> The source code or text string to process for double empty line removal

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

> Apply additional formatting rules beyond double empty line removal

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-ArrayTemplate.md)
