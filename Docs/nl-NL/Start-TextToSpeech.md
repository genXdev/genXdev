# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> Zet tekst om in spraak met behulp van de neurale TTS-engine van Microsoft Edge.

## Description

Gebruikt de neurale TTS-engine van Microsoft Edge (via EdgeTTS.DotNet) om tekst om te zetten naar spraak met natuurlijk klinkende stemmen. Deze functie biedt flexibele tekst-naar-spraakmogelijkheden met ondersteuning voor verschillende stemmen, landinstellingen, prosodieaanpassingen (snelheid, volume, toonhoogte) en synchrone/asynchrone afspeelopties. Het kan zowel enkele tekenreeksen als arrays van tekst verwerken.

## Syntax

```powershell
Start-TextToSpeech -Lines <String[]> [<CommonParameters>]

Start-TextToSpeech [[-VoiceName] <String>] [-Locale <String>] [-PassThru] [-Pitch <String>] [-Rate <String>] [-Volume <String>] [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Lines` | String[] | ✅ | ✅ (ByValue) | 0 | — | Text to be spoken *(Parameter set: )* |
| `-VoiceName` | String | — | — | 1 | `$null` | Naam van de stem voor spraak |
| `-Locale` | String | — | — | Named | `$null` | De te gebruiken taalinstellings-id, b.v. 'nl-NL' |
| `-Rate` | String | — | — | Named | `$null` | Spraaksnelheid, bijv. "+0%", "-20%", "+50%" |
| `-Volume` | String | — | — | Named | `$null` | Volume level, e.g. "+0%", "-25%", "+100%" |
| `-Pitch` | String | — | — | Named | `$null` | Toonhoogteverschuiving, bijv. "+0Hz", "-10Hz", "+20Hz" |
| `-PassThru` | SwitchParameter | — | — | Named | — | Geef de tekst die naar de pijplijn wordt gesproken |
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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
