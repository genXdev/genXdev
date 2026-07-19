# Set-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `setclipfiles, `scbf

## Synopsis

> Устанавливает файлы в буфер обмена Windows для операций с файлами, таких как копирование/вставка.

## Description

Эта функция копирует один или несколько путей к файлам в буфер обмена Windows,
что позволяет выполнять операции с файлами, такие как вставка, в Проводнике Windows. Она автоматически обрабатывает
режимы потоков STA и MTA, обеспечивая совместимость в различных
контекстах выполнения PowerShell. Функция проверяет существование
файлов перед добавлением путей в буфер обмена.

## Syntax

```powershell
Set-ClipboardFiles -InputObject <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Array of file paths to add to the clipboard |

## Examples

### Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt" Sets two files to the clipboard using full parameter names.

```powershell
Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt"
Sets two files to the clipboard using full parameter names.
```

### "C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles Sets files to clipboard using pipeline input.

```powershell
"C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles
Sets files to clipboard using pipeline input.
```

### ls * -file | select -first 5 | Set-ClipboardFiles Sets files to clipboard using pipeline input, selecting the first 5 files

```powershell
ls * -file | select -first 5 | Set-ClipboardFiles
Sets files to clipboard using pipeline input, selecting the first 5 files
```

## Related Links

- [Set-ClipboardFiles on GitHub](https://github.com/genXdev/genXdev)
