# GenerateMasonryLayoutHtml

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Görüntü verilerinden duyarlı bir duvar örgüsü düzeni HTML galerisi oluşturur.

## Description

Görselleri görüntülemek için duyarlı mozaik ızgara düzenine sahip etkileşimli bir HTML galerisi oluşturur. Özellikler:
- Ekran boyutuna uyum sağlayan duyarlı ızgara düzeni
- Açıklamaları ve anahtar kelimeleri gösteren resim araç ipuçları
- Tıklayarak resim yolunu kopyalama işlevi
- Hover efektleri ile temiz modern stil

## Syntax

```powershell
GenerateMasonryLayoutHtml -Images <Object> [[-FilePath] <String>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-CanDelete] [-CanEdit] [-Description <String>] [-EmbedImages] [-ImageUrlPrefix <String>] [-MaxPrintImages <Int32>] [-PageSize <Int32>] [-RootMargin <String>] [-ShowOnlyPictures] [-SingleColumnMode] [-Threshold <Double>] [-Title <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Images` | Object | ✅ | — | 0 | — | Resim yolu, anahtar kelimeler ve açıklama içeren resim nesneleri dizisi |
| `-FilePath` | String | — | — | 1 | `$null` | Oluşturulan HTML dosyası için çıktı yolu |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Galeri için başlık |
| `-Description` | String | — | — | Named | `'Hover over images to see face recognition, object detection, and scene classification data'` | Galeri için açıklama |
| `-CanEdit` | SwitchParameter | — | — | Named | `$false` | Düzenlemenin etkin olup olmadığı |
| `-CanDelete` | SwitchParameter | — | — | Named | `$false` | Silme işleminin etkin olup olmadığı |
| `-EmbedImages` | SwitchParameter | — | — | Named | `$false` | Daha iyi taşınabilirlik için dosya:// URL'leri yerine resimleri base64 veri URL'leri olarak gömün |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Resimleri sadece yuvarlak dikdörtgen içinde göster, altında metin olmasın. |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Sayfayı saniyede bu kadar piksel kaydır (devre dışı bırakmak için null) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Görünür aralıktaki dikdörtgenleri (nesneler/yüzler) canlandır, her 300ms'de bir döngü yap |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Tek sütunlu düzeni zorla (ortalanmış, ekran genişliğinin 1/3'ü) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Her resim yolunun başına eklenecek ön ek (örneğin uzak URL'ler için) |
| `-PageSize` | Int32 | — | — | Named | `20` | Sayfa başına yüklenecek resim sayısı (dinamik yükleme için) |
| `-MaxPrintImages` | Int32 | — | — | Named | `50` | Yazdırma modu için yüklenecek maksimum görsel sayısı |
| `-RootMargin` | String | — | — | Named | `'1200px'` | Sonsuz kaydırma tetikleyicisi için IntersectionObserver rootMargin (ör. "1200px") |
| `-Threshold` | Double | — | — | Named | `0.1` | Sonsuz kaydırma tetikleyicisi için IntersectionObserver eşiği |

## Examples

### Create gallery from image array and save to file $images = @(     @{         path = "C:\photos\sunset.jpg"         keywords = @("nature", "sunset", "landscape")         description = @{             short_description = "Mountain sunset"             long_description = "Beautiful sunset over mountain range"         }     } ) GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"

```powershell
Create gallery from image array and save to file
$images = @(
    @{
        path = "C:\photos\sunset.jpg"
        keywords = @("nature", "sunset", "landscape")
        description = @{
            short_description = "Mountain sunset"
            long_description = "Beautiful sunset over mountain range"
        }
    }
)
GenerateMasonryLayoutHtml -Images $images -FilePath "C:\output\gallery.html"
```

### Generate HTML string without saving $html = GenerateMasonryLayoutHtml $images

```powershell
Generate HTML string without saving
$html = GenerateMasonryLayoutHtml $images
```

## Parameter Details

### `-Images <Object>`

> Resim yolu, anahtar kelimeler ve açıklama içeren resim nesneleri dizisi

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilePath <String>`

> Oluşturulan HTML dosyası için çıktı yolu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Title <String>`

> Galeri için başlık

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Photo Gallery'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Galeri için açıklama

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Hover over images to see face recognition, object detection, and scene classification data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanEdit`

> Düzenlemenin etkin olup olmadığı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CanDelete`

> Silme işleminin etkin olup olmadığı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EmbedImages`

> Daha iyi taşınabilirlik için dosya:// URL'leri yerine resimleri base64 veri URL'leri olarak gömün

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowOnlyPictures`

> Resimleri sadece yuvarlak dikdörtgen içinde göster, altında metin olmasın.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoMetadata`, `OnlyPictures` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoScrollPixelsPerSecond <Int32>`

> Sayfayı saniyede bu kadar piksel kaydır (devre dışı bırakmak için null)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoAnimateRectangles`

> Görünür aralıktaki dikdörtgenleri (nesneler/yüzler) canlandır, her 300ms'de bir döngü yap

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleColumnMode`

> Tek sütunlu düzeni zorla (ortalanmış, ekran genişliğinin 1/3'ü)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$false` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageUrlPrefix <String>`

> Her resim yolunun başına eklenecek ön ek (örneğin uzak URL'ler için)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PageSize <Int32>`

> Sayfa başına yüklenecek resim sayısı (dinamik yükleme için)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `20` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxPrintImages <Int32>`

> Yazdırma modu için yüklenecek maksimum görsel sayısı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `50` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RootMargin <String>`

> Sonsuz kaydırma tetikleyicisi için IntersectionObserver rootMargin (ör. "1200px")

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'1200px'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Threshold <Double>`

> Sonsuz kaydırma tetikleyicisi için IntersectionObserver eşiği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureNuGetAssembly.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/WriteFileOutput.md)
