# Get-IsSpeaking

> **Module:** GenXdev.Console | **Type:** Cmdlet | **Aliases:** `iss

## Synopsis

> Возвращает true, если движок преобразования текста в речь в данный время говорит.

## Description

Проверяет состояние как стандартного, так и пользовательского синтезаторов речи, чтобы определить, говорит ли в данный момент какой-либо из них. Возвращает true, если речь выполняется, и false в противном случае.

## Syntax

```powershell
Get-IsSpeaking [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-IsSpeaking
```

Возвращает true, если движок преобразования текста в речь в данный время говорит.

### Example 2

```powershell
iss
```

Возвращает true, если движок преобразования текста в речь говорит (с использованием псевдонима).

## Related Links

- [Get-IsSpeaking on GitHub](https://github.com/genXdev/genXdev)
