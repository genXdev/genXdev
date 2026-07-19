# Get-OpenedFileHandleProcesses

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retrieves processes that have open file handles to specified files.

## Description

* Uses the Sysinternals handle.exe tool to identify processes that
  currently have open handles to one or more specified files.
* Useful for determining which processes are preventing file operations
  like deletion or modification.
* Requires handle.exe from the Sysinternals suite to be installed and
  available in the system path.

## Syntax

```powershell
Get-OpenedFileHandleProcesses [-FilePath] <string[]> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The path to the file(s) to check for open handles |

## Examples

### Example 1

```powershell
Get-OpenedFileHandleProcesses -FilePath "C:\temp\example.txt"
```

Identifies all processes that have open handles to the specified file.

### Example 2

```powershell
"file1.txt", "file2.txt" | Get-OpenedFileHandleProcesses
```

Checks multiple files via pipeline input for processes with open handles.

## Related Links

- [Get-OpenedFileHandleProcesses on GitHub](https://github.com/genXdev/genXdev)
