# Confirm-InstallationConsent

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> 确认用户同意安装第三方软件，使用偏好设置来实现持久化选择。

## Description

<details>
<summary><b>Expand description</b></summary>

此函数作为软件安装的自定义ShouldProcess机制。它检查用户偏好，以确定是否允许指定应用程序自动安装。若未设置偏好，则向用户清晰说明将安装的内容、来源、潜在风险，并提供允许或拒绝安装的选项（支持一次性或持久选择）。

这可确保在继续安装前获得用户明确同意，通过要求用户采取肯定操作来降低潜在法律风险。提示明确声明模块作者（GenXdev）对第三方软件不承担责任，用户需自行承担安装风险。

偏好设置存储在JSON文件中，允许用户对特定应用设置“始终允许”，或开启对所有GenXdev第三方安装的全局同意，既便捷又合法。

若拒绝同意（或偏好设置为拒绝），函数返回$false且不继续安装；若允许，则返回$true。

</details>
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

## Examples

### if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `         -Source "Winget") {     # Proceed with installation     Microsoft.WinGet.Client\Install-WinGetPackage `         -Id "Docker.DockerDesktop" }

```powershell
if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `
        -Source "Winget") {
    # Proceed with installation
    Microsoft.WinGet.Client\Install-WinGetPackage `
        -Id "Docker.DockerDesktop"
}
```

这将检查在通过 Winget 安装 Docker Desktop 之前是否获得同意。

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

在安装 Pester 模块之前，请提供详细信息。

## Outputs

- `Boolean`

## Related Links

- [Confirm-InstallationConsent on GitHub](https://github.com/genXdev/genXdev)
