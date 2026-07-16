# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-WindowsUpdate [[-Criteria] <String>] [-AutoReboot] [-GroupByCategory] [-IncludeDrivers] [-Install] [-NoBanner] [-NoRebootCheck] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Install` | SwitchParameter | — | — | Named | — | Beschikbare Windows-updates automatisch installeren |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Automatisch opnieuw opstarten als updates een herstart vereisen |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Aangepaste zoekcriteria voor Windows Update |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Voeg stuurprogramma's toe aan de update zoekopdracht |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Groep en kleuruitvoer per updatecategorie |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Schakel banner/statusuitvoer uit |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Herstartvereiste controle/rapportage overslaan |

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
