# Remove-OnReboot

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Помечает файлы или каталоги для удаления во время следующей загрузки системы.

## Description

* Использует Windows API для пометки файлов на удаление при следующей загрузке.
* Обрабатывает заблокированные файлы, сначала пытаясь переименовать их во временные имена, и отслеживает все перемещения для поддержания целостности файловой системы.
* Если переименование не удается, можно использовать параметр -MarkInPlace, чтобы пометить файлы в их исходном расположении.

## Syntax

```powershell
Remove-OnReboot [-Path] <string[]> [-MarkInPlace] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String[] | ✅ | ✅ (ByValue) | 0 | — | Путь(и) к файлам/каталогам, которые нужно пометить для удаления |
| `-MarkInPlace` | SwitchParameter | — | — | Named | `False` | Помечает файлы для удаления без переименования |

## Examples

### Example 1

```powershell
Remove-OnReboot -Path "C:\temp\locked-file.txt"
```

Помечает заблокированный файл для удаления при следующей загрузке системы.

### Example 2

```powershell
"file1.txt","file2.txt" | Remove-OnReboot -MarkInPlace
```

Помечает несколько файлов для удаления, используя MarkInPlace для тех, которые невозможно переименовать.

## Related Links

- [Remove-OnReboot on GitHub](https://github.com/genXdev/genXdev)
