# Get-CurrentFocusedProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает объект процесса окна, которое в данный момент имеет фокус ввода.

## Description

* Этот командлет использует вызовы Windows API через P/Invoke для идентификации и возврата объекта Process, связанного с окном, находящимся в фокусе в данный момент.
* Он использует функции User32.dll GetForegroundWindow и GetWindowThreadProcessId для определения того, какое окно имеет фокус, и получения его идентификатора процесса.

## Syntax

```powershell
Get-CurrentFocusedProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host "Active window process: $($focusedProcess.ProcessName)"
```

Извлекает объект процесса для окна, которое в данный момент имеет фокус ввода с клавиатуры.

## Related Links

- [Get-CurrentFocusedProcess on GitHub](https://github.com/genXdev/genXdev)
