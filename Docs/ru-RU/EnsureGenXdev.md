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
| `-Force` | SwitchParameter | — | — | Named | — | Принудительно выполняет операции обеспечения, даже если они кажутся уже завершенными |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | Загружает и устанавливает все пакеты NuGet, определённые в файле манифеста packages.json |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительно отобразить запрос на согласие, даже если настройка установлена для установки стороннего программного обеспечения. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего программного обеспечения и устанавливать постоянный флаг для всех пакетов. |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
