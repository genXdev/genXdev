# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initializes and configures system search paths for package management.

## Description

* Builds a comprehensive list of search paths by combining default system
  locations, chocolatey paths, development tool paths, and custom package
  paths.
* Updates the system's PATH environment variable with these consolidated
  paths.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | The workspace folder path to use for node modules and PowerShell paths. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Initializes search paths using the default workspace folder.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Initializes search paths using a specific workspace folder.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
