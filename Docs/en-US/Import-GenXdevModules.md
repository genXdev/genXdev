# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Imports all GenXdev PowerShell modules into the global scope.

## Description

Scans the parent directory for GenXdev modules and imports each one into the
global scope. Uses location stack management to preserve the working directory
and provides visual feedback for successful and failed imports. Tracks function
count changes during the import process.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Enable debug output for failed module definitions |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
