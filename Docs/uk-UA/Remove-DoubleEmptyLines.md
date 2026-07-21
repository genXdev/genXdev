# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Видаляє подвійні (послідовні) порожні рядки з рядка коду, за бажанням переформатовуючи вихідні дані.

## Description

Очищує вихідний код або текст шляхом згортання послідовних порожніх рядків в один порожній рядок. Це покращує читабельність і відповідає загальноприйнятим правилам форматування коду. Якщо вказано параметр -Reformat, застосовуються додаткові правила форматування для нормалізації структури коду.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Вихідний код або текстовий рядок для обробки з метою видалення подвійних порожніх рядків |
| `-Reformat` | SwitchParameter | — | — | Named | — | @{response=} |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Пропускає вихідний код через функцію для видалення послідовних порожніх рядків.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Видаляє подвійні порожні рядки та застосовує додаткове форматування.

## Parameter Details

### `-code <String>`

> Вихідний код або текстовий рядок для обробки з метою видалення подвійних порожніх рядків

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

> @{response=}

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

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-ArrayTemplate.md)
