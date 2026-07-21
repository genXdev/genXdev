# EnsureGithubCLIInstalled

> **Module:** GenXdev.Software | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures GitHub CLI is properly installed and configured on the system.

## Description

Performs comprehensive checks and setup for GitHub CLI (gh):
- Verifies if GitHub CLI is installed and accessible in PATH
- Installs GitHub CLI via WinGet if not present
- Configures system PATH environment variable
- Installs GitHub Copilot extension
- Sets up GitHub authentication
The function handles all prerequisites and ensures a working GitHub CLI setup.

## Syntax

```powershell
EnsureGithubCLIInstalled [<CommonParameters>]
```

## Examples

### EnsureGithubCLIInstalled This will verify and setup GitHub CLI if needed.

```powershell
EnsureGithubCLIInstalled
This will verify and setup GitHub CLI if needed.
```

## Related Links

- [EnsureDeepStack](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDeepStack.md)
- [EnsureDockerDesktop](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureDockerDesktop.md)
- [EnsureHuggingFace](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureHuggingFace.md)
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
