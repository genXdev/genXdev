# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Форматує колекцію об'єктів за допомогою рядка шаблону з заповнювачами властивостей, створюючи єдиний відформатований рядок.

## Description

Перебирає колекцію об'єктів і застосовує рядок шаблону з заповнювачами {PropertyName} або {PropertyName:format} до кожного елемента. Відформатовані результати об'єднуються за допомогою настроюваного роздільника. Підтримує відступи, кінцеві рядки та кінцеві роздільники для гнучкого форматування виведення.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Колекція об'єктів для форматування |
| `-Template` | String | ✅ | — | 1 | — | Рядок шаблону з {PropertyName} або {PropertyName:format} заповнювачами |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Рядок-роздільник, що вставляється між відформатованими елементами |
| `-Indentation` | Int32 | — | — | 3 | `0` | Кількість рівнів відступу (4 пробіли на рівень) |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Додає завершальний роздільник після останнього елемента |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Додати роздільник в кінці, коли масив не порожній |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Ім'я: Alice
Вік: 30

Ім'я: Bob
Вік: 25

Форматує масив хеш-таблиць із заповнювачами властивостей.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Використовує псевдонім FormatArray з відступами та власним роздільником.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Колекція об'єктів для форматування

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

> Рядок шаблону з {PropertyName} або {PropertyName:format} заповнювачами

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

> Рядок-роздільник, що вставляється між відформатованими елементами

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

> Кількість рівнів відступу (4 пробіли на рівень)

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

> Додає завершальний роздільник після останнього елемента

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

> Додати роздільник в кінці, коли масив не порожній

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-DoubleEmptyLines.md)
