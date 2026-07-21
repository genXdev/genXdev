# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Her dil için toplu disk yazmalarıyla kalıcı çeviri önbelleğini yönetir.

## Description

Get-TextTranslation için modül kapsamında bellek içi çeviri önbelleğini korur.
Önbellek, $env:LOCALAPPDATA\GenXdev.PowerShell\ altında dil başına JSON dosyalarına bölünür.
Girdi ekleme çağrıları toplu halde yapılır — disk yazmaları yalnızca dil başına 100 değişiklikte bir veya -PersistNow çağrıldığında gerçekleşir.
-PersistNow ayrıca, işleme grupları arasında sınırsız büyümeyi önlemek için bellek içi önbelleği temizler.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Bellek içi önbellek karma tablosunu döndür *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Önbellek girişi için BCP 47 dil kodu *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Önbelleğe alınacak kaynak metin *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Get-WindowsDeveloperLicense komutu kullanım dışı bırakıldı ve diğer PowerShell komutlarıyla değiştirildi. Daha fazla bilgi için bkz. Get-WindowsDeveloperLicense. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Tüm kirli önbellekleri diske yaz ve belleği temizle *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Bellek içi önbelleği temizleyin ve tüm disk dosyalarını silin *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Diskteki tüm dil önbelleklerinden çevrilmemiş girdileri kaldırın *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> Bellek içi önbellek karma tablosunu döndür

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> Önbellek girişi için BCP 47 dil kodu

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> Önbelleğe alınacak kaynak metin

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> Get-WindowsDeveloperLicense komutu kullanım dışı bırakıldı ve diğer PowerShell komutlarıyla değiştirildi. Daha fazla bilgi için bkz. Get-WindowsDeveloperLicense.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> Tüm kirli önbellekleri diske yaz ve belleği temizle

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> Bellek içi önbelleği temizleyin ve tüm disk dosyalarını silin

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> Diskteki tüm dil önbelleklerinden çevrilmemiş girdileri kaldırın

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-DeepLinkImageFile.md)
