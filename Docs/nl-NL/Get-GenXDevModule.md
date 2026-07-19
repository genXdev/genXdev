# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt alle GenXDev-modules op uit een opgegeven pad.

## Description

Deze functie doorzoekt een directorystructuur naar GenXdev-modules, waarbij modules met '.local' in de naam worden uitgesloten. Voor elke geldige module die wordt gevonden, retourneert het de meest recente versiemap (1.x) die een geldig modulemanifest (.psd1) bevat.

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | Het rootpad om te zoeken naar GenXdev modules |
| `-IncludeLocal` | SwitchParameter | — | — | Named | — | The `-IncludeLocal` parameter. |

## Examples

### Get-GenXDevModule -Path "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule -Path "C:\PowerShell\Modules"
```

### Get-GenXDevModule "C:\PowerShell\Modules"

```powershell
Get-GenXDevModule "C:\PowerShell\Modules"
```

## Related Links

- [Get-GenXDevModule on GitHub](https://github.com/genXdev/genXdev)
