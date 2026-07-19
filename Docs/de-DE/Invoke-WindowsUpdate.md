# Invoke-WindowsUpdate

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `updatewindows

## Synopsis

> Überprüft, ob Windows auf dem neuesten Stand ist, und installiert optional verfügbare Updates.

## Description

Diese Funktion prüft auf Windows-Updates, Winget-Paketupdates und PowerShell-Modulupdates. Sie kann verfügbare Updates anzeigen oder automatisch installieren. Die Funktion erfordert Administratorrechte, um Windows-Updates zu installieren, und kann das System optional neu starten, wenn Updates einen Neustart erfordern.

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

## Examples

### Invoke-WindowsUpdate

```powershell
Invoke-WindowsUpdate
```

Überprüft auf verfügbare Windows- und winget-Updates, ohne sie zu installieren.

### Invoke-WindowsUpdate -Install

```powershell
Invoke-WindowsUpdate -Install
```

Installiert automatisch alle verfügbaren Windows- und Winget-Updates.

### updatewindows -Install -AutoReboot

```powershell
updatewindows -Install -AutoReboot
```

Installs all updates and reboots automatically if required using the alias.

### Invoke-WindowsUpdate -GroupByCategory

```powershell
Invoke-WindowsUpdate -GroupByCategory
```

Zeigt verfügbare Aktualisierungen, gruppiert nach Kategorie, für eine bessere Übersicht an.

### Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

```powershell
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"
```

Überprüft auf Updates einschließlich Treiber mit benutzerdefinierten Suchkriterien.

## Related Links

- [Invoke-WindowsUpdate on GitHub](https://github.com/genXdev/genXdev)
