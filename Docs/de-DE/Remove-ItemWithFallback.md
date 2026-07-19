# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Löscht Dateien oder Verzeichnisse mit mehreren Fallback-Mechanismen für zuverlässiges Löschen.

## Description

Diese Funktion bietet eine robuste Möglichkeit, Dateien und Verzeichnisse zu löschen, indem sie mehrere Löschmethoden nacheinander versucht:
1. Direktes Löschen über System.IO-Methoden für beste Leistung
2. PowerShell-anbieterbewusstes Remove-Item-Cmdlet als Fallback
3. Markierung zum Löschen beim nächsten Systemneustart, wenn andere Methoden fehlschlagen
Dies gewährleistet maximale Zuverlässigkeit beim Entfernen von Elementen über verschiedene Anbieter hinweg.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Der Pfad zum zu entfernenden Element |
| `-CountRebootDeletionAsSuccess` | SwitchParameter | — | — | Named | `$false` | The `-CountRebootDeletionAsSuccess` parameter. |

## Examples

### Remove-ItemWithFallback -Path "C:\temp\myfile.txt" Attempts to remove the file using all available methods.

```powershell
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.
```

### "C:\temp\mydir" | rif Uses the alias 'rif' to remove a directory through the pipeline.

```powershell
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
```

## Outputs

- `Boolean`

## Related Links

- [Remove-ItemWithFallback on GitHub](https://github.com/genXdev/genXdev)
