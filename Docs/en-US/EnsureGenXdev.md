# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
