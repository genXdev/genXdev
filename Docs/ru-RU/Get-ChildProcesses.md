# Get-ChildProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Получает все процессы, которые являются потомками текущего процесса PowerShell.

## Description

* Проверяет все запущенные процессы и определяет те, у которых текущий
  процесс PowerShell является предком в цепочке родительских процессов.
* Это включает как прямые дочерние процессы, так и их потомков
  (внуки и т.д.).

## Syntax

```powershell
Get-ChildProcesses [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ChildProcesses
```

Получить все дочерние процессы текущего сеанса PowerShell.

### Example 2

```powershell
Get-ChildProcesses -Verbose
```

Получить дочерние процессы с подробным выводом, показывающим детальную информацию обнаружения процессов.

## Related Links

- [Get-ChildProcesses on GitHub](https://github.com/genXdev/genXdev)
