# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 确保 Python 已安装并且在系统 PATH 中可用。

## Description

验证Python是否已安装并可通过系统PATH访问。如果未找到Python，则尝试使用winget（Windows包管理器）进行安装。支持特定版本要求，并在安装过程中提供进度反馈。成功时返回Python可执行文件的路径；失败时抛出Write-Error。

此函数优先使用现有的Python安装，但可在需要时强制重新安装。它通过检查版本输出来验证Python功能，并确保安装的Python可正常访问。

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | 确保安装的 Python 版本 |
| `-Timeout` | Int32 | — | — | Named | `600` | Python 安装的超时时间（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重新安装Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

确保使用默认设置安装Python 3.12。

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

安装 Python 3.11（延长超时时间）并返回可执行文件路径。

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

强制重新安装 Python 3.12，并提供详细的进度信息。

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

即使存在其他版本，也强制安装 Python 3.10。

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
