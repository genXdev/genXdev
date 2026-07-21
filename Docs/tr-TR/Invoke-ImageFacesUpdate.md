# Invoke-ImageFacesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepeopledetection`

## Synopsis

> Belirtilen bir dizindeki görüntü dosyaları için yüz tanıma meta verilerini günceller.

## Description

Bu işlev, belirtilen bir dizindeki görüntüleri yapay zeka tanıma teknolojisi kullanarak yüzleri tanımlamak ve analiz etmek için işler. Her görüntü için yüz bilgilerini içeren meta veri dosyaları oluşturur veya günceller. Meta veriler, ayrı bir dosyada saklanır.

## Syntax

```powershell
Invoke-ImageFacesUpdate [[-ImageDirectories] <String[]>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | İşlenecek görüntüleri içeren dizin yolları |
| `-Recurse` | SwitchParameter | — | — | Named | — | Belirtilen dizindeki ve tüm alt dizinlerdeki görüntüleri işle |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Sadece henüz yüz meta veri dosyaları olmayan görüntüleri işle |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Daha önce başarısız olan görsel anahtar kelime güncellemeleri yeniden deneniyor |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Docker kapsayıcısının adı |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Kalıcı depolama için Docker birim adı |
| `-ServicePort` | Int32 | — | — | Named | `5000` | DeepStack hizmeti için bağlantı noktası numarası |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye) |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Sağlık denetimleri arasındaki saniye cinsinden aralık |
| `-ImageName` | String | — | — | Named | — | Kullanılacak özel Docker görüntü adı |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Nesne tespiti için minimum güven eşiği (0.0-1.0) |
| `-Language` | String | — | — | Named | — | Oluşturulan açıklamalar ve anahtar kelimeler için dil |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Başlatılacak modelin adı veya kısmi yolu 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | API uç noktası URL'si, varsayılan olarak http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | İstek için kullanılacak API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-TimeoutSecond` | Int32 | — | — | Named | — | İstek için zaman aşımı süresi saniye cinsinden, varsayılan olarak 24 saat |
| `-FacesDirectory` | String | — | — | Named | — | Yüz görüntülerini kişi klasörlerine göre düzenleyen dizin. Belirtilmezse, yapılandırılmış yüzler dizin tercihi kullanılır. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır) |
| `-Force` | SwitchParameter | — | — | Named | — | Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması |
| `-UseGPU` | SwitchParameter | — | — | Named | — | GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Başlatma sırasında Docker penceresini göster |
| `-PassThru` | SwitchParameter | — | — | Named | — | Konsola çıktı vermek yerine yapılandırılmış nesneler döndürmek için PassThru |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Yüzler dizinindeki değişiklikleri algılar ve gerektiğinde yüzleri yeniden kaydeder |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yapay zeka tercihleri (Dil, Görsel Koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Dil, Görsel Koleksiyonları vb. gibi AI tercihleri için oturumda depolanan alternatif ayarları temizle |
| `-SkipSession` | SwitchParameter | — | — | Named | — | AI tercihleri (Dil, Görüntü koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanmayın |

## Examples

### Invoke-ImageFacesUpdate -Name @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageFacesUpdate -Name @("C:\Photos", "D:\Pictures") -Recurse
```

### facerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew ##############################################################################

```powershell
facerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
##############################################################################
```

## Parameter Details

### `-ImageDirectories <String[]>`

> İşlenecek görüntüleri içeren dizin yolları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Belirtilen dizindeki ve tüm alt dizinlerdeki görüntüleri işle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyNew`

> Sadece henüz yüz meta veri dosyaları olmayan görüntüleri işle

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Daha önce başarısız olan görsel anahtar kelime güncellemeleri yeniden deneniyor

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Docker kapsayıcısının adı

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

> Kalıcı depolama için Docker birim adı

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

> DeepStack hizmeti için bağlantı noktası numarası

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

> Hizmet sağlık kontrolü için beklenecek maksimum süre (saniye)

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

> Sağlık denetimleri arasındaki saniye cinsinden aralık

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

> Kullanılacak özel Docker görüntü adı

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

> Nesne tespiti için minimum güven eşiği (0.0-1.0)

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

> Oluşturulan açıklamalar ve anahtar kelimeler için dil

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

> Başlatılacak modelin adı veya kısmi yolu

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

> API uç noktası URL'si, varsayılan olarak http://localhost:1234/v1/chat/completions

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

> İstek için kullanılacak API anahtarı

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

> LLM'nin JSON şemaları için desteği olmadığını belirtir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSecond <Int32>`

> İstek için zaman aşımı süresi saniye cinsinden, varsayılan olarak 24 saat

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

> Yüz görüntülerini kişi klasörlerine göre düzenleyen dizin. Belirtilmezse, yapılandırılmış yüzler dizin tercihi kullanılır.

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

> Tercih veri dosyaları için veritabanı yolu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Docker başlatma işlemini atla (zaten üst işlev tarafından çağrılmışsa kullanılır)

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

> Docker kabının zorla yeniden oluşturulması ve mevcut verilerin kaldırılması

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

> GPU hızlandırmalı sürümü kullan (NVIDIA GPU gerektirir)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Başlatma sırasında Docker penceresini göster

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

> Konsola çıktı vermek yerine yapılandırılmış nesneler döndürmek için PassThru

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

> Yüzler dizinindeki değişiklikleri algılar ve gerektiğinde yüzleri yeniden kaydeder

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
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Update-AllImageMetaData.md)
