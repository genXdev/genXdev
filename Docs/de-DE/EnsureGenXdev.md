# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt sicher, dass alle GenXdev-Module ordnungsgemäß geladen werden, indem alle Ensure*-Cmdlets aufgerufen werden.

## Description

Diese Funktion ruft alle GenXdev-Cmdlets ab, die mit "Ensure" oder "Optimize-Ensure" (für C#-Cmdlets) beginnen, und führt sie aus, um sicherzustellen, dass alle erforderlichen GenXdev-Module und Abhängigkeiten ordnungsgemäß geladen und verfügbar sind. Fehler während der Ausführung werden abgefangen und als Informationsmeldungen angezeigt.

Optional kann sie auch alle im Manifest packages.json definierten NuGet-Pakete herunterladen und laden.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt die Ausführung von Ensure-Operationen, selbst wenn diese scheinbar bereits abgeschlossen sind |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Lädt alle NuGet-Pakete herunter und lädt sie, die in der Manifestdatei packages.json definiert sind. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Zwingen Sie eine Zustimmungsaufforderung, auch wenn eine Präferenz für die Installation von Drittanbieter-Software festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und dauerhaftes Flag für alle Pakete setzen. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Dieser Befehl führt alle verfügbaren Ensure*-Cmdlets aus, um die GenXdev-Umgebung zu initialisieren.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Dieser Befehl führt alle Ensure*-Cmdlets aus und lädt zudem alle NuGet-Pakete herunter, die in der Manifestdatei packages.json definiert sind.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

This command runs all Ensure* cmdlets and downloads NuGet packages.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
