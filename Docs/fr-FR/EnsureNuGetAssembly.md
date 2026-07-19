# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Télécharge et charge les assemblies .NET à partir de packages NuGet en fonction de la clé ou de l'ID du package.

## Description

Cette fonction garantit que les assemblys du package NuGet spécifié sont téléchargés et chargés dans la session PowerShell active. Elle prend en charge la détection et le chargement automatiques avec un recours à un manifeste JSON pour les surcharges de configuration, gérant les cas particuliers comme les dépendances factices (par ex., SQLite). L'installation utilise exclusivement l'interface CLI dotnet pour une gestion fiable des packages et charge les assemblys directement depuis le cache NuGet global sans les copier. Le chargement différé vérifie si le type est déjà disponible avant de continuer.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Clé du package à partir de packages.json ou PackageId NuGet direct. |
| `-ManifestPath` | String | — | — | Named | — | Chemin vers packages.json ; par défaut, la racine du module si omis. |
| `-Version` | String | — | — | Named | — | Version spécifique ; si omis, utiliser la plus récente à partir du JSON ou la plus récente. |
| `-TypeName` | String | — | — | Named | — | Saisissez un nom de type pour vérifier le chargement. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Fallback vers la dernière version si la version exacte échoue. |
| `-Destination` | String | — | — | Named | — | Destination d'installation personnalisée ; par défaut, cache persistant local ou global. |
| `-Description` | String | — | — | Named | — | Description facultative du logiciel et de son objectif pour le consentement. |
| `-Publisher` | String | — | — | Named | — | Éditeur ou fournisseur facultatif du logiciel pour consentement. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite même si la préférence est définie pour le consentement. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentement automatique à l'installation de logiciels tiers et définition d'un indicateur persistant. |

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
