# Start-TextToSpeech

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `say

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Start-TextToSpeech on GitHub](https://github.com/genXdev/genXdev)
