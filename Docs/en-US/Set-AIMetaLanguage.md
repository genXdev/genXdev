# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Sets the default language and optionally the image directories for GenXdev.AI
image metadata operations.

## Description

This function configures the global default language for image metadata
operations in the GenXdev.AI module. Optionally, it can also set the global
image directories. Both settings are persisted in the module's preference
storage for use across sessions.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | The default language for image metadata operations |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Sets the language and image directories persistently in preferences.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Sets the language persistently in preferences.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Sets the language only for the current session (Global variable).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Clears the session language setting (Global variable) without affecting
persistent preferences.

## Parameter Details

### `-Language <String>`

> The default language for image metadata operations

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Database path for preference data files

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Use alternative settings stored in session for AI preferences like Language, Image collections, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Clear alternative settings stored in session for AI preferences like Language, Image collections, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-ImageScenesUpdate.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-AIKnownFacesRootpath.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Update-AllImageMetaData.md)
