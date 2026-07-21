# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Quản lý bộ đệm dịch thuật liên tục với các ghi đĩa theo lô cho mỗi ngôn ngữ.

## Description

Duy trì bộ nhớ đệm dịch thuật trong bộ nhớ ở phạm vi mô-đun cho Get-TextTranslation.
Bộ nhớ đệm được chia thành các tệp JSON riêng cho từng ngôn ngữ trong
$env:LOCALAPPDATA\GenXdev.PowerShell\. Các lệnh gọi thêm mục được xử lý theo lô —
ghi đĩa chỉ xảy ra sau mỗi 100 lần thay đổi mỗi ngôn ngữ, hoặc khi gọi -PersistNow.
-PersistNow cũng xóa bộ nhớ đệm trong bộ nhớ để ngăn tăng trưởng không giới hạn
qua các lô xử lý.

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
| `-GetCache` | SwitchParameter | — | — | Named | — | Trả về bảng băm bộ nhớ đệm trong bộ nhớ *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | Mã ngôn ngữ BCP 47 cho mục nhập bộ nhớ đệm *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Văn bản nguồn để lưu vào bộ nhớ đệm *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | Văn bản đã dịch để lưu trữ *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Ghi tất cả bộ nhớ đệm bẩn vào đĩa và xóa bộ nhớ. *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Xóa bộ nhớ đệm trong bộ nhớ và xóa tất cả các tệp trên đĩa *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Xóa các mục chưa được dịch khỏi tất cả bộ nhớ đệm ngôn ngữ trên đĩa *(Parameter set: )* |

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

> Trả về bảng băm bộ nhớ đệm trong bộ nhớ

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

> Mã ngôn ngữ BCP 47 cho mục nhập bộ nhớ đệm

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

> Văn bản nguồn để lưu vào bộ nhớ đệm

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

> Văn bản đã dịch để lưu trữ

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

> Ghi tất cả bộ nhớ đệm bẩn vào đĩa và xóa bộ nhớ.

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

> Xóa bộ nhớ đệm trong bộ nhớ và xóa tất cả các tệp trên đĩa

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

> Xóa các mục chưa được dịch khỏi tất cả bộ nhớ đệm ngôn ngữ trên đĩa

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

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Test-DeepLinkImageFile.md)
