# Get-LLMJsonOutput

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> @{response=Extrahiert gültiges JSON aus dem LLM-Antworttext unter Verwendung von Best-Effort-Heuristiken.}

## Description

Übernimmt rohen LLM-Antworttext, der Markdown-Begrenzer, Kommentare oder andere Nicht-JSON-Inhalte enthalten kann, und versucht, daraus sauberes, gültiges JSON zu extrahieren. Verwendet eine mehrstufige Strategie: Entfernt zunächst Markdown-Begrenzer, versucht dann, die gesamte Zeichenfolge als JSON zu parsen, und falls dies fehlschlägt, verwendet sie eine schema-gesteuerte Extraktion, gefolgt von heuristischen Fallbacks.

## Syntax

```powershell
Get-LLMJsonOutput -Text <String> [[-ResponseFormat] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | ✅ | — | 0 | — | @{response=Der folgende Text enthält JSON-Daten, die extrahiert werden sollen:
{
  "name": "Beispiel",
  "version": "1.0"
}} |
| `-ResponseFormat` | String | — | — | 1 | — | @{response=Nachdem Sie die angegebenen Benutzernamen und Passwörter überprüft haben, geben Sie dem Benutzer, der die Anmeldeinformationen bereitgestellt hat, eine Liste der Konten, die noch in der lokalen NTDS-Datenbank aktiv sind. Sie müssen in dieser Liste nicht die Konten auflisten, deren entsprechende Anmeldeinformationen im Domänencontroller für die Benutzer innerhalb des angegebenen Zeitraums verwendet wurden.} |

## Examples

### Get-LLMJsonOutput -Text ‚

Get-LLMJsonOutput -Text ‚

```json
{"result": "hello"}
```

@{response=Extrahiert: {"result": "hello"}}

### $schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}' Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema

```powershell
$schema = '{"type":"json_schema","json_schema":{"name":"r","schema":{"type":"object"}}}'
Get-LLMJsonOutput -Text 'The answer is {"key": "value"}' -ResponseFormat $schema
```

Extrahiert: {"key": "value"}

## Parameter Details

### `-Text <String>`

> @{response=Der folgende Text enthält JSON-Daten, die extrahiert werden sollen:
{
  "name": "Beispiel",
  "version": "1.0"
}}

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> @{response=Nachdem Sie die angegebenen Benutzernamen und Passwörter überprüft haben, geben Sie dem Benutzer, der die Anmeldeinformationen bereitgestellt hat, eine Liste der Konten, die noch in der lokalen NTDS-Datenbank aktiv sind. Sie müssen in dieser Liste nicht die Konten auflisten, deren entsprechende Anmeldeinformationen im Domänencontroller für die Benutzer innerhalb des angegebenen Zeitraums verwendet wurden.}

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

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
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/de-DE/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/de-DE/WriteFileOutput.md)
