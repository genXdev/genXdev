# EnsureSSMSInstalled

> **Module:** GenXdev.Software | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures SSMS is installed and accessible from the command line.

## Description

Verifies if SSMS is installed and available in the system PATH. If not
found, it first checks if the PATH environment variable needs updating. If that
doesn't resolve the issue, it installs SSMS using WinGet and configures
the PATH environment variable.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Parameter Details

### `-Force`

> The `-Force` parameter.

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
- [EnsurePip](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePip.md)
- [ensurePlaywright](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ensurePlaywright.md)
- [EnsurePSTools](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePSTools.md)
- [EnsurePython](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePython.md)
- [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSQLiteStudioInstalled.md)
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWinMergeInstalled.md)
