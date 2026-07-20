# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev`

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

## Parameter Details

### `-DebugFailedModuleDefinitions`

> Enable debug output for failed module definitions

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/alignScript.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-HashTable.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/EnsureNuGetAssembly.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-DefaultWebLanguage.md)
- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-GenXDevCmdlet.md)
- [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageGeolocation.md)
- [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ImageMetadata.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-WebLanguageDictionary.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Out-Serial](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Out-Serial.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
