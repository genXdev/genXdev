# Get-AILLMSettings

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI'de AI işlemleri için LLM ayarlarını alır.

## Description

Bu işlev, GenXdev.AI modülü tarafından çeşitli AI işlemleri için kullanılan LLM (Büyük Dil Modeli) ayarlarını alır. Ayarlar, oturum değişkenlerinden, kalıcı tercihlerden veya varsayılan ayarlar JSON dosyasından, bu öncelik sırasına göre alınır. İşlev, mevcut sistem bellek kaynaklarına dayalı olarak otomatik yapılandırma seçimini destekler.

Bellek seçim stratejisi, sağlanan Gpu ve Cpu parametrelerine göre otomatik olarak belirlenir:
- Hem Gpu hem de Cpu parametreleri belirtilmişse: Birleşik CPU + GPU belleği kullanır
- Yalnızca Gpu parametresi belirtilmişse: GPU belleğini tercih eder (sistem RAM'ine düşüşle)
- Yalnızca Cpu parametresi belirtilmişse: Yalnızca sistem RAM'i kullanır
- Hiçbir parametre belirtilmemişse: Birleşik CPU + GPU belleği kullanır (varsayılan)

## Syntax

```powershell
Get-AILLMSettings [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-ClearSession] [-Model <String>] [-NoSupportForImageUpload] [-NoSupportForJsonSchema] [-NoSupportForToolCalls] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'SimpleIntelligence'` | Ayarların alınacağı LLM sorgu türü |
| `-Model` | String | — | — | Named | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | Named | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | Named | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-NoSupportForJsonSchema` | SwitchParameter | — | — | Named | — | Uç noktanın json_schema yanıt formatını destekleyip desteklemediği |
| `-NoSupportForImageUpload` | SwitchParameter | — | — | Named | — | Uç noktanın resim yükleme işlevini destekleyip desteklemediği |
| `-NoSupportForToolCalls` | SwitchParameter | — | — | Named | — | Uç noktanın araç çağırma işlevselliğini destekleyip desteklemediği |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Yapay zeka tercihleri (Dil, Görsel Koleksiyonları vb.) için oturumda depolanan alternatif ayarları kullanın |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Almadan önce oturum ayarını (Genel değişken) temizle |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Tercih veri dosyaları için veritabanı yolu |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Oturum ayarlarını atla ve yalnızca tercihlerden veya varsayılanlardan al |

## Examples

### Get-AILLMSettings

```powershell
Get-AILLMSettings
```

SimpleIntelligence sorgu türü (varsayılan) için LLM ayarlarını alır.

### Get-AILLMSettings -LLMQueryType "Coding"

```powershell
Get-AILLMSettings -LLMQueryType "Coding"
```

Kod sorgulama türü için LLM ayarlarını alır.

### Get-AILLMSettings -SkipSession

```powershell
Get-AILLMSettings -SkipSession
```

LLM ayarlarını yalnızca tercihlerden veya varsayılanlardan alır, oturum ayarlarını yok sayar.

### Get-AILLMSettings "Knowledge"

```powershell
Get-AILLMSettings "Knowledge"
```

## Parameter Details

### `-LLMQueryType <String>`

> Ayarların alınacağı LLM sorgu türü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI işlemleri için kullanılacak model tanımlayıcısı veya deseni

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

> Yapay zeka işlemleri için API uç noktası URL'si

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

> Kimlik doğrulamalı AI işlemleri için API anahtarı

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema`

> Uç noktanın json_schema yanıt formatını destekleyip desteklemediği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForImageUpload`

> Uç noktanın resim yükleme işlevini destekleyip desteklemediği

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForToolCalls`

> Uç noktanın araç çağırma işlevselliğini destekleyip desteklemediği

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

> Almadan önce oturum ayarını (Genel değişken) temizle

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
### `-SkipSession`

> Oturum ayarlarını atla ve yalnızca tercihlerden veya varsayılanlardan al

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-WinMerge.md)
- [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Merge-TranslationCache.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-DeepLinkImageFile.md)
