# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs`

## Synopsis

> Shows a short alphabetical list of all PowerShell verbs.

## Description

Displays PowerShell approved verbs in a comma-separated list. If specific verbs
are provided as input, only matching verbs will be shown. Supports wildcards.

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | One or more verb patterns to filter (supports wildcards) 🌐 *Supports wildcards* |

## Examples

### Show-Verb Shows all approved PowerShell verbs

```powershell
Show-Verb
Shows all approved PowerShell verbs
```

### Show-Verb -Verb "Get*" Shows all approved verbs starting with "Get"

```powershell
Show-Verb -Verb "Get*"
Shows all approved verbs starting with "Get"
```

### showverbs "Set*", "Get*" Shows all approved verbs starting with "Set" or "Get" using the alias

```powershell
showverbs "Set*", "Get*"
Shows all approved verbs starting with "Set" or "Get" using the alias
```

## Parameter Details

### `-Verb <String[]>`

> One or more verb patterns to filter (supports wildcards)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

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
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-OnEachGenXdevModule.md)
- [Out-Serial](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Out-Serial.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/resetdefaultmonitor.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/secondscreen.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-GenXdevCommandNotFoundAction.md)
- [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-GenXdevCmdlet.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/sidebyside.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Test-UnattendedMode.md)
