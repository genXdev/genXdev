# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Удаляет двойные (подряд идущие) пустые строки из строки кода, опционально переформатируя вывод.

## Description

Очищает исходный код или текст, сжимая последовательные пустые строки в одну пустую строку. Это улучшает читаемость и соответствует общим соглашениям форматирования кода. При указании переключателя -Reformat применяются дополнительные правила форматирования для нормализации структуры кода.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | Исходный код или текстовая строка для обработки удаления двойных пустых строк |
| `-Reformat` | SwitchParameter | — | — | Named | — | Применение дополнительных правил форматирования, помимо удаления двойных пустых строк |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Пропускает исходный код через функцию для удаления последовательных пустых строк.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Удаляет двойные пустые строки и применяет дополнительное форматирование.

## Outputs

- `String`

## Related Links

- [Remove-DoubleEmptyLines on GitHub](https://github.com/genXdev/genXdev)
