# EnsurePSTools

> **Module:** GenXdev.Software | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures Sysinternals tools (PSTools) are installed and available.

## Description

Verifies if Sysinternals tools like handle.exe are installed and properly
configured on the system. If not found, installs the Sysinternals Suite
using WinGet and handles the complete installation process automatically.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Force reinstallation of Sysinternals tools |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | The executable name to verify installation |

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

## Parameter Details

### `-Force`

> Force reinstallation of Sysinternals tools

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PSExeName <String>`

> The executable name to verify installation

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'handle.exe'` |
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
- [EnsurePython](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsurePython.md)
- [EnsureSQLiteStudioInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSQLiteStudioInstalled.md)
- [EnsureSSMSInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureSSMSInstalled.md)
- [EnsureVSCodeInstallation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureVSCodeInstallation.md)
- [EnsureWinMergeInstalled](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureWinMergeInstalled.md)
