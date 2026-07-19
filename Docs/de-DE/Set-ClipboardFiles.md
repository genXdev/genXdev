# Set-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `setclipfiles, `scbf

## Synopsis

> Legt Dateien für Dateioperationen wie Kopieren/Einfügen in der Windows-Zwischenablage fest.

## Description

Diese Funktion kopiert einen oder mehrere Dateipfade in die Windows-Zwischenablage, wodurch Dateioperationen wie Einfügen im Windows-Explorer ermöglicht werden. Sie verarbeitet automatisch sowohl STA- als auch MTA-Threading-Modi und gewährleistet so die Kompatibilität in verschiedenen PowerShell-Ausführungskontexten. Die Funktion überprüft die Existenz der Dateien, bevor sie die Pfade zur Zwischenablage hinzufügt.

## Syntax

```powershell
Set-ClipboardFiles -InputObject <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Array von Dateipfaden, die zur Zwischenablage hinzugefügt werden sollen |

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
