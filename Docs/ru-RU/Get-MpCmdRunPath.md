# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает путь к исполняемому файлу Windows Defender MpCmdRun.exe.

## Description

* Находит и возвращает полный путь к служебной программе командной строки Защитника Windows (MpCmdRun.exe).
* Командлет проверяет стандартное расположение установки в Program Files и обеспечивает соответствующую обработку ошибок, если файл не найден.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Возвращает полный путь к инструменту командной строки Защитника Windows.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
