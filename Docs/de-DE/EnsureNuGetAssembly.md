# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
