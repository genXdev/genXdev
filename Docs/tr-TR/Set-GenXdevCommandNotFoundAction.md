# Set-GenXdevCommandNotFoundAction

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Yapay zeka yardımı ile isteğe bağlı olarak özel komut bulunamadı işleme ayarlar.

## Description

PowerShell'in bilinmeyen komutları, dizinlere giderek veya kullanıcı niyetini yorumlamak için yapay zeka kullanarak ele almasını yapılandırır. İşleyici öncelikle mevcut herhangi bir komut bulunamadı işleyicisini dener, ardından komutun gezinme için geçerli bir yol olup olmadığını kontrol eder. Yapay zeka çözümü yalnızca -UseAIResolve anahtarı açıkça belirtildiğinde etkinleştirilir.

## Syntax

```powershell
Set-GenXdevCommandNotFoundAction [[-LLMQueryType] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-NoPrompt] [-UseAIResolve] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-LLMQueryType` | String | — | — | 0 | `'Coding'` | LLM sorgusunun türü |
| `-Model` | String | — | — | 1 | — | AI işlemleri için kullanılacak model tanımlayıcısı veya deseni |
| `-ApiEndpoint` | String | — | — | 2 | — | Yapay zeka işlemleri için API uç noktası URL'si |
| `-ApiKey` | String | — | — | 3 | — | Kimlik doğrulamalı AI işlemleri için API anahtarı |
| `-NoSupportForJsonSchema` | String | — | — | 4 | — | LLM'nin JSON şemaları için desteği olmadığını belirtir |
| `-UseAIResolve` | SwitchParameter | — | — | Named | — | Bilinmeyen komutların AI destekli çözümünü etkinleştirin. |
| `-NoPrompt` | SwitchParameter | — | — | Named | — | İstek amacı tanıtımını atla ve AI sorgusu olarak doğrudan komut adını kullan (-UseAIResolve gerektirir). |

## Examples

### Set-GenXdevCommandNotFoundAction -UseAIResolve

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve
```

Bilinmeyen komutlar için etkileşimli istem ile AI çözümünü etkinleştirir.

### Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt

```powershell
Set-GenXdevCommandNotFoundAction -UseAIResolve -NoPrompt
```

Bilinmeyen komutun, kullanıcıya ne demek istediğini sormadan doğrudan AI'ya gönderildiği AI çözümlemesini etkinleştirir.

## Parameter Details

### `-LLMQueryType <String>`

> LLM sorgusunun türü

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI işlemleri için kullanılacak model tanımlayıcısı veya deseni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
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
| **Position?** | 2 |
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
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLM'nin JSON şemaları için desteği olmadığını belirtir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseAIResolve`

> Bilinmeyen komutların AI destekli çözümünü etkinleştirin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoPrompt`

> İstek amacı tanıtımını atla ve AI sorgusu olarak doğrudan komut adını kullan (-UseAIResolve gerektirir).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AILLMSettings.md)
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
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-DeepLinkImageFile.md)
