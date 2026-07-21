# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Converteert tekst naar spraak met behulp van Microsoft Edge's neurale TTS-engine.

## Description

Gebruikt de neurale TTS-engine van Microsoft Edge (via EdgeTTS.DotNet) om tekst om te zetten in spraak met natuurlijk klinkende stemmen. Deze functie biedt flexibele tekst-naar-spraakmogelijkheden met ondersteuning voor verschillende stemmen, landinstellingen, prosodie-aanpassingen (snelheid, volume, toonhoogte) en synchrone/asynchrone afspeelopties. Het kan zowel enkele tekenreeksen als arrays van tekst verwerken.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Tekst om uit te spreken *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Naam van de in te stellen stem voor spraak |
| `-Locale` | String | — | — | Named | `$null` | De te gebruiken landinstelling ID, bijv. 'nl-NL' |
| `-Rate` | String | — | — | Named | `$null` | Spraaksnelheid, bijv. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Volume niveau, bv. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Toonhoogteverschuiving, bijv. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Voer de tekst uit die naar de pijplijn wordt gesproken |
| `-Wait` | SwitchParameter | — | — | Named | — | Wacht tot de spraak is voltooid voordat u doorgaat |

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

> Tekst om uit te spreken

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

> Naam van de in te stellen stem voor spraak

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

> De te gebruiken landinstelling ID, bijv. 'nl-NL'

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

> Spraaksnelheid, bijv. "+0%", "-20%", "+50%"

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

> Volume niveau, bv. "+0%", "-25%", "+100%"

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

> Toonhoogteverschuiving, bijv. "+0Hz", "-10Hz", "+20Hz"

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

> Voer de tekst uit die naar de pijplijn wordt gesproken

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

> Wacht tot de spraak is voltooid voordat u doorgaat

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/UtcNow.md)
