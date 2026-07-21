# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Chuyển đổi văn bản thành giọng nói sử dụng công cụ TTS thần kinh của Microsoft Edge.

## Description

Sử dụng công cụ TTS thần kinh của Microsoft Edge (thông qua EdgeTTS.DotNet) để chuyển đổi văn bản thành giọng nói với giọng đọc tự nhiên. Hàm này cung cấp khả năng chuyển văn bản thành giọng nói linh hoạt với hỗ trợ các giọng đọc, ngôn ngữ, điều chỉnh ngữ điệu (tốc độ, âm lượng, cao độ) và các tùy chọn phát đồng bộ/không đồng bộ. Nó có thể xử lý cả chuỗi đơn và mảng văn bản.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Văn bản cần nói *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Tên của giọng nói dùng để đọc |
| `-Locale` | String | — | — | Named | `$null` | ID ngôn ngữ cần sử dụng, ví dụ: 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | Tốc độ nói, ví dụ: "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Mức âm lượng, ví dụ: "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Chuyển đổi cao độ, ví dụ: "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Xuất văn bản đang được nói vào đường dẫn |
| `-Wait` | SwitchParameter | — | — | Named | — | Chờ cho đến khi lời nói kết thúc trước khi tiếp tục |

## Examples

### Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait

```powershell
Start-TextToSpeech -Lines "Hello World" -Locale "en-US" -Wait
```

### "Hello World" | say

```powershell
"Hello World" | say
```

### say "Hello World" -Rate "+50%" -Pitch "-5Hz"

```powershell
say "Hello World" -Rate "+50%" -Pitch "-5Hz"
```

## Parameter Details

### `-Lines <String[]>`

> Văn bản cần nói

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | strings |

<hr/>
### `-VoiceName <String>`

> Tên của giọng nói dùng để đọc

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Locale <String>`

> ID ngôn ngữ cần sử dụng, ví dụ: 'en-US'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Rate <String>`

> Tốc độ nói, ví dụ: "+0%", "-20%", "+50%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Volume <String>`

> Mức âm lượng, ví dụ: "+0%", "-25%", "+100%"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Pitch <String>`

> Chuyển đổi cao độ, ví dụ: "+0Hz", "-10Hz", "+20Hz"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> Xuất văn bản đang được nói vào đường dẫn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Wait`

> Chờ cho đến khi lời nói kết thúc trước khi tiếp tục

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/UtcNow.md)
