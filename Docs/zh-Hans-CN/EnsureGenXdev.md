# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 通过调用所有 Ensure* cmdlet 确保所有 GenXdev 模块正确加载。

## Description

此函数检索所有以"Ensure"或"Optimize-Ensure"开头的GenXdev cmdlet（针对C# cmdlet），并执行每一个，以确保所有必需的GenXdev模块和依赖项已正确加载并可供使用。执行过程中的任何失败都会被捕获并显示为信息性消息。

可选地，它还可以下载并加载packages.json清单文件中定义的所有NuGet包。

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 强制执行确保操作，即使它们看起来已经完成 |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | 下载并加载 packages.json 清单文件中定义的所有 NuGet 包 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置第三方软件安装首选项，也强制显示同意提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为所有包设置持久化标记。 |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

该命令运行所有可用的 Ensure* 命令，以初始化 GenXdev 环境。

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

此命令运行所有 Ensure* cmdlet，并下载和加载 packages.json 清单文件中定义的所有 NuGet 包。

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

此命令运行所有 Ensure* cmdlet 并下载 NuGet 包。

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
