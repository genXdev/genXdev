# Invoke-CommandFromToolCall

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Führt einen Toolaufruf mit Validierung und Parameterfilterung aus.

## Description

Diese Funktion verarbeitet Toolaufrufe, indem sie Argumente validiert, Parameter filtert und Callbacks mit ordnungsgemäßer Bestätigungsbehandlung ausführt. Sie unterstützt sowohl Skriptblöcke als auch Befehlsinfo-Callbacks.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Der Befehl "Get-Host" ruft ein Objekt ab, das das aktuelle Hostprogramm darstellt.

PowerShell wird in verschiedenen Hostprogrammen ausgeführt. Zu den gängigen Programmen gehören die PowerShell-Konsole (powershell.exe), Windows PowerShell Integrated Scripting Environment (ISE) (powershell_ise.exe) und PowerShell-Remoting. Andere Hosts wie die PowerShell-Arbeitsumgebung und Azure Cloud Shell sind ebenfalls bekannt.

Die Ausgabe des Cmdlets "Get-Host" enthält Informationen zur Version, zur aktuellen Kultur und zum aktuellen UI-Kultur des Hosts, zur Kennung des übergeordneten Prozesses, zum Titel des Hostfensters und zu den Instanzeinstellungen.

Sie können die Ausgabe von "Get-Host" in einer Variablen speichern und die neuen Werte für die Eigenschaften des Hosts abrufen und festlegen. Sie können die Eigenschaften "ConsoleForegroundColor" und "ConsoleBackgroundColor" jedoch nicht direkt festlegen, da die Konsole diese Einstellungen nicht unterstützt.

Standardmäßig zeigt PowerShell den Namen und die Versionsnummer des Hosts an, wenn Sie "Get-Host" ausführen. Sie können jedoch den Hostnamen und die Hostversion aus der Ausgabe des Cmdlets ">"Get-Host" abrufen. Beispiel: ``$h = Get-Host; $h.Version`` |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array von Funktionsdefinitionen |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array von Befehlsnamen, die keine Bestätigung erfordern |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Ausgabe als Text erzwingen |

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

> Der Befehl "Get-Host" ruft ein Objekt ab, das das aktuelle Hostprogramm darstellt.

PowerShell wird in verschiedenen Hostprogrammen ausgeführt. Zu den gängigen Programmen gehören die PowerShell-Konsole (powershell.exe), Windows PowerShell Integrated Scripting Environment (ISE) (powershell_ise.exe) und PowerShell-Remoting. Andere Hosts wie die PowerShell-Arbeitsumgebung und Azure Cloud Shell sind ebenfalls bekannt.

Die Ausgabe des Cmdlets "Get-Host" enthält Informationen zur Version, zur aktuellen Kultur und zum aktuellen UI-Kultur des Hosts, zur Kennung des übergeordneten Prozesses, zum Titel des Hostfensters und zu den Instanzeinstellungen.

Sie können die Ausgabe von "Get-Host" in einer Variablen speichern und die neuen Werte für die Eigenschaften des Hosts abrufen und festlegen. Sie können die Eigenschaften "ConsoleForegroundColor" und "ConsoleBackgroundColor" jedoch nicht direkt festlegen, da die Konsole diese Einstellungen nicht unterstützt.

Standardmäßig zeigt PowerShell den Namen und die Versionsnummer des Hosts an, wenn Sie "Get-Host" ausführen. Sie können jedoch den Hostnamen und die Hostversion aus der Ausgabe des Cmdlets ">"Get-Host" abrufen. Beispiel: ``$h = Get-Host; $h.Version``

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

> Array von Funktionsdefinitionen

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

> Array von PowerShell-Befehlsdefinitionen zur Verwendung als Tools

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

> Array von Befehlsnamen, die keine Bestätigung erfordern

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

> Ausgabe als Text erzwingen

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
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/de-DE/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/de-DE/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/WriteFileOutput.md)
