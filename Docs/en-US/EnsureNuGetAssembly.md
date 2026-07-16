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

## Related Links

- [EnsureNuGetAssembly on GitHub](https://github.com/genXdev/genXdev)
