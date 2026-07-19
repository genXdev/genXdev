# EnsureVSCodeInstallation

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> 安装并配置带有推荐扩展的 Visual Studio Code。

## Description

检查是否安装了 Visual Studio Code，如果没有，则使用 WinGet 安装。
从工作区配置中配置用户设置、键绑定，并安装推荐的扩展。
同时将 PSGallery 设置为受信任的存储库，并配置特定的扩展设置。

## Syntax

```powershell
EnsureVSCodeInstallation [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureVSCodeInstallation

```powershell
EnsureVSCodeInstallation
```

## Related Links

- [EnsureVSCodeInstallation on GitHub](https://github.com/genXdev/genXdev)
