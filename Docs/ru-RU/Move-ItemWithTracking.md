# Move-ItemWithTracking

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Перемещает файлы и каталоги, сохраняя ссылки на файловую систему и ссылки.

## Description

* Использует API Windows MoveFileEx для перемещения файлов и каталогов с включенным отслеживанием ссылок, обеспечивая сохранение ссылок файловой системы.
* Если исходный путь находится под управлением Git, пытается использовать git mv для отслеживания переименования в Git.
* В случае отсутствия Git или сбоя git mv возвращается к MoveFileEx.

## Syntax

```powershell
Move-ItemWithTracking [-Path] <string> [-Destination] <string> [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Исходный путь файла/каталога для перемещения |
| `-Destination` | String | ✅ | — | 1 | — | Путь назначения для перемещения |
| `-Force` | SwitchParameter | — | — | Named | `False` | Перезаписывать файл назначения, если он существует |

## Examples

### Example 1

```powershell
Move-ItemWithTracking -Path "C:\temp\oldfile.txt" -Destination "D:\newfile.txt"
```

Перемещает файл с сохранением ссылок файловой системы и отслеживания Git.

### Example 2

```powershell
"C:\temp\olddir" | Move-ItemWithTracking -Destination "D:\newdir" -Force
```

Перемещает директорию, перезаписывая целевой путь, если он существует.

## Related Links

- [Move-ItemWithTracking on GitHub](https://github.com/genXdev/genXdev)
