# Get-PowershellMainWindowProcess

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает объект процесса для окна, в котором размещается терминал PowerShell.

## Description

* Обходит дерево процессов, начиная с текущего процесса PowerShell, чтобы найти родительское окно, отвечающее за размещение терминала.
* Если непосредственный родительский процесс не имеет дескриптора главного окна, выполняется поиск похожих процессов, у которых есть главные окна.
* Полезно для определения фактического процесса окна терминала (например, Windows Terminal, ConHost и т.д.), в котором выполняется сеанс PowerShell.

## Syntax

```powershell
Get-PowershellMainWindowProcess [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hostProcess = Get-PowershellMainWindowProcess
Write-Host "PowerShell is hosted in: $($hostProcess.ProcessName)"
```

Возвращает процесс, в котором выполняется текущий сеанс PowerShell, и отображает его имя.

## Related Links

- [Get-PowershellMainWindowProcess on GitHub](https://github.com/genXdev/genXdev)
