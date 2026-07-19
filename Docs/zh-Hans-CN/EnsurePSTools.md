# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> 确保 Sysinternals 工具（PSTools）已安装且可用。

## Description

验证Sysinternals工具（如handle.exe）是否已安装并在系统上正确配置。如果未找到，则使用WinGet安装Sysinternals套件，并自动处理完整的安装过程。

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | 强制重新安装 Sysinternals 工具 |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | 用于验证安装的可执行文件名 |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)
