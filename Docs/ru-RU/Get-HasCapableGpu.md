# Get-HasCapableGpu

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Определяет, присутствует ли графический процессор с поддержкой CUDA и достаточным объемом памяти.

## Description

Проверяет систему на наличие CUDA-совместимых графических процессоров с объемом видеопамяти не менее 4 ГБ. Использует инструментарий управления Windows (WMI) для запроса установленных видеоадаптеров и проверки их емкости памяти. Эта проверка необходима для задач ИИ, требующих значительного объема памяти графического процессора.

## Syntax

```powershell
Get-HasCapableGpu [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$hasGpu = Get-HasCapableGpu
Write-Host "System has capable GPU: $hasGpu"
```

Проверяет, есть ли в системе GPU с поддержкой CUDA и достаточным объемом памяти.

## Related Links

- [Get-HasCapableGpu on GitHub](https://github.com/genXdev/genXdev)
