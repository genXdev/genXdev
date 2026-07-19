# Get-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `getclipfiles, `gcbf

## Synopsis

> Получает файлы из буфера обмена Windows, которые были установлены для операций с файлами, таких как копирование/вставка.

## Description

* Эта функция извлекает пути к файлам из буфера обмена Windows, которые
  были ранее установлены для операций с файлами.
* Она автоматически обрабатывает режимы потоков STA и MTA, обеспечивая
  совместимость в различных контекстах выполнения PowerShell.
* Функция проверяет существование файлов и возвращает только существующие
  файлы/каталоги в виде объектов, аналогичных выводу Get-ChildItem или Get-Item.

## Syntax

```powershell
Get-ClipboardFiles [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-ClipboardFiles
```

Получить все файлы, находящиеся в данный момент в буфере обмена, как объекты файловой системы.

### Example 2

```powershell
$clipboardFiles = Get-ClipboardFiles
$clipboardFiles | ForEach-Object { Write-Host $_.FullName }
```

Получить файлы из буфера обмена и отобразить их полные пути.

### Example 3

```powershell
Get-ClipboardFiles | Where-Object { $_.Extension -eq '.txt' }
```

Получить только текстовые файлы из буфера обмена.

## Related Links

- [Get-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
