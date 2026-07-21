# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Konverterar text till tal med hjälp av Microsoft Edges neurala TTS-motor.

## Description

Använder Microsoft Edges neurala TTS-motor (via EdgeTTS.DotNet) för att konvertera text till tal med naturligt klingande röster. Denna funktion erbjuder flexibla text-till-tal-möjligheter med stöd för olika röster, språk, prosodijusteringar (hastighet, volym, tonhöjd) och synkrona/asynkrona uppspelningsalternativ. Den kan hantera både enstaka strängar och arrayer av text.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Text som ska talas *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Namnet på rösten som ska användas för tal |
| `-Locale` | String | — | — | Named | `$null` | Språkets lokala ID att använda, t.ex. 'sv-SE' |
| `-Rate` | String | — | — | Named | `$null` | Talthastighet, t.ex. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Ljudnivå, t.ex. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Tonhöjningsskift, t.ex. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Skicka ut texten som talas till pipeline. |
| `-Wait` | SwitchParameter | — | — | Named | — | Vänta tills talet är klart innan du fortsätter |

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

> Text som ska talas

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

> Namnet på rösten som ska användas för tal

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

> Språkets lokala ID att använda, t.ex. 'sv-SE'

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

> Talthastighet, t.ex. "+0%", "-20%", "+50%"

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

> Ljudnivå, t.ex. "+0%", "-25%", "+100%"

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

> Tonhöjningsskift, t.ex. "+0Hz", "-10Hz", "+20Hz"

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

> Skicka ut texten som talas till pipeline.

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

> Vänta tills talet är klart innan du fortsätter

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/UtcNow.md)
