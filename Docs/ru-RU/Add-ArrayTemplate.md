# Add-ArrayTemplate

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** `FormatArray

## Synopsis

> Форматирует коллекцию объектов, используя строку шаблона с заполнителями свойств, создавая единую форматированную строку.

## Description

Перебирает коллекцию объектов и применяет шаблонную строку с заполнителями {PropertyName} или {PropertyName:format} к каждому элементу. Отформатированные результаты объединяются с настраиваемым разделителем. Поддерживаются отступы, завершающие новые строки и завершающие разделители для гибкого форматирования вывода.

## Syntax

```powershell
Add-ArrayTemplate -InputObject <Collections.IEnumerable> -Template <String> [[-Delimiter] <String>] [[-Indentation] <Int32>] [-EndDelimiter] [-NewLine] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Collections.IEnumerable | ✅ | ✅ (ByValue) | 0 | — | Коллекция объектов для форматирования |
| `-Template` | String | ✅ | — | 1 | — | The template string with {PropertyName} or {PropertyName:format} placeholders |
| `-Delimiter` | String | — | — | 2 | `"`n"` | Строка-разделитель, вставляемая между отформатированными элементами |
| `-Indentation` | Int32 | — | — | 3 | `0` | Количество уровней отступа (4 пробела на уровень) для применения |
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

Name: Alice
Age: 30

Name: Bob
Age: 25

Формирует массив хеш-таблиц с заполнителями свойств.

### $items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1

```powershell
$items | FormatArray -Template "  - {Name}" -Delimiter ", " -Indentation 1
```

Использует псевдоним FormatArray с отступами и пользовательским разделителем.

## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate on GitHub](https://github.com/genXdev/genXdev)
