# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Recursively removes all content from a directory with advanced error handling.

## Description

Verwijdert veilig alle bestanden en submappen binnen een opgegeven map met behulp van een omgekeerde verwijderstrategie om diepe paden aan te kunnen. Bevat WhatIf-ondersteuning, uitgebreide logboekregistratie en terugvalverwijderingsmethoden voor vergrendelde bestanden.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Het directorypad om te wissen |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Verwijder ook de hoofdmap die is meegeleverd met de parameter Path |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
