# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Assure que tous les modules GenXdev sont correctement chargés en invoquant toutes les applets de commande Ensure*.

## Description

Cette fonction récupère toutes les cmdlets GenXdev qui commencent par "Ensure" ou "Optimize-Ensure" (pour les cmdlets C#) et exécute chacune d'elles pour garantir que tous les modules et dépendances GenXdev nécessaires sont correctement chargés et disponibles. Toute défaillance lors de l'exécution est interceptée et affichée sous forme de messages d'information.

En option, elle peut également télécharger et charger tous les packages NuGet définis dans le fichier manifeste packages.json.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Force l'exécution des opérations ensure même si elles semblent déjà terminées |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Télécharge et charge tous les packages NuGet définis dans le fichier manifeste packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une demande de consentement même si la préférence est définie pour l'installation de logiciels tiers. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir un indicateur persistant pour tous les packages. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Cette commande exécute toutes les applets de commande Ensure* disponibles pour initialiser l'environnement GenXdev.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Cette commande exécute toutes les cmdlets Ensure* et télécharge et charge également tous les packages NuGet définis dans le fichier manifeste packages.json.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Cette commande exécute toutes les cmdlets Ensure* et télécharge les packages NuGet.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
