# Invoke-OnEachGenXdevModule

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `foreach-genxdev-module-do`

## Synopsis

> Executes a script block on each GenXdev module in the workspace.

## Description

This function iterates through GenXdev modules in the workspace and executes
a provided script block against each module. It can filter modules by name
pattern, exclude local modules, include only published modules, or process
scripts instead of modules. The function automatically navigates to the
correct module directory before executing the script block.

## Syntax

```powershell
Invoke-OnEachGenXdevModule -Script <ScriptBlock> [[-ModuleName] <String[]>] [-FromScripts] [-IncludeScripts] [-NoLocal] [-OnlyPublished] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Script` | ScriptBlock | ✅ | — | 0 | — | The script block to execute for each GenXdev module |
| `-ModuleName` | String[] | — | — | 1 | `@('GenXdev*')` | Filter to apply to module names 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Excludes local development modules from processing |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Includes only published modules that have LICENSE and README.md files |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Process scripts directory instead of module directories |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Includes the scripts directory in addition to regular modules |

## Examples

### Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }

```powershell
Invoke-OnEachGenXdevModule -Script { Write-Host $args[0].Name }
```

Lists all GenXdev module names.

### foreach-genxdev-module-do {     param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)     Get-ChildItem } -ModuleName "GenXdev.AI"

```powershell
foreach-genxdev-module-do {
    param($ModuleObj, $isScriptsFolder, $isSubModule, $subModuleName)
    Get-ChildItem
} -ModuleName "GenXdev.AI"
```

Uses alias to list contents of the GenXdev.AI module directory.

## Parameter Details

### `-Script <ScriptBlock>`

> The script block to execute for each GenXdev module

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ScriptBlock` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> Filter to apply to module names

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@('GenXdev*')` |
| **Accept pipeline input?** | False |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> Excludes local development modules from processing

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> Includes only published modules that have LICENSE and README.md files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> Process scripts directory instead of module directories

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> Includes the scripts directory in addition to regular modules

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
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Initialize-SearchPaths.md)
- [Out-Serial](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Out-Serial.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-Verb.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
