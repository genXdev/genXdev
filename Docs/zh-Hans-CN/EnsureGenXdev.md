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
| `-Force` | SwitchParameter | — | — | Named | — | 强制执行确保操作，即使它们看起来已经完成 |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | 下载并加载 packages.json 清单文件中定义的所有 NuGet 包 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | 即使已设置第三方软件安装首选项，也强制显示同意提示。 |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 自动同意安装第三方软件并为所有包设置持久化标记。 |

## Related Links

- [EnsureGenXdev on GitHub](https://github.com/genXdev/genXdev)
