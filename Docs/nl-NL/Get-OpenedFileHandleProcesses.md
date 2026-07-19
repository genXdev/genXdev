# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Haalt processen op die geopende bestandshandvatten hebben naar opgegeven bestanden.

## Description

* Gebruikt de Sysinternals handle.exe tool om processen te identificeren die
  momenteel open handvatten hebben naar een of meer opgegeven bestanden.
* Nuttig om te bepalen welke processen bestandsbewerkingen zoals
  verwijderen of wijzigen verhinderen.
* Vereist dat handle.exe uit de Sysinternals-suite is geïnstalleerd en
  beschikbaar is in het systeempad.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het pad naar het bestand/de bestanden om te controleren op open handlers |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identificeert alle processen die open handvatten hebben voor het opgegeven bestand.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Controleert meerdere bestanden via pipeline-invoer op processen met open handvatten.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
