# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Mengonversi teks menjadi ucapan menggunakan mesin TTS neural Microsoft Edge.

## Description

Menggunakan mesin TTS neural Microsoft Edge (melalui EdgeTTS.DotNet) untuk mengubah teks menjadi ucapan dengan suara yang natural. Fungsi ini menyediakan kemampuan text-to-speech yang fleksibel dengan dukungan untuk berbagai suara, lokal, penyesuaian prosodi (kecepatan, volume, nada), dan opsi pemutaran sinkron/asinkron. Ini dapat menangani baik string tunggal maupun array teks.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Teks yang akan diucapkan *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nama suara yang akan digunakan untuk ucapan |
| `-Locale` | String | — | — | Named | `$null` | Id lokal bahasa yang akan digunakan, misalnya 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | Kecepatan bicara, misalnya "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Level volume, mis. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Pergeseran nada, misalnya "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output teks yang diucapkan ke aliran |
| `-Wait` | SwitchParameter | — | — | Named | — | Tunggu hingga ucapan selesai sebelum melanjutkan |

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

> Teks yang akan diucapkan

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

> Nama suara yang akan digunakan untuk ucapan

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

> Id lokal bahasa yang akan digunakan, misalnya 'en-US'

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

> Kecepatan bicara, misalnya "+0%", "-20%", "+50%"

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

> Level volume, mis. "+0%", "-25%", "+100%"

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

> Pergeseran nada, misalnya "+0Hz", "-10Hz", "+20Hz"

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

> Output teks yang diucapkan ke aliran

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

> Tunggu hingga ucapan selesai sebelum melanjutkan

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md)
