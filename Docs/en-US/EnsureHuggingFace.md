# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures the Hugging Face CLI is installed and functional.

## Description

Orchestrates the installation of Python, pip, and the Hugging Face CLI by
calling EnsurePython and EnsurePip, then installing the huggingface_hub package.
Stores the CLI path in a JSON file and ensures all components are available
in the system PATH. Returns $true if successful; throws Write-Error on failure.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Python version to ensure |
| `-Timeout` | Int32 | — | — | Named | `600` | Timeout in seconds for installation processes |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation of all components |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Ensures Python 3.12, pip, and HuggingFace CLI are installed.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Forces reinstallation with Python 3.11.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

Ensures installation with a 20-minute timeout.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
