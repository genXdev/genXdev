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
| `-Install` | SwitchParameter | — | — | Named | — | Verfügbare Windows-Updates automatisch installieren |
| `-AutoReboot` | SwitchParameter | — | — | Named | — | Bei Neustarterfordernis nach Updates automatisch neu starten |
| `-Criteria` | String | — | — | 0 | `"IsInstalled=0 and IsHidden=0"` | Benutzerdefinierte Windows Update-Suchkriterien |
| `-IncludeDrivers` | SwitchParameter | — | — | Named | — | Treiber in die Updatesuche einbeziehen |
| `-GroupByCategory` | SwitchParameter | — | — | Named | — | Gruppieren und farblich kennzeichnen der Ausgabe nach Aktualisierungskategorie |
| `-NoBanner` | SwitchParameter | — | — | Named | — | Deaktiviere Banner/Statusausgabe |
| `-NoRebootCheck` | SwitchParameter | — | — | Named | — | Neustartanforderungsprüfung/-meldung überspringen |

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
