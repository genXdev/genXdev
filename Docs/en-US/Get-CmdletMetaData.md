# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves metadata for a specified GenXdev cmdlet, optionally translating help
text to another language.

## Description

Extracts and returns comprehensive metadata about a GenXdev cmdlet including
its synopsis, description, parameters, examples, and other help information.
When a target language is specified via the -Language parameter, the help text
can be translated using AI-based translation services. Custom translation
instructions can be provided to fine-tune the translation output.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | The name of the cmdlet to retrieve metadata for |
| `-Language` | String | — | — | 1 | — | BCP 47 language tag for translating help text (e.g., nl-NL, de-DE). Omit to skip translation. |
| `-TranslationInstructions` | String | — | — | 2 | — | Custom instructions for the AI translation model. Overrides the default cmdlet-metadata-aware translation instructions. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Retrieves metadata for the Find-Item cmdlet in the default language.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Retrieves metadata for the Find-Item cmdlet with Dutch translations.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
