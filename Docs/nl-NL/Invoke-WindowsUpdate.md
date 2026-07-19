# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Controleert of Windows up-to-date is en installeert optioneel beschikbare updates.

## Description

Deze functie controleert op Windows-updates, winget-pakketupdates en PowerShell-module-updates. Het kan beschikbare updates weergeven of deze automatisch installeren. De functie vereist beheerdersrechten om Windows-updates te installeren en kan optioneel het systeem opnieuw opstarten als updates een herstart vereisen.

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

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Controleert op beschikbare Windows- en winget-updates zonder deze te installeren.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Installeert automatisch alle beschikbare Windows- en winget-updates.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Installeert alle updates en start automatisch opnieuw op indien nodig met behulp van de alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Toont beschikbare updates gegroepeerd op categorie voor een betere organisatie.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Controleert op updates, inclusief stuurprogramma's, met aangepaste zoekcriteria.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
