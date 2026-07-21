# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say`

## Synopsis

> Converte il testo in voce utilizzando il motore TTS neurale di Microsoft Edge.

## Description

Utilizza il motore TTS neurale di Microsoft Edge (tramite EdgeTTS.DotNet) per convertire il testo in parlato con voci dal suono naturale. Questa funzione offre capacità flessibili di sintesi vocale con supporto per diverse voci, impostazioni locali, regolazioni del prosodia (velocità, volume, tono) e opzioni di riproduzione sincrona/asincrona. Può gestire sia singole stringhe che array di testo.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Testo da pronunciare *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Nome della voce da utilizzare per la sintesi vocale |
| `-Locale` | String | — | — | Named | `$null` | L'ID della lingua da utilizzare, ad esempio 'it-IT' |
| `-Rate` | String | — | — | Named | `$null` | Velocità di pronuncia, es. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Livello del volume, ad es. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Spostamento di tonalità, ad es. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Invia il testo pronunciato alla pipeline |
| `-Wait` | SwitchParameter | — | — | Named | — | Attendi il completamento del discorso prima di continuare |

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

> Testo da pronunciare

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

> Nome della voce da utilizzare per la sintesi vocale

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

> L'ID della lingua da utilizzare, ad esempio 'it-IT'

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

> Velocità di pronuncia, es. "+0%", "-20%", "+50%"

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

> Livello del volume, ad es. "+0%", "-25%", "+100%"

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

> Spostamento di tonalità, ad es. "+0Hz", "-10Hz", "+20Hz"

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

> Invia il testo pronunciato alla pipeline

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

> Attendi il completamento del discorso prima di continuare

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/sidebyside.md)
- [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Start-SnakeGame.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/UtcNow.md)
