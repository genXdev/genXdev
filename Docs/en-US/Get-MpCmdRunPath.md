# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets the path to the Windows Defender MpCmdRun.exe executable.

## Description

* Locates and returns the full path to the Windows Defender command-line
  utility (MpCmdRun.exe).
* The cmdlet checks the standard installation location in Program Files
  and provides appropriate error handling if the file is not found.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Retrieves the full path to the Windows Defender command-line tool.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
