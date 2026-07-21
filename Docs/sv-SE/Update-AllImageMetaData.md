# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages`

## Synopsis

> Batchuppdaterar bildnyckelord, ansikten, objekt och scener över flera systemkataloger.

## Description

Denna funktion bearbetar systematiskt bilder i olika systemkataloger
för att uppdatera deras nyckelord, ansiktsigenkänningsdata, objektdetekteringsdata och
scenklassificeringsdata med hjälp av AI-tjänster. Den omfattar medielagring, systemfiler,
nedladdningar, OneDrive och personliga bildmappar.

Funktionen bearbetar bilder genom att gå igenom varje katalog och bearbeta filer
individuellt. DeepStack-funktioner (ansikten, objekt, scener) utförs först,
följt av generering av nyckelord och beskrivning.

Detta möjliggör strukturerad datautmatning för pipeline-operationer som:
Update-AllImageMetaData | Export-ImageIndex

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-NoSupportForJsonSchema <String>] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Matris av katalogvägar att bearbeta för bilduppdateringar |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Namnet för Docker-behållaren |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Namnet för Docker-volymen för beständig lagring |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Portnumret för DeepStack-tjänsten |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Maximal tid i sekunder att vänta på tjänstens hälsokontroll |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervall i sekunder mellan hälsoökningsförsök |
| `-ImageName` | String | — | — | Named | — | Anpassat Docker-avbildningsnamn att använda |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Minsta konfidensgräns (0.0-1.0) för objektdetektering |
| `-Language` | String | — | — | Named | — | Språket för genererade beskrivningar och nyckelord |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Namn eller delvis sökväg till modellen som ska initieras 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | API-slutpunktens URL, standardinställningen är http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | API-nyckeln som ska användas för begäran |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Anger att LLM inte har stöd för JSON-scheman |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Timeout i sekunder för begäran, standard är 24 timmar |
| `-FacesDirectory` | String | — | — | Named | — | Katalogen som innehåller ansiktsbilder organiserade i personmappar. Om inte angivet används den konfigurerade inställningen för ansiktskatalog. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databassökväg för inställningsdatafiler |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Kommer att försöka igen med tidigare misslyckade uppdateringar av bildnyckelord |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Bearbeta inte undermappar vid bildhantering. |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Bearbeta om alla bilder oavsett tidigare bearbetning |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion) |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga återuppbyggnad av Docker-container och ta bort befintliga data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Använd GPU-accelererad version (kräver NVIDIA GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | Ange parametern PassThru för att returnera strukturerade objekt istället för att skriva ut dem i konsolen. |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Upptäcker förändringar i ansiktskatalogen och registrerar om ansikten om det behövs |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Använd alternativa inställningar som lagras i sessionen för AI-inställningar som språk, bildsamlingar, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser som språk, bildsamlingar, etc. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Använd inte alternativa inställningar som lagras i sessionen för AI-preferenser som språk, bildsamlingar osv. |

## Examples

### Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `     -ServicePort 5000

```powershell
Update-AllImageMetaData -ImageDirectories @("C:\Pictures", "D:\Photos") `
    -ServicePort 5000
```

### Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"

```powershell
Update-AllImageMetaData -RetryFailed -Force -Language "Spanish"
```

### updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition" ##############################################################################

```powershell
updateallimages @("C:\MyImages") -ContainerName "custom_face_recognition"
##############################################################################
```

## Parameter Details

### `-ImageDirectories <String[]>`

> Matris av katalogvägar att bearbeta för bilduppdateringar

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Namnet för Docker-behållaren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Namnet för Docker-volymen för beständig lagring

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Portnumret för DeepStack-tjänsten

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Maximal tid i sekunder att vänta på tjänstens hälsokontroll

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Intervall i sekunder mellan hälsoökningsförsök

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Anpassat Docker-avbildningsnamn att använda

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> Minsta konfidensgräns (0.0-1.0) för objektdetektering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.7` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Språket för genererade beskrivningar och nyckelord

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Namn eller delvis sökväg till modellen som ska initieras

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ApiEndpoint <String>`

> API-slutpunktens URL, standardinställningen är http://localhost:1234/v1/chat/completions

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> API-nyckeln som ska användas för begäran

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Anger att LLM inte har stöd för JSON-scheman

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Timeout i sekunder för begäran, standard är 24 timmar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FacesDirectory <String>`

> Katalogen som innehåller ansiktsbilder organiserade i personmappar. Om inte angivet används den konfigurerade inställningen för ansiktskatalog.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Databassökväg för inställningsdatafiler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Kommer att försöka igen med tidigare misslyckade uppdateringar av bildnyckelord

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoRecurse`

> Bearbeta inte undermappar vid bildhantering.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoAll`

> Bearbeta om alla bilder oavsett tidigare bearbetning

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Tvinga återuppbyggnad av Docker-container och ta bort befintliga data

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> Använd GPU-accelererad version (kräver NVIDIA GPU)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Ange parametern PassThru för att returnera strukturerade objekt istället för att skriva ut dem i konsolen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> Upptäcker förändringar i ansiktskatalogen och registrerar om ansikten om det behövs

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Använd alternativa inställningar som lagras i sessionen för AI-inställningar som språk, bildsamlingar, etc.

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

> Rensa alternativa inställningar som lagrats i sessionen för AI-preferenser som språk, bildsamlingar, etc.

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

> Använd inte alternativa inställningar som lagras i sessionen för AI-preferenser som språk, bildsamlingar osv.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-AudioTranscription.md)
