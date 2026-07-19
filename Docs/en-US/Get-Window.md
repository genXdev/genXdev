# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Gets window information for specified processes or window handles.

## Description

* Retrieves window information using process name, ID, or window handle.
* Returns WindowObj objects containing details about the main windows of
  matching processes.
* Supports wildcards when searching by process name.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Name of the process to get window information for 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID of the process to get window information for |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Window handle to get information for |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Retrieves window information for all processes named "notepad".

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Retrieves window information for the process with ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Retrieves window information for the window with handle 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
