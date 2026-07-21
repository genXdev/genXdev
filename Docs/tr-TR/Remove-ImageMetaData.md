# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata`

## Synopsis

> Görüntü meta veri dosyalarını görüntü dizinlerinden kaldırır.

## Description

Remove-ImageMetaData işlevi, görsellerle ilişkilendirilmiş tamamlayıcı JSON meta veri dosyalarını kaldırır. Yalnızca anahtar kelimeleri (description.json), kişi verilerini (people.json), nesne verilerini (objects.json) veya sahne verilerini (scenes.json) seçmeli olarak kaldırabilir veya belirli bir anahtar sağlanmazsa tüm meta veri dosyalarını kaldırabilir. Dile özgü meta veri dosyaları, Language parametresi belirtilerek kaldırılabilir ve tüm dil çeşitleri AllLanguages anahtarı kullanılarak kaldırılabilir.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@(".\")` | Görüntü meta verilerini kaldırmak için işlenecek dizin yolları dizisi. Belirtilmezse, varsayılan sistem dizinlerini kullanır. |
| `-Language` | String | — | — | 1 | — | Dil meta veri dosyalarını kaldırma dili. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Tercih veri dosyaları için veritabanı yolu |
| `-Recurse` | SwitchParameter | — | — | Named | — | Dizinler arasında yineleme yap. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Yalnızca description.json dosyalarını (anahtar kelimeler/açıklamalar) kaldırın. |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Yalnızca people.json dosyalarını kaldırın (yüz tanıma verileri). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Yalnızca objects.json dosyalarını kaldırın (nesne algılama verileri). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Yalnızca scenes.json dosyalarını kaldırın (sahne sınıflandırma verileri). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Desteklenen tüm diller için meta veri dosyalarını kaldırın. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yapay zeka tercihleri (Dil, Görsel Koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Dil, Görsel Koleksiyonları vb. gibi AI tercihleri için oturumda depolanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI tercihleri (Dil, Görüntü koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanmayın |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Birden çok dizindeki ve tüm alt dizinlerdeki görseller için tüm meta veri dosyalarını kaldırır.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Yalnızca varsayılan sistem dizinlerindeki ve alt dizinlerdeki description.json dosyalarını kaldırır.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

MyPhotos dizininden yalnızca people.json dosyalarını kaldırır.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

İngilizce ve İspanyolca açıklama dosyalarını varsayılan dizinlerden özyinelemeli olarak kaldırır.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Desteklenen tüm diller için anahtar kelime dosyalarını kaldırmak üzere diğer adı kullanır.

## Parameter Details

### `-ImageDirectories <String[]>`

> Görüntü meta verilerini kaldırmak için işlenecek dizin yolları dizisi. Belirtilmezse, varsayılan sistem dizinlerini kullanır.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@(".\")` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Dil meta veri dosyalarını kaldırma dili.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Tercih veri dosyaları için veritabanı yolu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Dizinler arasında yineleme yap.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyKeywords`

> Yalnızca description.json dosyalarını (anahtar kelimeler/açıklamalar) kaldırın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPeople`

> Yalnızca people.json dosyalarını kaldırın (yüz tanıma verileri).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyObjects`

> Yalnızca objects.json dosyalarını kaldırın (nesne algılama verileri).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyScenes`

> Yalnızca scenes.json dosyalarını kaldırın (sahne sınıflandırma verileri).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllLanguages`

> Desteklenen tüm diller için meta veri dosyalarını kaldırın.

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

> Yapay zeka tercihleri (Dil, Görsel Koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanın

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

> Dil, Görsel Koleksiyonları vb. gibi AI tercihleri için oturumda depolanan alternatif ayarları temizle

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

> AI tercihleri (Dil, Görüntü koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanmayın

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-QueryImageContent.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-AllImageMetaData.md)
