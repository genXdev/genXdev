# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray`

## Synopsis

> Форматирует коллекцию объектов с помощью строки шаблона с заполнителями свойств, создавая единую отформатированную строку.

## Description

Перебирает коллекцию объектов и применяет строку шаблона с заполнителями {PropertyName} или {PropertyName:format} к каждому элементу. Отформатированные результаты объединяются с настраиваемым разделителем. Поддерживает отступы, завершающие новые строки и завершающие разделители для гибкого форматирования вывода.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Коллекция объектов для форматирования |
| `-Template` | String | ✅ | — | 1 | — | Строка шаблона с заполнителями {PropertyName} или {PropertyName:format} |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Строка-разделитель для вставки между форматированными элементами |
| `-Indentation` | Int32 | — | — | 3 | `0` | Количество уровней отступа (4 пробела на уровень) для применения |
| `-NewLine` | SwitchParameter | — | — | Named | `$false` | Добавляет завершающий разделитель после последнего элемента |
| `-EndDelimiter` | SwitchParameter | — | — | Named | `$false` | Добавить разделитель в конце, если массив не пустой |

## Examples

### @(     @{ Name = "Alice"; Age = 30 }     @{ Name = "Bob"; Age = 25 } ) | Add-ArrayTemplate -Template "{Name} is {Age} years old"

```powershell
@(
    @{ Name = "Alice"; Age = 30 }
    @{ Name = "Bob"; Age = 25 }
) | Add-ArrayTemplate -Template "{Name} is {Age} years old"
```

Имя: Алиса
Возраст: 30

Имя: Боб
Возраст: 25

Форматирует массив хеш-таблиц с заполнителями свойств.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Использует псевдоним FormatArray с отступом и пользовательским разделителем.

## Parameter Details

### `-InputObject <Collections.IEnumerable>`

> Коллекция объектов для форматирования

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

> Строка шаблона с заполнителями {PropertyName} или {PropertyName:format}

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

> Строка-разделитель для вставки между форматированными элементами

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

> Количество уровней отступа (4 пробела на уровень) для применения

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

> Добавляет завершающий разделитель после последнего элемента

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

> Добавить разделитель в конце, если массив не пустой

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

- [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-DoubleEmptyLines.md)
