# Get-GenXDevModule

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft alle GenXDev-Module aus einem angegebenen Pfad ab.

## Description

Diese Funktion durchsucht eine Verzeichnisstruktur nach GenXdev-Modulen, wobei alle mit '.local' im Namen ausgeschlossen werden. Für jedes gefundene gültige Modul wird der neueste Versionsordner (1.x) zurückgegeben, der eine gültige Modulmanifestdatei (.psd1) enthält.

## Syntax

```powershell
Get-GenXDevModule [[-Path] <String>] [-IncludeLocal] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | — | — | 0 | — | Der Stammpfad zum Suchen nach GenXdev-Modulen |
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
