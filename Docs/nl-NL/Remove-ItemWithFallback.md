# Remove-ItemWithFallback

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rmf

## Synopsis

> Verwijdert bestanden of mappen met meerdere terugvalmechanismen voor betrouwbare verwijdering.

## Description

Deze functie biedt een robuuste manier om bestanden en mappen te verwijderen door meerdere verwijderingsmethoden in volgorde te proberen:
1. Direct verwijderen via System.IO-methoden voor de beste prestaties
2. PowerShell provider-aware Remove-Item cmdlet als terugvaloptie
3. Markeren voor verwijdering bij de volgende systeemherstart als andere methoden falen
Dit garandeert maximale betrouwbaarheid bij het verwijderen van items in verschillende providers.

## Syntax

```powershell
Remove-ItemWithFallback -Path <String> [-CountRebootDeletionAsSuccess] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het pad naar het item dat verwijderd moet worden |
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
