# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ensures Python is installed and available in the system PATH.

## Description

Verifies that Python is installed and accessible via the system PATH. If Python
is not found, attempts to install it using winget (Windows Package Manager).
Supports specific version requirements and provides progress feedback during
installation. Returns the path to the Python executable if successful; throws
Write-Error on failure.

This function prioritizes existing Python installations but can force
reinstallation when needed. It validates Python functionality by checking
version output and ensures the installation is properly accessible.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | Python version to ensure is installed |
| `-Timeout` | Int32 | — | — | Named | `600` | Timeout in seconds for Python installation |
| `-Force` | SwitchParameter | — | — | Named | — | Forces reinstallation of Python |

## Examples

### EnsurePython

```powershell
EnsurePython
```

Ensures Python 3.12 is installed using default settings.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

Installs Python 3.11 with extended timeout and returns the executable path.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

Forces reinstallation of Python 3.12 with detailed progress information.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

Forces installation of Python 3.10 even if another version exists.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
