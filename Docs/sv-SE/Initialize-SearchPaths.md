# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Initierar och konfigurerar systemsökvägar för pakethantering.

## Description

* Bygger en omfattande lista över sökvägar genom att kombinera standardsystemplaceringar, Chocolatey-sökvägar, utvecklingsverktygs-sökvägar och anpassade paketsökvägar.
* Uppdaterar systemets PATH-miljövariabel med dessa konsoliderade sökvägar.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Mappsökvägen för arbetsytan som ska användas för nodmoduler och PowerShell-sökvägar. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Initierar sökvägar med standardarbetsytemappen.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Initierar sökvägar med en specifik arbetsyta mapp.

## Parameter Details

### `-WorkspaceFolder <String>`

> Mappsökvägen för arbetsytan som ska användas för nodmoduler och PowerShell-sökvägar.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Import-GenXdevModules.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/WriteFileOutput.md)
