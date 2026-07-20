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

## Parameter Details

### `-PackageKey <String>`

> Package key from packages.json or direct NuGet PackageId.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ManifestPath <String>`

> Path to packages.json; defaults to module root if omitted.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Version <String>`

> Specific version; if omitted, use highest from JSON or latest.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TypeName <String>`

> TypeName to verify loading.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceLatest`

> Fallback to latest if exact version fails.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Destination <String>`

> Custom install destination; defaults to local persistent or global cache.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Optional description of the software and its purpose for consent.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> Optional publisher or vendor of the software for consent.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Force a prompt even if preference is set for consent.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Automatically consent to third-party software installation and set persistent flag.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevCmdlet.md)
- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageMetadata.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Out-Serial](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Out-Serial.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
