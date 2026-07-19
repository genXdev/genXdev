# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 确保指定Python安装中已安装并正常运行pip。

## Description

验证指定 Python 可执行文件的 pip 是否可用且功能正常。如果 pip 不可用，尝试使用 ensurepip 进行安装。通过检查版本和基本操作来验证 pip 功能。如果 pip 准备就绪，返回 $true；失败时通过 Write-Error 抛出错误。

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Python 可执行文件的路径 |
| `-Timeout` | Int32 | — | — | Named | `300` | pip 安装的超时时间（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | 强行重新安装/升级 pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

确保默认的 Python 安装中可以使用 pip。

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

强制为特定Python可执行文件运行pip安装。

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

确保由 EnsurePython 返回的特定 Python 安装的 pip。

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
