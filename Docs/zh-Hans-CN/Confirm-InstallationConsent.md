# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | 正在安装的应用程序或软件的名称。 |
| `-Source` | String | ✅ | — | 1 | — | 安装来源（例如，Winget、PowerShell 库）。 |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | 软件的用途及其可选描述。 |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | 软件的可选发布者或供应商。 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即便已设置偏好，也强制提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意第三方软件安装并设置持久标志。 |

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
