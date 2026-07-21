# Invoke-AIPowershellCommand

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `hint`

## Synopsis

> يقوم بإنشاء وتنفيذ أوامر PowerShell باستخدام المساعدة من الذكاء الاصطناعي.

## Description

تستخدم نماذج الذكاء الاصطناعي لإنشاء أوامر PowerShell بناءً على الاستعلامات باللغة الطبيعية. يمكن للدالة إما إرسال الأوامر مباشرة إلى نافذة PowerShell أو نسخها إلى الحافظة. تستفيد من نماذج الذكاء الاصطناعي لتفسير اللغة الطبيعية وتحويلها إلى أوامر PowerShell قابلة للتنفيذ مع دعم شامل للمعلمات لمختلف الأنظمة الأساسية للذكاء الاصطناعي.

## Syntax

```powershell
Invoke-AIPowershellCommand -PowershellCmdline <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-LLMQueryType <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PowershellCmdline` | String | ✅ | — | 0 | — | استعلام اللغة الطبيعية لإنشاء أمر لـ |
| `-LLMQueryType` | String | — | — | Named | `'Coding'` | نوع استعلام LLM |
| `-Model` | String | — | — | Named | — | معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي |
| `-ApiEndpoint` | String | — | — | Named | — | عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي |
| `-ApiKey` | String | — | — | Named | — | مفتاح API للعمليات المعتمدة للذكاء الاصطناعي |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | يشير إلى أن LLM لا يدعم مخططات JSON |

## Examples

### Invoke-AIPowershellCommand -Query "list all running processes"

```powershell
Invoke-AIPowershellCommand -Query "list all running processes"
```

ينشئ أمر PowerShell لعرض قائمة العمليات الجارية

### hint "list files modified today"

```powershell
hint "list files modified today"
```

يستخدم الاسم المستعار لإنشاء أمر للبحث عن الملفات التي تم تعديلها اليوم.

### Invoke-AIPowershellCommand -Query "stop service" -Clipboard

```powershell
Invoke-AIPowershellCommand -Query "stop service" -Clipboard
```

ينشئ أمرًا لإيقاف خدمة وينسخه إلى الحافظة.

## Parameter Details

### `-PowershellCmdline <String>`

> استعلام اللغة الطبيعية لإنشاء أمر لـ

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> نوع استعلام LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> معرّف النموذج أو النمط المستخدم لعمليات الذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> عنوان نقطة نهاية API لعمليات الذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> مفتاح API للعمليات المعتمدة للذكاء الاصطناعي

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> يشير إلى أن LLM لا يدعم مخططات JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Void`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Get-SimularMovieTitles.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/Update-AllImageMetaData.md)
