# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Wandelt Text mithilfe des neuronalen TTS-Moduls von Microsoft Edge in Sprache um.

## Description

Verwendet Microsoft Edges neuronale TTS-Engine (über EdgeTTS.DotNet), um Text mit natürlich klingenden Stimmen in Sprache umzuwandeln. Diese Funktion bietet flexible Text-zu-Sprache-Funktionen mit Unterstützung für verschiedene Stimmen, Gebietsschemata, Prosodieanpassungen (Geschwindigkeit, Lautstärke, Tonhöhe) sowie synchrone und asynchrone Wiedergabeoptionen. Sie kann sowohl einzelne Zeichenfolgen als auch Arrays von Text verarbeiten.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Zu sprechender Text *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Name der Stimme, die für die Sprache verwendet werden soll |
| `-Locale` | String | — | — | Named | `$null` | Die zu verwendende Sprachgebiets-ID, z.B. 'de-DE' |
| `-Rate` | String | — | — | Named | `$null` | Sprechgeschwindigkeit, z. B. „+0 %“, „-20 %“, „+50 %“ |
| `-Volume` | String | — | — | Named | `$null` | Lautstärkepegel, z.B. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Tonhöhenverschiebung, z. B. „+0 Hz“, „-10 Hz“, „+20 Hz“ |
| `-PassThru` | SwitchParameter | — | — | Named | — | Gibt den Text aus, der an die Pipeline gesprochen wird |
| `-Wait` | SwitchParameter | — | — | Named | — | Warten Sie, bis die Sprache vollständig ist, bevor Sie fortfahren. |

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

> Zu sprechender Text

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

> Name der Stimme, die für die Sprache verwendet werden soll

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

> Die zu verwendende Sprachgebiets-ID, z.B. 'de-DE'

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

> Sprechgeschwindigkeit, z. B. „+0 %“, „-20 %“, „+50 %“

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

> Lautstärkepegel, z.B. "+0%", "-25%", "+100%"

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

> Tonhöhenverschiebung, z. B. „+0 Hz“, „-10 Hz“, „+20 Hz“

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

> Gibt den Text aus, der an die Pipeline gesprochen wird

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

> Warten Sie, bis die Sprache vollständig ist, bevor Sie fortfahren.

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/de-DE/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/de-DE/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/de-DE/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/de-DE/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/de-DE/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/de-DE/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/de-DE/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/de-DE/UtcNow.md)
