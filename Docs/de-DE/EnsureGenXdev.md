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
| `-Force` | SwitchParameter | — | — | Named | — | Erzwingt die Ausführung von Ensure-Operationen, selbst wenn diese scheinbar bereits abgeschlossen sind |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Lädt alle NuGet-Pakete herunter und lädt sie, die in der Manifestdatei packages.json definiert sind. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Zwingen Sie eine Zustimmungsaufforderung, auch wenn eine Präferenz für die Installation von Drittanbieter-Software festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und dauerhaftes Flag für alle Pakete setzen. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
