# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Запускает процесс с указанным уровнем приоритета.

## Description

* Запускает исполняемый файл с настраиваемым уровнем приоритета и предоставляет
  опции для ожидания и управления процессом.
* Расширяет Start-Process дополнительными функциями для управления
  приоритетом процесса и поведением выполнения.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Путь к исполняемому файлу |
| `-ArgumentList` | String[] | — | — | 1 | — | Arguments to pass to the executable |
| `-Priority` | String | — | — | 2 | — | Уровень приоритета процесса |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Не ждите завершения процесса |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Возвращает объект процесса |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Запускает Блокнот с низким приоритетом и немедленно возвращает управление.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Использует псевдоним 'nice' для запуска процесса с высоким приоритетом.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
