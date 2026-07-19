# Set-ClipboardFiles

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `setclipfiles, `scbf

## Synopsis

> Bestanden instellen op het Windows-klembord voor bestandsbewerkingen zoals kopiëren/plakken.

## Description

Deze functie kopieert een of meer bestandspaden naar het Windows-klembord, waardoor bestandsbewerkingen zoals plakken in Windows Verkenner mogelijk worden. Het verwerkt automatisch zowel STA- als MTA-threadmodi, waardoor compatibiliteit in verschillende PowerShell-uitvoeringscontexten wordt gegarandeerd. De functie valideert het bestaan van bestanden voordat paden aan het klembord worden toegevoegd.

## Syntax

```powershell
Set-ClipboardFiles -InputObject <String[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Array van bestandspaden om aan het klembord toe te voegen |

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
