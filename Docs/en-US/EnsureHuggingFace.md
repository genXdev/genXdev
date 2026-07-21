# EnsureHuggingFace

> **Module:** GenXdev.Software | **Type:** Function | **Aliases:** —

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

## Parameter Details

### `-PythonVersion <String>`

> Python version to ensure

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `"3.12"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Timeout <Int32>`

> Timeout in seconds for installation processes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `600` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forces reinstallation of all components

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [EnsureDeepStack](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDeepStack.md)
- [EnsureDockerDesktop](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDockerDesktop.md)
- [EnsureGithubCLIInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGithubCLIInstalled.md)
- [EnsurePaintNet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePaintNet.md)
- [EnsurePester](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePester.md)
- [EnsurePip](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePip.md)
- [ensurePlaywright](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ensurePlaywright.md)
- [EnsurePSTools](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePSTools.md)
- [EnsurePython](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePython.md)
- [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSQLiteStudioInstalled.md)
- [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSSMSInstalled.md)
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWinMergeInstalled.md)
