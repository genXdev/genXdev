# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

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

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
