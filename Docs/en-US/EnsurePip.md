# EnsurePip

> **Module:** GenXdev.Software | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures pip is installed and functional for the specified Python installation.

## Description

Verifies that pip is available and functional for the given Python executable.
If pip is not available, attempts to install it using ensurepip. Validates
pip functionality by checking version and basic operations. Returns $true if
pip is ready; throws Write-Error on failure.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Path to Python executable |
| `-Timeout` | Int32 | — | — | Named | `300` | Timeout in seconds for pip installation |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation/upgrade of pip |

## Examples

### EnsurePip

```powershell
EnsurePip
```

Ensures pip is available for the default Python installation.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

Forces pip installation for a specific Python executable.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

Ensures pip for a specific Python installation returned by EnsurePython.

## Parameter Details

### `-PythonPath <String>`

> Path to Python executable

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Timeout <Int32>`

> Timeout in seconds for pip installation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Forces reinstallation/upgrade of pip

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
- [EnsureHuggingFace](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureHuggingFace.md)
- [EnsurePaintNet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePaintNet.md)
- [EnsurePester](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePester.md)
- [ensurePlaywright](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ensurePlaywright.md)
- [EnsurePSTools](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePSTools.md)
- [EnsurePython](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePython.md)
- [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSQLiteStudioInstalled.md)
- [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSSMSInstalled.md)
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWinMergeInstalled.md)
