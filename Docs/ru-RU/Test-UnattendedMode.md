# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Обнаруживает, работает ли PowerShell в автоматическом/автономном режиме.

## Description

* Анализирует различные индикаторы, чтобы определить, выполняется ли PowerShell в
  неконтролируемом или автоматизированном контексте.
* Проверяет анализ конвейеров, переменные среды, перенаправление консоли
  и контекст вызова.
* Если предоставлен CallersInvocation, анализирует позицию и количество
  элементов в конвейере для обнаружения автоматизированного выполнения конвейера или скрипта.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Информация о вызове для обнаружения конвейеров и автоматизации |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | 
{
  "prediction": "Safe",
  "confidence": 0.95,
  "reasoning": "The text is a straightforward mathematical expression and does not contain any unsafe, harmful, or sensitive content."
} |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Возвращает логическое значение, указывающее, выполняется ли работа в автоматическом режиме.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Анализирует контекст вызова звонящего и возвращает логическое значение.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Возвращает подробный объект анализа со всеми индикаторами.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Пример использования в функции для проверки автоматического режима.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
