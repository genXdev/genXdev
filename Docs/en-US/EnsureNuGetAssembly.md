# EnsureNuGetAssembly

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Downloads and loads .NET assemblies from NuGet packages based on package key or ID.

## Description

This function ensures that the specified NuGet package assemblies are downloaded
and loaded into the current PowerShell session. It supports automatic detection
and loading with fallback to a JSON manifest for configuration overrides,
handling edge cases like stub dependencies (e.g., SQLite). Installation uses
the dotnet CLI exclusively for reliable package management and loads assemblies
directly from the global NuGet cache without copying. Lazy loading checks if
the type is already available before proceeding.

## Syntax

```powershell
EnsureNuGetAssembly -PackageKey <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-Destination <String>] [-ForceConsent] [-ForceLatest] [-ManifestPath <String>] [-Publisher <String>] [-TypeName <String>] [-Version <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PackageKey` | String | ✅ | — | 0 | — | Package key from packages.json or direct NuGet PackageId. |
| `-ManifestPath` | String | — | — | Named | — | Path to packages.json; defaults to module root if omitted. |
| `-Version` | String | — | — | Named | — | Specific version; if omitted, use highest from JSON or latest. |
| `-TypeName` | String | — | — | Named | — | TypeName to verify loading. |
| `-ForceLatest` | SwitchParameter | — | — | Named | — | Fallback to latest if exact version fails. |
| `-Destination` | String | — | — | Named | — | Custom install destination; defaults to local persistent or global cache. |
| `-Description` | String | — | — | Named | — | Optional description of the software and its purpose for consent. |
| `-Publisher` | String | — | — | Named | — | Optional publisher or vendor of the software for consent. |
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
