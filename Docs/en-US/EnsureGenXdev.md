# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures all GenXdev modules are properly loaded by invoking all Ensure*
cmdlets.

## Description

This function retrieves all GenXdev cmdlets that start with "Ensure" or
"Optimize-Ensure" (for c# cmdlets) and
executes each one to guarantee that all required GenXdev modules and
dependencies are properly loaded and available for use. Any failures during
the execution are caught and displayed as informational messages.

Optionally, it can also download and load all NuGet packages defined in the
packages.json manifest file.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Forces the execution of ensure operations even if they appear to be already completed |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Downloads and loads all NuGet packages defined in the packages.json manifest file |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for third-party software installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for all packages. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

This command runs all available Ensure* cmdlets to initialize the GenXdev
environment.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

This command runs all Ensure* cmdlets and also downloads and loads all NuGet
packages defined in the packages.json manifest file.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

This command runs all Ensure* cmdlets and downloads NuGet packages.

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
