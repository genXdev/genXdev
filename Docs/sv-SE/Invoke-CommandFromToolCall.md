# Invoke-CommandFromToolCall

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Kör en verktygsanropsfunktion med validering och parameterfiltrering.

## Description

Denna funktion bearbetar verktygsanrop genom att validera argument, filtrera parametrar, och utföra återanrop med korrekt bekräftelsehantering. Den stöder både skriptblock och kommandoinformationsåteranrop.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | .SYNOPSIS
Skapa en VMTPM-skiva hos en Hyper-V-värd

.DESCRIPTION
Cmdleten New-VMTPM skapar en ny TPM-skiva för en virtuell maskin.

.PARAMETER VMName
Anger namnet på den virtuella maskinen.

.PARAMETER VM
Anger ett VM-objekt.

.PARAMETER VhdPath
Anger sökvägen till TPM-skivfilen.

.PARAMETER Path
Anger sökvägen där TPM-skivan ska skapas.

.PARAMETER Generation
Anger generation av TPM-skivan.

.PARAMETER Passthru
Returnerar det skapade TPM-objektet.

.PARAMETER Force
Framtvingar åtgärden.

.PARAMETER InputObject
Anger indataobjektet.

.PARAMETER CimSession
Anger CIM-sessionen.

.PARAMETER ComputerName
Anger namnet på datorn.

.PARAMETER ErrorAction
Anger åtgärden vid fel.

.PARAMETER WarningAction
Anger åtgärden vid varning.

.PARAMETER InformationAction
Anger åtgärden vid information.

.PARAMETER Verbose
Anger utförlig utskrift.

.PARAMETER Debug
Anger debug-utskrift.

.PARAMETER ErrorVariable
Anger felvariabeln.

.PARAMETER WarningVariable
Anger varningsvariabeln.

.PARAMETER InformationVariable
Anger informationsvariabeln.

.PARAMETER OutVariable
Anger utdatavariabeln.

.PARAMETER OutBuffer
Anger utdatabufferten.

.PARAMETER PipelineVariable
Anger pipeline-variabeln.

.EXAMPLE
PS C:\> New-VMTPM -VMName TestVM -VhdPath C:\TPM.vhdx

Det här exemplet skapar en TPM-skiva med namnet TPM.vhdx för den virtuella maskinen TestVM.

.EXAMPLE
PS C:\> Get-VM TestVM | New-VMTPM -Path D:\TPM

Det här exemplet skapar en TPM-skiva för den virtuella maskinen TestVM i sökvägen D:\TPM.

.INPUTS
Microsoft.HyperV.PowerShell.VirtualMachine

.OUTPUTS
Microsoft.HyperV.PowerShell.VMTPM

.NOTES
Cmdleten kräver administratörsbehörighet.

.LINK
Onlineversion: https://go.microsoft.com/fwlink/?linkid=2174239 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Matris av funktionsdefinitioner |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Matris med PowerShell-kommandodefinitioner som ska användas som verktyg |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Matris med kommandonamn som inte kräver bekräftelse |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Tvinga utdata som text |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Parameter Details

### `-ToolCall <Collections.Hashtable>`

> .SYNOPSIS
Skapa en VMTPM-skiva hos en Hyper-V-värd

.DESCRIPTION
Cmdleten New-VMTPM skapar en ny TPM-skiva för en virtuell maskin.

.PARAMETER VMName
Anger namnet på den virtuella maskinen.

.PARAMETER VM
Anger ett VM-objekt.

.PARAMETER VhdPath
Anger sökvägen till TPM-skivfilen.

.PARAMETER Path
Anger sökvägen där TPM-skivan ska skapas.

.PARAMETER Generation
Anger generation av TPM-skivan.

.PARAMETER Passthru
Returnerar det skapade TPM-objektet.

.PARAMETER Force
Framtvingar åtgärden.

.PARAMETER InputObject
Anger indataobjektet.

.PARAMETER CimSession
Anger CIM-sessionen.

.PARAMETER ComputerName
Anger namnet på datorn.

.PARAMETER ErrorAction
Anger åtgärden vid fel.

.PARAMETER WarningAction
Anger åtgärden vid varning.

.PARAMETER InformationAction
Anger åtgärden vid information.

.PARAMETER Verbose
Anger utförlig utskrift.

.PARAMETER Debug
Anger debug-utskrift.

.PARAMETER ErrorVariable
Anger felvariabeln.

.PARAMETER WarningVariable
Anger varningsvariabeln.

.PARAMETER InformationVariable
Anger informationsvariabeln.

.PARAMETER OutVariable
Anger utdatavariabeln.

.PARAMETER OutBuffer
Anger utdatabufferten.

.PARAMETER PipelineVariable
Anger pipeline-variabeln.

.EXAMPLE
PS C:\> New-VMTPM -VMName TestVM -VhdPath C:\TPM.vhdx

Det här exemplet skapar en TPM-skiva med namnet TPM.vhdx för den virtuella maskinen TestVM.

.EXAMPLE
PS C:\> Get-VM TestVM | New-VMTPM -Path D:\TPM

Det här exemplet skapar en TPM-skiva för den virtuella maskinen TestVM i sökvägen D:\TPM.

.INPUTS
Microsoft.HyperV.PowerShell.VirtualMachine

.OUTPUTS
Microsoft.HyperV.PowerShell.VMTPM

.NOTES
Cmdleten kräver administratörsbehörighet.

.LINK
Onlineversion: https://go.microsoft.com/fwlink/?linkid=2174239

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Matris av funktionsdefinitioner

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Matris med PowerShell-kommandodefinitioner som ska användas som verktyg

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Matris med kommandonamn som inte kräver bekräftelse

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceAsText`

> Tvinga utdata som text

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
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/WriteFileOutput.md)
