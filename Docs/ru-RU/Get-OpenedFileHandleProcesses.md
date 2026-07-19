# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Запускает процессы, имеющие открытые файловые дескрипторы к указанным файлам.

## Description

* Использует инструмент handle.exe из набора Sysinternals для идентификации процессов, которые в данный момент имеют открытые дескрипторы одного или нескольких указанных файлов.
* Полезен для определения процессов, препятствующих операциям с файлами, таким как удаление или изменение.
* Требует установки handle.exe из пакета Sysinternals и его доступности в системном пути.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Путь к файлу(ам) для проверки открытых дескрипторов |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Определяет все процессы, которые имеют открытые дескрипторы для указанного файла.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Проверяет несколько файлов через конвейерный ввод на наличие процессов с открытыми дескрипторами.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
