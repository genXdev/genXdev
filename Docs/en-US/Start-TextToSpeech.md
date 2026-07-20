# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Converts text to speech using Microsoft Edge's neural TTS engine.

## Description

Uses Microsoft Edge's neural TTS engine (via EdgeTTS.DotNet) to convert text
to speech with natural-sounding voices. This function provides flexible
text-to-speech capabilities with support for different voices, locales,
prosody adjustments (rate, volume, pitch), and synchronous/asynchronous
playback options. It can handle both single strings and arrays of text.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Text to be spoken *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Name of the voice to use for speech |
| `-Locale` | String | — | — | Named | `$null` | The language locale id to use, e.g. 'en-US' |
| `-Rate` | String | — | — | Named | `$null` | Speech rate, e.g. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Volume level, e.g. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Output the text being spoken to the pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Wait for speech to complete before continuing |

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

> Text to be spoken

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

> Name of the voice to use for speech

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

> The language locale id to use, e.g. 'en-US'

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

> Speech rate, e.g. "+0%", "-20%", "+50%"

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

> Volume level, e.g. "+0%", "-25%", "+100%"

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

> Pitch shift, e.g. "+0Hz", "-10Hz", "+20Hz"

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

> Output the text being spoken to the pipeline

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

> Wait for speech to complete before continuing

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

- [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Enable-Screensaver.md)
- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Now.md)
- [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Open-MediaFile.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/SayTime.md)
- [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOff.md)
- [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-MonitorPowerOn.md)
- [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Set-VLCPlayerFocused.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/UtcNow.md)
