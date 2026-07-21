# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Erkennt, ob PowerShell im unbeaufsichtigten/automatischen Modus ausgeführt wird.

## Description

* Analysiert verschiedene Indikatoren, um festzustellen, ob PowerShell in einem unbeaufsichtigten oder automatisierten Kontext ausgeführt wird.
* Überprüft Pipeline-Analyse, Umgebungsvariablen, Konsolenumleitung und Aufrufkontext.
* Wenn CallersInvocation bereitgestellt wird, werden die Pipeline-Position und -Anzahl analysiert, um eine automatisierte Pipeline- oder Skriptausführung zu erkennen.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Aufruferinformationen des Aufrufenden für Pipeline- und Automatisierungserkennung |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | Geben Sie ein detailliertes Analyseobjekt anstelle eines einfachen booleschen Werts zurück |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Gibt einen booleschen Wert zurück, der angibt, ob der unbeaufsichtigte Modus ausgeführt wird.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analysiert den Aufrufkontext des Aufrufers und gibt einen booleschen Wert zurück.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Gibt ein detailliertes Analyseobjekt mit allen Indikatoren zurück.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Beispielverwendung in einer Funktion zur Überprüfung des unbeaufsichtigten Modus.

## Parameter Details

### `-CallersInvocation <InvocationInfo>`

> Aufruferinformationen des Aufrufenden für Pipeline- und Automatisierungserkennung

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Detailed`

> Geben Sie ein detailliertes Analyseobjekt anstelle eines einfachen booleschen Werts zurück

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/de-DE/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/de-DE/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/de-DE/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/de-DE/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/de-DE/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/de-DE/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/de-DE/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/de-DE/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/de-DE/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/de-DE/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-RefactorLLMSelection.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/WriteFileOutput.md)
