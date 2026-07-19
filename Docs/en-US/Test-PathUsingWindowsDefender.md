# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Scans files or directories for malware using Windows Defender.

## Description

* Performs a targeted scan of specified files or directories using Windows
  Defender's command-line interface (MpCmdRun.exe).
* Can scan in detection-only mode or with automatic threat remediation
  enabled.
* Returns true if no threats are detected, false if threats are found or
  the scan fails.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The path to the file or directory to be scanned |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instructs Windows Defender to take action on threats |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Scans the specified file and displays verbose output.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Scans the file using the alias and enables remediation.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Pipes the file path to the cmdlet using an alias.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
