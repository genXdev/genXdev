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

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
