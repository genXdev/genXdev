# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 确保已安装 Hugging Face CLI 且功能正常。

## Description

通过调用EnsurePython和EnsurePip来编排Python、pip和Hugging Face CLI的安装，然后安装huggingface_hub包。将CLI路径存储到JSON文件中，并确保所有组件在系统PATH中可用。成功返回$true；失败时抛出Write-Error。

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Python version to ensure |
| `-Timeout` | Int32 | — | — | Named | `600` | 安装过程的超时时间（秒） |
| `-Force` | SwitchParameter | — | — | Named | — | 强制重新安装所有组件 |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

确保已安装 Python 3.12、pip 和 HuggingFace CLI。

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

强制使用 Python 3.11 重新安装。

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

确保安装过程有20分钟的超时限制。

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
