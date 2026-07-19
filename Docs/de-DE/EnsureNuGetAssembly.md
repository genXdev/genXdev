# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Lädt .NET-Assemblys aus NuGet-Paketen basierend auf Paketschlüssel oder -ID herunter und lädt sie.

## Description

Diese Funktion stellt sicher, dass die angegebenen NuGet-Paketassemblys heruntergeladen und in die aktuelle PowerShell-Sitzung geladen werden. Sie unterstützt die automatische Erkennung und das Laden mit Rückfall auf ein JSON-Manifest für Konfigurationsüberschreibungen und behandelt Randfälle wie Stub-Abhängigkeiten (z. B. SQLite). Die Installation verwendet ausschließlich die dotnet-CLI für zuverlässige Paketverwaltung und lädt Assemblys direkt aus dem globalen NuGet-Cache ohne Kopieren. Lazy Loading prüft, ob der Typ bereits verfügbar ist, bevor fortgefahren wird.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Paketschlüssel aus packages.json oder direkte NuGet-Paket-ID. |
| `-ManifestPath` | String | — | — | Named | — | Pfad zu packages.json; standardmäßig Modul-Root, wenn ausgelassen. |
| `-Version` | String | — | — | Named | — | Spezifische Version; falls nicht angegeben, die höchste aus JSON oder die neueste verwenden. |
| `-TypeName` | String | — | — | Named | — | TypName zum Überprüfen des Ladens. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Fallback zur neuesten Version, falls die exakte Version fehlschlägt. |
| `-Destination` | String | — | — | Named | — | Benutzerdefiniertes Installationsziel; standardmäßig lokaler persistenter oder globaler Cache. |
| `-Description` | String | — | — | Named | — | Optionale Beschreibung der Software und ihres Zwecks zur Einwilligung. |
| `-Publisher` | String | — | — | Named | — | Optionaler Herausgeber oder Anbieter der Software für die Einwilligung. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a prompt even if preference is set for consent. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag. |

## Examples

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Playwright" -Version "1.54.0" -TypeName "Microsoft.Playwright.Playwright"
```

### EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureNuGetAssembly -PackageKey "Microsoft.Data.Sqlite.Core" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
